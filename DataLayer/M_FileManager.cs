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
    
    public partial class M_FileManager
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public M_FileManager()
        {
            this.M_CountryListUploadHistory = new HashSet<M_CountryListUploadHistory>();
            this.M_CountryListUploadHistory1 = new HashSet<M_CountryListUploadHistory>();
            this.M_ModelTypeUpload = new HashSet<M_ModelTypeUpload>();
            this.M_ModelTypeUpload1 = new HashSet<M_ModelTypeUpload>();
            this.M_ModelTypeUpload2 = new HashSet<M_ModelTypeUpload>();
            this.T_PartCapacityUploadHistory = new HashSet<T_PartCapacityUploadHistory>();
            this.T_LogisticDayHeader = new HashSet<T_LogisticDayHeader>();
            this.T_LogisticDayUploadHeader = new HashSet<T_LogisticDayUploadHeader>();
            this.T_LogisticDayWiseHeader = new HashSet<T_LogisticDayWiseHeader>();
            this.T_LogisticDayWiseUploadHeader = new HashSet<T_LogisticDayWiseUploadHeader>();
            this.T_LogisticLeadTimeMonthUpload = new HashSet<T_LogisticLeadTimeMonthUpload>();
            this.T_LogisticLeadTimeMonthUpload1 = new HashSet<T_LogisticLeadTimeMonthUpload>();
            this.T_LogisticMonthHeader = new HashSet<T_LogisticMonthHeader>();
            this.T_LogisticMonthUploadHeader = new HashSet<T_LogisticMonthUploadHeader>();
        }
    
        public int FileManagerID { get; set; }
        public string Description { get; set; }
        public string RootPath { get; set; }
        public bool IsActive { get; set; }
        public string CreatedBy { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<M_CountryListUploadHistory> M_CountryListUploadHistory { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<M_CountryListUploadHistory> M_CountryListUploadHistory1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<M_ModelTypeUpload> M_ModelTypeUpload { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<M_ModelTypeUpload> M_ModelTypeUpload1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<M_ModelTypeUpload> M_ModelTypeUpload2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_PartCapacityUploadHistory> T_PartCapacityUploadHistory { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_LogisticDayHeader> T_LogisticDayHeader { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_LogisticDayUploadHeader> T_LogisticDayUploadHeader { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_LogisticDayWiseHeader> T_LogisticDayWiseHeader { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_LogisticDayWiseUploadHeader> T_LogisticDayWiseUploadHeader { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_LogisticLeadTimeMonthUpload> T_LogisticLeadTimeMonthUpload { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_LogisticLeadTimeMonthUpload> T_LogisticLeadTimeMonthUpload1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_LogisticMonthHeader> T_LogisticMonthHeader { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_LogisticMonthUploadHeader> T_LogisticMonthUploadHeader { get; set; }
    }
}
