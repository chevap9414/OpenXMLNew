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
    
    public partial class T_PartCapacityHeader
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public T_PartCapacityHeader()
        {
            this.T_PartCapacityDetail = new HashSet<T_PartCapacityDetail>();
        }
    
        public int PartCapacityHeaderID { get; set; }
        public int CompanyID { get; set; }
        public int SeihanMonth { get; set; }
        public int SeihanYear { get; set; }
        public string GPSPVersion { get; set; }
    
        public virtual M_Company M_Company { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_PartCapacityDetail> T_PartCapacityDetail { get; set; }
    }
}
