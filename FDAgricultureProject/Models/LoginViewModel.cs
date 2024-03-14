using System.ComponentModel.DataAnnotations;

namespace FDAgricultureProject.Models
{
    public class LoginViewModel
    {
        [Required(ErrorMessage ="Lütfen kullanıcı adını giriniz")]
        public string userName { get; set; }

        [Required(ErrorMessage = "Lütfen kullanıcı adını giriniz")]
        public string password { get; set; }
    }
}
