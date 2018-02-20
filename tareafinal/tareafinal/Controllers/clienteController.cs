using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using tareafinal.Models;
namespace tareafinal.Controllers
{
    public class clienteController : Controller
    {
        private bancoEntities entidad_cliente = new bancoEntities();
        //
        // GET: /cliente/

        public ActionResult Index()
        {
            return View(entidad_cliente.clientes.ToList());
        }

        //
        // GET: /cliente/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /cliente/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /cliente/Create

        [HttpPost]
        public ActionResult Create([Bind(Exclude = "ID")]cliente crearcli)
        {
            if (ModelState.IsValid){
                if (crearcli.direccion != null && crearcli.direccion.Length <= 50)
                {
                    if (crearcli.direccion != null && crearcli.nombre.Length < 21)
                    { 
                        if (crearcli.telefono != null){
                            entidad_cliente.AddToclientes(crearcli);
                            entidad_cliente.SaveChanges();
                            try
                            {
                // TODO: Add insert logic here

                                return RedirectToAction("Index");
                            } catch
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
           else {return View();}
           

        }
        
        //
        // GET: /cliente/Edit/5
 
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /cliente/Edit/5

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
        // GET: /cliente/Delete/5
 
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /cliente/Delete/5

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
