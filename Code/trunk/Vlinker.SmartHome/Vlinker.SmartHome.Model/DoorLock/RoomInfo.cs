using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Vlinker.SmartHome.Model.DoorLock
{
    public class RoomInfo
    {
        [Display(Name = "门店编码")]
        public string StoreCode { get; set; }
        [Display(Name = "门店名称")]
        public string StoreName { get; set; }
        [Display(Name = "省份名称")]
        public string ProvinceName { get; set; }
        [Display(Name = "城市名称")]
        public string CityName { get; set; }
        [Display(Name = "区域名称")]
        public string DisName { get; set; }
        [Display(Name = "楼栋编码")]
        public string BuildingCode { get; set; }
        [Display(Name = "楼层编码")]
        public string FloorCode { get; set; }
        [Display(Name = "房间编码")]
        public string RoomCode { get; set; }
        [Display(Name = "房门类型")]
        public string DoorType { get; set; }
        [Display(Name = "房门编码")]
        public string DoorCode { get; set; }
        [Display(Name = "房门名称")]
        public string DoorName { get; set; }
        [Display(Name = "子房间编码")]
        public string SubDoorCode { get; set; }
    }
}