using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Vlinker.Common.ApiInvoker
{
    public class UserTokenInfo
    {
        [JsonProperty("access_token")]
        public string AccessToken { get; set; }

        [JsonProperty("token_type")]
        public string TokenType { get; set; }

        [JsonProperty("expires_in")]
        public int ExpiresIn { get; set; }

        [JsonProperty("LoginName")]
        public string LoginName { get; set; }

        [JsonProperty("NickName")]
        public string NickName { get; set; }

        [JsonProperty(".Issued")]
        public DateTime Issued { get; set; }

        [JsonProperty(".Expires")]
        public DateTime Expires { get; set; }

        [JsonProperty("UserID")]
        public string UserID { get; set; }

        [JsonProperty("refresh_token")]
        public string RefToken { get; set; }
    }

    public class LoginArguemnt
    {
        public string UserName { get; set; }

        public string Password { get; set; }

        public string grant_type { get { return "password"; } }
    }
}