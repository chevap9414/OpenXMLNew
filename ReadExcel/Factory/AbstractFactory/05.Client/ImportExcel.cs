using ReadExcel.Factory.AbstractFactory._01.AbstractInterface;
using ReadExcel.Factory.AbstractFactory._03.AbstractProduct;
using ReadExcel.IServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace ReadExcel.Factory.AbstractFactory._05.Client
{
    class ImportExcel
    {
        Thread threadImport;
        IModelTypeList modelTypeList;
        IKDLogisticLT kDLogisticLT;
        IModelTypeUploadService modelTypeUploadService;
        private UploadFileImportModel uploadFileImportModel;

        public ImportExcel(IImportExcelFactory factory)
        {
            modelTypeList = factory.ImportModelTypeList();
            kDLogisticLT = factory.ImportKDLogistic();
            modelTypeUploadService = factory.AddModelTypeUpload();
        }

        public int MTList(UploadFileImportModel uploadFileImportModel)
        {
            this.uploadFileImportModel = uploadFileImportModel;
            this.threadImport = new Thread(new ThreadStart(CallThreadMTList));
            this.threadImport.Start();
            return 41; // return UploadStatusID
        }

        private void CallThreadMTList()
        {
            ModelTypeUploadModel model = modelTypeList.Import(this.uploadFileImportModel);
            if(model != null)
            {
                this.AddModelTypeUpload(model);
            }
        }

        public ModelTypeUploadModel KDLogistic(UploadFileImportModel uploadFileImportModel)
        {
            return kDLogisticLT.ReadExcelFile(uploadFileImportModel);
        }

        private bool AddModelTypeUpload(ModelTypeUploadModel model)
        {
            bool IsSucceed = false;
            this.modelTypeUploadService.AddModelTypeUpload(model);
            return IsSucceed;
        }
    }
}
