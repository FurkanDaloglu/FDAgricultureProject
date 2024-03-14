using DataAccessLayer.Contexts;
using Microsoft.AspNetCore.Mvc;

namespace FDAgricultureProject.ViewComponents
{
    public class _MapPartial:ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            AgricultureContext agricultureContext = new();
            var value = agricultureContext.Addresses.Select(x => x.MapInfo).FirstOrDefault();
            ViewBag.map=value;
            return View();
        }
    }
}
