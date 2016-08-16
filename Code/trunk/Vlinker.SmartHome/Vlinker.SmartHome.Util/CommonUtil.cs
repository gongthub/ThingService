using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace Vlinker.SmartHome.Util
{
    public class CommonUtil
    {
        public static NLog.Logger Log = NLog.LogManager.GetCurrentClassLogger();

        public static string GetTimeStamp(DateTime time)
        {
            TimeSpan TimeSpan1 = new TimeSpan(DateTime.Parse("1970-01-01 08:00:00").Ticks);
            TimeSpan TimeSpan2 = new TimeSpan(time.Ticks);
            string timestamp = Math.Round(double.Parse(TimeSpan2.Subtract(TimeSpan1).TotalSeconds.ToString()), 0).ToString();

            return timestamp;
        }

        public static string GetTokenKey(string key)
        {
            byte[] pwBytes = Encoding.UTF8.GetBytes(key);
            byte[] hash = SHA1.Create().ComputeHash(pwBytes);
            StringBuilder hex = new StringBuilder();
            for (int i = 0; i < hash.Length; i++) hex.Append(hash[i].ToString("X2"));
            string token = hex.ToString();

            return token.ToLower();           
        }

        public static  string GetRandomString(int size, bool lowerCase)  
       {
           Random random = new Random();
           StringBuilder _builder = new StringBuilder(size);
           int _startChar = lowerCase ? 97 : 65;//65 = A / 97 = a
           for (int i = 0; i < size; i++)
               _builder.Append((char)(26 * random.NextDouble() + _startChar));
           return _builder.ToString();
       }

        public static string SerializeDictionary(Dictionary<string, object> dic)
        {

            StringBuilder sb = new StringBuilder();
            sb.Append("{");

            foreach (KeyValuePair<string, Object> kv in dic)
            {
                sb.Append("\"" + kv.Key.ToString() + "\":" + "\"" + kv.Value.ToString() + "\"");
            }
            sb.Append("}");

            return sb.ToString();
        }

        public static string SerializeNamevaluecollection(NameValueCollection myCol)
        {
            StringBuilder sb = new StringBuilder();            

            foreach (string key in myCol.Keys)
            {
                if (key == "ALL_HTTP") break;
                //.Replace("\r\n", @"\r\n")
                sb.Append(string.Format("\"{0}\":{2}{1}{2},", key, myCol[key], myCol[key].ToString().StartsWith("[")? "":"\""));
            }

            string strJson = sb.ToString();
            strJson = "{" + strJson.Substring(0, strJson.Length - 1) + "}";

            return strJson;
        }

        public static string HexMD5Screct(string timestamp, string screct)
        {
            screct = timestamp + screct;
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] result = md5.ComputeHash(System.Text.Encoding.Default.GetBytes(screct));
            //return System.Text.Encoding.UTF8.GetString(result);
            string encryptPwd = "";
            foreach (byte b in result)
            {
                encryptPwd += b.ToString("X2");
            }
            return encryptPwd.ToLower();
        }

        /// <summary>
        /// RSA加密
        /// </summary>
        /// <param name="publickey"></param>
        /// <param name="content"></param>
        /// <returns></returns>
        public static string RSAEncrypt(string publickey, string content)
        {
            //publickey = @"<RSAKeyValue><Modulus>5m9m14XH3oqLJ8bNGw9e4rGpXpcktv9MSkHSVFVMjHbfv+SJ5v0ubqQxa5YjLN4vc49z7SVju8s0X4gZ6AzZTn06jzWOgyPRV54Q4I0DCYadWW4Ze3e+BOtwgVU1Og3qHKn8vygoj40J6U85Z/PTJu3hN1m75Zr195ju7g9v4Hk=</Modulus><Exponent>AQAB</Exponent></RSAKeyValue>";
            RSACryptoServiceProvider rsa = new RSACryptoServiceProvider();
            byte[] cipherbytes;
            rsa.FromXmlString(publickey);
            cipherbytes = rsa.Encrypt(Encoding.UTF8.GetBytes(content), false);

            return Convert.ToBase64String(cipherbytes);
        }

        /// <summary>
        /// RSA解密
        /// </summary>
        /// <param name="privatekey"></param>
        /// <param name="content"></param>
        /// <returns></returns>
        public static string RSADecrypt(string privatekey, string content)
        {
            //privatekey = @"<RSAKeyValue><Modulus>5m9m14XH3oqLJ8bNGw9e4rGpXpcktv9MSkHSVFVMjHbfv+SJ5v0ubqQxa5YjLN4vc49z7SVju8s0X4gZ6AzZTn06jzWOgyPRV54Q4I0DCYadWW4Ze3e+BOtwgVU1Og3qHKn8vygoj40J6U85Z/PTJu3hN1m75Zr195ju7g9v4Hk=</Modulus><Exponent>AQAB</Exponent><P>/hf2dnK7rNfl3lbqghWcpFdu778hUpIEBixCDL5WiBtpkZdpSw90aERmHJYaW2RGvGRi6zSftLh00KHsPcNUMw==</P><Q>6Cn/jOLrPapDTEp1Fkq+uz++1Do0eeX7HYqi9rY29CqShzCeI7LEYOoSwYuAJ3xA/DuCdQENPSoJ9KFbO4Wsow==</Q><DP>ga1rHIJro8e/yhxjrKYo/nqc5ICQGhrpMNlPkD9n3CjZVPOISkWF7FzUHEzDANeJfkZhcZa21z24aG3rKo5Qnw==</DP><DQ>MNGsCB8rYlMsRZ2ek2pyQwO7h/sZT8y5ilO9wu08Dwnot/7UMiOEQfDWstY3w5XQQHnvC9WFyCfP4h4QBissyw==</DQ><InverseQ>EG02S7SADhH1EVT9DD0Z62Y0uY7gIYvxX/uq+IzKSCwB8M2G7Qv9xgZQaQlLpCaeKbux3Y59hHM+KpamGL19Kg==</InverseQ><D>vmaYHEbPAgOJvaEXQl+t8DQKFT1fudEysTy31LTyXjGu6XiltXXHUuZaa2IPyHgBz0Nd7znwsW/S44iql0Fen1kzKioEL3svANui63O3o5xdDeExVM6zOf1wUUh/oldovPweChyoAdMtUzgvCbJk1sYDJf++Nr0FeNW1RB1XG30=</D></RSAKeyValue>";
            RSACryptoServiceProvider rsa = new RSACryptoServiceProvider();
            byte[] cipherbytes;
            rsa.FromXmlString(privatekey);
            byte[] s = Convert.FromBase64String(content);
            cipherbytes = rsa.Decrypt(s, false);

            return Encoding.UTF8.GetString(cipherbytes);
        }
    }
}