//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataLayer
{
    using System;
    using System.Collections.Generic;
    
    public partial class M_ModelTypeEquipment
    {
        public int ModelTypeEquipmentID { get; set; }
        public int ModelTypeEngineID { get; set; }
        public int EquipmentID { get; set; }
        public int EquipmentValue { get; set; }
        public int Sequence { get; set; }
    
        public virtual M_Equipment M_Equipment { get; set; }
        public virtual M_ModelTypeEngine M_ModelTypeEngine { get; set; }
    }
}
