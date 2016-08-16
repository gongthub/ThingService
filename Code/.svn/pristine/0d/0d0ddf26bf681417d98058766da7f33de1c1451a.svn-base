
using System;
using Microsoft.Owin;
using Microsoft.Owin.Security.OAuth;
using Owin;
using Vlinker.SmartHome.WebService.Providers;
using Vlinker.SmartHome.Util;

namespace Vlinker.SmartHome.WebService
{
    public partial class Startup
    {
        public void ConfigureAuth(IAppBuilder app)
        {
            // 针对基于 OAuth 的流配置应用程序
            var OAuthOptions = new OAuthAuthorizationServerOptions
            {
                TokenEndpointPath = new PathString("/Api/User/Login"),
                Provider = new ApplicationOAuthProvider(),
                AccessTokenExpireTimeSpan = TimeSpan.FromSeconds(ConfigHelper.TokenExpire * 60),
                //AccessTokenExpireTimeSpan = TimeSpan.FromSeconds(5),
                //在生产模式下设 AllowInsecureHttp = false
                /*AllowInsecureHttp设置整个通信环境是否启用ssl，
                不仅是OAuth服务端，也包含Client端，
                当设置为false时，若登记的Client端重定向url未采用https，则不重定向*/
                AllowInsecureHttp = true,
                //刷新token
                RefreshTokenProvider = new RefreshOAuthProvider()
            };

            // 使应用程序可以使用不记名令牌来验证用户身份
            app.UseOAuthBearerTokens(OAuthOptions);
        }
    }
}