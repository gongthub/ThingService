using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace HydroppowerService.Threads
{
    public class DoGetData
    {


        private static Timer triggerTimer;
        private static long timeInterval = 60 * 1000; //时间间隔 1分钟
        private static long timeActive = 10 * 1000; //第一次执行的时间

        private static string DOGETDATA = System.Configuration.ConfigurationManager.AppSettings["DOGETDATA"].ToString();
        public static void Start()
        {
            NLog.LogManager.GetCurrentClassLogger().Info("监听~");
            try
            {
                TimerCallback timerDelegate = ComputeWarning;
                AutoResetEvent autoEvent = new AutoResetEvent(false);
                triggerTimer = new Timer(timerDelegate, autoEvent, timeActive, timeInterval);
            }
            catch (Exception e)
            {
                NLog.LogManager.GetCurrentClassLogger().Info("DiaryWarning Error " + e.Message);
            }
        }

        public static void ComputeWarning(Object stateInfo)
        {
            string times = DateTime.Now.ToString("HH:mm");
            if (times == DOGETDATA)   //根据指定时间每天执行一次
            {
                NLog.LogManager.GetCurrentClassLogger().Info("DiaryWarning begin");
                DateTime StartDate = DateTime.Now.AddDays(-1);
                DateTime EndDate = DateTime.Now;


                try
                {
                    HydroppowercsService service = new HydroppowercsService();
                    string result = service.FindReadInfoByDate(StartDate, EndDate);
                }
                catch (Exception ex)
                {
                    NLog.LogManager.GetCurrentClassLogger().Info(ex.Message);
                }

                NLog.LogManager.GetCurrentClassLogger().Info("DiaryWarning end");
            }
        }
    }
}
