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
    
    public partial class T_PartCapacityTemp
    {
        public int PartCapacityTempID { get; set; }
        public Nullable<int> PartCapacityUploadHistoryID { get; set; }
        public Nullable<int> RowNumber { get; set; }
        public string Plant { get; set; }
        public string SeihanMonth { get; set; }
        public string SeihanYear { get; set; }
        public string PartNumber { get; set; }
        public string MakerCode { get; set; }
        public string ExclusiveCommon { get; set; }
        public Nullable<double> LT { get; set; }
        public Nullable<int> Ki { get; set; }
        public string CapMonth { get; set; }
        public Nullable<int> PlannedVol { get; set; }
        public Nullable<int> StdCap { get; set; }
        public Nullable<int> MaxCap { get; set; }
    
        public virtual T_PartCapacityUploadHistory T_PartCapacityUploadHistory { get; set; }
    }
}
