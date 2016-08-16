using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Vlinker.SmartHome.Util
{
    public class ConfigHelper
    {
        public static string GetAppKey(string key)
        {
            return ConfigurationManager.AppSettings[key];
        }

        //发短信请求地址
        public static string SMSPostUrl
        {
            get
            {
                return GetAppKey("SMSPostUrl");
            }
        }
        //短信通知用户账号1
        public static string SMSAccount
        {
            get
            {
                return GetAppKey("SMSAccount");
            }
        }
        //短信通知用户密码1
        public static string SMSPassword
        {
            get
            {
                return GetAppKey("SMSPassword");
            }
        }

        public static string SMSSetPwdContent
        {
            get
            {
                return GetAppKey("SMSSetPwdContent");
            }
        }

        public static string SMSCheckInAuthContent
        {
            get
            {
                return GetAppKey("SMSCheckInAuthContent");
            }
        }

        public static string SMSRemoteOpenDoorContent
        {
            get
            {
                return GetAppKey("SMSRemoteOpenDoorContent");
            }
        }
        public static int TokenExpire
        {
            get
            {
                return int.Parse(GetAppKey("TokenExpire"));
            }
        }
    }
}
