using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using tareafinal.Models;


namespace tareafinal.Controllers
{
        
    public class targetaController : Controller
    {
        private bancoEntities entidad_targeta = new bancoEntities();
        //
        // GET: /targeta/

        public ActionResult Index()
        {
            return View();
        }

        //
        // GET: /targeta/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /targeta/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /targeta/Create

        [HttpPost]
        public ActionResult Create([Bind(Exclude = "ID")]targeta creartar)
        {
            if (ModelState.IsValid && creartar.limite != null){
            try
            {
                creartar.cliente = Convert.ToInt32(Request.QueryString["Accion"]);
                creartar.vencimiento = DateTime.Now.AddYears(5);
                creartar.estado = "activa";
                entidad_targeta.AddTotargetas(creartar);
                entidad_targeta.SaveChanges();

                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
            }
            else
            {
                return View();
            }
        }
        
        //
        // GET: /targeta/Edit/5
 
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /targeta/Edit/5

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
        // GET: /targeta/Delete/5
 
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /targeta/Delete/5

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
