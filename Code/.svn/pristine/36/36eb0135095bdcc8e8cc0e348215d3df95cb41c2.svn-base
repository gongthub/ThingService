using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Vlinker.WebService.Common.Models.UIEntity;

namespace Vlinker.WebService.Common.Models.Interfaces
{
    public interface IToken
    {
        /// <summary>
        /// 保存Token信息到缓存
        /// </summary>
        /// <param name="tokenInfo"></param>
        /// <returns></returns>
        Task<bool> SaveRefreshTokenInfo(RefreshToken tokenInfo);

        /// <summary>
        /// 获取Token
        /// </summary>
        /// <param name="tokenId"></param>
        /// <returns></returns>
        Task<RefreshToken> GetRefreshTokenInfo(string tokenId);

        /// <summary>
        /// 删除Token
        /// </summary>
        /// <param name="tokenId"></param>
        Task<bool> RemoveRefreshTokenInfo(string tokenId);
    }
}
