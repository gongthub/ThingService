using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Vlinker.Common.ApiInvoker.Utils;
using Vlinker.SmartHome.Service.Interface;
using Vlinker.SmartHome.Util;

namespace Vlinker.SmartHome.Service.Services
{
    public class SMSService:ISMSService
    {
        string ISMSService.SendSMS(string mobile, string content)
        {
            string result = "";

            string postStrTpl = "userid=&account={0}&password={1}&mobile={2}&sendTime=&content={3}";
            string postData = string.Format(postStrTpl, ConfigHelper.SMSAccount, ConfigHelper.SMSPassword, mobile, content);
            result = NetHelper.PostUrl(ConfigHelper.SMSPostUrl, postData);

            CommonUtil.Log.Info(string.Format("短信通知--> 手机号码:{0},发送结果:{1}",mobile, result));

            return result;
        }
    }
}
