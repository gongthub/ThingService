using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.Owin.Security;
using Microsoft.Owin.Security.OAuth;
using System.Linq;
using Microsoft.Practices.Unity;
using Vlinker.WebService.Common.Models.Interfaces;
using Vlinker.WebService.Common.Models.UIEntity;
using Vlinker.SmartHome.WebService.Utils;

namespace Vlinker.SmartHome.WebService.Providers
{
    public class ApplicationOAuthProvider : OAuthAuthorizationServerProvider
    {
        /// <summary>
        /// 客户端发送了用户的用户名和密码，在这里验证用户名和密码是否正确，
        /// 采用了ClaimsIdentity认证方式，可以把它当作一个NameValueCollection看待
        /// 两个方法同时认证通过才会颁发token
        /// </summary>
        /// <param name="context"></param>
        /// <returns></returns>
        public override async Task GrantResourceOwnerCredentials(OAuthGrantResourceOwnerCredentialsContext context)
        {
            IUser user = DependencyInjectionConfig.Containter.Resolve<IUser>();
            //暂时封存  by kobe
            var userInfo = await DependencyInjectionConfig.Containter.Resolve<IUser>().Login(context.UserName, context.Password);
            //判断用户名和密码是否正确
            if (!userInfo.IsOk())
            {
                context.SetError("invalid_grant", userInfo.Message);
                return;
            }

            //ClaimsIdentity认证
            ClaimsIdentity oAuthIdentity = new ClaimsIdentity(context.Options.AuthenticationType);
            oAuthIdentity.AddClaim(new Claim(ClaimTypes.Name, context.UserName));

            AuthenticationProperties properties = CreateProperties(userInfo.Data);

            AuthenticationTicket ticket = new AuthenticationTicket(oAuthIdentity, properties);
            context.Validated(ticket);
            await base.GrantResourceOwnerCredentials(context);
        }

        /// <summary>
        /// 把Context中的属性加入到token中
        /// </summary>
        /// <param name="context"></param>
        /// <returns></returns>
        public override Task TokenEndpoint(OAuthTokenEndpointContext context)
        {
            foreach (KeyValuePair<string, string> property in context.Properties.Dictionary)
            {
                context.AdditionalResponseParameters.Add(property.Key, property.Value);
            }

            return Task.FromResult<object>(null);
        }

        /// <summary>
        /// 对third party application 认证，
        /// 为third party application颁发appKey和appSecrect，在此省略了颁发appKey和appSecrect的环节，
        /// 认为所有的third party application都是合法的
        /// </summary>
        /// <param name="context"></param>
        /// <returns></returns>
        public override Task ValidateClientAuthentication(OAuthValidateClientAuthenticationContext context)
        {
            //表示所有允许此third party application请求
            context.Validated();
            return Task.FromResult<object>(null);
        }

        /// <summary>
        /// 验证重定向url
        /// </summary>
        /// <param name="context"></param>
        /// <returns></returns>
        public override Task ValidateClientRedirectUri(OAuthValidateClientRedirectUriContext context)
        {
            Uri expectedRootUri = new Uri(context.Request.Uri, "/");

            if (expectedRootUri.AbsoluteUri == context.RedirectUri)
            {
                context.Validated();
            }

            return Task.FromResult<object>(null);
        }

        public static AuthenticationProperties CreateProperties(UIUserInfoRegist item)
        {
            IDictionary<string, string> data = new Dictionary<string, string>
            {
                { "LoginName", item.LoginName },
                { "UserID", item.UserID },
                { "NickName", item.NickName },
                { "MobileNum", item.MobileNum }
            };

            return new AuthenticationProperties(data);
        }

        /// <summary>
        /// 验证refresh token
        /// </summary>
        /// <param name="context"></param>
        /// <returns></returns>
        public override Task GrantRefreshToken(OAuthGrantRefreshTokenContext context)
        {
            // Change auth ticket for refresh token requests
            var newIdentity = new ClaimsIdentity(context.Ticket.Identity);

            var newClaim = newIdentity.Claims.Where(c => c.Type == "newClaim").FirstOrDefault();
            if (newClaim != null)
            {
                newIdentity.RemoveClaim(newClaim);
            }
            newIdentity.AddClaim(new Claim("newClaim", "refreshToken"));

            var newTicket = new AuthenticationTicket(newIdentity, context.Ticket.Properties);
            context.Validated(newTicket);

            return Task.FromResult<object>(null);
        }
    }
}