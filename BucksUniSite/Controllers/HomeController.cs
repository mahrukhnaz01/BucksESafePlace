using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BucksUniSite.Controllers
{
	public class HomeController : Controller
	{
		public ActionResult Index()
		{
			return View();
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

		public ActionResult Location()
		{
			ViewBag.Message = "Safe Places Nearby:";

			return View();
		}

		public ActionResult TrainingVideo()
		{
			ViewBag.Message = "The following video provides an introduction to Safe Place Scheme - A Summary for Shops & Businesses in Buckinghamshire:";

			return View();
		}

		public ActionResult Advice()
		{
			ViewBag.Message = "Your co.";

			return View();
		}

		public ActionResult KeyContacts()
		{
			ViewBag.Message = "Youcdsc.";

			return View();
		}

		public ActionResult EmergencyContacts()
		{
			return View();
		}  
	}
}