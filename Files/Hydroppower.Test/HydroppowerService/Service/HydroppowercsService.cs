using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Http;
using Vlinker.Common.ApiInvoker;

namespace HydroppowerService.Threads
{
    public class HydroppowercsService
    {
        private string apiBaseAddress = "http://localhost:17990";

        /// <summary>
        /// 充值
        /// </summary>       
        /// <returns></returns>
        public string ReCharge(string meterNo,decimal money)
        {
            string api = string.Format(@"/Hydropower/ReCharge");

            //string time = DateTime.Now.ToString("yyyyMMddHHmmss");

            //string str = @"{'client_id':'joy000001','datetime':'" + time + "'}";

            //string publickey = @"<RSAKeyValue><Modulus>lB4WtWGYehZg3A+RcVVJyl3Cxn8GdWGxS4Ya+jN+BzJ17pDucVpOa80Ea7FtKqxKZq1AsoRlaQ8MPM/9i/vM9w==</Modulus><Exponent>AQAB</Exponent></RSAKeyValue>";
             

            //string secret = RSAEncrypt(publickey, str); 

            string strJson = @"{'SupplierCode':'Joy','meterNo':'" + meterNo + "','money':'" + money + "'}";

            var requestParam = new Dictionary<string, string>
                {
                    { "jsonData", strJson },
                };

            return WebApiInvokePost(api, requestParam);
        }


        /// <summary>
        /// 退费
        /// </summary>       
        /// <returns></returns>
        public string RefundByMeterNo(string meterNo, decimal money)
        {
            string api = string.Format(@"/Hydropower/RefundByMeterNo");
             
            string strJson = @"{'SupplierCode':'Joy','meterNo':'" + meterNo + "','money':'" + money + "'}";

            var requestParam = new Dictionary<string, string>
                {
                    { "jsonData", strJson },
                };

            return WebApiInvokePost(api, requestParam);
        }

        /// <summary>
        /// 控制继电器
        /// </summary>
        /// <param name="meterNo"></param>
        /// <param name="money"></param>
        /// <returns></returns>
        public string MbusControlByMeterNo(string meterNo, int action)
        {
            string api = string.Format(@"/Hydropower/MbusControlByMeterNo");

            string strJson = @"{'SupplierCode':'Joy','meterNo':'" + meterNo + "','action':'" + action + "'}";

            var requestParam = new Dictionary<string, string>
                {
                    { "jsonData", strJson },
                };

            return WebApiInvokePost(api, requestParam);
        }

        /// <summary>
        /// 发送短信
        /// </summary>
        /// <param name="meterNo"></param>
        /// <param name="money"></param>
        /// <returns></returns>
        public string SendSmsByMeterNo(string meterNo)
        {
            string api = string.Format(@"/Hydropower/SendSmsByMeterNo");

            string strJson = @"{'SupplierCode':'Joy','meterNo':'" + meterNo + "'}";

            var requestParam = new Dictionary<string, string>
                {
                    { "jsonData", strJson },
                };

            return WebApiInvokePost(api, requestParam);
        }

        /// <summary>
        /// 根据表号抄表
        /// </summary>
        /// <param name="meterNo"></param>
        /// <param name="money"></param>
        /// <returns></returns>
        public string ReadByMeterNo(string meterNo)
        {
            string api = string.Format(@"/Hydropower/ReadByMeterNo");

            string strJson = @"{'SupplierCode':'Joy','meterNo':'" + meterNo + "'}";

            var requestParam = new Dictionary<string, string>
                {
                    { "jsonData", strJson },
                };

            return WebApiInvokePost(api, requestParam);
        }
         
        /// <summary>
        /// 根据时间段获取数据
        /// </summary>
        /// <param name="meterNo"></param>
        /// <param name="money"></param>
        /// <returns></returns>
        public string FindReadInfoByDate(DateTime startDate, DateTime endDate)
        {
            string api = string.Format(@"/Hydropower/FindReadInfoByDate");

            string strJson = @"{'SupplierCode':'Joy','StartTime':'" + startDate.ToString("yyyy-MM-dd") + "','EndTime':'" + endDate.ToString("yyyy-MM-dd") + "'}";

            var requestParam = new Dictionary<string, string>
                {
                    { "jsonData", strJson },
                };

            return WebApiInvokePost(api, requestParam);
        }

        private string WebApiInvokePost(string api, Dictionary<string, string> requestParam)
        {
            string result = "";

            try
            {
                try
                {
                    WebApiInvoker ApiInvoker = new WebApiInvoker(apiBaseAddress);
                    ApiInvoker.InvokeAccessToken();
                    result = ApiInvoker.InvokePostRequest(api, requestParam).Result;
                }
                catch (HttpResponseException re)
                {
                    if (re.Response.StatusCode == System.Net.HttpStatusCode.Unauthorized)
                    {
                        result = "{\"success\":false,\"desc\":\"无权限访问\"}";
                    }
                    else
                    {
                        result = "{\"success\":false,\"desc\":\"" + re.Response.Content.ReadAsStringAsync().Result + "\"}";
                    }
                }
            }
            catch (Exception e)
            {
                result = "{\"success\":false,\"desc\":\"" + e.Message + "\"}";
            }

            return result;
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