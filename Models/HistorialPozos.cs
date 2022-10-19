using System.Dynamic;
using Microsoft.VisualBasic.CompilerServices;
using System;
using System.Collections.Generic;

namespace Pozo.Models{
    public class HistorialPozos{
        
        private int _idPozo;
        private int _montoInicial;
        private int _recordDeMonto;
        private string _ganador;

        public HistorialPozos(int pmontoInicial, int precordDeMonto, string pganador){
            _montoInicial = pmontoInicial;
            _recordDeMonto = precordDeMonto;
            _ganador = pganador;
        }

        public HistorialPozos(){
            _montoInicial = 0;
            _recordDeMonto = 0;
            _ganador = "";
        }

        public int IdPozo{
            get{return _idPozo;}
            set{_idPozo = value;}
        }

        public int MontoInicial{
            get{return _montoInicial;}
            set{_montoInicial = value;}
        }

        public int RecordDeMonto{
            get{return _recordDeMonto;}
            set{_recordDeMonto = value;}
        }

        public string Ganador{
            get{return _ganador;}
            set{_ganador = value;}
        }
    }
}