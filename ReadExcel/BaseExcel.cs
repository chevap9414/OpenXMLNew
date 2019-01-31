using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReadExcel
{
    public class BaseExcel
    {
        public struct Engine
        {
            private string _ss;
            private string _disp;
            private string _comcarb;
            private string _grade;
            private string _mis;
            private string _model01;
            private string _model02;
            private string _model03;
            private string _model04;
            private string _model05;
            public string SS { get { return _ss; } set { _ss = value; } }
            public string DISP { get { return _disp; } set { _disp = value; } }
            public string COMCARB { get { return _comcarb; } set { _comcarb = value; } }
            public string GRADE { get { return _grade; } set { _grade = value; } }
            public string MIS { get { return _mis; } set { _mis = value; } }
            public string MODELCODE01 { get { return _model01; } set { _model01 = value; } }
            public string MODELCODE02 { get { return _model02; } set { _model02 = value; } }
            public string MODELCODE03 { get { return _model03; } set { _model03 = value; } }
            public string MODELCODE04 { get { return _model04; } set { _model04 = value; } }
            public string MODELCODE05 { get { return _model05; } set { _model05 = value; } }

        }
        private Engine _engine = new Engine();

        public string SS { get { return _engine.SS; } }

        public BaseExcel()
        {
            _engine.SS = "";
        }
    }
}
