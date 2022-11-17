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
        private string _foto;

        public Jugador(string pnombre, int psaldo, string pfoto){
            _nombre = pnombre;
            _saldo = psaldo;
            _record = psaldo;
            _foto = pfoto;
        }

        public Jugador(){
            _nombre = "";
            _saldo = 0;
            _record = 0;
            _foto = "";
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

        public string Foto{
            get{return _foto;}
            set{_foto = value;}
        }

    }
}