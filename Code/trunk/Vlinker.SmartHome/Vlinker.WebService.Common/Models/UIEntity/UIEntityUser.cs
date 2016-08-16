namespace Vlinker.WebService.Common.Models.UIEntity
{
    public class UIUserInfoRegist
    {
        public string UserID;
        public string LoginName;
        public string NickName;
        public string MobileNum;
    }
    public class UIUserInfoRegistResponse : BaseResponse<UIUserInfoRegist> { }
}
