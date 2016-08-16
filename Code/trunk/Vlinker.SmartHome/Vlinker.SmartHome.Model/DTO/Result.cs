﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Vlinker.SmartHome.Model.DTO
{
    public class Result
    {
        public Result()
        {
            desc = "";
        }

        public bool success { get; set; }

        public string desc { get; set; }
    }

    public class YunyouResult
    {
        public YunyouResult()
        {
            desc = "";
            errorMsg = "";
        }

        public bool success { get; set; }
        public string errorMsg { get; set; }
        public string desc { get; set; }
    }
    public class JoyResult
    {
        public bool status { get; set; }
        public object data { get; set; }
    }
    public class JoyResultDatas
    {
        public object readInfo { get; set; }
        public object totalNo { get; set; }
    }
}