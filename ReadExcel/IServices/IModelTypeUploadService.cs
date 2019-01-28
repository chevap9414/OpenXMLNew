using DataLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReadExcel.IServices
{
    public interface IModelTypeUploadService
    {
        bool AddModelTypeUpload(M_ModelTypeUpload model);
        M_ModelTypeUpload AddModelTypeUploadToStaging(ModelTypeUploadModel model);
    }
}
