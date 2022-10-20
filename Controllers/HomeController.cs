using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Pozo.Models;

namespace Pozo.Controllers;

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
        return RedirectToAction("Jugar","Home", new {apuesta = false, montoApostado = -1});
    }

    public IActionResult Jugar(bool apuesta, int montoApostado){  
        if(montoApostado == -1){
            ViewBag.Cartas = Juego.ObtenerProximasCartas(2);
            return View();
        }
        if(Juego.Monto > 0){
            if(apuesta == true){
                ViewBag.CartaFinal = Juego.ObtenerProximasCartas(1);
            }
            ViewBag.Cartas = Juego.ObtenerProximasCartas(2);
        }
        

        return View("Fin");
    }    

    public IActionResult EliminarJugador(int id){
        BD.EliminarJugador(id);
        return RedirectToAction("Configurar", "Home");
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
