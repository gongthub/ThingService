using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using Vlinker.SmartHome.Model.Context;
using Vlinker.SmartHome.Util;
using Vlinker.WebService.Common.Models.Interfaces;
using Vlinker.WebService.Common.Models.UIEntity;
using Vlinker.WebService.Common.Services.Base;

namespace Vlinker.SmartHome.WebService.Services
{
    public class UserService : BaseService, IUser
    {
        /// <summary>
        /// 获取用户信息
        /// </summary>
        /// <param name="userID">用户ID</param>
        /// <returns></returns>
        public UIUserInfoRegistResponse GetUserInfo(string userID)
        {
            return TryFunc<UIUserInfoRegistResponse>(() =>
            {
                return new UIUserInfoRegistResponse
                {
                    Data = new UIUserInfoRegist
                    {
                        LoginName = "aaa",
                        MobileNum = "13766666666",
                        NickName = "test",
                        UserID = userID
                    }
                };
            });
        }

        /// <summary>
        /// 登陆
        /// </summary>
        /// <param name="loginName">用户名</param>
        /// <param name="password">密码</param>
        /// <returns></returns>
        public Task<UIUserInfoRegistResponse> Login(string loginName, string password)
        {
            return Task.FromResult<UIUserInfoRegistResponse>(
                TryFunc<UIUserInfoRegistResponse>(() =>
                {
                    CommonUtil.Log.Info(string.Format("用户验证开始"));
                    CommonUtil.Log.Info(string.Format("用户:{0}", loginName));

                    SmartHomeDbContext context = new SmartHomeDbContext();

                    string timestamp1 = DateTime.Now.AddSeconds(-1).ToString("yyyyMMddHHmmss");
                    string timestamp2 = DateTime.Now.ToString("yyyyMMddHHmmss");

                    Vlinker.SmartHome.Model.Base.User user = context.Users.Where(p => p.UserCode == loginName).FirstOrDefault();
                    //判断用户名 密码是否正确TODO
                    if (user == null || (password != CommonUtil.HexMD5Screct(timestamp1, user.Password) && password != CommonUtil.HexMD5Screct(timestamp2, user.Password)))
                    {
                        CommonUtil.Log.Info(string.Format("用户名或密码错误"));
                        return new UIUserInfoRegistResponse { Code = ResponseCode.LoginNamePwdErr, Message = ResponseCode.LoginNamePwdErrMsg };
                    }

                    if (user.ActiveFlag != 1)
                    {
                        CommonUtil.Log.Info(string.Format("用户已失效"));
                        return new UIUserInfoRegistResponse { Code = ResponseCode.LoginNamePwdErr, Message = "用户已失效" };
                    }

                    CommonUtil.Log.Info(string.Format("用户验证结束"));

                    //返回用户信息
                    return new UIUserInfoRegistResponse
                    {
                        Data = new UIUserInfoRegist
                        {
                            LoginName = user.UserCode,
                            MobileNum = "",
                            NickName = user.UserName,
                            UserID = Guid.NewGuid().ToString("N")
                        }
                    };
                })
            );
        }
    }
}