using DataAccessLayer.Contexts;
using Microsoft.AspNetCore.Mvc;

namespace FDAgricultureProject.ViewComponents
{
    public class _DashboardOverviewPartial:ViewComponent
    {
        AgricultureContext agricultureContext = new();
        public IViewComponentResult Invoke()
        {
            ViewBag.teamCount = agricultureContext.Teams.Count();
            ViewBag.serviceCount = agricultureContext.Services.Count();
            ViewBag.messageCount = agricultureContext.Contacts.Count();
            ViewBag.currentMonthMessage = 3;

            ViewBag.announcementTrue = agricultureContext.Announcements.Where(x => x.Status == true).Count();
            ViewBag.announcementFalse = agricultureContext.Announcements.Where(x => x.Status == false).Count();

            ViewBag.urunPazarlama = agricultureContext.Teams.Where(x => x.Title == "Ürün Pazarlama").Select(y => y.PersonName).FirstOrDefault();
            ViewBag.bakliyatYonetimi = agricultureContext.Teams.Where(x => x.Title == "Bakliyat Yönetimi").Select(y => y.PersonName).FirstOrDefault();
            ViewBag.sutUretici = agricultureContext.Teams.Where(x => x.Title == "Süt Üreticisi").Select(y => y.PersonName).FirstOrDefault();
            ViewBag.gubreYonetimi = agricultureContext.Teams.Where(x => x.Title == "Gübre Yönetimi").Select(y => y.PersonName).FirstOrDefault();

            return View();
        }
    }
}
