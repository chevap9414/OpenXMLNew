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
    
    public partial class T_LogisticDayDetail
    {
        public int LogisticDayDetailID { get; set; }
        public int LogisticDayHeaderID { get; set; }
        public int RowNo { get; set; }
        public string SupplyRegion { get; set; }
        public string SupplyPlant { get; set; }
        public string ReceiveRegion { get; set; }
        public string ReceivePlant { get; set; }
        public string Shipment { get; set; }
        public string ReceiveMonth { get; set; }
        public Nullable<int> WorkingDayTotal { get; set; }
    
        public virtual T_LogisticDayHeader T_LogisticDayHeader { get; set; }
    }
}
