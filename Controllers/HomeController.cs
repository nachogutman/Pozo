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
        foreach(Jugador jug in ViewBag.ListaJugadores){
            if(jug.Saldo > jug.Record){
                jug.Record = jug.Saldo;
                BD.actualizarJugador(jug);
            }
        }
        return View();
    }

    public IActionResult CargarPartida(int montoInicial, int[] idsJugando){
        if(idsJugando.Length >= 0){
            return RedirectToAction("Index","Home");
        }
        List<Jugador> ListaTodosJugadores = BD.ObtenerListaJugadores();
        List<Jugador> ListaJugando = new List<Jugador>();
        foreach(int id in idsJugando){
            foreach(Jugador jug in ListaTodosJugadores){
                if(id == jug.IdJugador){
                    ListaJugando.Add(jug);
                    jug.Saldo -= montoInicial;
                }
            }
        }
        Juego.CargarPartida(montoInicial, ListaJugando.Count(), ListaJugando);
        return RedirectToAction("Jugar","Home");
    }

    public IActionResult Jugar(){ 
        ViewBag.MontoPozo = Juego.Monto;
        if(Juego.Monto <= 0){
            return RedirectToAction("Fin", "Home");
        }
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

    public IActionResult Fin(){
        foreach(Jugador jug in Juego.ListaJugando){
            System.Console.WriteLine(jug.Saldo);
            BD.actualizarJugador(jug);
        }

        HistorialPozos newPozo = new HistorialPozos(Juego.RecordMonto, Juego.MontoInicial);
        BD.actualizarHistorial(newPozo);
        return View();
    }

    public Carta Apuesta(int montoApostado, int indexJugador, int primeraCarta, int segundaCarta){
        Carta CartaFinal = TraerCartas(1)[0];
        if((CartaFinal.Numero > primeraCarta && CartaFinal.Numero < segundaCarta) || (CartaFinal.Numero > segundaCarta && CartaFinal.Numero < primeraCarta)){
            Juego.Monto -= montoApostado;
            Juego.ListaJugando[indexJugador].Saldo += montoApostado;
            if(Juego.ListaJugando[indexJugador].Saldo > Juego.ListaJugando[indexJugador].Record){
                Juego.ListaJugando[indexJugador].Record = Juego.ListaJugando[indexJugador].Saldo;
            }
        }else{
            Juego.Monto += montoApostado;
            Juego.ListaJugando[indexJugador].Saldo -= montoApostado;
            if(Juego.Monto > Juego.RecordMonto){
                Juego.RecordMonto = Juego.Monto;
            }
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

    public IActionResult GuardarJugador(string nombre, int saldo)
    {
        Jugador newJug = new Jugador(nombre, saldo);
        BD.AgregarJugador(newJug);

        return RedirectToAction("Configurar", "Home");
    }

    public void CargarPlata(int monto, int id){
        ViewBag.ListaJugadores = BD.ObtenerListaJugadores();
        foreach(Jugador jug in ViewBag.ListaJugadores){
            if(id == jug.IdJugador){
                jug.Saldo += monto;
                BD.actualizarJugador(jug);
            }

            if(jug.Saldo > jug.Record){
                jug.Record = jug.Saldo;
                BD.actualizarJugador(jug);
            }
        }
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
