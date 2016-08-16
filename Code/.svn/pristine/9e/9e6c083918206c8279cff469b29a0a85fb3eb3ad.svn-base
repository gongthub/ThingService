using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Vlinker.SmartHome.Model.DoorLock;
using Vlinker.SmartHome.Model.DTO;

namespace Vlinker.SmartHome.Service.Interface
{
    public interface IDoorLockService
    {
        /// <summary>
        /// 远程开门
        /// </summary>
        /// <param name="operation"></param>
        /// <returns></returns>
        Result RemoteOpenDoor(DoorLockOperation operation);

        /// <summary>
        /// 授权入住
        /// </summary>
        /// <param name="operation"></param>
        /// <returns></returns>
        Result CheckInAuth(DoorLockOperation operation);

        /// <summary>
        /// 取消授权
        /// </summary>
        /// <param name="operation"></param>
        /// <returns></returns>
        Result DeleleAuth(DoorLockOperation operation);

        /// <summary>
        /// 设置密码
        /// </summary>
        /// <param name="operation"></param>
        /// <returns></returns>
        Result SetPassword(DoorLockOperation operation);

        /// <summary>
        /// 删除密码
        /// </summary>
        /// <param name="operation"></param>
        /// <returns></returns>
        Result DeletePassword(DoorLockOperation operation);

        /// <summary>
        /// 同步房源
        /// </summary>
        /// <param name="operation"></param>
        /// <returns></returns>
        Result SynchronizeRoom(DoorLockOperation operation);

        /// <summary>
        /// 数据校验
        /// </summary>
        /// <param name="operation"></param>
        /// <returns></returns>
        string DataValidate(DoorLockOperation operation);
    }
}