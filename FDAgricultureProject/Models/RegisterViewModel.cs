﻿using System.ComponentModel.DataAnnotations;

namespace FDAgricultureProject.Models
{
    public class RegisterViewModel
    {
        [Required(ErrorMessage ="Lütfen kullanıcı adını giriniz!")]
        public string userName { get; set; }

        [Required(ErrorMessage = "Lütfen mail giriniz!")]
        public string mail { get; set; }

        [Required(ErrorMessage = "Lütfen şifreyi giriniz!")]
        public string password { get; set; }

        [Required(ErrorMessage = "Lütfen şifreyi tekrar giriniz!")]
        [Compare("password",ErrorMessage ="Şifreler uyumlu değil, kontrol ediniz")]
        public string passwordConfirm { get; set; }
    }
}
