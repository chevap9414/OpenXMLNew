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
    
    public partial class T_LogisticDayHeader
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public T_LogisticDayHeader()
        {
            this.T_LogisticDayDetail = new HashSet<T_LogisticDayDetail>();
        }
    
        public int LogisticDayHeaderID { get; set; }
        public int CompanyID { get; set; }
        public int Month { get; set; }
        public int Year { get; set; }
        public int Ki { get; set; }
        public int FileManagerID { get; set; }
        public string UploadOriginalFile { get; set; }
        public string UploadSystemFile { get; set; }
        public int UploadVersion { get; set; }
        public int UploadStatusID { get; set; }
        public string UploadBy { get; set; }
        public System.DateTime UploadDate { get; set; }
        public string CompleteBy { get; set; }
        public Nullable<System.DateTime> CompleteDate { get; set; }
        public string ReopenBy { get; set; }
        public Nullable<System.DateTime> ReopenDate { get; set; }
        public int ResultTotal { get; set; }
        public int ResultSuccess { get; set; }
        public int ResultFailure { get; set; }
        public int LastPlantStatusID { get; set; }
        public string LastUpdatedBy { get; set; }
        public System.DateTime LastUpdatedDate { get; set; }
    
        public virtual M_Company M_Company { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_LogisticDayDetail> T_LogisticDayDetail { get; set; }
    }
}
