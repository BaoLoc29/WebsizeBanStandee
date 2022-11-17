using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Web.Mvc;
using WebsizeBanStandee.Context;

namespace WebsizeBanStandee.Controllers
{
    public class LoginUserController : Controller
    {
        WebsizeBanStandeeEntities2 db = new WebsizeBanStandeeEntities2();
        // GET: LoginUser
        // Phương thức tạo view cho Login
        public ActionResult Index()
        {
            return View();
        }
        // Xử lý tìm kiếm ID, password trong AdminUser và thông báo
        [HttpPost]
        public ActionResult LoginAcount(AdminUser _user)
        {
            var check = db.AdminUsers.Where(s => s.ID == _user.ID && s.PasswordUser == _user.PasswordUser).FirstOrDefault();
            if (check == null)
            {
                ViewBag.ErrorInfo = "Sai Info";
                return View("Index");
            }
            else
            {
                db.Configuration.ValidateOnSaveEnabled = false;
                Session["ID"] = _user.ID;
                Session["PasswordUser"] = _user.PasswordUser;
                return RedirectToAction("Index", "Home");
            }
        }
    }
}
