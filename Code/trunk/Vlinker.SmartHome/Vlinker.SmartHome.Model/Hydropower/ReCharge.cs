﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Vlinker.SmartHome.Model.Hydropower
{
    public class ReCharge
    {
        
        public int ID { set; get; }
        /// <summary>
        /// 用户
        /// </summary>
        public int UserId { get; set; }

        /// <summary>
        /// 门店id
        /// </summary>
        public int StoreID { get; set; }

        /// <summary>
        /// 房间id
        /// </summary>
        public int RoomID { get; set; }

        /// <summary>
        /// 供应商
        /// </summary>
        public int SupplierID { get; set; } 

        /// <summary>
        /// 供应商编码
        /// </summary>
        public string SupplierCode { get; set; } 
          
        /// <summary>
        /// 状态
        /// </summary>
        public int Status { get; set; }

        /// <summary>
        /// 表号
        /// </summary>
        public string MeterNo { get; set; }

        /// <summary>
        /// 金额
        /// </summary>
        public decimal Money { get; set; }

        /// <summary>
        /// 充值金额
        /// </summary>
        public decimal RechargeMoney { get; set; }

        /// <summary>
        /// 余额
        /// </summary>
        public decimal Balance { get; set; }

        /// <summary>
        /// 类型 0充值 1退费
        /// </summary>
        public int Type { get; set; }

        /// <summary>
        /// 充值时间
        /// </summary>
        public DateTime Times { get; set; }
    }
}
