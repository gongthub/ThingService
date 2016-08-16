using System.Web;
using System.Web.Mvc;

namespace Vlinker.OMS.WebServiceTest2
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
