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
    
    public partial class M_AdditionalConditionCriteria
    {
        public int AdditionalConditionCriteriaID { get; set; }
        public int AdditionalConditionID { get; set; }
        public int Sequent { get; set; }
        public int AdditionalCriteriaNameID { get; set; }
        public int AdditionalOperatorID { get; set; }
        public string CriteriaValue { get; set; }
    
        public virtual M_AdditionalCondition M_AdditionalCondition { get; set; }
        public virtual M_AdditionalCriteriaName M_AdditionalCriteriaName { get; set; }
        public virtual M_AdditionalOperator M_AdditionalOperator { get; set; }
    }
}