using Microsoft.AspNetCore.Mvc;

namespace FDAgricultureProject.ViewComponents
{
	public class _NavbarPartial:ViewComponent
	{
		public IViewComponentResult Invoke()
		{
			return View();
		}
	}
}
