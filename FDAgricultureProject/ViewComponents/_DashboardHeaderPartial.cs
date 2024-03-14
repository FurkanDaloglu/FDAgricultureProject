using Microsoft.AspNetCore.Mvc;

namespace FDAgricultureProject.ViewComponents
{
    public class _DashboardHeaderPartial : ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
