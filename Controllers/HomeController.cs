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

    public IActionResult CargarPartida(int cantJugadores, int montoInicial, string stringJugando){
        List<Jugador> ListaTodosJugadores = BD.ObtenerListaJugadores();
        List<Jugador> ListaJugando = new List<Jugador>();
        System.Console.WriteLine(stringJugando);
        int[] listaIdsJugando = {0, 1};
        foreach(int id in listaIdsJugando){
            foreach(Jugador jug in ListaTodosJugadores){
                if(id == jug.IdJugador){
                    ListaJugando.Add(jug);
                }
            }
        }
        Juego.CargarPartida(montoInicial, cantJugadores, ListaJugando);
        return RedirectToAction("Jugar","Home", new {apuesta = false, montoApostado = -1});
    }

    public string Jugar(string apuesta, int montoApostado){  
        System.Console.WriteLine("hola");
        if(montoApostado == -1){
            ViewBag.Cartas = Juego.ObtenerProximasCartas(2);
            return "/Home/Jugar?apuesta=false$montoApostado=-10";
        }
        if(Juego.Monto > 0){
            if(apuesta != "false"){
                ViewBag.CartaFinal = Juego.ObtenerProximasCartas(1);
            }
            ViewBag.Cartas = Juego.ObtenerProximasCartas(2);
        }
        return "/Home/Fin";
    }

    public IActionResult Fin(){
        return View();
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
