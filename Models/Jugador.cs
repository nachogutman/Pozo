using System.Dynamic;
using Microsoft.VisualBasic.CompilerServices;
using System;
using System.Collections.Generic;

namespace Pozo.Models{
    public class Jugador{
        
        private int _idJugador;
        private string _nombre;
        private int _saldo;
        private int _record;
        private bool _jugando;

        public Jugador(string pnombre, int psaldo, int precord, bool pjugando){
            _nombre = pnombre;
            _saldo = psaldo;
            _record = precord;
            _jugando = pjugando;
        }

        public Jugador(){
            _nombre = "";
            _saldo = 0;
            _record = 0;
            _jugando = false;
        }

        public int IdJugador{
            get{return _idJugador;}
            set{_idJugador = value;}
        }

        public string Nombre{
            get{return _nombre;}
            set{_nombre = value;}
        }
        
        public int Saldo{
            get{return _saldo;}
            set{_saldo = value;}
        }

        public int Record{
            get{return _record;}
            set{_record = value;}
        }

        public bool Jugando{
            get{return _jugando;}
            set{_jugando = value;}
        }

    }
}