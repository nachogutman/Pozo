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
        return RedirectToAction("Jugar","Home");
    }

    public IActionResult Jugar(){  
        ViewBag.MontoPozo = Juego.Monto;
        ViewBag.CantJugadores = Juego.CantJugadores;
        ViewBag.ListaJugadores = Juego.ListaJugando;

        Juego.Turno += 1;
        if(Juego.Turno == ViewBag.CantJugadores){
            Juego.Turno = 0;
        }

        ViewBag.Turno = Juego.Turno;

        ViewBag.Cartas = Juego.ObtenerProximasCartas(2);

        return View();
    }

    public Carta Apuesta(int montoApostado, int indexJugador, int primeraCarta, int segundaCarta){
        Carta CartaFinal = TraerCartas(1)[0];
        if((CartaFinal.Numero > primeraCarta && CartaFinal.Numero < segundaCarta) || (CartaFinal.Numero > segundaCarta && CartaFinal.Numero < primeraCarta)){
            Juego.Monto -= montoApostado;
            Juego.ListaJugando[indexJugador].Saldo += montoApostado;
        }else{
            Juego.Monto += montoApostado;
            Juego.ListaJugando[indexJugador].Saldo -= montoApostado;
        }

        ViewBag.MontoPozo = Juego.Monto;
        ViewBag.CantJugadores = Juego.CantJugadores;
        ViewBag.ListaJugadores = Juego.ListaJugando;
        ViewBag.Turno = Juego.Turno + 1;

        return CartaFinal;
    }

    public List<Carta> TraerCartas(int cant){
        List<Carta> Cartas = Juego.ObtenerProximasCartas(cant);
        return Cartas;
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
