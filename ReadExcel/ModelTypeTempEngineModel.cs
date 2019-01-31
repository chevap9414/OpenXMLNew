using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReadExcel
{
    public class ModelTypeTempEngineModel : IEquatable<ModelTypeTempEngineModel>
    {
        public int ModelTypeTempDetailID { get; set; }
        public int ModelTypeTempRowID { get; set; }
        public string SS { get; set; }
        public string DISP { get; set; }
        public string COMCARB { get; set; }
        public string Grade { get; set; }
        public string Mis { get; set; }
        public string ModelCode01 { get; set; }
        public string ModelCode02 { get; set; }
        public string ModelCode03 { get; set; }
        public string ModelCode04 { get; set; }
        public string ModelCode05 { get; set; }

        public bool Equals(ModelTypeTempEngineModel other)
        {
            if (other == null) return false;
            return this.SS.Equals(other.SS) &&
                (
                    object.ReferenceEquals(this.DISP, other.DISP) ||
                    this.DISP != null &&
                    this.DISP.Equals(other.DISP)
                ) &&
                (
                    object.ReferenceEquals(this.COMCARB, other.COMCARB) ||
                    this.COMCARB != null &&
                    this.COMCARB.Equals(other.COMCARB)
                ) &&
                (
                    object.ReferenceEquals(this.Grade, other.Grade) ||
                    this.Grade != null &&
                    this.Grade.Equals(other.Grade)
                ) &&
                (
                    object.ReferenceEquals(this.Mis, other.Mis) ||
                    this.Mis != null &&
                    this.Mis.Equals(other.Mis)
                ) &&
                (
                    object.ReferenceEquals(this.ModelCode01, other.ModelCode01) ||
                    this.ModelCode01 != null &&
                    this.ModelCode01.Equals(other.ModelCode01)
                ) &&
                (
                    object.ReferenceEquals(this.ModelCode02, other.ModelCode02) ||
                    this.ModelCode02 != null &&
                    this.ModelCode02.Equals(other.ModelCode02)
                ) &&
                (
                    object.ReferenceEquals(this.ModelCode03, other.ModelCode03) ||
                    this.ModelCode03 != null &&
                    this.ModelCode03.Equals(other.ModelCode03)
                ) &&
                (
                    object.ReferenceEquals(this.ModelCode04, other.ModelCode04) ||
                    this.ModelCode04 != null &&
                    this.ModelCode04.Equals(other.ModelCode04)
                ) &&
                (
                    object.ReferenceEquals(this.ModelCode05, other.ModelCode05) ||
                    this.ModelCode05 != null &&
                    this.ModelCode05.Equals(other.ModelCode05)
                )
                ;
        }
    }
}
