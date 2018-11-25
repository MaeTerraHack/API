using System.Web;
using System.Web.Mvc;

namespace Unilever.MaeTerra.API
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
