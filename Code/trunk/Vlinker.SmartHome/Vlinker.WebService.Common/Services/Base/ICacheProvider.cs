//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;

//namespace Vlinker.WebService.Common.Services.Base
//{
//    /// <summary>
//    /// 缓存接口
//    /// </summary>
//    public interface ICacheProvider
//    {
//        /// <summary>
//        /// 设置缓存项
//        /// </summary>
//        /// <param name="key"></param>
//        /// <param name="value"></param>
//        /// <param name="cacheSecond"></param>
//        /// <returns></returns>
//        bool Set(string key, object value, int expiration);

//        /// <summary>
//        /// 设置缓存项
//        /// </summary>
//        /// <param name="key"></param>
//        /// <param name="value"></param>
//        /// <param name="expiration"></param>
//        /// <param name="cas"></param>
//        /// <param name="newCas"></param>
//        /// <returns></returns>
//        bool SetWithWatch(string key, object value, int expiration);

//        /// <summary>
//        /// 添加缓存项
//        /// </summary>
//        /// <param name="key"></param>
//        /// <param name="value"></param>
//        /// <param name="expiration"></param>
//        /// <returns></returns>
//        bool Add(string key, object value, int expiration);

//        /// <summary>
//        /// 获取多个缓存
//        /// </summary>
//        /// <param name="keys"></param>
//        /// <returns></returns>
//        IDictionary<string, T> Get<T>(IEnumerable<string> keys);

//        /// <summary>
//        /// 获取缓存项
//        /// </summary>
//        /// <typeparam name="T"></typeparam>
//        /// <param name="key"></param>
//        /// <returns></returns>
//        T Get<T>(string key);

//        /// <summary>
//        /// 获取缓存项
//        /// </summary>
//        /// <param name="key"></param>
//        /// <param name="cas"></param>
//        /// <param name="value"></param>
//        void GetWithWatch(string key, out ulong cas, out object value);

//        /// <summary>
//        /// 删除缓存项
//        /// </summary>
//        /// <param name="key"></param>
//        /// <returns></returns>
//        bool Remove(string key);

//        /// <summary>
//        /// 删除多个缓存
//        /// </summary>
//        /// <param name="keys"></param>
//        void RemoveAll(IEnumerable<string> keys);
//    }
//}

