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
    
    public partial class M_ModelTypeUpload
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public M_ModelTypeUpload()
        {
            this.M_ModelType = new HashSet<M_ModelType>();
            this.M_ModelTypeTempSheet = new HashSet<M_ModelTypeTempSheet>();
        }
    
        public int ModelTypeUploadID { get; set; }
        public Nullable<int> CompanyID { get; set; }
        public Nullable<int> ModelID { get; set; }
        public Nullable<int> YMID { get; set; }
        public string Version { get; set; }
        public string Door { get; set; }
        public string Engine { get; set; }
        public Nullable<int> I_ModelTypePath { get; set; }
        public string I_ModelTypeFileNameOriginal { get; set; }
        public string I_ModelTypeFileNameSystem { get; set; }
        public Nullable<int> I_ModelTypeResultPath { get; set; }
        public string I_ModelTypeResultFile { get; set; }
        public Nullable<int> O_ModelTypePath { get; set; }
        public string O_ModelTypeFile { get; set; }
        public Nullable<int> UploadStatusID { get; set; }
        public string Result { get; set; }
        public string CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
    
        public virtual M_Company M_Company { get; set; }
        public virtual M_FileManager M_FileManager { get; set; }
        public virtual M_FileManager M_FileManager1 { get; set; }
        public virtual M_FileManager M_FileManager2 { get; set; }
        public virtual M_Model M_Model { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<M_ModelType> M_ModelType { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<M_ModelTypeTempSheet> M_ModelTypeTempSheet { get; set; }
        public virtual M_YM M_YM { get; set; }
    }
}
