using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hydroppower.Model
{
    public class DataCompute
    {
        public long ID { get; set; }

        public string user_address_room { get; set; }

        public string meter_no { get; set; }

        public string operate_day { get; set; }

        public string operate_dayTime { get; set; }
        public int meter_type { get; set; }
        public decimal Reads { get; set; }

    }
}
