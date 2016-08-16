using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Vlinker.SmartHome.Service.Interface
{
    interface ISMSService
    {
        string SendSMS(string mobile, string content);
    }
}
