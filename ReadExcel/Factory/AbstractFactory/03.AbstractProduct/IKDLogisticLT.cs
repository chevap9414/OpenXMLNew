using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReadExcel.Factory.AbstractFactory._03.AbstractProduct
{
    interface IKDLogisticLT
    {
        int[] GetIndexHeaders();
        ModelTypeUploadModel ReadExcelFile(UploadFileImportModel uploadFileImportModel);
    }
}
