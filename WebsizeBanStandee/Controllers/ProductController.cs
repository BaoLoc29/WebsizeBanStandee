using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsizeBanStandee.Context;

namespace WebsizeBanStandee.Controllers
{
    public class ProductController : Controller
    {
        private WebsizeBanStandeeEntities2 db = new WebsizeBanStandeeEntities2();
        WebsizeBanStandeeEntities2 objWebsizeBanStandeeEntities = new WebsizeBanStandeeEntities2();
        // GET: Product
        public ActionResult Detail(int ProductID)
        {
            var objProduct = objWebsizeBanStandeeEntities.Products.Where(p => p.ProductID == ProductID).FirstOrDefault();
            return View(objProduct);
        }
        //public ActionResult Index(double min = double.MinValue, double max = double.MaxValue)
        //{
        //    return View(product.ToList());
        //}
    }
}