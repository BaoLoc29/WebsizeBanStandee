using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebsizeBanStandee.Areas.Admin.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            //if (Session["User"] == null)
            //{
            //    return RedirectToAction("DangNhap");
            //}
            return View();
        }
        //public ActionResult DangNhap()
        //{
        //    return View();
        //}
        //[HttpPost]
        //// GET: Admin/Home
        //public ActionResult DangNhap(string username, string password)
        //{
        //    if (username == "admin" & password == "riyeu95")
        //    {
        //        Session.Add("User", username);
        //        return RedirectToAction("Index");
        //    }
        //    else
        //    {
        //        return View();
        //    }
        //}
    }
}