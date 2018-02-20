using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using tareafinal.Models;

namespace tareafinal.Controllers
{
    public class ejecutivoController : Controller
    {

        private bancoEntities entidad_eje = new bancoEntities();
        //
        // GET: /ejecutivo/

        public ActionResult Index()
        {
            return View(entidad_eje.ejecutivoes.ToList());
        }

        //
        // GET: /ejecutivo/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /ejecutivo/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /ejecutivo/Create

        [HttpPost]
        public ActionResult Create([Bind (Exclude = "ID")]ejecutivo creareje)
        {
            if (ModelState.IsValid)
            {
                {
                    if (creareje.contrasena != null && creareje.contrasena.Length <= 20 && creareje.contrasena.Length >= 3)
                    {
                        if (creareje.nombre != null && creareje.nombre.Length <= 20)
                        {
                            if (creareje.nombre != null && creareje.rut.Length <= 10)
                            {
                                entidad_eje.AddToejecutivoes(creareje);
                                entidad_eje.SaveChanges();
                                Session.Add("k", creareje.nombre);
                                try
                                {
                                // TODO: Add insert logic here

                                    return RedirectToAction("Index");
                                }
                                catch
                                {
                                    return View();
                                }
                            }
                            else { return View(); }
                        }
                        else { return View(); }
                    }
                    else { return View(); }
                }
            }else{return View();}
        }
        
        //
        // GET: /ejecutivo/Edit/5
 
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /ejecutivo/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /ejecutivo/Delete/5
 
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /ejecutivo/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
