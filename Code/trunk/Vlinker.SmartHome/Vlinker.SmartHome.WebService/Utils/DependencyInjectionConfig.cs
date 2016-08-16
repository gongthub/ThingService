using Microsoft.Owin.Security.Infrastructure;
using Microsoft.Practices.Unity;
using Microsoft.Practices.Unity.Configuration;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using Vlinker.WebService.Common.Models.Interfaces;
using Vlinker.WebService.Common.Services;
using Vlinker.SmartHome.WebService.Services;

namespace Vlinker.SmartHome.WebService.Utils
{
    public class DependencyInjectionConfig
    {
        public static IUnityContainer Containter { get; private set; }
        public static void Register()
        {
            Containter = new UnityContainer();
            
            Containter.RegisterType<IUser, UserService>();
            Containter.RegisterType<IToken, TokenService>();
        }
    }
}