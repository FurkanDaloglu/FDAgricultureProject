using BusinessLayer.Abstract;
using BusinessLayer.ValidationRules;
using EntityLayer.Concrete;
using FluentValidation.Results;
using Microsoft.AspNetCore.Mvc;

namespace FDAgricultureProject.Controllers
{
    public class AddressController : Controller
    {
        private readonly IAddressSevice _addressSevice;

        public AddressController(IAddressSevice addressSevice)
        {
            _addressSevice = addressSevice;
        }

        public IActionResult Index()
        {
            var values = _addressSevice.GetListAll();
            return View(values);
        }

        [HttpGet]
        public IActionResult EditAdress(int id)
        {
            var value = _addressSevice.GetById(id);
            return View(value);
        }
        [HttpPost]
        public IActionResult EditAdress(Address address)
        {

            AddressValidator validationRules = new();
            ValidationResult result = validationRules.Validate(address);
            if (result.IsValid)
            {
                _addressSevice.Update(address);
                return RedirectToAction("Index");
            }
            else
            {
                foreach (var item in result.Errors)
                {
                    ModelState.AddModelError(item.PropertyName, item.ErrorMessage);
                }

            }
            return View();
        }
    }
}
