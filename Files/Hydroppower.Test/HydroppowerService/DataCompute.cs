using HydroppowerService.Threads;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace HydroppowerService
{
    public partial class DataCompute : ServiceBase
    {
        public DataCompute()
        {
            InitializeComponent();
        }

        protected override void OnStart(string[] args)
        {

            Thread doGetData = new Thread(DoGetData.Start);
            NLog.LogManager.GetCurrentClassLogger().Info("DoGetData Start ");
            doGetData.Start();


            Thread dailyReportWarningThread = new Thread(DoCompute.Start);
            NLog.LogManager.GetCurrentClassLogger().Info("DiaryWarningThread Start ");
            dailyReportWarningThread.Start();

        }

        protected override void OnStop()
        {
            NLog.LogManager.GetCurrentClassLogger().Info("DiaryWarningThread Stop ");
        }
    }
}
