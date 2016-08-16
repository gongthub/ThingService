using System.Collections.Generic;

namespace Vlinker.Common.ApiInvoker
{
    public class Controller
    {
        /// <summary>
        /// Controller����
        /// </summary>
        public string Name;
        /// <summary>
        /// �ӿ��б�
        /// </summary>
        public List<Member> LstMember;
    }
    public class Member
    {
        /// <summary>
        /// �ӿ�����
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// �ӿ�����
        /// </summary>
        public string Summary { get; set; }
        /// <summary>
        /// �����б�
        /// </summary>
        public List<Param> lstparam;
        public string Return { get; set; }
        public string Remark { get; set; }
    }
    public class Param
    {
        /// <summary>
        /// ��������
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// ��������
        /// </summary>
        public string Summary { get; set; }
        /// <summary>
        /// ��������
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
