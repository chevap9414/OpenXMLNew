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
    
    public partial class M_AdditionalCondition
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public M_AdditionalCondition()
        {
            this.M_AdditionalConditionCriteria = new HashSet<M_AdditionalConditionCriteria>();
            this.M_AdditionalConditionHistory = new HashSet<M_AdditionalConditionHistory>();
            this.T_ComparePartKadai = new HashSet<T_ComparePartKadai>();
            this.T_PartKadai = new HashSet<T_PartKadai>();
        }
    
        public int AddtionalConditionID { get; set; }
        public string ConditionName { get; set; }
        public string ConditionString { get; set; }
        public string TrueCondition { get; set; }
        public string FalseCondition { get; set; }
        public string CreateBy { get; set; }
        public System.DateTime CreateDate { get; set; }
        public string UpdateBy { get; set; }
        public System.DateTime UpdateDate { get; set; }
        public int Status { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<M_AdditionalConditionCriteria> M_AdditionalConditionCriteria { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<M_AdditionalConditionHistory> M_AdditionalConditionHistory { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_ComparePartKadai> T_ComparePartKadai { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_PartKadai> T_PartKadai { get; set; }
    }
}
