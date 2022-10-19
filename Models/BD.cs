using System;
using System.Data;
using System.Net;
using System.Dynamic;
using Microsoft.VisualBasic.CompilerServices;
using System.Collections.Generic;
using System.Data.SqlClient;
using Dapper;

namespace Pozo.Models{
    
    public class BD{        

        private static string server = Dns.GetHostName();
        private static string _connectionString = @$"Server={server};DataBase=Pozo;Trusted_Connection=True;";        

        public static List<Carta> ObtenerMazo(){
            List<Carta> listaCartas = new List<Carta>();
            string SQL = "SELECT * FROM Cartas";
            using(SqlConnection db = new SqlConnection(_connectionString)){
                listaCartas = db.Query<Carta>(SQL).ToList();
            }
            
            for(int i = 0; i < listaCartas.Count(); i++){
                Random random = new Random();
                int indiceAleatorio = random.Next(0,listaCartas.Count());
                Carta temporal = listaCartas[indiceAleatorio];
                listaCartas[indiceAleatorio] = listaCartas[i];
                listaCartas[i] = temporal;         
            }          

            return listaCartas;
        }

        public static void crearJugador(Jugador jug){
            string SQL = "INSERT INTO Jugador(nombre, saldo, record) VALUES(@pnombre, @psaldo, @precord)";
            using(SqlConnection db = new SqlConnection(_connectionString)){
                db.Execute(SQL, new {pnombre = jug.Nombre, psaldo = jug.Saldo, precord = jug.Record});
            }
        }

        public static void actualizarJugador(Jugador jug){
            string SQL = "UPDATE Jugador SET saldo = @psaldo AND record = @precord WHERE idJugador = @pidJugador";
            using(SqlConnection db = new SqlConnection(_connectionString)){
                db.Execute(SQL, new{psaldo = jug.Saldo, precord = jug.Record, pIdJugador = jug.IdJugador});
            }
        }

        public static List<Jugador> ObtenerListaJugadores(){
            List<Jugador> listaJugadores = new List<Jugador>();
            string SQL = "SELECT * FROM Jugador";
            using(SqlConnection db = new SqlConnection(_connectionString)){
                listaJugadores = db.Query<Jugador>(SQL).ToList();
            }
            return listaJugadores;
        }

        public static List<HistorialPozos> ObtenerListaHistorial(){
            List<HistorialPozos> listaHistoriales = new List<HistorialPozos>();
            string SQL = "SELECT * FROM HistorialPozos";
            using(SqlConnection db = new SqlConnection(_connectionString)){
                listaHistoriales = db.Query<HistorialPozos>(SQL).ToList();
            }
            return listaHistoriales;
        }

        public static void eliminarJugador(int IdJugador){
            string SQL = "DELETE FROM Jugador WHERE idJugador = @pIdJugador";
            using(SqlConnection db = new SqlConnection(_connectionString)){
                db.Execute(SQL, new{pIdJugador = IdJugador});
            }
        }

        public static void actualizarHistorial(HistorialPozos pozo){
            string SQL = "INSERT INTO HistorialPozos(montoInicial, recordDeMonto, ganador) VALUES(@pmontoInicial, @precordDeMonto, @pganador)";
            using(SqlConnection db = new SqlConnection(_connectionString)){
                db.Execute(SQL, new {pmontoInicial = pozo.MontoInicial, precordDeMonto = pozo.RecordDeMonto, pganador = pozo.Ganador});
            }
        }
    }
}