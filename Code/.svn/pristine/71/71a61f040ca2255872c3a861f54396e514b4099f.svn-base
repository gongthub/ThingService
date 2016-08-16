using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Vlinker.WebService.Common.Models.UIEntity;

namespace Vlinker.WebService.Common.Models.Interfaces
{
    public interface IUser
    {
        /// <summary>
        /// 登陆
        /// </summary>
        /// <param name="loginName">用户名</param>
        /// <param name="password">密码</param>
        /// <returns></returns>
        Task<UIUserInfoRegistResponse> Login(string loginName, string password);

        /// <summary>
        /// 获取用户信息
        /// </summary>
        /// <param name="userID">用户ID</param>
        /// <returns></returns>
        UIUserInfoRegistResponse GetUserInfo(string userID);
    }
}
