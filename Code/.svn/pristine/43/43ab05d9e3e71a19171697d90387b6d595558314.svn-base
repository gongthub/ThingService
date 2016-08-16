using Microsoft.Practices.Unity;
using Microsoft.Practices.Unity.Configuration;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Vlinker.SmartHome.Util
{
    public class UnityContainerUtil
    {
        public static T ResolveInstance<T>(string unityName)
        {
            IUnityContainer container = new UnityContainer();
            UnityConfigurationSection unityConfigurationSection = (UnityConfigurationSection)ConfigurationManager.GetSection("unity");
            unityConfigurationSection.Containers.Default.Configure(container);
            T instance = container.Resolve<T>(unityName);

            return instance;
        }
    }
}
