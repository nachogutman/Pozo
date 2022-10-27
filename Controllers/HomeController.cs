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

    public IActionResult CargarPartida(int montoInicial, int[] idsJugando){
        List<Jugador> ListaTodosJugadores = BD.ObtenerListaJugadores();
        List<Jugador> ListaJugando = new List<Jugador>();
        foreach(int id in idsJugando){
            foreach(Jugador jug in ListaTodosJugadores){
                if(id == jug.IdJugador){
                    ListaJugando.Add(jug);
                }
            }
        }
        Juego.CargarPartida(montoInicial, ListaJugando.Count(), ListaJugando);
        return RedirectToAction("Jugar","Home", new {montoApostado = -1, idApostando = -1});
    }

    public IActionResult Jugar(int montoApostado, int idApostando){  
        ViewBag.MontoPozo = Juego.Monto;
        ViewBag.CantJugadores = Juego.CantJugadores;
        ViewBag.ListaJugadores = Juego.ListaJugando;
        ViewBag.CartaFinal = null;
        if(montoApostado == -1){
            ViewBag.Cartas = Juego.ObtenerProximasCartas(2);
            return View("Jugar");
        }
        if(Juego.Monto > 0){
            if(montoApostado != 0){
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
