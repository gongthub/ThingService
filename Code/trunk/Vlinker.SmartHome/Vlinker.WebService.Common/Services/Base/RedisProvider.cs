using System;
using System.Collections.Generic;
using System.Linq;
using System.Collections.Concurrent;
using System.Collections.Specialized;
using System.Configuration;
using Vlinker.WebService.Common.Common;
using NServiceKit.Redis;

namespace Vlinker.WebService.Common.Services.Base
{
    /// <summary>
    /// Redis配置
    /// </summary>
    public class RedisProvider //: ICacheProvider, IDisposable
    {
        //private static ILog logger = log4net.LogManager.GetLogger(typeof(RedisProvider));
        //private static Lazy<IRedisClient> clientInstance = new Lazy<IRedisClient>(CreateClient, LazyThreadSafetyMode.ExecutionAndPublication);

        //private static IRedisClient CreateClient()
        //{
        //    IRedisClient redisClient = null;
        //    try
        //    {
        //        redisClient = RedisProvider.prcm.GetClient();
        //    }
        //    catch (Exception ex)
        //    {
        //        logger.LogException("EnyimMemcachedProvider.CreateClient", ex);
        //        throw;
        //    }
        //    return redisClient;
        //}

        #region 获取配置节
        /// <summary>
        /// 获取配置节
        /// </summary>
        private static NameValueCollection ResConfSection
        {
            get { return ConfigurationManager.GetSection("RedisHostRes") as NameValueCollection; }
        }

        /// <summary>
        /// 主IP端口
        /// </summary>
        private static List<string> ResReadWriteHosts
        {
            get
            {
                string vals = ResConfSection["ReadWriteHosts"];
                return vals.Split(',').ToList();
            }
        }
        /// <summary>
        /// 从集群IP端口
        /// </summary>
        private static List<string> ResReadOnlyHosts
        {
            get
            {
                string vals = ResConfSection["ReadOnlyHosts"];
                return vals.Split(',').ToList();
            }
        }

        /// <summary>
        /// 最大写连接池数量
        /// </summary>
        private static int ResMaxWritePoolSize { get { return ResConfSection["MaxWritePoolSize"].ToInt32(300); } }
        /// <summary>
        /// 最大读连接池数量
        /// </summary>
        private static int ResMaxReadPoolSize { get { return ResConfSection["MaxReadPoolSize"].ToInt32(300); } }
        /// <summary>
        /// 连接超时时间
        /// </summary>
        private static int ResConnectTimeout { get { return ResConfSection["ConnectTimeout"].ToInt32(100); } }

        //private readonly static Lazy<ICacheProvider> redisClient = new Lazy<ICacheProvider>(() => ObjectContainer.Instance.GetService<ICacheProvider>(), LazyThreadSafetyMode.ExecutionAndPublication);

        ///// <summary>
        ///// mem缓存时间
        ///// </summary>
        //protected const int defaultCacheExpiration = 60 * 60 * 2;

        private static ConcurrentDictionary<Type, bool> atrrProtobufCache = new ConcurrentDictionary<Type, bool>();

        #region 连接池
        public static PooledRedisClientManager prcm = CreateManager();
        private static PooledRedisClientManager CreateManager()//string[] readWriteHosts, string[] readOnlyHosts
        {
            // 读写分离，均衡负载 
            PooledRedisClientManager prcm = new PooledRedisClientManager(ResReadWriteHosts, ResReadOnlyHosts,
                new RedisClientManagerConfig
                {
                    MaxWritePoolSize = ResMaxWritePoolSize,
                    MaxReadPoolSize = ResMaxReadPoolSize,
                    AutoStart = true
                })
            {
                ConnectTimeout = ResConnectTimeout
            };
            return prcm;
        }

        #endregion

        #endregion

        #region 接口实现
        //public bool Set(string key, object value, int expiration)
        //{
        //    if (expiration > 0)
        //        return clientInstance.Value.Set(key, value, new TimeSpan(0, 0, expiration));
        //    else
        //        return clientInstance.Value.Set(key, value);
        //}

        //public bool SetWithWatch(string key, object value, int expiration)
        //{
        //    throw new NotImplementedException();
        //}

        //public bool Add(string key, object value, int expiration)
        //{
        //    if (expiration > 0)
        //        return clientInstance.Value.Add(key, value, new TimeSpan(0, 0, expiration));
        //    else
        //        return clientInstance.Value.Add(key, value);
        //}

        //public IDictionary<string, T> Get<T>(IEnumerable<string> keys)
        //{
        //    return clientInstance.Value.GetAll<T>(keys);
        //}

        //public T Get<T>(string key)
        //{
        //    return clientInstance.Value.Get<T>(key);
        //}

        //public void GetWithWatch(string key, out ulong cas, out object value)
        //{
        //    clientInstance.Value.Watch(key);

        //    clientInstance.Value.UnWatch();
        //    throw new NotImplementedException();
        //}

        //public bool Remove(string key)
        //{
        //    return clientInstance.Value.Remove(key);
        //}

        //public void RemoveAll(IEnumerable<string> keys)
        //{
        //    clientInstance.Value.RemoveAll(keys);
        //}

        //public void Dispose()
        //{
        //    try
        //    {
        //        if (clientInstance.IsValueCreated)
        //        {
        //            clientInstance.Value.Dispose();
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        logger.LogError("EnyimMemcachedProvider.Dispose", "Dispose异常", ex);
        //    }
        //}
        #endregion
    }
}
