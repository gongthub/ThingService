using System;
using System.Collections.Generic;
using System.Reflection;

using System.Threading;
using System.Data.SqlClient;
using System.Threading.Tasks;
using NServiceKit.Redis;
using Vlinker.WebService.Common.Models.UIEntity;


namespace Vlinker.WebService.Common.Services.Base
{
    /// <summary>
    /// Domain对象基类
    /// </summary>
    public abstract class BaseService
    {
        //protected static ILog logger = LogManager.GetLogger(MethodBase.GetCurrentMethod().DeclaringType);
        public static NLog.Logger logger = NLog.LogManager.GetCurrentClassLogger();
        const int expiration = 30 * 60;

        /// <summary>
        /// 获取GUID字符串
        /// </summary>
        /// <returns></returns>
        public static string GuidStr
        {
            get
            {
                return Guid.NewGuid().ToString("N");
            }
        }
        /// <summary>
        /// 标准时间
        /// </summary>
        public DateTime NowTime { get { return DateTime.Now; } }

        /// <summary>
        /// 获取并且设置缓存
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="key"></param>
        /// <param name="func"></param>
        /// <returns></returns>
        protected T GetOrSet<T>(string key, Func<T> func)
        {
            T value = GetCache<T>(key);
            if (value != null)
            {
                return value;
            }
            value = func();
            bool flag = SetCache<T>(key, value);
            return value;
        }

        /// <summary>
        /// 获取并且重置缓存项
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="key"></param>
        /// <param name="query"></param>
        /// <param name="action"></param>
        /// <param name="successHandler"></param>
        /// <param name="errorHandler"></param>
        /// <returns></returns>
        protected bool WatchUpdate<T>(string key, Func<bool> query, Func<T, bool> action, Func<T, bool> successHandler, Func<T, bool> errorHandler)
        {
            int count = 0;
            int limit = 2;
            T cacheValue = default(T);
            while (count < limit)
            {
                count++;

                using (IRedisClient redisClient = RedisProvider.prcm.GetClient())
                {
                    redisClient.Watch(key);

                    cacheValue = redisClient.Get<T>(key);

                    if (cacheValue == null)
                    {
                        if (query == null)
                        {
                            return false;
                        }
                        if (!query())
                        {
                            return false;
                        }
                        continue;
                    }
                    bool result = action(cacheValue);
                    if (!result)
                    {
                        return false;
                    }

                    using (var trans = redisClient.CreateTransaction())
                    {
                        trans.QueueCommand((x) => x.Set(key, cacheValue));
                        if (trans.Commit())
                        {
                            if (successHandler != null)
                            {
                                return successHandler(cacheValue);
                            }
                            return true;
                        }
                    }
                }
            }
            if (count == limit)
            {
                logger.Info(string.Format("WatchUpdate重试次数超过限制,参数：key:{0},query:{1},action:{2},FunName:{3}",
                                                 key, query.ToString(), action.ToString(), action.Method.Name),"WatchUpdate");
                Thread.Sleep(5);
            }
            if (errorHandler != null)
            {
                return errorHandler(cacheValue);
            }
            return false;
        }

        /// <summary>
        /// 添加缓存项
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="key"></param>
        /// <param name="value"></param>
        /// <param name="expiration"></param>
        /// <returns></returns>
        protected bool AddCache<T>(string key, T value)
        {
            using (IRedisClient redisClient = RedisProvider.prcm.GetClient())
            {
                return redisClient.Add(key, value);
            }
        }

        /// <summary>
        /// 移除缓存
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        protected bool RemoveCache(string key)
        {
            using (IRedisClient redisClient = RedisProvider.prcm.GetClient())
            {
                return redisClient.Remove(key);
            }
        }

        /// <summary>
        /// 删除集合的Key的值
        /// </summary>
        /// <param name="keys"></param>
        public void RemoveAll(IEnumerable<string> keys)
        {
            using (IRedisClient redisClient = RedisProvider.prcm.GetClient())
            {
                redisClient.RemoveAll(keys);
            }
        }

        /// <summary>
        /// 获取多个Key的值
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="keys"></param>
        /// <returns></returns>
        public IDictionary<string, T> GetAll<T>(IEnumerable<string> keys)
        {
            using (IRedisClient redisClient = RedisProvider.prcm.GetClient())
            {
                return redisClient.GetAll<T>(keys);
            }
        }

        /// <summary>
        /// 重置缓存项
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="key"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        protected bool SetCache<T>(string key, T value)
        {
            using (IRedisClient redisClient = RedisProvider.prcm.GetClient())
            {
                return redisClient.Set(key, value);
            }            
        }

        /// <summary>
        /// 重置缓存带过期时间
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="key"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        protected bool SetCacheExp<T>(string key, T value)
        {
            using (IRedisClient redisClient = RedisProvider.prcm.GetClient())
            {
                return redisClient.Set(key, value, new TimeSpan(0, 0, expiration));
            }
        }

        /// <summary>
        /// 获取缓存项
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="key"></param>
        /// <returns></returns>
        public T GetCache<T>(string key)
        {
            using (IRedisClient redisClient = RedisProvider.prcm.GetClient())
            {
                return redisClient.Get<T>(key);
            }
        }

        /// <summary>
        /// 封装try catch
        /// </summary>
        /// <typeparam name="T">对象</typeparam>
        /// <param name="func">结果函数</param>
        /// <param name="args">参数值</param>
        /// <returns></returns>
        public T TryFunc<T>(Func<T> func, params object[] args) where T : IResponse, new()
        {
            try
            {
                return func();
            }
            catch (TargetInvocationException tIEx)
            {
                logger.Info(func.Method.Name, tIEx, args);
            }
            catch (NullReferenceException nullEx)
            {
                //logger.LogException(func.Method.Name, nullEx, args);
            }
            catch (ArgumentOutOfRangeException aOutREx)
            {
                //logger.LogException(func.Method.Name, aOutREx, args);
            }
            catch (ArgumentNullException anullEx)
            {
                //logger.LogException(func.Method.Name, anullEx, args);
            }
            catch (NotImplementedException nIEx)
            {
                //logger.LogException(func.Method.Name, nIEx, args);
            }
            catch (TimeoutException tmEx)
            {
                //logger.LogException(func.Method.Name, tmEx, args);
            }
            catch (OutOfMemoryException oomEx)
            {
                //logger.LogException(func.Method.Name, oomEx, args);
            }
            catch (SqlException sqlEx)
            {
                //logger.LogException(func.Method.Name, sqlEx, args);
            }
            catch (Exception ex)
            {
                //logger.LogException(func.Method.Name, ex, args);
            }
            return ResponseHelper.Exception<T>();
        }

        /// <summary>
        /// 异步方法回调
        /// </summary>
        /// <typeparam name="TResult"></typeparam>
        /// <param name="action"></param>
        /// <param name="callback"></param>
        public async void AsyncFunc<TResult>(Func<TResult> action, Action<TResult> callback = null)
        {
            Func<Task<TResult>> taskFunc = () =>
            {
                return Task.Run(() =>
                {
                    return action();
                });
            };

            TResult tResult = await taskFunc();
            if (callback != null)
            {
                callback(tResult);
            }
        }
    }
}
