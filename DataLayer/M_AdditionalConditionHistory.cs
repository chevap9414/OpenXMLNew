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
    
    public partial class M_AdditionalConditionHistory
    {
        public int AdditionalConditionHistoryID { get; set; }
        public int AdditionalConditionID { get; set; }
        public string LastestUpdateBy { get; set; }
        public System.DateTime LastestUpdateDate { get; set; }
    
        public virtual M_AdditionalCondition M_AdditionalCondition { get; set; }
    }
}