using BusinessLayer.Abstract;
using Microsoft.AspNetCore.Mvc;

namespace FDAgricultureProject.ViewComponents
{
	public class _AddressPartial:ViewComponent
	{
		private readonly IAddressSevice _addressSevice;
        public _AddressPartial(IAddressSevice addressSevice)
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
