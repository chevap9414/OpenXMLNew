using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReadExcel.IServices
{
    interface IModelTypeUploadService
    {
        bool AddModelTypeUpload(ModelTypeUploadModel model);
    }
}
