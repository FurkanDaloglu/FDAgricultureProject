using EntityLayer.Concrete;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.ValidationRules
{
    public class ImageValidator:AbstractValidator<Image>
    {
        public ImageValidator()
        {
            RuleFor(x=>x.Title).NotEmpty().WithMessage("lütfen görsel başlığı giriniz");
            RuleFor(x=>x.Description).NotEmpty().WithMessage("lütfen açıklama giriniz");
            RuleFor(x=>x.ImageUrl).NotEmpty().WithMessage("lütfen görsel yolunu giriniz");
            RuleFor(x=>x.Title).MaximumLength(20).WithMessage("lütfen en fazla 20 karakter giriniz");
            RuleFor(x=>x.Title).MinimumLength(8).WithMessage("lütfen en az 8 karakter giriniz");
            RuleFor(x=>x.Description).MaximumLength(50).WithMessage("lütfen en fazla 50 karakter giriniz");
            RuleFor(x=>x.Description).MinimumLength(20).WithMessage("lütfen en az 20 karakter giriniz");
        }
    }
}
