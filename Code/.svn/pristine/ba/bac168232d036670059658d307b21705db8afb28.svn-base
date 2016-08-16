using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Vlinker.Common.ApiInvoker
{
    public class BaseResult
    {
        public string Code { get; set; }
    }

    public class ResultSso : BaseResult
    {
        public SsoUserInfo User { get; set; }
    }

    public class SsoUserInfo
    {
        public string NickName { get; set; }

        public string UserID { get; set; }

        public string AccessToken { get; set; }

        public string RefToken { get; set; }

        public int ExpiresIn { get; set; }

        public DateTime Expires { get; set; }
    }
}