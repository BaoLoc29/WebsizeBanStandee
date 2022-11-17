using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsizeBanStandee;
using WebsizeBanStandee.Context;
using WebsizeBanStandee.Models;

namespace WebsizeBanStandee.Controllers
{
    public class HomeController : Controller
    {
        WebsizeBanStandeeEntities2 objWebsizeBanStandeeEntities = new WebsizeBanStandeeEntities2();
        public ActionResult Index()
        {
            HomeModel objHomeModel = new HomeModel();
            objHomeModel.ListCategory = objWebsizeBanStandeeEntities.Categories.ToList();

            objHomeModel.ListProduct = objWebsizeBanStandeeEntities.Products.ToList();
            return View(objHomeModel);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}