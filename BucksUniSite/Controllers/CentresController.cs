﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using BucksUniSite.Models;

namespace BucksUniSite.Controllers
{
    public class CentresController : Controller
    {
        private BucksUniversityDataEntities db = new BucksUniversityDataEntities();

        // GET: Centres
        public ActionResult Index()
        {
            return View(db.Centres.ToList());
        }

        // GET: Centres/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Centre centre = db.Centres.Find(id);
            if (centre == null)
            {
                return HttpNotFound();
            }
            return View(centre);
        }

        // GET: Centres/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Centres/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "CentreID,ShopName,ShopAddress,Postcode,TelNumber")] Centre centre)
        {
            if (ModelState.IsValid)
            {
                db.Centres.Add(centre);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(centre);
        }

        // GET: Centres/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Centre centre = db.Centres.Find(id);
            if (centre == null)
            {
                return HttpNotFound();
            }
            return View(centre);
        }

        // POST: Centres/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "CentreID,ShopName,ShopAddress,Postcode,TelNumber")] Centre centre)
        {
            if (ModelState.IsValid)
            {
                db.Entry(centre).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(centre);
        }

        // GET: Centres/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Centre centre = db.Centres.Find(id);
            if (centre == null)
            {
                return HttpNotFound();
            }
            return View(centre);
        }

        // POST: Centres/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Centre centre = db.Centres.Find(id);
            db.Centres.Remove(centre);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
