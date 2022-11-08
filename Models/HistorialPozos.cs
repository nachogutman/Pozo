using System.Dynamic;
using Microsoft.VisualBasic.CompilerServices;
using System;
using System.Collections.Generic;

namespace Pozo.Models{
    public class HistorialPozos{
        
        private int _idPozo;
        private int _montoInicial;
        private int _recordDeMonto;

        public HistorialPozos(int pmontoInicial, int precordDeMonto){
            _montoInicial = pmontoInicial;
            _recordDeMonto = precordDeMonto;
        }

        public HistorialPozos(){
            _montoInicial = 0;
            _recordDeMonto = 0;
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
    }
}