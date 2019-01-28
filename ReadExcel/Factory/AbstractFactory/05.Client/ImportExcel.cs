using DataLayer;
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
        readonly IModelTypeUploadService modelTypeUploadService;
        private UploadFileImportModel UploadFileImportModel { get; set; } = new UploadFileImportModel();

        public ImportExcel(IImportExcelFactory factory)
        {
            modelTypeList = factory.ImportModelTypeList();
            kDLogisticLT = factory.ImportKDLogistic();
            modelTypeUploadService = factory.ModelTypeUploadService();
        }

        public int MTList(UploadFileImportModel uploadFileImportModel)
        {
            this.UploadFileImportModel = uploadFileImportModel;
            this.threadImport = new Thread(new ThreadStart(CallThreadMTList));
            this.threadImport.Start();
            return 41; // return UploadStatusID
        }

        private void CallThreadMTList()
        {
            if (modelTypeList.IsHeaderValidate(this.UploadFileImportModel))
            {
                var model = modelTypeList.Import(this.UploadFileImportModel);
                var stagingModel = AddModelTypeUploadToStaging(model);
                // Full Validate

                // AddModelTypeUploadToMaster
                AddModelTypeUploadToMaster(stagingModel);
            }
            else
            {
                // Critical Error
            }
        }

        private void AddModelTypeUploadToMaster(M_ModelTypeUpload stagingModel)
        {
            this.modelTypeUploadService.AddModelTypeUpload(stagingModel);
        }

        private M_ModelTypeUpload AddModelTypeUploadToStaging(ModelTypeUploadModel model)
        {
            return this.modelTypeUploadService.AddModelTypeUploadToStaging(model);
        }
    }
}
