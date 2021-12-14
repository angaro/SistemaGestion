using System;
using Microsoft.AspNetCore.Mvc;

namespace SisGest.Controllers
{
    public class EstudianteController : Controller
    {
        public IActionResult Index(){
            return View();
        }
        
    }
}