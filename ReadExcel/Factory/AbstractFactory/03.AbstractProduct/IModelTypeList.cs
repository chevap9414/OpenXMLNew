using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReadExcel.Factory.AbstractFactory._03.AbstractProduct
{
    interface IModelTypeList
    {
        List<string> GetIndexHeaders();
        ModelTypeUploadModel Import(UploadFileImportModel uploadFileImportModel);
        List<string> IsHeaderValidate(UploadFileImportModel uploadFileImportModel);
        ModelTypeUploadModel FullValidate(ModelTypeUploadModel model);
    }
}
