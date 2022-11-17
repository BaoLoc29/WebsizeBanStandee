using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsizeBanStandee.Context;

namespace WebsizeBanStandee.Controllers
{
    public class CatagoryController : Controller
    {
        WebsizeBanStandeeEntities2 objWebsizeBanStandeeEntities = new WebsizeBanStandeeEntities2();
        // GET: Catagory
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ProductCatagory(int IDCate)
        {
            var listProduct = objWebsizeBanStandeeEntities.Products.Where(p => p.CateID == IDCate).ToList();
            return View(listProduct);
        }
    }
}