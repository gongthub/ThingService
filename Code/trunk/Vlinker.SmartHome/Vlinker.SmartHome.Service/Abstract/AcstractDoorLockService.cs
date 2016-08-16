﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Vlinker.Common.ApiInvoker;
using Vlinker.SmartHome.Model.Base;
using Vlinker.SmartHome.Model.Context;
using Vlinker.SmartHome.Model.DoorLock;
using Vlinker.SmartHome.Model.DTO;
using Vlinker.SmartHome.Service.Interface;
using Vlinker.SmartHome.Util;

namespace Vlinker.SmartHome.Service.Abstract
{
    public abstract class AcstractDoorLockService : IDoorLockService
    {
        protected SupplierConfig supplierConfig;

        public virtual string DataValidate(DoorLockOperation operation)
        {
            string result = "";

            SmartHomeDbContext context = new SmartHomeDbContext();
            supplierConfig = context.SupplierConfigs.Where(p => p.ActiveFlag == 1 && p.SupplierCode == operation.SupplierCode).FirstOrDefault();

            if (supplierConfig == null)
            {
                result = "{\"success\":false,\"desc\":\"供应商信息不全或已失效\"}";   
            }
            if (operation.StoreCode == null)
            {
                result = "{\"success\":false,\"desc\":\"StoreCode不能为空\"}";
            }
            if (operation.RoomCode == null)
            {
                result = "{\"success\":false,\"desc\":\"RoomCode不能为空\"}";
            }
            return result;
        }

        public virtual string DataValidateSychRoom(RoomInfo roomInfo,string supplierCode)
        {
            string result = "";

            SmartHomeDbContext context = new SmartHomeDbContext();
            supplierConfig = context.SupplierConfigs.Where(p => p.ActiveFlag == 1 && p.SupplierCode == supplierCode).FirstOrDefault();

            if (supplierConfig == null)
            {
                result = "{\"success\":false,\"desc\":\"供应商信息不全或已失效\"}";
            }
            if (roomInfo.StoreCode == null)
            {
                result = "{\"success\":false,\"desc\":\"StoreCode不能为空\"}";
            }
            if (roomInfo.RoomCode == null)
            {
                result = "{\"success\":false,\"desc\":\"RoomCode不能为空\"}";
            }
            return result;
        }

        public abstract Result RemoteOpenDoor(DoorLockOperation operation);

        public abstract Result CheckInAuth(DoorLockOperation operation);

        public abstract Result DeleleAuth(DoorLockOperation operation);

        public abstract Result SetPassword(DoorLockOperation operation);

        public abstract Result DeletePassword(DoorLockOperation operation);

        public abstract Result SynchronizeRoom(DoorLockOperation operation);

    }
}