using Hydroppower.Model;
using Hydroppower.Test.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Hydroppower.Test.Controllers
{
    public class MainController : Controller
    {
        //
        // GET: /Main/
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Report()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(decimal money)
        {
            HydroppowercsService service = new HydroppowercsService();
            string result = service.ReCharge("201603162336", money);
            return View();
        }

        /// <summary>
        /// 充值
        /// </summary>
        /// <param name="money"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult ReCharge(string meterNo, decimal money)
        {
            var retJson = new { state = true, msg = "" };
            try
            {
                HydroppowercsService service = new HydroppowercsService();
                string result = service.ReCharge(meterNo, money);
                retJson = new { state = true, msg = result };
                return Json(retJson, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                retJson = new { state = false, msg = ex.Message };
                return Json(retJson, JsonRequestBehavior.AllowGet);
            }
        }


        /// <summary>
        /// 退费
        /// </summary>
        /// <param name="money"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult RefundByMeterNo(string meterNo, decimal money)
        {
            var retJson = new { state = true, msg = "" };
            try
            {
                HydroppowercsService service = new HydroppowercsService();
                string result = service.RefundByMeterNo(meterNo, money);
                retJson = new { state = true, msg = result };
                return Json(retJson, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                retJson = new { state = false, msg = ex.Message };
                return Json(retJson, JsonRequestBehavior.AllowGet);
            }
        }

        /// <summary>
        /// 控制继电器
        /// </summary>
        /// <param name="money"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult MbusControlByMeterNo(string meterNo, int action)
        {
            var retJson = new { state = true, msg = "" };
            try
            {
                HydroppowercsService service = new HydroppowercsService();
                string result = service.MbusControlByMeterNo(meterNo, action);
                retJson = new { state = true, msg = result };
                return Json(retJson, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                retJson = new { state = false, msg = ex.Message };
                return Json(retJson, JsonRequestBehavior.AllowGet);
            }
        }

        /// <summary>
        /// 发送短信
        /// </summary>
        /// <param name="money"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult SendSmsByMeterNo(string meterNo)
        {
            var retJson = new { state = true, msg = "" };
            try
            {
                HydroppowercsService service = new HydroppowercsService();
                string result = service.SendSmsByMeterNo(meterNo);
                retJson = new { state = true, msg = result };
                return Json(retJson, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                retJson = new { state = false, msg = ex.Message };
                return Json(retJson, JsonRequestBehavior.AllowGet);
            }
        }

        /// <summary>
        /// 根据表号抄表
        /// </summary>
        /// <param name="money"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult ReadByMeterNo(string meterNo)
        {
            var retJson = new { state = true, msg = "" };
            try
            {
                HydroppowercsService service = new HydroppowercsService();
                string result = service.ReadByMeterNo(meterNo);
                retJson = new { state = true, msg = result };
                return Json(retJson, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                retJson = new { state = false, msg = ex.Message };
                return Json(retJson, JsonRequestBehavior.AllowGet);
            }
        }

        /// <summary>
        /// 根据时间段获取数据
        /// </summary>
        /// <param name="money"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult FindReadInfoByDate(DateTime StartDate, DateTime EndDate)
        {
            var retJson = new { state = true, msg = "" };
            try
            {
                HydroppowercsService service = new HydroppowercsService();
                string result = service.FindReadInfoByDate(StartDate, EndDate);
                retJson = new { state = true, msg = result };
                return Json(retJson, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                retJson = new { state = false, msg = ex.Message };
                return Json(retJson, JsonRequestBehavior.AllowGet);
            }
        }


        /// <summary>
        /// 根据日展示数据
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public ActionResult GetDataByDate()
        {
            List<string> strs = new List<string>();
            List<decimal> watchs = new List<decimal>();
            List<decimal> ddatas = new List<decimal>();

            List<decimal> watchsa = new List<decimal>();
            List<decimal> ddatasa = new List<decimal>();

            IDBRepository db = new IDBRepository();
            List<Model.DataCompute> models = db.DataComputes.ToList();
            //foreach (Model.DataCompute model in models)
            //{
            //    watchs.Add(model.operate_day);
            //}

            int days = System.Threading.Thread.CurrentThread.CurrentUICulture.Calendar.GetDaysInMonth(DateTime.Now.Year, DateTime.Now.Month);

            for (int i = 1; i <= days; i++)
            {
                string str = DateTime.Now.ToString("yyyy-MM") + "-" + i;
                strs.Add(str);
                string strtimst = "";
                if (i < 10)
                {
                    strtimst = DateTime.Now.ToString("yyyyMM") + "0" + i.ToString();
                }
                else
                {
                    strtimst = DateTime.Now.ToString("yyyyMM") + i.ToString();
                }
                //用水量
                Model.DataCompute model = models.Find(m => m.meter_type == 10 && m.operate_day == strtimst);
                if (model != null)
                {
                    watchs.Add(model.Reads);
                }
                else
                {
                    watchs.Add(0.00M);
                }
                //用电量
                Model.DataCompute modeld = models.Find(m => m.meter_type == 40 && m.operate_day == strtimst);
                if (modeld != null)
                {
                    ddatas.Add(modeld.Reads);
                }
                else
                {
                    ddatas.Add(0.00M);
                }
            }
            for (int i = 0; i < ddatas.Count; i++)
            {
                List<decimal> ddatastemp = ddatas.Take(i + 1).ToList();
                decimal temps = ddatastemp.Sum();
                if (temps > 0)
                {
                    temps = temps / (i + 1);
                }
                    ddatasa.Add(temps);
            }


            for (int i = 0; i < watchs.Count; i++)
            {
                List<decimal> watchstemp = watchs.Take(i + 1).ToList();
                decimal temps = watchstemp.Sum();
                if (temps > 0)
                {
                    temps = temps / (i + 1);
                }
                watchsa.Add(temps);
            }



            var jsons = new { xAxisdata = strs, seriesddata = ddatas, serieswdata = watchs, seriesddataa = ddatasa, serieswadata = watchsa };

            return Json(jsons, JsonRequestBehavior.AllowGet);

        }

    }
}
