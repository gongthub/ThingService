using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using Vlinker.Common.ApiInvoker;

namespace Vlinker.OMS.WebServiceTest2.Services
{
    public class YunyouDoorService
    {
        private string apiBaseAddress = "http://localhost:17990";

        /// <summary>
        /// 远程开门
        /// </summary>        
        /// <returns></returns>
        public string RemoteOpenDoor()
        {
            string api = string.Format(@"/DoorLock/RemoteOpenDoor");

            string strJson = @"{'SupplierCode':'Yunyou','StoreCode':'SH001','DoorType':'2','RoomCode':'888-1','SubDoorCode':'A','AuthoredMobile':'13477063093'}";

            var requestParam = new Dictionary<string, string>
                {
                    { "jsonData", strJson },
                };

            return WebApiInvokePost(api,requestParam);
        }

        /// <summary>
        /// 授权入住
        /// </summary>       
        /// <returns></returns>
        public string CheckInAuth()
        {
            string api = string.Format(@"/DoorLock/CheckInAuth");

            string strJson = @"{'SupplierCode':'Yunyou','StoreCode':'SH001','DoorType':'2','RoomCode':'888','SubDoorCode':'A','StartTime':'2016-06-28', 'EndTime':'2016-07-30', 'AuthoredName':'测试','AuthoredMobile':'13477063093', 'SendSMS':'1'}";

            var requestParam = new Dictionary<string, string>
                {
                    { "jsonData", strJson },
                };

            return WebApiInvokePost(api, requestParam);
        }

        /// <summary>
        /// 取消授权
        /// </summary>        
        /// <returns></returns>
        public string DeleleAuth()
        {
            string api = string.Format(@"/DoorLock/DeleleAuth");

            string strJson = @"{'SupplierCode':'Yunyou','StoreCode':'SH001','DoorType':'2','RoomCode':'888','SubDoorCode':'A','AuthoredMobile':'13477063093'}";

            var requestParam = new Dictionary<string, string>
                {
                    { "jsonData", strJson },
                };

            return WebApiInvokePost(api, requestParam);
        }

        /// <summary>
        /// 设置密码
        /// </summary>       
        /// <returns></returns>
        public string SetPassword(string pwd,string phone)
        {
            string api = string.Format(@"/DoorLock/SetPassword");

            string strJson = @"{'SupplierCode':'Yunyou','StoreCode':'SH001','DoorType':'2','RoomCode':'888','SubDoorCode':'A','StartTime':'2016-06-28', 'EndTime':'2016-07-30', 'AuthoredName':'测试','AuthoredMobile':'" + phone + "','Password':'" + pwd + "', 'SendSMS':'1'}";

            var requestParam = new Dictionary<string, string>
                {
                    { "jsonData", strJson },
                };

            return WebApiInvokePost(api, requestParam);
        }

        /// <summary>
        /// 删除密码
        /// </summary>      
        /// <returns></returns>
        public string DeletePassword()
        {
            string api = string.Format(@"/DoorLock/DeletePassword");

            string strJson = @"{'SupplierCode':'Yunyou','StoreCode':'SH001','DoorType':'2','RoomCode':'888','SubDoorCode':'A','AuthoredMobile':'13477063093'}";

            var requestParam = new Dictionary<string, string>
                {
                    { "jsonData", strJson },
                };

            return WebApiInvokePost(api, requestParam);
        }

        /// <summary>
        /// 同步房源
        /// </summary>        
        /// <returns></returns>
        public string SynchronizeRoom()
        {            
            string api = string.Format(@"/DoorLock/SynchronizeRoom");
            string result = "";

            string strJson = @"{""SupplierCode"":""Yunyou"",""RoomInfoList"":[{
                    ""StoreCode"":""SH001"",
                    ""StoreName"":""V领地"",
                    ""ProvinceName"":""上海市"",
                    ""CityName"":""上海市"",
                    ""DisName"":""浦东新区"",
                    ""BuildingCode"":""1"",
                    ""FloorCode"":"""",
                    ""RoomCode"":""3001"",
                    ""DoorType"":""1"",
                    ""DoorCode"":""3001"",
                    ""DoorName"":""门禁"",
                    ""SubDoorCode"":""""
                    },{
                    ""StoreCode"":""SH001"",
                    ""StoreName"":""V领地"",
                    ""ProvinceName"":""上海市"",
                    ""CityName"":""上海市"",
                    ""DisName"":""浦东新区"",
                    ""BuildingCode"":""1"",
                    ""FloorCode"":"""",
                    ""RoomCode"":""3001"",
                    ""DoorType"":""2"",
                    ""DoorCode"":""3001"",
                    ""DoorName"":""门禁"",
                    ""SubDoorCode"":""A""
                    }]}";

            var requestParam = new Dictionary<string, string>
                {
                    { "jsonData", strJson },
                };
            
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
                }
            }
            catch (Exception e)
            {
                result = "{\"success\":false,\"desc\":\"异常:" + HttpUtility.UrlEncode(e.Message) + "\"}";
            }

            return result;
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

    }
}