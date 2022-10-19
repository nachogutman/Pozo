using System.Dynamic;
using Microsoft.VisualBasic.CompilerServices;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Timers;

namespace PreguntadORT.Models{

    public static class Juego{

        private static int _montoInicial = 0;
        private static int _monto = 0;
        private static int _recordMonto = 0;
        private static string _ganador = null;
        private static int _cantJugadores = 0;
        private static List<Jugador> _listaJugando;
        private static List<Carta> _mazo;

        public int MontoInicial{
            get{return _montoInicial;}
            set{_montoInicial = value;}
        }

        public int Monto{
            get{return _monto;}
            set{_monto = value;}
        }

        public int RecordMonto{
            get{return _recordMonto;}
            set{_montoInicial = value;}
        }

        public string Ganador{
            get{return _ganador;}
            set{_ganador = value;}
        }

        public int CantJugadores{
            get{return _cantJugadores;}
            set{_cantJugadores = value;}
        }

        public static void CargarPartida(int montoInicial, int cantJugadores, List<Jugador> listaJugando){
            _montoInicial = montoInicial;
            _monto = montoInicial;
            _recordMonto = montoInicial;
            _cantJugadores = cantJugadores;
            _listaJugando = listaJugando;
            _mazo = BD.ObtenerMazo();
        }

        public static List<Carta> ObtenerProximasCartas(){
            if(_mazo.Count() > 1){
                List<Carta> listaCarta = new List<Carta>();
                listaCarta.push(_mazo[0]);
                _mazo.RemoveAt(0);
                listaCarta.push(_mazo[0]);
                _mazo.RemoveAt(0);
                return listaCarta;
            } else{
                _mazo = BD.ObtenerMazo();
                List<Carta> listaCarta = new List<Carta>();
                listaCarta.push(_mazo[0]);
                _mazo.RemoveAt(0);
                listaCarta.push(_mazo[0]);
                _mazo.RemoveAt(0);
                return listaCarta;
            }
        }

    }
}