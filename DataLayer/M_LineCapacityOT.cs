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
    
    public partial class M_LineCapacityOT
    {
        public int LineCapacityOTID { get; set; }
        public int Ki { get; set; }
        public int CBULineID { get; set; }
        public decimal CapHROT { get; set; }
        public decimal NoOTHR { get; set; }
        public decimal CapOT { get; set; }
        public decimal CapHW { get; set; }
        public decimal ConvertOTHW { get; set; }
        public string CreatedBy { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public System.DateTime UpdatedDate { get; set; }
    
        public virtual M_CBULine M_CBULine { get; set; }
    }
}
