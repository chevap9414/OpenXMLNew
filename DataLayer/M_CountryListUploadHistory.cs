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
    
    public partial class M_CountryListUploadHistory
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public M_CountryListUploadHistory()
        {
            this.M_CountryListModelPlant = new HashSet<M_CountryListModelPlant>();
            this.M_CountryListTempRow = new HashSet<M_CountryListTempRow>();
        }
    
        public int CountryListUploadHistoryID { get; set; }
        public int FileManagerOriginalID { get; set; }
        public int FileManagerID { get; set; }
        public string FileName { get; set; }
        public string FileNameSystem { get; set; }
        public int CompanyID { get; set; }
        public int ModelID { get; set; }
        public int YMID { get; set; }
        public string Door { get; set; }
        public string Version { get; set; }
        public string UploadedVersion { get; set; }
        public System.DateTime UploadedDate { get; set; }
        public string UploadedBy { get; set; }
        public int UploadedStatus { get; set; }
        public int Total { get; set; }
        public int Success { get; set; }
        public int Fail { get; set; }
    
        public virtual M_Company M_Company { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<M_CountryListModelPlant> M_CountryListModelPlant { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<M_CountryListTempRow> M_CountryListTempRow { get; set; }
        public virtual M_FileManager M_FileManager { get; set; }
        public virtual M_FileManager M_FileManager1 { get; set; }
        public virtual M_Model M_Model { get; set; }
        public virtual M_YM M_YM { get; set; }
    }
}
