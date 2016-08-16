using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using System.Web.Mvc; 

namespace Vlinker.OMS.WebServiceTest2.Controllers
{
    public class HydropowerController : Controller
    {
        private string apiBaseAddress = "http://localhost:17990";
        //
        // GET: /Hydropower/
        public ActionResult Index()
        {
            return View();
        }


        public string OpenDoor()
        {
            string api = string.Format(@"/Hydropower/Index");
             
            var requestParam = new Dictionary<string, string>
                {
                    
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
                    Vlinker.Common.ApiInvoker.WebApiInvoker ApiInvoker = new Vlinker.Common.ApiInvoker.WebApiInvoker(apiBaseAddress);
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