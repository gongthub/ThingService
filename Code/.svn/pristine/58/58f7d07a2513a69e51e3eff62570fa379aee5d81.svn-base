using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using Vlinker.WebService.Common.Models.Interfaces;
using Vlinker.WebService.Common.Models.UIEntity;
using Vlinker.WebService.Common.Services.Base;

namespace Vlinker.SmartHome.WebService.Services
{
    public class TokenService : BaseService, IToken
    {
        private const string CacheKeyRefreshTokenInfo = "RefreshTokenInfo_";


        /// <summary>
        /// 保存Token信息到缓存
        /// </summary>
        /// <param name="tokenInfo"></param>
        /// <returns></returns>
        public async Task<bool> SaveRefreshTokenInfo(RefreshToken tokenInfo)
        {
            return SetCache<RefreshToken>(CacheKeyRefreshTokenInfo + tokenInfo.Id, tokenInfo);
        }

        /// <summary>
        /// 获取Token
        /// </summary>
        /// <param name="tokenId"></param>
        /// <returns></returns>
        public async Task<RefreshToken> GetRefreshTokenInfo(string tokenId)
        {
            return GetCache<RefreshToken>(CacheKeyRefreshTokenInfo + tokenId);
        }

        /// <summary>
        /// 删除Token
        /// </summary>
        /// <param name="tokenId"></param>
        public async Task<bool> RemoveRefreshTokenInfo(string tokenId)
        {
            return RemoveCache(CacheKeyRefreshTokenInfo + tokenId);
        }
    }
}