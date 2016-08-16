using Newtonsoft.Json;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Formatting;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using Vlinker.Common.ApiInvoker.Models;

namespace Vlinker.Common.ApiInvoker
{
    public class WebApiInvoker
    {
        private readonly string _apiBaseAddress;

        public WebApiInvoker(string apiBaseAddress)
        {
            _apiBaseAddress = apiBaseAddress;
        }

        public Task<TResult> InvokePostRequest<TResult>(string controller, string action, Dictionary<string, string> arg)
        {
            using (var client = new HttpClient())
            {
                client.DefaultRequestHeaders.Accept.Clear();

                //添加head
                SsoUserInfo userInfo = ParamHelper.GetUserInfo().Result;
                if (userInfo != null && !userInfo.AccessToken.IsNullOrWhiteSpace())
                {
                    client.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", userInfo.AccessToken);
                }

                controller = controller.Replace("Controller", "");

                var response = client.PostAsync(_apiBaseAddress + "api/" + controller + "/" + action, new FormUrlEncodedContent(arg)).Result;
                if (response.IsSuccessStatusCode)
                {
                    var result = response.Content.ReadAsStringAsync().Result;
                    return Task.Factory.StartNew<TResult>(() =>
                    {
                        return JsonConvert.DeserializeObject<TResult>(result);
                    });
                }
                throw new HttpResponseException(response);
            }
        }

        /// <summary>
        /// 请求Token
        /// </summary>
        /// <typeparam name="TResult"></typeparam>
        /// <param name="api"></param>
        /// <param name="arg"></param>
        /// <returns></returns>
        public Task<TResult> InvokePostAccessToken<TResult>(string api, Dictionary<string, string> arg)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(_apiBaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();

                var response = client.PostAsync(api, new FormUrlEncodedContent(arg)).Result;                
                if (response.IsSuccessStatusCode)
                {
                    var result = response.Content.ReadAsStringAsync().Result;
                    return Task.Factory.StartNew<TResult>(() =>
                    {
                        return JsonConvert.DeserializeObject<TResult>(result);
                    });
                }
                throw new HttpResponseException(response);
            }
        }

        public Task<string> InvokeAccessToken(string WebApi, string WebApiUser, string WebApiPwd)
        {
            string resultMess = "";

            SsoUserInfo userInfo = ParamHelper.GetUserInfo().Result;
            var requestParam = new Dictionary<string, string>();

            if (userInfo != null && !userInfo.AccessToken.IsNullOrWhiteSpace() && userInfo.Expires.AddHours(8) >= DateTime.Now.AddSeconds(1))
            {
                return Task.Factory.StartNew<string>(() =>
                {
                    return JsonConvert.DeserializeObject<string>(resultMess);
                });
            }

            if (userInfo == null || userInfo.AccessToken.IsNullOrWhiteSpace() || userInfo.RefToken == null)
            {
                WebApiPwd = ParamHelper.HexMD5Screct(WebApiPwd);
                requestParam = new Dictionary<string, string>
                {
                    { "UserName", WebApiUser },
                    { "Password",WebApiPwd },
                    { "grant_type", "password"}
                };
            }
            else
            {
                requestParam = new Dictionary<string, string>
                {
                    { "refresh_token", userInfo.RefToken },
                    { "grant_type", "refresh_token"}
                };
            }

            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(_apiBaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();

                var response = client.PostAsync(WebApi, new FormUrlEncodedContent(requestParam)).Result;
                if (response.IsSuccessStatusCode)
                {
                    var result = response.Content.ReadAsStringAsync().Result;
                    UserTokenInfo userTokenInfo = JsonConvert.DeserializeObject<UserTokenInfo>(result);

                    SsoUserInfo ssoUserInfo = new SsoUserInfo
                    {
                        ExpiresIn = userTokenInfo.ExpiresIn * 1000,//毫秒
                        Expires = userTokenInfo.Expires,
                        AccessToken = userTokenInfo.AccessToken,
                        RefToken = userTokenInfo.RefToken,
                        NickName = userTokenInfo.NickName.IsNullOrWhiteSpace() ? userTokenInfo.LoginName : userTokenInfo.NickName,
                        UserID = userTokenInfo.UserID
                    };

                    resultMess = response.Content.ReadAsStringAsync().Result;
                    ParamHelper.SetCookies(JsonConvert.SerializeObject(ssoUserInfo));

                    return Task.Factory.StartNew<string>(() =>
                    {
                        return JsonConvert.DeserializeObject<string>(result);
                    });
                }
                else
                {
                    resultMess = response.Content.ReadAsStringAsync().Result;
                    AccessTokenErrorInfo errorInfo  = null;
                    try
                    {
                        errorInfo = JsonConvert.DeserializeObject<AccessTokenErrorInfo>(resultMess);
                    }
                    catch (Exception e)
                    {
                        throw new HttpResponseException(response);
                    }
                    throw new Exception(errorInfo.error_description == null ? errorInfo.error : errorInfo.error_description);                    
                }                
            }
        }

        public Task<string> InvokeAccessToken()
        {
            string WebApiUser = ConfigurationManager.AppSettings["WebApiUser"];
            string WebApiPwd = ConfigurationManager.AppSettings["WebApiPwd"];
            
            string WebApi = "Api/User/Login";

            return InvokeAccessToken(WebApi, WebApiUser, WebApiPwd);
        }

        /// <summary>
        /// 刷新Token
        /// </summary>
        /// <typeparam name="TResult"></typeparam>
        /// <param name="api"></param>
        /// <param name="arg"></param>
        /// <returns></returns>
        public Task<TResult> InvokePostRefreshToken<TResult>(string api, Dictionary<string, string> arg)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(_apiBaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();

                var response = client.PostAsync(api, new FormUrlEncodedContent(arg)).Result;
                if (response.IsSuccessStatusCode)
                {
                    var result = response.Content.ReadAsStringAsync().Result;
                    return Task.Factory.StartNew<TResult>(() =>
                    {
                        return JsonConvert.DeserializeObject<TResult>(result);
                    });
                }
                throw new HttpResponseException(response);
            }
        }

        /// <summary>
        /// GET请求,返回字符串
        /// </summary>
        /// <param name="api"></param>
        /// <returns></returns>
        public Task<string> InvokeGetRequest(string api)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(_apiBaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();

                SsoUserInfo userInfo = ParamHelper.GetUserInfo().Result;

                if (userInfo != null && !userInfo.AccessToken.IsNullOrWhiteSpace())
                {
                    client.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", userInfo.AccessToken);
                }

                var response = client.GetAsync(api).Result;
                if (response.IsSuccessStatusCode)
                {
                    var result = response.Content.ReadAsStringAsync().Result;
                    return Task.Factory.StartNew<string>(() =>
                    {
                        return result;
                    });
                }
                throw new HttpResponseException(response);
            }
        }

        /// <summary>
        /// GET请求,返回泛型对象
        /// </summary>
        /// <param name="api"></param>
        /// <returns></returns>
        public Task<TResult> InvokeGetRequest<TResult>(string api)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(_apiBaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();

                SsoUserInfo userInfo = ParamHelper.GetUserInfo().Result;

                if (userInfo != null && !userInfo.AccessToken.IsNullOrWhiteSpace())
                {
                    client.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", userInfo.AccessToken);
                }

                var response = client.GetAsync(api).Result;
                if (response.IsSuccessStatusCode)
                {
                    var result = response.Content.ReadAsStringAsync().Result;
                    return Task.Factory.StartNew<TResult>(() =>
                    {
                        return JsonConvert.DeserializeObject<TResult>(result);
                    });
                }
                throw new HttpResponseException(response);
            }
        }

        /// <summary>
        /// POST请求,返回字符串
        /// </summary>
        /// <typeparam name="TResult"></typeparam>
        /// <param name="api"></param>
        /// <param name="arg"></param>
        /// <returns></returns>
        public Task<string> InvokePostRequest(string api, Dictionary<string, string> arg)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(_apiBaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();               

                SsoUserInfo userInfo = ParamHelper.GetUserInfo().Result;
                if (userInfo != null && !userInfo.AccessToken.IsNullOrWhiteSpace())
                {
                    client.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", userInfo.AccessToken);
                }

                var response = client.PostAsync(api, new FormUrlEncodedContent(arg)).Result;
                if (response.IsSuccessStatusCode)
                {
                    var result = response.Content.ReadAsStringAsync().Result;
                    return Task.Factory.StartNew<string>(() =>
                    {
                        return result;
                    });
                }
                throw new HttpResponseException(response);
            }
        }

        /// <summary>
        /// POST请求,返回泛型对象
        /// </summary>
        /// <typeparam name="TResult"></typeparam>
        /// <param name="api"></param>
        /// <param name="arg"></param>
        /// <returns></returns>
        public Task<TResult> InvokePostRequest<TResult>(string api, Dictionary<string, string> arg)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(_apiBaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();

                SsoUserInfo userInfo = ParamHelper.GetUserInfo().Result;

                if (userInfo != null && !userInfo.AccessToken.IsNullOrWhiteSpace())
                {
                    client.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", userInfo.AccessToken);
                }

                var response = client.PostAsync(api, new FormUrlEncodedContent(arg)).Result;
                if (response.IsSuccessStatusCode)
                {
                    var result = response.Content.ReadAsStringAsync().Result;
                    return Task.Factory.StartNew<TResult>(()=>
                    {
                        return JsonConvert.DeserializeObject<TResult>(result);
                    });
                }
                throw new HttpResponseException(response);
            }
        }

        /// <summary>
        /// PUT请求,返回字符串
        /// </summary>
        /// <param name="api"></param>
        /// <param name="arg"></param>
        /// <returns></returns>
        public Task<string> InvokePutRequest(string api, Dictionary<string, string> arg)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(_apiBaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();

                SsoUserInfo userInfo = ParamHelper.GetUserInfo().Result;

                if (userInfo != null && !userInfo.AccessToken.IsNullOrWhiteSpace())
                {
                    client.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", userInfo.AccessToken);
                }

                var response = client.PutAsync(api, new FormUrlEncodedContent(arg)).Result;
                if (response.IsSuccessStatusCode)
                {
                    var result = response.Content.ReadAsStringAsync().Result;
                    return Task.Factory.StartNew<string>(() =>
                    {
                        return result;
                    });
                }
                throw new HttpResponseException(response);
            }
        }

        /// <summary>
        /// PUT请求,返回泛型对象
        /// </summary>
        /// <typeparam name="TResult"></typeparam>
        /// <param name="api"></param>
        /// <param name="arg"></param>
        /// <returns></returns>
        public Task<TResult> InvokePutRequest<TResult>(string api, Dictionary<string, string> arg)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(_apiBaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();

                SsoUserInfo userInfo = ParamHelper.GetUserInfo().Result;

                if (userInfo != null && !userInfo.AccessToken.IsNullOrWhiteSpace())
                {
                    client.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", userInfo.AccessToken);
                }

                var response = client.PutAsync(api, new FormUrlEncodedContent(arg)).Result;
                if (response.IsSuccessStatusCode)
                {
                    var result = response.Content.ReadAsStringAsync().Result;

                    return Task.Factory.StartNew<TResult>(() =>
                    {
                        return JsonConvert.DeserializeObject<TResult>(result);
                    });                                       
                }
                throw new HttpResponseException(response);
            }
        }


        /// <summary>
        /// DELETE请求,返回泛型对象
        /// </summary>
        /// <typeparam name="TResult"></typeparam>
        /// <param name="api"></param>
        /// <param name="arg"></param>
        /// <returns></returns>
        public Task<TResult> InvokeDeleteRequest<TResult>(string api)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(_apiBaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();

                SsoUserInfo userInfo = ParamHelper.GetUserInfo().Result;

                if (userInfo != null && !userInfo.AccessToken.IsNullOrWhiteSpace())
                {
                    client.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", userInfo.AccessToken);
                }

                var response = client.DeleteAsync(api).Result;
                if (response.IsSuccessStatusCode)
                {
                    var result = response.Content.ReadAsStringAsync().Result;
                    return Task.Factory.StartNew<TResult>(() =>
                    {
                        return JsonConvert.DeserializeObject<TResult>(result);
                    });    
                }
                throw new HttpResponseException(response);
            }
        }

        /// <summary>
        /// DELETE请求,返回字符串
        /// </summary>
        /// <typeparam name="TResult"></typeparam>
        /// <param name="api"></param>
        /// <param name="arg"></param>
        /// <returns></returns>
        public Task<string> InvokeDeleteRequest(string api)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(_apiBaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();

                SsoUserInfo userInfo = ParamHelper.GetUserInfo().Result;

                if (userInfo != null && !userInfo.AccessToken.IsNullOrWhiteSpace())
                {
                    client.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", userInfo.AccessToken);
                }

                var response = client.DeleteAsync(api).Result;
                if (response.IsSuccessStatusCode)
                {
                    var result = response.Content.ReadAsStringAsync().Result;
                    return Task.Factory.StartNew<string>(() =>
                    {
                        return result;
                    });    
                }
                throw new HttpResponseException(response);
            }
        }


        //private HttpMessageInvoker CreateMessageInvoker()
        //{
        //    var config = new HttpConfiguration();
        //    WebApiConfig.Register(config);
        //    var server = new HttpServer(config);
        //    var messageInvoker = new HttpMessageInvoker(server);
        //    return messageInvoker;
        //}
    }
}