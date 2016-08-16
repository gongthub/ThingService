using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;
using Vlinker.SmartHome.Service.Interface;
using Microsoft.Practices.Unity;
using Vlinker.SmartHome.Model.DoorLock;
using Vlinker.SmartHome.Util;
using Vlinker.SmartHome.Model.Base;
using Vlinker.SmartHome.Model.DTO;
using Vlinker.SmartHome.Model.Context;
using Vlinker.Common.ApiInvoker;
using Vlinker.SmartHome.Service.Abstract;

namespace Vlinker.SmartHome.Service.Services
{
    public class YunyouDoorLockService : AcstractDoorLockService
    {
        [InjectionConstructor]
        public YunyouDoorLockService() { }

        public override Result RemoteOpenDoor(DoorLockOperation operation)
        {
            Result result = new Result() { success = false, desc = "" };

            string vlidResult = DataValidate(operation);

            if (vlidResult != "") new Result() { success = false, desc = vlidResult };

            if (operation.AuthoredMobile == "")
            {
                result.desc = "AuthoredMobile不能为空";
                return result;
            }

            string api = string.Format(@"/apartments/{0}/remote_action", operation.RoomCode);

            var requestParam = new Dictionary<string, string>
            {
                { "partnerId", supplierConfig.PartnerId },
                { "buildingId", operation.StoreCode},
                { "doorType", operation.DoorType.ToString()},
                { "code", operation.RoomCode},
                { "door", operation.SubDoorCode},
                { "operator", ParamHelper.HexMD5Code(operation.AuthoredMobile)}
            };

            result = WebApiInvokePost(api, requestParam);

            if (result.success && operation.SendSMS == "1"
                && ConfigHelper.SMSRemoteOpenDoorContent != null && ConfigHelper.SMSRemoteOpenDoorContent != "")
            {
                ISMSService service = UnityContainerUtil.ResolveInstance<ISMSService>("ISMSService");
                string content = string.Format(ConfigHelper.SMSRemoteOpenDoorContent);
                service.SendSMS(operation.AuthoredMobile, content);
            }

            return result;
        }

        public override Result CheckInAuth(DoorLockOperation operation)
        {
            Result result = new Result() { success = false, desc = "" };

            string vlidResult = DataValidate(operation);

            if (vlidResult != "") new Result() { success = false, desc = vlidResult };

            if (operation.AuthoredMobile == "")
            {
                result.desc = "AuthoredMobile不能为空";
                return result;
            }

            string api = string.Format(@"/apartments/{0}/auth", operation.RoomCode);

            var requestParam = new Dictionary<string, string>
            {
                { "partnerId", supplierConfig.PartnerId },
                { "buildingId", operation.StoreCode},
                { "doorType", operation.DoorType.ToString()},
                { "code", operation.RoomCode},
                { "door", operation.SubDoorCode},
                { "startTime", CommonUtil.GetTimeStamp(operation.StartTime)},
                { "endTime",  CommonUtil.GetTimeStamp(operation.EndTime)},
                { "author", supplierConfig.AuthCode},
                { "authoredName", operation.AuthoredName},
                { "authoredMobile", ParamHelper.HexMD5Code(operation.AuthoredMobile)}
            };

            result = WebApiInvokePost(api, requestParam);

            if (result.success && operation.SendSMS == "1"
                && ConfigHelper.SMSCheckInAuthContent != null && ConfigHelper.SMSCheckInAuthContent != "")
            {
                ISMSService service = UnityContainerUtil.ResolveInstance<ISMSService>("ISMSService");
                string content = string.Format(ConfigHelper.SMSCheckInAuthContent, operation.EndTime);
                service.SendSMS(operation.AuthoredMobile, content);
            }

            return result;
        }

        public override Result DeleleAuth(DoorLockOperation operation)
        {
            Result result = new Result() { success = false, desc = "" };

            string vlidResult = DataValidate(operation);

            if (vlidResult != "") new Result() { success = false, desc = vlidResult };

            if (operation.AuthoredMobile == "")
            {
                result.desc = "AuthoredMobile不能为空";
                return result;
            }

            string api = string.Format(@"/apartments/{0}/delete_auth", operation.RoomCode);

            var requestParam = new Dictionary<string, string>
            {
                { "partnerId", supplierConfig.PartnerId },
                { "buildingId", operation.StoreCode},
                { "doorType", operation.DoorType.ToString()},
                { "code", operation.RoomCode},
                { "door", operation.SubDoorCode},
                { "authoredMobile", ParamHelper.HexMD5Code(operation.AuthoredMobile)},
            };

            result = WebApiInvokePost(api, requestParam);

            return result;
        }

        public override Result SetPassword(DoorLockOperation operation)
        {
            Result result = new Result() { success = false, desc = "" };

            string vlidResult = DataValidate(operation);

            if (vlidResult != "") new Result() { success = false, desc = vlidResult };

            if (operation.AuthoredMobile == "")
            {
                result.desc = "AuthoredMobile不能为空";
                return result;
            }

            if (operation.Password == "")
            {
                result.desc = "Password不能为空";
                return result;
            }

            string api = string.Format(@"/apartments/{0}/generate_password", operation.RoomCode);

            var requestParam = new Dictionary<string, string>
            {
                { "partnerId", supplierConfig.PartnerId },
                { "buildingId", operation.StoreCode},
                { "doorType", operation.DoorType.ToString()},
                { "code", operation.RoomCode},
                { "door", operation.SubDoorCode},
                { "startTime", CommonUtil.GetTimeStamp(operation.StartTime)},
                { "endTime",  CommonUtil.GetTimeStamp(operation.EndTime)},
                { "author", supplierConfig.AuthCode},
                { "authoredName", operation.AuthoredName},
                { "authoredMobile", ParamHelper.HexMD5Code(operation.AuthoredMobile)},
                { "password", operation.Password}
            };

            result = WebApiInvokePost(api, requestParam);

            if (result.success && operation.SendSMS == "1"
                && ConfigHelper.SMSSetPwdContent != null && ConfigHelper.SMSSetPwdContent != "")
            {
                ISMSService service = UnityContainerUtil.ResolveInstance<ISMSService>("ISMSService");
                string content = string.Format(ConfigHelper.SMSSetPwdContent, operation.Password, operation.EndTime);
                service.SendSMS(operation.AuthoredMobile, content);
            }

            return result;
        }

        public override Result DeletePassword(DoorLockOperation operation)
        {
            Result result = new Result() { success = false, desc = "" };

            string vlidResult = DataValidate(operation);

            if (vlidResult != "") new Result() { success = false, desc = vlidResult };

            if (operation.AuthoredMobile == "")
            {
                result.desc = "AuthoredMobile不能为空";
                return result;
            }

            string api = string.Format(@"/apartments/{0}/remove_password", operation.RoomCode);

            var requestParam = new Dictionary<string, string>
            {
                { "partnerId", supplierConfig.PartnerId },
                { "buildingId", operation.StoreCode},
                { "doorType", operation.DoorType.ToString()},
                { "code", operation.RoomCode},
                { "door", operation.SubDoorCode},
                { "authoredMobile", ParamHelper.HexMD5Code(operation.AuthoredMobile)},
            };

            result = WebApiInvokePost(api, requestParam);

            return result;
        }

        public override Result SynchronizeRoom(DoorLockOperation operation)
        {
            Result result = new Result() { success = false, desc = "" };

            if (operation.RoomInfoList == null || operation.RoomInfoList.Count == 0)
            {
                result.desc = "同步房源数据不能为空";
                return result;
            }

            SmartHomeDbContext context = new SmartHomeDbContext();
            List<YunyouRoomInfo> apartmentList = new List<YunyouRoomInfo>();

            for (int i = 0; i < operation.RoomInfoList.Count; i++)
            {
                string vlidResult = DataValidateSychRoom(operation.RoomInfoList[i], operation.SupplierCode);
                if (vlidResult != "") new Result()
                {
                    success = false,
                    desc = vlidResult
                };

                RoomInfo roomInfo = operation.RoomInfoList[i];
                YunyouRoomInfo apartment = new YunyouRoomInfo();

                //District district = context.Districts.Where(p => p.Name == roomInfo.DisName && p.City.Name == roomInfo.CityName && p.City.Province.Name == roomInfo.ProvinceName).FirstOrDefault();
                var city = context.Cities.Where(p => p.Name == roomInfo.CityName).FirstOrDefault();
                if (city == null)
                {
                    result.desc = "城市相关信息错误";
                    return result;
                }

                if (roomInfo.StoreCode == "")
                {
                    result.desc = "StoreCode不能为空";
                    return result;
                }
                if (roomInfo.StoreName == "")
                {
                    result.desc = "StoreName不能为空";
                    return result;
                }
                if (roomInfo.RoomCode == "")
                {
                    result.desc = "RoomCode不能为空";
                    return result;
                }

                if (roomInfo.DoorCode == "")
                {
                    result.desc = "DoorCode不能为空";
                    return result;
                }

                if (roomInfo.DoorName == "")
                {
                    result.desc = "DoorName不能为空";
                    return result;
                }

                var district = context.Districts.Where(t => t.CityID == city.ID).FirstOrDefault();
                apartment.provinceId = city.Province.ID;
                apartment.cityId = city.ID;
                apartment.disId = district != null ? district.ID : null;
                apartment.buildingId = roomInfo.StoreCode;
                apartment.buildingName = roomInfo.StoreName;
                apartment.buildingNo = roomInfo.BuildingCode;
                apartment.houseId = roomInfo.RoomCode;
                apartment.code = roomInfo.DoorCode;
                apartment.name = roomInfo.DoorName;
                apartment.doorType = roomInfo.DoorType == "" ? "1" : roomInfo.DoorType;
                apartment.door = apartment.doorType == "1" ? "" : roomInfo.SubDoorCode;
                apartment.doorId = roomInfo.RoomCode + roomInfo.DoorCode;
                apartment.unit = "";
                apartment.floor = "";

                apartmentList.Add(apartment);
            }

            string api = string.Format(@"/apartments/synchronize_apartments");

            String apartmentJson = JsonConvert.SerializeObject(apartmentList).ToString();

            var requestParam = new Dictionary<string, string>
                {
                    { "partnerId", supplierConfig.PartnerId },
                    { "apartmentList", apartmentJson}
                };

            result = WebApiInvokePost(api, requestParam);

            return result;
        }

        private Result WebApiInvokePost(string api, Dictionary<string, string> requestParam)
        {
            string randomString = CommonUtil.GetRandomString(4, true);
            string timestamp = CommonUtil.GetTimeStamp(DateTime.Now);
            string token = CommonUtil.GetTokenKey(timestamp + supplierConfig.Secret + randomString);

            requestParam.Add("nonstr", randomString);
            requestParam.Add("timestamp", timestamp);
            requestParam.Add("token", token);

            Result result = new Result() { success = true, desc = "" };

            try
            {
                WebApiInvoker ApiInvoker = new WebApiInvoker(supplierConfig.ServiceUrl);
                string postResult = ApiInvoker.InvokePostRequest(api, requestParam).Result.ToString();

                YunyouResult yunyouResult = JsonConvert.DeserializeObject<YunyouResult>(postResult);
                result = new Result() { success = yunyouResult.success, desc = yunyouResult.desc != "" ? yunyouResult.desc : yunyouResult.errorMsg };
            }
            catch (Exception e)
            {
                new Result() { success = false, desc = e.Message };
            }

            return result;
        }
    }
}