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
    
    public partial class M_AdditionalOperator
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public M_AdditionalOperator()
        {
            this.M_AdditionalConditionCriteria = new HashSet<M_AdditionalConditionCriteria>();
        }
    
        public int AdditionalOperatorID { get; set; }
        public string OperatorName { get; set; }
        public string OperatorSymbol { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<M_AdditionalConditionCriteria> M_AdditionalConditionCriteria { get; set; }
    }
}
