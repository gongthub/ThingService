using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Vlinker.OMS.WebServiceTest2.Startup))]
namespace Vlinker.OMS.WebServiceTest2
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
