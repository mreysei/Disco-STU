using Disco_STU.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace Disco_STU.Controllers
{
    public class AuthController : Controller
    {
        [HttpGet]
        public ActionResult Login()
        {
            Session["USUARIO"] = null;
            return View();
        }

        [HttpPost]
        public ActionResult Login(Cliente c)
        {
            if (ModelState.IsValid)
            {
                Cliente authUser = null;
                using (DiscoSTUEntities discoSTUEntities = new DiscoSTUEntities())
                {
                    authUser = discoSTUEntities.Cliente.FirstOrDefault(u => u.Email == c.Email && u.Contrasenia == c.Contrasenia);
                }
                if(authUser != null)
                {
                    FormsAuthentication.SetAuthCookie(authUser.Email, false);
                    Session["USUARIO"] = authUser;
                    return RedirectToAction("Index", "Admin");
                }else
                {
                    ModelState.AddModelError("CredentialError", "Usuario o contraseña incorrectos");
                    return View("ErrorLogin");
                }
            }
            else
            {
                return View();
            }
        }
    }
}