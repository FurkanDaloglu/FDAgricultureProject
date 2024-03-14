using Microsoft.AspNetCore.Mvc;

namespace FDAgricultureProject.Controllers
{
    public class DashboardController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
