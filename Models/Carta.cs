using System.Dynamic;
using Microsoft.VisualBasic.CompilerServices;
using System;
using System.Collections.Generic;

namespace Pozo.Models{
    public class Carta{
        
        private int _idCarta;
        private int _numero;
        private string _palo;
        private string _foto;

        public Carta(int pnumero, string ppalo, string pfoto){

            _numero = pnumero;
            _palo = ppalo;
            _foto = pfoto;
            
        }

        public Carta(){

            _numero = 0;
            _palo = "";
            _foto = "";
            
        }

        public int IdCarta{
            get{return _idCarta;}
            set{_idCarta = value;}
        }

        public int Numero{
            get{return _numero;}
            set{_numero = value;}
        }

        public string Palo{
            get{return _palo;}
            set{_palo = value;}
        }  

        public string Foto{
            get {return _foto;}
            set{_foto = value;}
        }


    }
}