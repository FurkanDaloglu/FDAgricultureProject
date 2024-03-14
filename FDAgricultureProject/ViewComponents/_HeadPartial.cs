using Microsoft.AspNetCore.Mvc;

namespace FDAgricultureProject.ViewComponents
{
	public class _HeadPartial:ViewComponent
	{
		public IViewComponentResult Invoke()
		{
			return View();
		}
	}
}
