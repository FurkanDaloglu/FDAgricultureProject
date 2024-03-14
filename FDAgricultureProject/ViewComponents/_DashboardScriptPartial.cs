using Microsoft.AspNetCore.Mvc;

namespace FDAgricultureProject.ViewComponents
{
    public class _DashboardScriptPartial:ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
