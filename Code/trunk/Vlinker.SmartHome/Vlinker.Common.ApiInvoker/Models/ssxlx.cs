using System.Collections.Generic;

namespace Vlinker.Common.ApiInvoker
{
    public class Controller
    {
        /// <summary>
        /// Controller名称
        /// </summary>
        public string Name;
        /// <summary>
        /// 接口列表
        /// </summary>
        public List<Member> LstMember;
    }
    public class Member
    {
        /// <summary>
        /// 接口名称
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// 接口描述
        /// </summary>
        public string Summary { get; set; }
        /// <summary>
        /// 参数列表
        /// </summary>
        public List<Param> lstparam;
        public string Return { get; set; }
        public string Remark { get; set; }
    }
    public class Param
    {
        /// <summary>
        /// 参数名称
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// 参数描述
        /// </summary>
        public string Summary { get; set; }
        /// <summary>
        /// 参数类型
        /// </summary>
        public string sType { get; set; }
    }

    public class WebApiTreeData
    {
        public string id { get; set; }
        public string text { get; set; }
        public string state { get { return "closed"; } }

        public List<Children> children { get; set; }
    }

    public class Children
    {
        public string id { get; set; }

        public string iconCls { get; set; }

        public string text { get; set; }
        public string state { get; set; }

        public List<Children> children { get; set; }
    }
}
