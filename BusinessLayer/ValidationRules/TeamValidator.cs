using EntityLayer.Concrete;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.ValidationRules
{
    public class TeamValidator : AbstractValidator<Team>
    {
        public TeamValidator()
        {
            RuleFor(x => x.PersonName).NotEmpty().WithMessage("Personel İsmi Boş Geçilemez");
            RuleFor(x => x.Title).NotEmpty().WithMessage("Görev Boş Geçilemez");
            RuleFor(x => x.ImageUrl).NotEmpty().WithMessage("Resim Boş Geçilemez");
            RuleFor(x => x.PersonName).MaximumLength(50).WithMessage("Lütfen en fazla 50 karakter veri girişi yapın.");
            RuleFor(x => x.PersonName).MinimumLength(5).WithMessage("Lütfen en az 5 karakter veri girişi yapın.");
            RuleFor(x => x.Title).MaximumLength(50).WithMessage("Lütfen en fazla 50 karakter veri girişi yapın.");
            RuleFor(x => x.Title).MinimumLength(3).WithMessage("Lütfen en az 3 karakter veri girişi yapın.");
            RuleFor(x => x.FacebookUrl).NotEmpty().WithMessage("Facebook linki Boş Geçilemez");
            RuleFor(x => x.InstagramUrl).NotEmpty().WithMessage("Instagram linki Boş Geçilemez");
            RuleFor(x => x.TwitterUrl).NotEmpty().WithMessage("Twitter linki Boş Geçilemez");
            RuleFor(x => x.WebsiteUrl).NotEmpty().WithMessage("Website linki Boş Geçilemez");


        }
    }
}
