using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Vlinker.SmartHome.Model.DoorLock
{
    public class YunyouRoomInfo
    {
        // 省份
        public string provinceId { get; set; }
        // 城市
        public string cityId { get; set; }
        // 区域
        public string disId { get; set; }

        public string houseId { get; set; }
        // 小区名称
        public string buildingName { get; set; }
        // 小区编码
        public string buildingId { get; set; }
        // 楼栋 
        public string buildingNo { get; set; }

        public string doorId { get; set; }
        // 房源编码（每个房源⼀一个编号） 
        public string code { get; set; }
        // 房门名称
        public string door { get; set; }
        // 房源名称
        public string name { get; set; }
        // 房门类型(1  大门    2  内房门)
        public string doorType { get; set; }
        // 单元号
        public string unit { get; set; }

        public string floor { get; set; }
    }
}