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
    
    public partial class PartDemandDetail
    {
        public int PartDemandDetailID { get; set; }
        public Nullable<int> PartDemandHeaderID { get; set; }
        public Nullable<int> PartMakerID { get; set; }
        public Nullable<int> Ki { get; set; }
        public Nullable<int> DemandMonth { get; set; }
        public Nullable<int> Demand { get; set; }
    
        public virtual M_PartMaker M_PartMaker { get; set; }
        public virtual PartDemandHeader PartDemandHeader { get; set; }
    }
}
