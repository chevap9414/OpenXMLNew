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
    
    public partial class M_ModelType
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public M_ModelType()
        {
            this.M_ModelTypeEngine = new HashSet<M_ModelTypeEngine>();
        }
    
        public int ModelTypeID { get; set; }
        public Nullable<int> ModelTypeUploadID { get; set; }
        public int CompanyID { get; set; }
        public int ModelID { get; set; }
        public int YMID { get; set; }
        public string Version { get; set; }
        public int MTOCStatusID { get; set; }
    
        public virtual M_Company M_Company { get; set; }
        public virtual M_Model M_Model { get; set; }
        public virtual M_ModelTypeUpload M_ModelTypeUpload { get; set; }
        public virtual M_YM M_YM { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<M_ModelTypeEngine> M_ModelTypeEngine { get; set; }
    }
}
