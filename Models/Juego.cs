using System.Dynamic;
using Microsoft.VisualBasic.CompilerServices;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Timers;

namespace Pozo.Models{

    public static class Juego{

        private static int _montoInicial = 0;
        private static int _monto = 0;
        private static int _recordMonto = 0;
        private static string _ganador = null;
        private static int _cantJugadores = 0;
        private static List<Jugador> _listaJugando;
        private static List<Carta> _mazo;

        private static int _turno = -1;

        public static int Turno{
            get{return _turno;}
            set{_turno = value;}
        }
        public static int MontoInicial{
            get{return _montoInicial;}
            set{_montoInicial = value;}
        }

        public static int Monto{
            get{return _monto;}
            set{_monto = value;}
        }

        public static int RecordMonto{
            get{return _recordMonto;}
            set{_montoInicial = value;}
        }

        public static string Ganador{
            get{return _ganador;}
            set{_ganador = value;}
        }

        public static int CantJugadores{
            get{return _cantJugadores;}
            set{_cantJugadores = value;}
        }

        public static List<Jugador> ListaJugando{
            get{return _listaJugando;}
            set{_listaJugando = value;}
        }
        public static void CargarPartida(int montoInicial, int cantJugadores, List<Jugador> listaJugando){
            _montoInicial = montoInicial;
            _monto = montoInicial * cantJugadores;
            _recordMonto = _monto;
            _cantJugadores = cantJugadores;
            _listaJugando = listaJugando;
            _mazo = BD.ObtenerMazo();
        }

        public static List<Carta> ObtenerProximasCartas(int cant){
            if(_mazo.Count() > 1){
                List<Carta> listaCarta = new List<Carta>();
                listaCarta.Add(_mazo[0]);
                _mazo.RemoveAt(0);
                if(cant > 1){
                    listaCarta.Add(_mazo[0]);
                    _mazo.RemoveAt(0);
                }
                return listaCarta;
            } else{
                _mazo = BD.ObtenerMazo();
                List<Carta> listaCarta = new List<Carta>();
                listaCarta.Add(_mazo[0]);
                _mazo.RemoveAt(0);
                listaCarta.Add(_mazo[0]);
                _mazo.RemoveAt(0);
                return listaCarta;
            }
        }

    }
}