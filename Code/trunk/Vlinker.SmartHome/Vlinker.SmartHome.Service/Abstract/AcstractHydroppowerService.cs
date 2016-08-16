using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Vlinker.SmartHome.Model.Base;
using Vlinker.SmartHome.Model.Context;
using Vlinker.SmartHome.Model.DTO;
using Vlinker.SmartHome.Model.Hydropower;
using Vlinker.SmartHome.Service.Interface;

namespace Vlinker.SmartHome.Service.Abstract
{
    public abstract class AcstractHydroppowerService : IHydropowerService
    {
        protected SupplierConfig supplierConfig;

        public virtual string DataValidate(HydroppowerOperation operation)
        {
            string result = "";

            SmartHomeDbContext context = new SmartHomeDbContext();
            supplierConfig = context.SupplierConfigs.Where(p => p.ActiveFlag == 1 && p.SupplierCode == operation.SupplierCode).FirstOrDefault();

            if (supplierConfig == null)
            {
                result = "{\"success\":false,\"desc\":\"供应商信息不全或已失效\"}";
                result = "{\"success\":false,\"desc\":\"RoomCode不能为空\"}";
            }
            return result;
        }

        public abstract Result RechargeByMeterNo(HydroppowerOperation operation);

        public abstract Result RechargeByMeterNo(HydroppowerOperation operation, out Model.Hydropower.ReCharge reChange);

        public abstract Result RefundByMeterNo(HydroppowerOperation operation);

        public abstract Result RefundByMeterNo(HydroppowerOperation operation, out Model.Hydropower.ReCharge reChange);

        public abstract Result AddReChange(HydroppowerOperation operation);

        public abstract Result MbusControlByMeterNo(HydroppowerOperation operation);

        public abstract Result SendSmsByMeterNo(HydroppowerOperation operation);

        public abstract Result ReadByMeterNo<T>(HydroppowerOperation operation, out T t);

        public abstract Result FindReadInfoByDate<T>(HydroppowerOperation operation, out T t);

        public abstract Result AddDatas(JoyData joyData);
        public abstract Result AddDatas(List<JoyData> joyDatas);
    }
}
