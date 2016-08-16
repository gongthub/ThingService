using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Vlinker.SmartHome.Model.DTO;
using Vlinker.SmartHome.Model.Hydropower;

namespace Vlinker.SmartHome.Service.Interface
{
    public interface IHydropowerService
    {
        /// <summary>
        /// 根据表号充值
        /// </summary>
        /// <param name="meterNo">表号</param>
        /// <param name="money">充值金额</param>
        /// <returns></returns>
        Result RechargeByMeterNo(HydroppowerOperation operation);

        /// <summary>
        /// 根据表号充值并返回充值数据
        /// </summary>
        /// <param name="meterNo"></param>
        /// <param name="money"></param>
        /// <param name="joyReChange">返回数据</param>
        /// <returns></returns>
        Result RechargeByMeterNo(HydroppowerOperation operation, out ReCharge reCharge);

        /// <summary>
        /// 根据表号退费
        /// </summary>
        /// <param name="meterNo">表号</param>
        /// <param name="money">充值金额</param>
        /// <returns></returns>
        Result RefundByMeterNo(HydroppowerOperation operation);

        /// <summary>
        /// 根据表号退费并返回充值数据
        /// </summary>
        /// <param name="meterNo"></param>
        /// <param name="money"></param>
        /// <param name="joyReChange">返回数据</param>
        /// <returns></returns>
        Result RefundByMeterNo(HydroppowerOperation operation, out ReCharge reCharge);
        /// <summary>
        /// 添加充值数据
        /// </summary>
        /// <param name="reChange">充值数据</param>
        /// <returns></returns>
        Result AddReChange(HydroppowerOperation operation);

        /// <summary>
        /// 根据表号控制继电器
        /// </summary>
        /// <param name="meterNo">表号</param>
        /// <param name="action">action:动作(1: 强制开阀（闸） 0: 强制关阀（闸）)</param>
        /// <returns></returns>
        Result MbusControlByMeterNo(HydroppowerOperation operation);

        /// <summary>
        /// 根据表号发送短信
        /// </summary>
        /// <param name="meterNo">表号</param>
        /// <returns></returns>
        Result SendSmsByMeterNo(HydroppowerOperation operation);

        /// <summary>
        /// 根据表号读取抄表数据
        /// </summary>
        /// <param name="meterNo"></param>
        /// <returns></returns>
        Result ReadByMeterNo<T>(HydroppowerOperation operation, out T t);

        /// <summary>
        /// 根据开始结束时间读取抄表数据
        /// </summary>
        /// <param name="startTime">开始时间</param>
        /// <param name="endTime">结束时间</param>
        /// <returns></returns>
        Result FindReadInfoByDate<T>(HydroppowerOperation operation, out T t);


        /// <summary>
        /// 添加读数数据
        /// </summary> 
        /// <returns></returns>
        Result AddDatas(List<JoyData> joyDatas);

        /// <summary>
        /// 添加读数数据
        /// </summary> 
        /// <returns></returns>
        Result AddDatas(JoyData joyData);
    }
}
