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
    
    public partial class PartDemandHeader
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PartDemandHeader()
        {
            this.PartDemandDetails = new HashSet<PartDemandDetail>();
        }
    
        public int PartDemandHeaderID { get; set; }
        public Nullable<int> CompanyID { get; set; }
        public Nullable<int> SeihanMonth { get; set; }
        public Nullable<int> SeihanYear { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PartDemandDetail> PartDemandDetails { get; set; }
    }
}
