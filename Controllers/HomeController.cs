using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using BlackJack.Models;
using System.Collections.Generic;

namespace BlackJack.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        ViewBag.Historial = BD.ObtenerListaHistorial();
        return View();
    }

    public IActionResult Configurar(){
        ViewBag.ListaJugadores = BD.ObtenerListaJugadores();
        return View();
    }

    public IActionResult CargarPartida(int cantJugadores, int montoInicial, List<Jugador> listaJugando){
        Juego.CargarPartida(montoInicial, cantJugadores, listaJugando);
        return RedirectToAction("Jugar","Home");
    }

    public IActionResult Jugar(){  
        List<Carta> cartasProximas = Juego.ObtenerProximasCartas();
        if(Juego.Monto > 0){
            ViewBag.Cartas = cartasProximas;
            if(apuesta == true){
                
            }
            return View();
        }
        

        return View("Fin");
    }    


    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
