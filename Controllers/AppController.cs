using System;
using Microsoft.AspNetCore.Mvc;

namespace SisGest.Controllers
{
    public class AppController : Controller
    {
        public IActionResult Index(){
            return View();
        }
         public IActionResult Register(){
            return View();
        }
         public IActionResult Forgot(){
            return View();
        }
    }
}