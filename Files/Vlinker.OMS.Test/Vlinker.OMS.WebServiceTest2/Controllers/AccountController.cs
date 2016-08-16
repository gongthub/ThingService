using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using Vlinker.OMS.WebServiceTest2.Models;
using Newtonsoft.Json;
using Vlinker.Common.ApiInvoker;
using System.Net.Http;
using System.Web.Http;
using System.Security.Cryptography;
using System.Text;
using Vlinker.OMS.WebServiceTest2.Util;
using System.Configuration;
using Vlinker.Common.ApiInvoker.Utils;
using Vlinker.OMS.WebServiceTest2.Services;

namespace Vlinker.OMS.WebServiceTest2.Controllers
{
    public class AccountController : System.Web.Mvc.Controller
    {
        public AccountController()
            : this(new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(new ApplicationDbContext())))
        {
        }

        public ActionResult OpenDoorLog()
        {
            string apiBaseAddress = "http://alms.yeeuu.com";
            string api = string.Format(@"/apartments/{0}/get_device_logs", "888");
            string nonstr = "rwi1";
            string partner_id = "566a3bdf707264056d000001";

            string timestamp = GetTimeStamp();           
            string key = timestamp + "W3CTQ3Dn" + nonstr;
            string token = GetTokenKey(key);

            var requestParam = new Dictionary<string, string>
                {
                    { "partnerId", partner_id },
                    { "timestamp", timestamp},
                    { "nonstr",nonstr },
                    { "token", token},
                    { "doorType ", "2"},
                    { "code ", "888"},
                    { "door ", "南"},
                    { "page ", "15817229949"},
                    { "pageSize ", "15817229949"}
                };

            api = api + "?partnerId=" + partner_id + "&timestamp=" + timestamp + "&nonstr=" + nonstr + "&token=" + token + "&doorType=2" + "&code=888" + "&door=南" + "&page=1&pageSize=10";

            string result = "";
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(apiBaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();

                var response = client.GetAsync(api).Result;
                if (response.IsSuccessStatusCode)
                {
                    result = response.Content.ReadAsStringAsync().Result;
                }
                else
                {
                    throw new HttpResponseException(response);
                }
            }

            return Content(result);
        }

        public ActionResult OpenDoor()
        {
            string apiBaseAddress = "http://alms.yeeuu.com";
            string api = string.Format(@"/apartments/{0}/remote_action","888");
            string nonstr = "rwi1";
            string partner_id = "566a3bdf707264056d000001";
            string timestamp = GetTimeStamp();
            string key = timestamp + "W3CTQ3Dn" + nonstr;
            string token = GetTokenKey(key);

            var requestParam = new Dictionary<string, string>
                {
                    { "partnerId", partner_id },
                    { "nonstr",nonstr },
                    { "timestamp", timestamp},
                    { "token", token.ToLower()},
                    { "buildingId", "SH001"},
                    { "doorType", "2"},
                    { "code", "888"},
                    { "door", "A"},
                    //{ "author", "陶洋"},
                    { "operator", "13477063093"}
                };

            string result = "";
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(apiBaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();

                var response = client.PostAsync(api, new FormUrlEncodedContent(requestParam)).Result;
                if (response.IsSuccessStatusCode)
                {
                    result = response.Content.ReadAsStringAsync().Result;
                }
                else
                {
                    throw new HttpResponseException(response);
                }
            }

            return Content(result);
        }

        public ActionResult Apartment()
        {

            string _apiBaseAddress = "https://alms.yeeuu.com";
            string api = @"/apartments/synchronize_apartments";
            string nonstr = "rwi1";
            string partner_id = "566a3bdf707264056d000001";
            string timestamp = GetTimeStamp();
            string key = timestamp + "W3CTQ3Dn" + nonstr;
            string token = GetTokenKey(key);

            List<ApartmentDto> apartments = new List<ApartmentDto>();

            ApartmentDto Apartment = new ApartmentDto();
            Apartment.provinceId = "9";
            Apartment.cityId = "3";
            Apartment.disId = "49";
            Apartment.houseId = "3001";
            Apartment.buildingName = "V领地";
            Apartment.buildingId = "SH001";
            Apartment.buildingNo = "1";

            Apartment.doorId = "3001"; // 房间Code
            Apartment.code = "code";
            Apartment.name = "name";

            Apartment.door = "door";
            Apartment.doorType = "1";
            Apartment.unit = "";
            Apartment.floor = "";

            apartments.Add(Apartment);

            Apartment = new ApartmentDto();
            Apartment.provinceId = "9";
            Apartment.cityId = "3";
            Apartment.disId = "49";
            Apartment.houseId = "3003";

            Apartment.buildingName = "V领地";
            Apartment.buildingId = "SH001";
            Apartment.buildingNo = "1";

            Apartment.doorId = "3001"; // 房间Code
            Apartment.code = "code";
            Apartment.name = "name";

            Apartment.door = "door";
            Apartment.doorType = "2";
            Apartment.unit = "";
            Apartment.floor = "";

            apartments.Add(Apartment);

            String apartmentJson = JOSNUtil.JsonSerializerBySingleData(apartments.ToArray());

            //apartmentJson = "[{\"provinceId\":\"9\",\"cityId\":\"3\",\"disId\":\"49\",\"houseId\":\"3001\",\"buildingName\":\"V领地\",\"buildingId\":\"SH001\",\"buildingNo\":\"1\",\"doorId\":\"3001\",\"code\":\"3001\",\"door\":\"\",\"name\":null,\"doorType\":\"1\",\"unit\":\"\",\"floor\":\"\"},{\"provinceId\":\"9\",\"cityId\":\"3\",\"disId\":\"49\",\"houseId\":\"3002\",\"buildingName\":\"V领地\",\"buildingId\":\"SH001\",\"buildingNo\":\"1\",\"doorId\":\"3002\",\"code\":\"3002\",\"door\":\"\",\"name\":null,\"doorType\":\"1\",\"unit\":\"\",\"floor\":\"\"}]";

            var requestParam = new Dictionary<string, string>
                {
                    { "partnerId", partner_id },
                    { "timestamp", timestamp},
                    { "nonstr",nonstr },                    
                    { "token", token},
                    { "apartmentList", apartmentJson}
                };

            string result = "";
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(_apiBaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();

                var response = client.PostAsync(api, new FormUrlEncodedContent(requestParam)).Result;
                if (response.IsSuccessStatusCode)
                {
                    result = response.Content.ReadAsStringAsync().Result;
                }else
                {
                    result = "{\"success\":false,\"desc\":\"操作失败\"}";
                    //throw new HttpResponseException(response);
                }

            }
            
            return Content(result);
        }

        public ActionResult Auth()
        {
            string phone = Request.Params["phone"].ToString() == "" ? "123456789" : Request.Params["phone"].ToString();

            string apiBaseAddress = "http://alms.yeeuu.com";
            string api = string.Format(@"/apartments/{0}/auth", "888");
            string nonstr = "rwi1";
            string partner_id = "566a3bdf707264056d000001";
            string timestamp = GetTimeStamp();
            string key = timestamp + "W3CTQ3Dn" + nonstr;
            string token = GetTokenKey(key);

            var requestParam = new Dictionary<string, string>
                {
                    { "partnerId", partner_id },
                    { "nonstr",nonstr },
                    { "timestamp", timestamp},
                    { "token", token},
                    { "buildingId", "SH001"},
                    { "doorType", "2"},
                    { "code", "888"},
                    { "door", "A"},
                    { "startTime", timestamp},
                    { "endTime", (int.Parse(timestamp) + 60 * 60 * 24 * 2).ToString()},
                    { "author", "13062687978"},
                    { "authoredName", "测试"},                    
                    { "authoredMobile", phone}
                };

            string result = "";
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(apiBaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();

                var response = client.PostAsync(api, new FormUrlEncodedContent(requestParam)).Result;
                if (response.IsSuccessStatusCode)
                {
                    result = response.Content.ReadAsStringAsync().Result;
                }
                else
                {
                    throw new HttpResponseException(response);
                }
            }

            return Content(result);
        }

        public ActionResult RemoveAuth()
        {
            string phone = Request.Params["phone"].ToString() == "" ? "123456789" : Request.Params["phone"].ToString();

            string apiBaseAddress = "http://alms.yeeuu.com";
            string api = string.Format(@"/apartments/{0}/delete_auth", "888");
            string nonstr = "rwi1";
            string partner_id = "566a3bdf707264056d000001";
            string timestamp = GetTimeStamp();
            string key = timestamp + "W3CTQ3Dn" + nonstr;
            string token = GetTokenKey(key);

            var requestParam = new Dictionary<string, string>
                {
                    { "partnerId", partner_id },
                    { "nonstr",nonstr },
                    { "timestamp", timestamp},
                    { "token", token},
                    { "buildingId", "SH001"},
                    { "doorType", "2"},
                    { "code", "888"},
                    { "door", "A"},              
                    { "authoredMobile", phone}
                };

            string result = "";
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(apiBaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();

                var response = client.PostAsync(api, new FormUrlEncodedContent(requestParam)).Result;
                if (response.IsSuccessStatusCode)
                {
                    result = response.Content.ReadAsStringAsync().Result;
                }
                else
                {
                    throw new HttpResponseException(response);
                }
            }

            return Content(result);
        }

        public ActionResult SetPassword()
        {
            string phone = Request.Params["phone"].ToString() == "" ? "123456789" : Request.Params["phone"].ToString();
            string password = Request.Params["password"].ToString() == "" ? "123456" : Request.Params["password"].ToString();

            string apiBaseAddress = "http://alms.yeeuu.com";
            string api = string.Format(@"/apartments/{0}/generate_password", "888");
            string nonstr = "rwi1";
            string partner_id = "566a3bdf707264056d000001";
            string timestamp = GetTimeStamp();
            string key = timestamp + "W3CTQ3Dn" + nonstr;
            string token = GetTokenKey(key);

            var requestParam = new Dictionary<string, string>
                {
                    { "partnerId", partner_id },
                    { "nonstr",nonstr },
                    { "timestamp", timestamp},
                    { "token", token},
                    { "buildingId", "SH001"},
                    { "doorType", "2"},
                    { "code", "888"},
                    { "door", "A"},
                    { "startTime", timestamp},
                    { "endTime", (int.Parse(timestamp) + 60 * 60 * 24 * 2).ToString()},
                    { "author", "13062687978"},
                    { "authoredName", "测试"},                    
                    { "authoredMobile", phone},                    
                    { "password", password}
                };

            string result = "";
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(apiBaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();

                var response = client.PostAsync(api, new FormUrlEncodedContent(requestParam)).Result;
                if (response.IsSuccessStatusCode)
                {
                    result = response.Content.ReadAsStringAsync().Result;
                }
                else
                {
                    throw new HttpResponseException(response);
                }
            }

            return Content(result);
        }

        public ActionResult DelPassword()
        {
            string phone = Request.Params["phone"].ToString() == "" ? "123456789" : Request.Params["phone"].ToString();

            string apiBaseAddress = "http://alms.yeeuu.com";
            string api = string.Format(@"/apartments/{0}/remove_password", "888");
            string nonstr = "rwi1";
            string partner_id = "566a3bdf707264056d000001";
            string timestamp = GetTimeStamp();
            string key = timestamp + "W3CTQ3Dn" + nonstr;
            string token = GetTokenKey(key);

            var requestParam = new Dictionary<string, string>
                {
                    { "partnerId", partner_id },
                    { "nonstr",nonstr },
                    { "timestamp", timestamp},
                    { "token", token},
                    { "buildingId", "SH001"},
                    { "doorType", "2"},
                    { "code", "888"},
                    { "door", "A"},           
                    { "authoredMobile", phone}
                };

            string result = "";
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(apiBaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();

                var response = client.PostAsync(api, new FormUrlEncodedContent(requestParam)).Result;
                if (response.IsSuccessStatusCode)
                {
                    result = response.Content.ReadAsStringAsync().Result;
                }
                else
                {
                    throw new HttpResponseException(response);
                }
            }

            return Content(result);
        }

        public string GetTimeStamp()
        {
            TimeSpan TimeSpan1 = new TimeSpan(DateTime.Parse("1970-01-01 08:00:00").Ticks);
            TimeSpan TimeSpan2 = new TimeSpan(DateTime.Now.Ticks);
            string timestamp = Math.Round(double.Parse(TimeSpan2.Subtract(TimeSpan1).TotalSeconds.ToString()), 0).ToString();

            return timestamp;
        }

        public string GetTokenKey(string key)
        {
            byte[] pwBytes = Encoding.UTF8.GetBytes(key);
            byte[] hash = SHA1.Create().ComputeHash(pwBytes);
            StringBuilder hex = new StringBuilder();
            for (int i = 0; i < hash.Length; i++) hex.Append(hash[i].ToString("X2"));
            string token = hex.ToString();

            return token.ToLower();
        }

        public AccountController(UserManager<ApplicationUser> userManager)
        {
            UserManager = userManager;
        }

        public UserManager<ApplicationUser> UserManager { get; private set; }

        //
        // GET: /Account/Login

        //
        // POST: /Account/Login
        [ValidateAntiForgeryToken]
        //public async Task<ActionResult> Login(LoginViewModel model, string returnUrl)
        //{
        //    //调用API验证登陆名和密码
        //    try
        //    {
        //        //调用API验证登陆名和密码
        //        var requestParam = new Dictionary<string, string>
        //        {
        //            { "UserName", model.UserName },
        //            { "Password",model.Password },
        //            { "grant_type", "password"}
        //        };

        //        WebApiInvoker ApiInvoker = new WebApiInvoker(ParamHelper.WebApiUrl);

        //        var userTokenInfo = await ApiInvoker.InvokePostAccessToken<UserTokenInfo>("Api/User/Login", requestParam);

        //        SsoUserInfo ssoUserInfo = new SsoUserInfo
        //        {
        //            ExpiresIn = userTokenInfo.ExpiresIn * 1000,//毫秒
        //            Expires = userTokenInfo.Expires,
        //            AccessToken = userTokenInfo.AccessToken,
        //            RefToken = userTokenInfo.RefToken,
        //            NickName = userTokenInfo.NickName.IsNullOrWhiteSpace() ? userTokenInfo.LoginName : userTokenInfo.NickName,
        //            UserID = userTokenInfo.UserID
        //        };
        //        ParamHelper.SetCookies(JsonConvert.SerializeObject(ssoUserInfo));

        //        ////string url = "notifyproxy.html?result=success";
        //        ////return Ok(new
        //        ////{
        //        ////    Code = ParamHelper.Ok,
        //        ////    ReturnURL = url
        //        ////});

        //        //System.Threading.Thread.Sleep(1000 * 10);

        //        //await RefreshToken();

        //        ApiInvoker = new WebApiInvoker(ParamHelper.WebApiUrl);
        //        var result = await ApiInvoker.InvokeGetRequest("api/Contract");

        //    }
        //    catch (System.Web.Http.HttpResponseException e)
        //    {
        //        throw new Exception(e.Response.Content.ReadAsStringAsync().Result);
        //    }
        //    // 如果我们进行到这一步时某个地方出错，则重新显示表单
        //    return View();

        //    //if (ModelState.IsValid)
        //    //{
        //    //    var user = await UserManager.FindAsync(model.UserName, model.Password);
        //    //    if (user != null)
        //    //    {
        //    //        await SignInAsync(user, model.RememberMe);
        //    //        return RedirectToLocal(returnUrl);
        //    //    }
        //    //    else
        //    //    {
        //    //        ModelState.AddModelError("", "Invalid username or password.");
        //    //    }
        //    //}

        //    //// 如果我们进行到这一步时某个地方出错，则重新显示表单
        //    //return View(model);
        //}

        /// <summary>
        /// 刷新Token
        /// </summary>
        /// <returns></returns>
        public async Task<ActionResult> RefreshToken()
        {
            try
            {
                //检验cookie是否存在
                SsoUserInfo userInfo = await ParamHelper.GetUserInfo();

                //调用API验证登陆名和密码
                var requestParam = new Dictionary<string, string>
                {
                    { "refresh_token", userInfo.RefToken },
                    { "grant_type", "refresh_token"}
                };

                WebApiInvoker ApiInvoker = new WebApiInvoker(ParamHelper.WebApiUrl);

                var userTokenInfo = await ApiInvoker.InvokePostRefreshToken<UserTokenInfo>("Api/User/Login", requestParam);

                var ssoUserInfo = new SsoUserInfo
                {
                    ExpiresIn = userTokenInfo.ExpiresIn * 1000,//毫秒
                    AccessToken = userTokenInfo.AccessToken,
                    Expires = userTokenInfo.Expires,
                    RefToken = userTokenInfo.RefToken,
                    NickName = userTokenInfo.NickName,
                    UserID = userTokenInfo.UserID
                };
                ParamHelper.SetCookies(JsonConvert.SerializeObject(ssoUserInfo));
                //返回user, authtoken等相应信息
                ssoUserInfo.RefToken = string.Empty;
            }
            catch (Exception e)
            {

            }

            string result = "{\"success\":false,\"desc\":\"无权限访问\"}";

            return Content(result);

        }


        public async Task<ActionResult> RefreshTokenAction()
        {
            string result = "{\"success\":true,\"desc\":\"刷新成功\"}";
            try
            {
                //检验cookie是否存在
                SsoUserInfo userInfo = await ParamHelper.GetUserInfo();
                var requestParam = new Dictionary<string, string>();

                if (userInfo == null)
                {
                    requestParam = new Dictionary<string, string>
                    {
                        { "UserName", "Yunyou" },
                        { "Password","Vlinker" },
                        { "grant_type", "password"}
                    };
                }
                else
                {
                    //调用API验证登陆名和密码
                    requestParam = new Dictionary<string, string>
                    {
                        { "refresh_token", userInfo.RefToken },
                        { "grant_type", "refresh_token"}
                    };
                }

                WebApiInvoker ApiInvoker = new WebApiInvoker(ParamHelper.WebApiUrl);

                var userTokenInfo = await ApiInvoker.InvokePostRefreshToken<UserTokenInfo>("Api/User/Login", requestParam);

                var ssoUserInfo = new SsoUserInfo
                {
                    ExpiresIn = userTokenInfo.ExpiresIn * 1000,//毫秒
                    AccessToken = userTokenInfo.AccessToken,
                    Expires = userTokenInfo.Expires,
                    RefToken = userTokenInfo.RefToken,
                    NickName = userTokenInfo.NickName,
                    UserID = userTokenInfo.UserID
                };
                ParamHelper.SetCookies(JsonConvert.SerializeObject(ssoUserInfo));



            }
            catch (Exception e)
            {
                result = "{\"success\":false,\"desc\":\"刷新失败\"}";
            }

            return Content(result);
        }
        public async Task<ActionResult> AccessTokenAction()
        {
            string result = "{\"success\":true,\"desc\":\"获取成功\"}";
            string loginMess = "";
            try
            {
                string SmartHomeUser = ConfigurationManager.AppSettings["WebApiUser"];
                string SmartHomePwd = ConfigurationManager.AppSettings["WebApiPwd"];

                loginMess = await Login(new LoginViewModel()
                    {
                        UserName = SmartHomeUser,
                        Password = SmartHomePwd
                    });
            }
            catch (Exception e)
            {
                result = "{\"success\":false,\"desc\":\"获取失败\"}";
            }

            if (loginMess == "")
            {
                return Content(result);
            }
            else
            {
                return Content("{\"success\":false,\"desc\":\"" + loginMess + "\"}");
            }
            
         }

        
        public async Task<ActionResult> Contract()
        {
            var requestParam = new Dictionary<string, string>
                {
                    { "UserName", "aaaa" },
                    { "Password","111" },
                    { "grant_type", "password"}
                };

            WebApiInvoker ApiInvoker = new WebApiInvoker(ParamHelper.WebApiUrl);
            ApiInvoker = new WebApiInvoker(ParamHelper.WebApiUrl);
            var result = await ApiInvoker.InvokePostRequest("OMS/OMSHome/Test", requestParam);
            return View("Index.cshtml");
        }

        //
        // GET: /Account/Register
        public ActionResult Register()
        {
            return View();
        }

        //
        // POST: /Account/Register

        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Register(RegisterViewModel model)
        {
            if (ModelState.IsValid)
            {
                var user = new ApplicationUser() { UserName = model.UserName };
                var result = await UserManager.CreateAsync(user, model.Password);
                if (result.Succeeded)
                {
                    await SignInAsync(user, isPersistent: false);
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    AddErrors(result);
                }
            }

            // 如果我们进行到这一步时某个地方出错，则重新显示表单
            return View(model);
        }

        //
        // POST: /Account/Disassociate
        
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Disassociate(string loginProvider, string providerKey)
        {
            ManageMessageId? message = null;
            IdentityResult result = await UserManager.RemoveLoginAsync(User.Identity.GetUserId(), new UserLoginInfo(loginProvider, providerKey));
            if (result.Succeeded)
            {
                message = ManageMessageId.RemoveLoginSuccess;
            }
            else
            {
                message = ManageMessageId.Error;
            }
            return RedirectToAction("Manage", new { Message = message });
        }

        //
        // GET: /Account/Manage
        public ActionResult Manage(ManageMessageId? message)
        {
            ViewBag.StatusMessage =
                message == ManageMessageId.ChangePasswordSuccess ? "你的密码已更改。"
                : message == ManageMessageId.SetPasswordSuccess ? "已设置你的密码。"
                : message == ManageMessageId.RemoveLoginSuccess ? "已删除外部登录名。"
                : message == ManageMessageId.Error ? "出现错误。"
                : "";
            ViewBag.HasLocalPassword = HasPassword();
            ViewBag.ReturnUrl = Url.Action("Manage");
            return View();
        }

        //
        // POST: /Account/Manage
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Manage(ManageUserViewModel model)
        {
            bool hasPassword = HasPassword();
            ViewBag.HasLocalPassword = hasPassword;
            ViewBag.ReturnUrl = Url.Action("Manage");
            if (hasPassword)
            {
                if (ModelState.IsValid)
                {
                    IdentityResult result = await UserManager.ChangePasswordAsync(User.Identity.GetUserId(), model.OldPassword, model.NewPassword);
                    if (result.Succeeded)
                    {
                        return RedirectToAction("Manage", new { Message = ManageMessageId.ChangePasswordSuccess });
                    }
                    else
                    {
                        AddErrors(result);
                    }
                }
            }
            else
            {
                // User does not have a password so remove any validation errors caused by a missing OldPassword field
                ModelState state = ModelState["OldPassword"];
                if (state != null)
                {
                    state.Errors.Clear();
                }

                if (ModelState.IsValid)
                {
                    IdentityResult result = await UserManager.AddPasswordAsync(User.Identity.GetUserId(), model.NewPassword);
                    if (result.Succeeded)
                    {
                        return RedirectToAction("Manage", new { Message = ManageMessageId.SetPasswordSuccess });
                    }
                    else
                    {
                        AddErrors(result);
                    }
                }
            }

            // 如果我们进行到这一步时某个地方出错，则重新显示表单
            return View(model);
        }

        //
        // POST: /Account/ExternalLogin

        [ValidateAntiForgeryToken]
        public ActionResult ExternalLogin(string provider, string returnUrl)
        {
            // 请求重定向到外部登录提供程序
            return new ChallengeResult(provider, Url.Action("ExternalLoginCallback", "Account", new { ReturnUrl = returnUrl }));
        }

        //
        // GET: /Account/ExternalLoginCallback
        public async Task<ActionResult> ExternalLoginCallback(string returnUrl)
        {
            var loginInfo = await AuthenticationManager.GetExternalLoginInfoAsync();
            if (loginInfo == null)
            {
                return RedirectToAction("Login");
            }

            // Sign in the user with this external login provider if the user already has a login
            var user = await UserManager.FindAsync(loginInfo.Login);
            if (user != null)
            {
                await SignInAsync(user, isPersistent: false);
                return RedirectToLocal(returnUrl);
            }
            else
            {
                // If the user does not have an account, then prompt the user to create an account
                ViewBag.ReturnUrl = returnUrl;
                ViewBag.LoginProvider = loginInfo.Login.LoginProvider;
                return View("ExternalLoginConfirmation", new ExternalLoginConfirmationViewModel { UserName = loginInfo.DefaultUserName });
            }
        }

        //
        // POST: /Account/LinkLogin
        [ValidateAntiForgeryToken]
        public ActionResult LinkLogin(string provider)
        {
            // Request a redirect to the external login provider to link a login for the current user
            return new ChallengeResult(provider, Url.Action("LinkLoginCallback", "Account"), User.Identity.GetUserId());
        }

        //
        // GET: /Account/LinkLoginCallback
        public async Task<ActionResult> LinkLoginCallback()
        {
            var loginInfo = await AuthenticationManager.GetExternalLoginInfoAsync(XsrfKey, User.Identity.GetUserId());
            if (loginInfo == null)
            {
                return RedirectToAction("Manage", new { Message = ManageMessageId.Error });
            }
            var result = await UserManager.AddLoginAsync(User.Identity.GetUserId(), loginInfo.Login);
            if (result.Succeeded)
            {
                return RedirectToAction("Manage");
            }
            return RedirectToAction("Manage", new { Message = ManageMessageId.Error });
        }

        //
        // POST: /Account/ExternalLoginConfirmation

        [ValidateAntiForgeryToken]
        public async Task<ActionResult> ExternalLoginConfirmation(ExternalLoginConfirmationViewModel model, string returnUrl)
        {
            if (User.Identity.IsAuthenticated)
            {
                return RedirectToAction("Manage");
            }

            if (ModelState.IsValid)
            {
                // 从外部登录提供程序获取有关用户的信息
                var info = await AuthenticationManager.GetExternalLoginInfoAsync();
                if (info == null)
                {
                    return View("ExternalLoginFailure");
                }
                var user = new ApplicationUser() { UserName = model.UserName };
                var result = await UserManager.CreateAsync(user);
                if (result.Succeeded)
                {
                    result = await UserManager.AddLoginAsync(user.Id, info.Login);
                    if (result.Succeeded)
                    {
                        await SignInAsync(user, isPersistent: false);
                        return RedirectToLocal(returnUrl);
                    }
                }
                AddErrors(result);
            }

            ViewBag.ReturnUrl = returnUrl;
            return View(model);
        }

        //
        // POST: /Account/LogOff

        [ValidateAntiForgeryToken]
        public ActionResult LogOff()
        {
            AuthenticationManager.SignOut();
            return RedirectToAction("Index", "Home");
        }

        //
        // GET: /Account/ExternalLoginFailure

        public ActionResult ExternalLoginFailure()
        {
            return View();
        }

        [ChildActionOnly]
        public ActionResult RemoveAccountList()
        {
            var linkedAccounts = UserManager.GetLogins(User.Identity.GetUserId());
            ViewBag.ShowRemoveButton = HasPassword() || linkedAccounts.Count > 1;
            return (ActionResult)PartialView("_RemoveAccountPartial", linkedAccounts);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing && UserManager != null)
            {
                UserManager.Dispose();
                UserManager = null;
            }
            base.Dispose(disposing);
        }

        #region 帮助程序
        // Used for XSRF protection when adding external logins
        private const string XsrfKey = "XsrfId";

        private IAuthenticationManager AuthenticationManager
        {
            get
            {
                return HttpContext.GetOwinContext().Authentication;
            }
        }

        private async Task SignInAsync(ApplicationUser user, bool isPersistent)
        {
            AuthenticationManager.SignOut(DefaultAuthenticationTypes.ExternalCookie);
            var identity = await UserManager.CreateIdentityAsync(user, DefaultAuthenticationTypes.ApplicationCookie);
            AuthenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = isPersistent }, identity);
        }

        private void AddErrors(IdentityResult result)
        {
            foreach (var error in result.Errors)
            {
                ModelState.AddModelError("", error);
            }
        }

        private bool HasPassword()
        {
            var user = UserManager.FindById(User.Identity.GetUserId());
            if (user != null)
            {
                return user.PasswordHash != null;
            }
            return false;
        }

        public enum ManageMessageId
        {
            ChangePasswordSuccess,
            SetPasswordSuccess,
            RemoveLoginSuccess,
            Error
        }

        private ActionResult RedirectToLocal(string returnUrl)
        {
            if (Url.IsLocalUrl(returnUrl))
            {
                return Redirect(returnUrl);
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }
        }

        private class ChallengeResult : HttpUnauthorizedResult
        {
            public ChallengeResult(string provider, string redirectUri) : this(provider, redirectUri, null)
            {
            }

            public ChallengeResult(string provider, string redirectUri, string userId)
            {
                LoginProvider = provider;
                RedirectUri = redirectUri;
                UserId = userId;
            }

            public string LoginProvider { get; set; }
            public string RedirectUri { get; set; }
            public string UserId { get; set; }

            public override void ExecuteResult(ControllerContext context)
            {
                var properties = new AuthenticationProperties() { RedirectUri = RedirectUri };
                if (UserId != null)
                {
                    properties.Dictionary[XsrfKey] = UserId;
                }
                context.HttpContext.GetOwinContext().Authentication.Challenge(properties, LoginProvider);
            }
        }
        #endregion


        public async Task<string> Login(LoginViewModel model)
        {
            string result = "";
            try
            {
                string timestamp = DateTime.Now.ToString("yyyyMMddHHmmss");               
                model.Password = ParamHelper.HexMD5Screct(timestamp, model.Password);


                //调用API验证登陆名和密码
                var requestParam = new Dictionary<string, string>
                {
                    { "UserName", model.UserName },
                    { "Password",model.Password },
                    { "grant_type", "password"}
                };

                var userTokenInfo = new UserTokenInfo();

                try{
                WebApiInvoker ApiInvoker = new WebApiInvoker(ParamHelper.WebApiUrl);

                userTokenInfo = await ApiInvoker.InvokePostAccessToken<UserTokenInfo>("Api/User/Login", requestParam);
                }catch (HttpResponseException re)
                {
                    result = re.Response.Content.ReadAsStringAsync().Result;
                    return result;
                }

                SsoUserInfo ssoUserInfo = new SsoUserInfo
                {
                    ExpiresIn = userTokenInfo.ExpiresIn * 1000,//毫秒
                    Expires = userTokenInfo.Expires,
                    AccessToken = userTokenInfo.AccessToken,
                    RefToken = userTokenInfo.RefToken,
                    NickName = userTokenInfo.NickName.IsNullOrWhiteSpace() ? userTokenInfo.LoginName : userTokenInfo.NickName,
                    UserID = userTokenInfo.UserID
                };
                ParamHelper.SetCookies(JsonConvert.SerializeObject(ssoUserInfo));
            }
            catch (Exception e)
            {
                result = e.Message;
                return result;
            }

            return "";
        }

        public ActionResult OpenDoor1()
        {
            YunyouDoorService service =  new YunyouDoorService();
            string result = service.RemoteOpenDoor();
            return Content(result);
        }

        public ActionResult Apartment1()
        {
            YunyouDoorService service = new YunyouDoorService();
            string result = service.SynchronizeRoom();
            return Content(result);
        }

        public ActionResult Auth1()
        {
            YunyouDoorService service = new YunyouDoorService();
            string result = service.CheckInAuth();
            return Content(result);
        }

        public ActionResult RemoveAuth1()
        {
            YunyouDoorService service = new YunyouDoorService();
            string result = service.DeleleAuth();
            return Content(result);
        }

        public ActionResult DelPassword1()
        {
            YunyouDoorService service = new YunyouDoorService();
            string result = service.DeletePassword();
            return Content(result);
        }

        public ActionResult SetPassword1()
        {
            string phone = Request.Params["phone"].ToString() == "" ? "123456789" : Request.Params["phone"].ToString();
            string password = Request.Params["password"].ToString() == "" ? "123456" : Request.Params["password"].ToString();

            YunyouDoorService service = new YunyouDoorService();
            string result = service.SetPassword(password, phone);
            return Content(result);
        }
    }
}