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
    
    public partial class T_ProductionPlantDetailTemp
    {
        public int ProdutionPlanDetailTempID { get; set; }
        public Nullable<int> ProductionPlanUploadID { get; set; }
    
        public virtual T_ProductionPlanUpload T_ProductionPlanUpload { get; set; }
    }
}
