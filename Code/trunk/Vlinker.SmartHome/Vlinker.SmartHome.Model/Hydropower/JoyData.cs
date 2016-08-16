using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Vlinker.SmartHome.Model.Hydropower
{
    public class JoyData
    {
        public int ID { set; get; }

        /// <summary>
        /// 记录序号
        /// </summary>
        public string info_id { set; get; }
        /// <summary>
        /// 抄表编号
        /// </summary>
        public string operate_id { set; get; }
        /// <summary>
        /// 用户名称
        /// </summary>
        public string user_name { set; get; }
        /// <summary>
        /// 用户地址
        /// </summary>
        public string user_address { set; get; }
        /// <summary>
        /// 区
        /// </summary>
        public string user_address_area { set; get; }
        /// <summary>
        /// 小区
        /// </summary>
        public string user_address_community { set; get; }
        /// <summary>
        /// 楼栋
        /// </summary>
        public string user_address_building { set; get; }
        /// <summary>
        /// 单元
        /// </summary>
        public string user_address_unit { set; get; }
        /// <summary>
        /// 房号
        /// </summary>
        public string user_address_room { set; get; }
        /// <summary>
        /// 联系方式
        /// </summary>
        public string contact_info { set; get; }
        /// <summary>
        /// 集中器名称
        /// </summary>
        public string concentrator_name { set; get; }
        /// <summary>
        /// 表号
        /// </summary>
        public string meter_no { set; get; }
        /// <summary>
        /// 费率类型
        /// </summary>
        public string fee_type { set; get; }
        /// <summary>
        /// 本期读数
        /// </summary>
        public string this_read { set; get; }
        /// <summary>
        /// 上期读数
        /// </summary>
        public string last_read { set; get; }
        /// <summary>
        /// 本期消耗量
        /// </summary>
        public string this_cost { set; get; }
        /// <summary>
        /// 上期消耗量
        /// </summary>
        public string last_cost { set; get; }
        /// <summary>
        /// 本期扣费
        /// </summary>
        public string fee_need { set; get; }
        /// <summary>
        /// 账户结余
        /// </summary>
        public string balance { set; get; }
        /// <summary>
        /// 抄表状态(1 成功，0 失败)
        /// </summary>
        public string exception { set; get; }
        /// <summary>
        /// 扣费状态(0 失败，1 已扣，2 未扣)
        /// </summary>
        public string fee_status { set; get; }
        /// <summary>
        /// 抄表类型(0 自动，1 手动)
        /// </summary>
        public string read_type { set; get; }
        /// <summary>
        /// 催缴标记(1 已催缴，0/null 未催缴)
        /// </summary>
        public string pay_remind { set; get; }
        /// <summary>
        /// 操作员
        /// </summary>
        public string operator_account { set; get; }
        /// <summary>
        /// 抄表时间
        /// </summary>
        public string operate_time { set; get; }
        /// <summary>
        /// 年月日
        /// </summary>
        public string operate_day { set; get; }
        /// <summary>
        /// 时分秒
        /// </summary>
        public string operate_dayTime { set; get; }
        /// <summary>
        /// 表类型(10 水表，20 热表，30 气表，40 电表)
        /// </summary>
        public string meter_type { set; get; }
        /// <summary>
        /// 累积流量(只适用于热表)
        /// </summary>
        public string data2 { set; get; }
        /// <summary>
        /// 当前功率(只适用于热表)
        /// </summary>
        public string data3 { set; get; }
        /// <summary>
        /// 当前流速(只适用于热表)
        /// </summary>
        public string data4 { set; get; }
        /// <summary>
        /// 当前流量(只适用于热表)
        /// </summary>
        public string data5 { set; get; }
        /// <summary>
        /// 当前进水温度(只适用于热表)
        /// </summary>
        public string data6 { set; get; }
        /// <summary>
        /// 当当前回水温度(只适用于热表)
        /// </summary>
        public string data7 { set; get; }
        /// <summary>
        /// 累积工作时间(只适用于热表)
        /// </summary>
        public string data8 { set; get; }
        /// <summary>
        /// 表计的历史记录及状态参数,如：电池正常/欠压等(只适用于热表)
        /// </summary>
        public string data9 { set; get; }
    }
}
