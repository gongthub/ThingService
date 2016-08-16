using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Vlinker.SmartHome.Model.Base
{
    public class SupplierConfig
    {
        [Display(Name = "自增ID")]
        public int ID { get; set; }
        [Display(Name = "供应商编码")]
        public string SupplierCode { get; set; }
        [Display(Name = "供应商名称")]
        public string SupplierName { get; set; }
        [Display(Name = "服务地址")]
        public string ServiceUrl { get; set; }
        [Display(Name = "合作者ID")]
        public string PartnerId { get; set; }
        [Display(Name = "授权编码")]
        public string AuthCode { get; set; }
        [Display(Name = "密码")]
        public string Secret { get; set; }
        [Display(Name = "私钥")]
        public string PrivateKey { get; set; }
        [Display(Name = "公钥")]
        public string PublicKey { get; set; }
        [Display(Name = "是否有效")]
        public int ActiveFlag { get; set; }
        public string Ext_Code1 { get; set; }
        [Display(Name = "自定义项")]
        public string Ext_Code2 { get; set; }
        [Display(Name = "自定义项")]
        public string Ext_Name1 { get; set; }
        public string Ext_Name2 { get; set; }
        [Display(Name = "自定义项")]
        public string Ext_Name3 { get; set; }
        [Display(Name = "自定义项")]
        public string Ext_Name4 { get; set; }
        [Display(Name = "自定义项")]
        public string Ext_Name5 { get; set; }
        [Display(Name = "自定义项")]
        public string Ext_Name6 { get; set; }
        [Display(Name = "自定义项")]
        public string Ext_Name7 { get; set; }
        [Display(Name = "自定义项")]
        public string Ext_Name8 { get; set; }
        [Display(Name = "自定义项")]
        public decimal? Ext_Num1 { get; set; }
        [Display(Name = "自定义项")]
        public decimal? Ext_Num2 { get; set; }
        [Display(Name = "自定义项")]
        public decimal? Ext_Amount1 { get; set; }
        [Display(Name = "自定义项")]
        public decimal? Ext_Amount2 { get; set; }
        [Display(Name = "自定义项")]
        public DateTime? Ext_Date1 { get; set; }
        [Display(Name = "自定义项")]
        public DateTime? Ext_Date2 { get; set; }
        [Display(Name = "自定义项")]
        public string Ext_Remark { get; set; }
    }
}