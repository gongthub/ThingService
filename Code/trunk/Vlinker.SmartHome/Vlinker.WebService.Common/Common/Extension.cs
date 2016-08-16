using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections.Concurrent;
using System.Data;
using System.Reflection;
using System.Text.RegularExpressions;

namespace Vlinker.WebService.Common.Common
{
    /// <summary>
    /// 扩展方法
    /// </summary>
    public static class Extension
    {
        #region 对List进行随机排序
        /// <summary>  
        /// 对List进行随机排序  
        /// </summary>  
        /// <param name="listT"></param>  
        /// <returns></returns>  
        public static List<T> RandomSortList<T>(List<T> listT)
        {
            return RandomSortListImpl<T>(listT);
        }
        public static List<T> RandomSortList<T>(List<T> listT, int nums)
        {
            for (int i = 1; i <= nums; i++)
            {
                listT = RandomSortListImpl<T>(listT);
            }
            return listT;
        }
        private static List<T> RandomSortListImpl<T>(List<T> listT)
        {
            Random random = new Random(DateTime.Now.Millisecond);
            List<T> newList = new List<T>();
            foreach (T item in listT)
            {
                newList.Insert(random.Next(newList.Count), item);
            }
            return newList;
        }
        #endregion
        public static int GetMulti(int s, int a)
        {
            if (s > 0 && a != 0)
                return (int)(s * (a / 100));
            else
                return s;
        }

        public static string GetMD5(this string sDataIn)
        {
            System.Security.Cryptography.MD5CryptoServiceProvider md5 = new System.Security.Cryptography.MD5CryptoServiceProvider();
            byte[] bytValue, bytHash;
            bytValue = System.Text.Encoding.UTF8.GetBytes(sDataIn);
            bytHash = md5.ComputeHash(bytValue);
            md5.Clear();
            string sTemp = "";
            for (int i = 0; i < bytHash.Length; i++)
            {
                sTemp += bytHash[i].ToString("X").PadLeft(2, '0');
            }
            return sTemp.ToLower();
        }

        #region ConcurrentDictionary扩展
        /// <summary>
        /// 尝试从 System.Collections.Concurrent.ConcurrentDictionary(TKey,TValue) 中移除并返回具有指定键的值(扩展)。
        /// </summary>
        /// <typeparam name="TKey">TKey</typeparam>
        /// <typeparam name="TValue">TValue</typeparam>
        /// <param name="dict">要处理的集合</param>
        /// <param name="key">要移除并返回的元素的键。</param>
        /// <param name="defaultValue">此方法返回时，value 包含从 System.Collections.Concurrent.ConcurrentDictionary(TKey,TValue)
        /// 中移除的对象；如果操作失败，则包含默认值。
        /// </param>
        /// <returns>如果成功移除了对象，则为 true；否则为 false。</returns>
        public static bool Remove<TKey, TValue>(this ConcurrentDictionary<TKey, TValue> dict, TKey key, TValue defaultValue = default(TValue))
        {
            TValue value;
            return dict.TryRemove(key, out value);
        }

        /// <summary>
        /// 尝试将指定的键和值添加到 System.Collections.Concurrent.ConcurrentDictionary(TKey,TValue)中.
        /// </summary>
        /// <typeparam name="TKey">TKey</typeparam>
        /// <typeparam name="TValue">TValue</typeparam>
        /// <param name="dict">源</param>
        /// <param name="key">要添加的元素的键。</param>
        /// <param name="value">要添加的元素的值。该值对于引用类型可以是空引用（在 Visual Basic 中为 Nothing）。</param>
        /// <returns></returns>
        public static bool Add<TKey, TValue>(this ConcurrentDictionary<TKey, TValue> dict, TKey key, TValue value)
        {
            return dict.TryAdd(key, value);
        }

        /// <summary>
        /// 尝试从 System.Collections.Concurrent.ConcurrentDictionary(TKey,TValue) 获取与指定的键关联的值(扩展)。
        /// </summary>
        /// <typeparam name="TKey">TKey</typeparam>
        /// <typeparam name="TValue">TValue</typeparam>
        /// <param name="dict">要处理的集合</param>
        /// <param name="key">要获取的值的键。</param>
        /// <param name="defaultValue">此方法返回时，value 包含 System.Collections.Concurrent.ConcurrentDictionary(TKey,TValue)
        /// 中具有指定键的对象；如果操作失败，则包含默认值。
        /// </param>
        /// <returns>如果在 System.Collections.Concurrent.ConcurrentDictionary(TKey,TValue) 中找到该键，则为TValue，否则为NULL</returns>
        public static TValue GetValue<TKey, TValue>(this ConcurrentDictionary<TKey, TValue> dict, TKey key, TValue defaultValue = default(TValue))
        {
            TValue value;
            return dict.TryGetValue(key, out value) ? value : defaultValue;
        }
        #endregion

        #region string.Format扩展
        /// <summary>
        ///  将指定字符串中的格式项替换为指定数组中相应对象的字符串表示形式。(扩展)
        /// </summary>
        /// <param name="format">复合格式字符串。</param>
        /// <param name="args">一个对象数组，其中包含零个或多个要设置格式的对象。</param>
        /// <returns></returns>
        public static string FormatWith(this string format, params object[] args)
        {
            return string.Format(format, args);
        }
        /// <summary>
        ///  将指定字符串中的格式项替换为指定数组中相应对象的字符串表示形式。(扩展)
        /// </summary>
        /// <param name="format">复合格式字符串。</param>
        /// <param name="arg0">要设置格式的第一个对象。</param>
        /// <returns></returns>
        public static string FormatWith(this string format, object arg0)
        {
            return string.Format(format, arg0);
        }
        /// <summary>
        ///  将指定字符串中的格式项替换为指定数组中相应对象的字符串表示形式。(扩展)
        /// </summary>
        /// <param name="format">复合格式字符串。</param>
        /// <param name="arg0">要设置格式的第一个对象</param>
        /// <param name="arg1">要设置格式的第二个对象。</param>
        /// <returns></returns>
        public static string FormatWith(this string format, object arg0, object arg1)
        {
            return string.Format(format, arg0, arg1);
        }
        /// <summary>
        ///  将指定字符串中的格式项替换为指定数组中相应对象的字符串表示形式。(扩展)
        /// </summary>
        /// <param name="format">复合格式字符串。</param>
        /// <param name="arg0">要设置格式的第一个对象</param>
        /// <param name="arg1">要设置格式的第二个对象</param>
        /// <param name="arg2">要设置格式的第三个对象。</param>
        /// <returns></returns>
        public static string FormatWith(this string format, object arg0, object arg1, object arg2)
        {
            return string.Format(format, arg0, arg1, arg2);
        }

        #endregion

        #region string.Join扩展
        /// <summary>
        /// 串联类型为 System.String 的 System.Collections.Generic.IEnumerable T 构造集合的成员，其中在每个成员之间使用指定的分隔符。(扩展)
        /// </summary>
        /// <param name="separator">要用作分隔符的字符串。</param>
        /// <param name="values">一个包含要串联的字符串的集合。</param>
        /// <returns>一个由 values 的成员组成的字符串，这些成员以 separator 字符串分隔。</returns>
        public static string Join(this object values, string separator)
        {
            if (values.GetType() == typeof(System.Object[]))
            {
                object[] v = (object[])values;
                return string.Join(separator, v);
            }
            else if (values.GetType() == typeof(System.String[]))
            {
                string[] v = (string[])values;
                return string.Join(separator, v);
            }
            else if (values.GetType() == typeof(System.Collections.Generic.List<string>))
            {
                List<string> v = (List<string>)values;
                return string.Join(separator, v);
            }
            return string.Join(separator, values);
        }

        public static string Join(this string separator, params string[] value)
        {
            return string.Join(separator, value);
        }

        //public static string Join(this object[] value, string splitValue)
        //{ 
        //}
        #endregion

        #region string.IsNullOrWhiteSpace扩展
        /// <summary>
        /// 指示指定的字符串是 null、空还是仅由空白字符组成(扩展)。
        /// </summary>
        /// <param name="s">要验证的字符串。</param>
        /// <returns>如果 value 参数为 null 或 System.String.Empty，或者如果 value 仅由空白字符组成，则为 true。</returns>
        public static bool IsNullOrWhiteSpace(this string s)
        {
            return string.IsNullOrWhiteSpace(s);
        }
        #endregion

        /// <summary>
        /// 连接指定 System.Object 数组中的元素的 System.String 表示形式，包含当前的字符串(扩展)。
        /// </summary>
        /// <param name="s">返回</param>
        /// <param name="args">一个对象数组，其中包含要连接的元素。</param>
        /// <returns>args 中元素的值经过连接的字符串表示形式。</returns>
        public static string ConcatWith(this string s, params object[] args)
        {

            return string.Concat(s, string.Concat(args));
        }
        public static string ConcatWithSplit(this string s, string split, params object[] args)
        {
            return string.Concat(s, string.Join(split, args));
        }
        //public static string Concat(string split, params object[] args)
        //{
        //    return string.Join(split, args);
        //}
        /// <summary>
        /// 连接两个指定对象的字符串表示形式。
        /// </summary>
        /// <param name="s"></param>
        /// <param name="arg0"></param>
        /// <returns></returns>
        public static string ConcatWith(this string s, object arg0)
        {
            return string.Concat(s, arg0);
        }

        /// <summary>
        /// 连接三个指定对象的字符串表示形式。
        /// </summary>
        /// <param name="s"></param>
        /// <param name="arg0"></param>
        /// <param name="arg1"></param>
        /// <returns></returns>
        public static string ConcatWith(this string s, object arg0, object arg1)
        {
            return string.Concat(s, arg0, arg1);
        }
        public static string ConcatWithSplit(this string s, string split, object arg0, object arg1)
        {
            return string.Concat(s, string.Join(split, new string[] { arg0.ToString(), arg1.ToString() }));
        }
        /// <summary>
        /// 将四个指定对象的 System.String 表示形式与可选变量长度参数列表中指定的任何对象串联起来。
        /// </summary>
        /// <param name="s"></param>
        /// <param name="arg0"></param>
        /// <param name="arg1"></param>
        /// <param name="arg2"></param>
        /// <returns></returns>
        public static string ConcatWith(this string s, object arg0, object arg1, object arg2)
        {
            return string.Concat(s, arg0, arg1, arg2);
        }
        public static string ConcatWithSplit(this string s, string split, object arg0, object arg1, object arg2)
        {
            return string.Concat(s, string.Join(split, new string[] { arg0.ToString(), arg1.ToString(), arg2.ToString() }));
            //return string.Concat(s, arg0, arg1, arg2);
        }
        #region 数据类型转换

        /// <summary>
        /// 转成绝对值
        /// </summary>
        /// <param name="s"></param>
        /// <returns></returns>
        public static int ToABS(this int s)
        {
            return Math.Abs(s);
        }

        /// <summary>
        /// 将一个对象转换成Int32
        /// </summary>
        /// <param name="obj">要转换的对象</param>
        /// <param name="defaultValue">转换失败返回的值，默认为default(int)</param>
        /// <returns></returns>
        public static int ToInt32(this object obj, int defaultValue = default(int))
        {
            if (obj == null)
            {
                return defaultValue;
            }
            int value;
            if (obj.GetType() == typeof(string))
            {
                return obj.ToString().ToInt32(defaultValue);
            }
            else
            {
                try
                {
                    return Convert.ToInt32(obj);
                }
                catch
                {
                    return defaultValue;
                }
            }
        }

        public static uint ToUInt32(this object obj, uint defaultValue = default(uint))
        {
            if (obj == null) return defaultValue;
            int value = Convert.ToInt32(obj);

            return (uint)Math.Abs(value);
        }

        /// <summary>
        /// 将一个字符串转换成Int32
        /// </summary>
        /// <param name="s">要转换的对象</param>
        /// <param name="defaultValue">转换失败返回的值，默认为default(int)</param>
        /// <returns></returns>
        public static int ToInt32(this string s, int defaultValue = default(int))
        {
            int value;
            if (s == null) return defaultValue;
            if (int.TryParse(s, out value))
            {
                return value;
            }
            return defaultValue;
        }

        /// <summary>
        /// 将一个对象转换成Int64
        /// </summary>
        /// <param name="obj">要转换的对象</param>
        /// <param name="defaultValue">转换失败返回的值，默认为default(long)</param>
        /// <returns></returns>
        public static long ToInt64(this object obj, long defaultValue = default(long))
        {
            if (obj == null)
            {
                return defaultValue;
            }
            long value;
            if (obj.GetType() == typeof(string))
            {
                if (long.TryParse(obj.ToString(), out value))
                {
                    return value;
                }
                return defaultValue;
            }
            else
                try
                {
                    return Convert.ToInt64(obj);
                }
                catch
                {
                    return defaultValue;
                }
        }

        public static ulong ToUInt64(this object obj, ulong defaultValue = default(ulong))
        {
            if (obj == null)
            {
                return defaultValue;
            }
            ulong value;
            if (ulong.TryParse(obj.ToString(), out value))
            {
                return value;
            }
            return defaultValue;
        }

        /// <summary>
        /// 将一个字符串转换成Int64
        /// </summary>
        /// <param name="s">要转换的对象</param>
        /// <param name="defaultValue">转换失败返回的值，默认为default(long)</param>
        /// <returns></returns>
        public static long ToInt64(this string s, long defaultValue = default(long))
        {
            long value;
            if (s == null) return defaultValue;
            if (long.TryParse(s, out value))
            {
                return value;
            }

            return defaultValue;
        }

        public static double ToDouble(this object s, double defaultValue = default(double))
        {
            double value;
            if (s == null) return defaultValue;
            if (double.TryParse(s.ToString(), out value))
            {
                return value;
            }

            return defaultValue;
        }

        public static decimal ToDecimal(this object s, decimal defaultValue = default(decimal))
        {
            decimal value;
            if (s == null) return defaultValue;
            if (decimal.TryParse(s.ToString(), out value))
            {
                return value;
            }

            return defaultValue;
        }

        public static ulong ToUInt64(this string s, ulong defaultValue = default(ulong))
        {
            ulong value;
            if (s == null) return defaultValue;
            if (ulong.TryParse(s, out value))
            {
                return value;
            }
            return defaultValue;
        }

        /// <summary>
        /// 将一个对象转换成DateTime
        /// </summary>
        /// <param name="obj">要转换的对象</param>
        /// <param name="defaultValue">转换失败返回的值，默认为default(DateTime)</param>
        /// <returns></returns>
        public static DateTime ToDateTime(this object obj, DateTime defaultValue = default(DateTime))
        {
            DateTime value;
            if (obj == null) return defaultValue;
            if (DateTime.TryParse(obj.ToString(), out value))
            {
                return value;
            }
            return defaultValue;
        }

        /// <summary>
        /// 将一个对象转换成bool
        /// </summary>
        /// <param name="value">要转换的对象</param>
        /// <param name="defaultValue">转换失败返回的值，默认为default(bool)</param>
        /// <returns></returns>
        public static bool ToBool(this object value, bool defaultValue = default(bool))
        {
            if (value == null)
                return false;
            bool result;
            if (bool.TryParse(value.ToString(), out result))
            {
                return result;
            }
            return defaultValue;
        }

        /// <summary>
        /// 将一个字符串转换成DateTime
        /// </summary>
        /// <param name="s">要转换的对象</param>
        /// <param name="defaultValue">转换失败返回的值，默认为default(DateTime)</param>
        /// <returns></returns>
        public static DateTime ToDateTime(this string s, DateTime defaultValue = default(DateTime))
        {
            DateTime value;
            if (s == null) return defaultValue;
            if (DateTime.TryParse(s, out value))
            {
                return value;
            }
            return defaultValue;
        }

        /// <summary>
        /// 将一个对象转换成字符串
        /// </summary>
        /// <param name="obj">如果对象为NULL，则返回string.Empty</param>
        /// <returns></returns>
        public static string ToStringEmpty(this object obj)
        {
            if (obj == null)
            {
                return string.Empty;
            }

            return obj.ToString();
        }

        /// <summary>
        /// 将字符串转换成ASCII byte数组
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static byte[] ToByteASCII(this string str)
        {
            return Encoding.ASCII.GetBytes(str);
        }

        public static string ToStringASCII(this byte[] bytes)
        {
            return Encoding.ASCII.GetString(bytes);
        }

        /// <summary>
        /// 将一个字符串转换成字符串
        /// </summary>
        /// <param name="s">如果对象为NULL，则返回string.Empty</param>
        /// <returns></returns>
        public static string ToStringEmpty(this string s)
        {
            if (s == null)
            {
                return string.Empty;
            }

            return s;
        }

        #endregion
        public static long ToMilliSeconds(this string cdTime)
        {
            return (long)Convert.ToDateTime(cdTime).Subtract(DateTime.Parse("00:00:00")).TotalMilliseconds;
        }

        public static DateTime ToHHmmssDateTime(this string cdTime)
        {
            return Convert.ToDateTime(cdTime);
        }

        public static long ToMilliSeconds(this TimeSpan cdTime)
        {
            return (long)cdTime.TotalMilliseconds;
        }
        public static long ToMilliSeconds(this DateTime? cdTime)
        {
            if (cdTime.HasValue)
                return (long)cdTime.Value.Subtract(DateTime.Parse("00:00:00")).TotalMilliseconds;
            else
                return 0;
        }
        public static string ToDateTime_MilliSeconds(this int milliSeconds)
        {
            TimeSpan t = new TimeSpan(0, 0, 0, milliSeconds);
            return "{0}:{1}:{2}.{3}".FormatWith(new object[] { t.Hours.ToString().PadLeft(2, '0'), t.Minutes.ToString().PadLeft(2, '0'), t.Seconds.ToString().PadLeft(2, '0'), t.Milliseconds.ToString().PadLeft(3, '0') });

        }
        public static long ToSecond(this DateTime? cdTime)
        {
            if (cdTime.HasValue)
                return (long)cdTime.Value.Subtract(DateTime.Parse("00:00:00")).TotalSeconds;
            else
                return 0;
        }
        public static bool IsBetween(this int value, int minValue, int maxValue)
        {
            return value >= minValue && value <= maxValue;

        }
        public static bool IsBetween(this DateTime value, DateTime minValue, DateTime maxValue)
        {
            return value >= minValue && value <= maxValue;
        }
        public static bool IsBetweenTime(this DateTime value, string minValue, string maxValue)
        {
            value = DateTime.Parse(value.ToShortTimeString());
            return value >= DateTime.Parse(minValue) && value <= DateTime.Parse(maxValue);
        }
        public static bool IsIn(this int value, int value1, int value2)
        {
            return value == value1 || value == value2;

        }
        public static bool IsNotIn(this string value, string[] values)
        {
            return !values.Contains(value);
        }
        public static bool IsIn(this object value, params object[] values)
        {
            foreach (var item in values)
            {
                if (item.ToString() == value.ToString())
                {
                    return true;
                }
            }

            return false;
        }
        public static bool IsIn(this string value, string value1, string value2)
        {
            return value == value1 || value == value2;

        }
        public static bool IsIn(this string value, int value1, int value2)
        {
            return value == value1.ToString() || value == value2.ToString();


        }
        public static bool NotIn(this int value, int value1, int value2, int value3)
        {
            return !(value == value1 || value == value2 || value == value3);

        }
        public static bool IsIn(this string value, params string[] values)
        {

            return values.Contains(value);
            //foreach (object v in Values)
            //    if (v.ToString() == Value)
            //        return true;
            //return false;

        }
        public static string PadLeft(this Int32 value, int len, char paddingChar)
        {
            return value.ToString().PadLeft(len, paddingChar);
        }
        public static string ToBit(this bool value)
        {
            return value ? "1" : "0";
        }




        /// <summary>
        /// 获取两个时间毫秒差
        /// </summary>
        /// <param name="nowTime">当前时间</param>
        /// <param name="cdTime">过期时间</param>
        /// <returns></returns>
        public static long ToSpanMilliSeconds(this DateTime beginDT, DateTime? planDT)
        {
            TimeSpan ts = planDT.Value - beginDT;
            return ts.ToMilliSeconds();

        }
        /// <summary>
        /// 获取两个时间毫秒差
        /// </summary>
        /// <param name="nowTime">当前时间</param>
        /// <param name="cdTime">过期时间</param>
        /// <returns></returns>
        public static long ToSpanMilliSeconds(this DateTime nowTime, DateTime cdTime)
        {

            return (long)Math.Ceiling((cdTime - nowTime).TotalMilliseconds);

        }

        /// <summary>
        /// 获取两个时间秒差
        /// </summary>
        /// <param name="nowTime">当前时间</param>
        /// <param name="cdTime">过期时间</param>
        /// <returns>返回大于等于0的秒数</returns>
        public static long ToSpanSeconds(this DateTime nowTime, DateTime cdTime)
        {
            long seconds = (long)Math.Ceiling((cdTime - nowTime).TotalSeconds);
            return seconds > 0 ? seconds : 0;
        }
        /// <summary>
        /// 获取两个时间秒差
        /// </summary>
        /// <param name="nowTime">当前时间</param>
        /// <param name="cdTime">过期时间</param>
        /// <returns>返回大于等于0的秒数</returns>
        public static long ToSpanSeconds(this DateTime nowTime, DateTime? cdTime)
        {
            if (cdTime.HasValue)
            {
                long seconds = (long)Math.Ceiling((cdTime.Value - nowTime).TotalSeconds);
                return seconds > 0 ? seconds : 0;
            }
            else
            {
                return 0;
            }
        }

        /// <summary>
        /// 获取两个时间秒差的无符号值
        /// </summary>
        /// <param name="nowTime">当前时间</param>
        /// <param name="cdTime">过期时间</param>
        /// <returns>返回大于等于0的秒数</returns>
        public static long ToUSpanSeconds(this DateTime nowTime, DateTime cdTime)
        {
            if (nowTime < cdTime)
            {
                return nowTime.ToSpanSeconds(cdTime);
            }
            else
            {
                return cdTime.ToSpanSeconds(nowTime);
            }
        }

        public static IEnumerable<TSource> DistinctByEx<TSource, TKey>(this IEnumerable<TSource> source, Func<TSource, TKey> keySelector)
        {
            HashSet<TKey> seenKeys = new HashSet<TKey>();
            foreach (TSource element in source)
            {
                if (seenKeys.Add(keySelector(element)))
                {
                    yield return element;
                }
            }
        }

        //public static string GetDescription(this Enum value)
        //{
        //    Type enumType = value.GetType();
        //    // 寻找枚举值的组合。
        //    EnumCache cache = GetEnumCache(enumType.TypeHandle);
        //    ulong valueUL = ToUInt64(value);
        //    int idx = Array.BinarySearch(cache.Values, valueUL);
        //    if (idx >= 0)
        //    {
        //        // 枚举值已定义，直接返回相应的描述。
        //        return cache.Descriptions[idx];
        //    }
        //    // 不是可组合的枚举，直接返回枚举值得字符串形式。
        //    if (!cache.HasFlagsAttribute)
        //    {
        //        return GetStringValue(enumType, valueUL);
        //    }
        //    List<string> list = new List<string>();
        //    // 从后向前寻找匹配的二进制。
        //    for (int i = cache.Values.Length - 1; i >= 0 && valueUL != 0UL; i--)
        //    {
        //        ulong enumValue = cache.Values[i];
        //        if (enumValue == 0UL)
        //        {
        //            continue;
        //        }
        //        if ((valueUL & enumValue) == enumValue)
        //        {
        //            valueUL -= enumValue;
        //            list.Add(cache.Descriptions[i]);
        //        }
        //    }
        //    list.Reverse();
        //    // 添加最后剩余的未定义值。
        //    if (list.Count == 0 || valueUL != 0UL)
        //    {
        //        list.Add(GetStringValue(enumType, valueUL));
        //    }
        //    return string.Join(", ", list);
        //}

        public static List<T> ToList<T>(this DataTable dt)
        {
            //定义集合
            List<T> ts = System.Activator.CreateInstance<List<T>>();
            if (dt == null || dt.Rows.Count == 0)
            {
                return ts;
            }
            T t = System.Activator.CreateInstance<T>();
            string tempName = "";
            //获取此模型的公共属性
            PropertyInfo[] propertys = t.GetType().GetProperties();
            foreach (DataRow row in dt.Rows)
            {
                t = System.Activator.CreateInstance<T>();
                foreach (PropertyInfo pi in propertys)
                {
                    tempName = pi.Name;
                    //检查DataTable是否包含此列
                    if (dt.Columns.Contains(tempName))
                    {
                        //判断此属性是否有set
                        if (!pi.CanWrite)
                            continue;
                        object value = row[tempName];
                        if (value != DBNull.Value)
                            pi.SetValue(t, value, null);
                    }
                }
                ts.Add(t);
            }
            return ts;
        }

        public static T ToModel<T>(this DataRow dr) where T : new()
        {
            if (dr == null)
            {
                return default(T);
            }
            T t = new T();
            string tempName = "";
            //获取此模型的公共属性
            PropertyInfo[] propertys = t.GetType().GetProperties();
            foreach (PropertyInfo pi in propertys)
            {
                tempName = pi.Name;
                //检查DataTable是否包含此列
                if (dr.Table.Columns.Contains(tempName))
                {
                    //判断此属性是否有set
                    if (!pi.CanWrite)
                        continue;
                    object value = dr[tempName];
                    if (value != DBNull.Value)
                        pi.SetValue(t, value, null);
                }
            }

            return t;
        }

        public static List<T> ToList<T>(this DataRow[] drs) where T : new()
        {
            //定义集合
            List<T> ts = new List<T>();
            if (drs.Length == 0)
            {
                return ts;
            }
            T t = new T();
            string tempName = "";
            //获取此模型的公共属性
            PropertyInfo[] propertys = t.GetType().GetProperties();
            foreach (DataRow row in drs)
            {
                t = new T();
                foreach (PropertyInfo pi in propertys)
                {
                    tempName = pi.Name;
                    //检查DataTable是否包含此列
                    if (row.Table.Columns.Contains(tempName))
                    {
                        //判断此属性是否有set
                        if (!pi.CanWrite)
                            continue;
                        object value = row[tempName];
                        if (value != DBNull.Value)
                            pi.SetValue(t, value, null);
                    }
                }
                ts.Add(t);
            }
            return ts;
        }

        /// <summary>
        /// 正则验证
        /// </summary>
        /// <param name="input"></param>
        /// <param name="pattern"></param>
        /// <returns></returns>
        public static bool IsMatch(this string input, string pattern)
        {
            return new Regex(pattern).IsMatch(input);
        }

        /// <summary>
        /// GUID去掉分隔符
        /// </summary>
        /// <param name="guid"></param>
        /// <returns></returns>
        public static string GUIDFormat(this Guid guid)
        {
            return guid.ToString("N");
        }



        #region 进制转
        /// <summary> 
        /// 字符串转16进制字节数组 
        /// </summary> 
        /// <param name="hexString"></param> 
        /// <returns></returns> 
        public static byte[] ToHexByte(this string hexString)
        {
            hexString = hexString.Replace(" ", "");
            if ((hexString.Length % 2) != 0)
                hexString += " ";
            byte[] returnBytes = new byte[hexString.Length / 2];
            for (int i = 0; i < returnBytes.Length; i++)
                returnBytes[i] = Convert.ToByte(hexString.Substring(i * 2, 2), 16);
            return returnBytes;
        }

        /// <summary> 
        /// 字节数组转16进制字符串 
        /// </summary> 
        /// <param name="bytes"></param> 
        /// <returns></returns> 
        public static string ToHexStr(this byte[] bytes)
        {
            string returnStr = "";
            if (bytes != null)
            {
                for (int i = 0; i < bytes.Length; i++)
                {
                    returnStr += bytes[i].ToString("X2");
                }
            }
            return returnStr;
        }

        /// <summary> 
        /// 从汉字转换到16进制 
        /// </summary> 
        /// <param name="s"></param> 
        /// <param name="enc">编码,如"utf-8","gb2312"</param> 
        /// <param name="isSplit">是否每字符用逗号分隔</param> 
        /// <returns></returns> 
        public static string ToHex(this string s, Encoding enc, bool isSplit)
        {
            if ((s.Length % 2) != 0)
            {
                s += " ";//空格 
                //throw new ArgumentException("s is not valid chinese string!"); 
            }
            System.Text.Encoding chs = enc;
            byte[] bytes = chs.GetBytes(s);
            string str = "";
            for (int i = 0; i < bytes.Length; i++)
            {
                str += string.Format("{0:X}", bytes[i]);
                if (isSplit && (i != bytes.Length - 1))
                {
                    str += string.Format("{0}", ",");
                }
            }
            return str.ToLower();
        }

        ///<summary> 
        /// 从16进制转换成汉字 
        /// </summary> 
        /// <param name="hex"></param> 
        /// <param name="enc">编码,如"utf-8","gb2312"</param> 
        /// <returns></returns> 
        public static string UnHex(this string hex, Encoding enc)
        {
            if (hex == null)
                throw new ArgumentNullException("hex");
            hex = hex.Replace(",", "");
            hex = hex.Replace("\n", "");
            hex = hex.Replace("\\", "");
            hex = hex.Replace(" ", "");
            if (hex.Length % 2 != 0)
            {
                hex += "20";//空格 
            }
            // 需要将 hex 转换成 byte 数组。 
            byte[] bytes = new byte[hex.Length / 2];
            for (int i = 0; i < bytes.Length; i++)
            {
                try
                {
                    // 每两个字符是一个 byte。 
                    bytes[i] = byte.Parse(hex.Substring(i * 2, 2),
                    System.Globalization.NumberStyles.HexNumber);
                }
                catch
                {
                    // Rethrow an exception with custom message. 
                    throw new ArgumentException("hex is not a valid hex number!", "hex");
                }
            }
            System.Text.Encoding chs = enc;
            return chs.GetString(bytes);
        }
        #endregion
    }
}