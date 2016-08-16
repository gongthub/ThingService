using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Vlinker.OMS.WebServiceTest2.Controllers
{
    public class UploadController : Controller
    {
        //
        // GET: /Upload/
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult FileUpload()
        {

            return Content("{'success':true}");
        }
	}
}