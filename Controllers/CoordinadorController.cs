using System;
using Microsoft.AspNetCore.Mvc;

namespace SisGest.Controllers
{
    public class CoordinadorController : Controller
    {
        public IActionResult Index(){
            return View();
        }
        
    }
}