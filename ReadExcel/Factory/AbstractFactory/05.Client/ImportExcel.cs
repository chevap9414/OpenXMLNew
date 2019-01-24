using ReadExcel.Factory.AbstractFactory._01.AbstractInterface;
using ReadExcel.Factory.AbstractFactory._03.AbstractProduct;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReadExcel.Factory.AbstractFactory._05.Client
{
    class ImportExcel
    {
        IModelTypeList modelTypeList;
        IKDLogisticLT kDLogisticLT;

        public ImportExcel(IExcelImportFactory factory)
        {
            modelTypeList = factory.ImportModelTypeList();
            kDLogisticLT = factory.ImportKDLogistic();
        }

        public int MTList(UploadFileImportModel uploadFileImportModel)
        {
            return modelTypeList.Import(uploadFileImportModel);
        }

        public ModelTypeUploadModel KDLogistic(UploadFileImportModel uploadFileImportModel)
        {
            return kDLogisticLT.ReadExcelFile(uploadFileImportModel);
        }
    }
}
