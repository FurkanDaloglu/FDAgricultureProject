using BusinessLayer.Abstract;
using Microsoft.AspNetCore.Mvc;

namespace FDAgricultureProject.ViewComponents
{
	public class _TopAddressPartial:ViewComponent
	{
		private readonly IAddressSevice _addressSevice;
        public _TopAddressPartial(IAddressSevice addressSevice)
        {
            _addressSevice = addressSevice;
        }
        public IViewComponentResult Invoke()
		{
			var values = _addressSevice.GetListAll();
			return View(values);
		}
	}
}
