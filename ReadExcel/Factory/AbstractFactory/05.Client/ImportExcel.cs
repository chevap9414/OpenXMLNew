using DataLayer;
using ReadExcel.Factory.AbstractFactory._01.AbstractInterface;
using ReadExcel.Factory.AbstractFactory._03.AbstractProduct;
using ReadExcel.IServices;
using ReadExcel.Resources;
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
        readonly IMISCService mISCService;
        private UploadFileImportModel UploadFileImportModel { get; set; } = new UploadFileImportModel();

        public ImportExcel(IImportExcelFactory factory)
        {
            modelTypeList = factory.ImportModelTypeList();
            kDLogisticLT = factory.ImportKDLogistic();
            modelTypeUploadService = factory.ModelTypeUploadService();
            mISCService = factory.MISCService();
        }

        public UploadFileReturnModel MTList(UploadFileImportModel uploadFileImportModel)
        {
            this.UploadFileImportModel = uploadFileImportModel;
            var results = modelTypeList.IsHeaderValidate(this.UploadFileImportModel);
            if (results.Count == 0)
            {
                this.threadImport = new Thread(new ThreadStart(CallThreadMTList));
                this.threadImport.Start();
                return new UploadFileReturnModel() { StatusMessage =  MISC.UploadStatus_Processing}; // waiting
            }
            else
            {
                string errorMessage = string.Join(", ", results.ToArray());
                return new UploadFileReturnModel() { StatusMessage = $"{ errorMessage } is required." };
            }
            
        }

        public M_MISC GetMISC(M_MISC model)
        {
            return mISCService.Get(model);
        }

        #region Private Method
        private void CallThreadMTList()
        {
            // Read File
            var model = modelTypeList.Import(this.UploadFileImportModel);

            // Add To Staging
            var stagingModel = AddModelTypeUploadToStaging(model);

            // Full Validate 
            var modelSuccess = FullValidate(stagingModel);

            // AddModelTypeUploadToMaster
            AddModelTypeUploadToMaster(modelSuccess);
        }

        private ModelTypeUploadModel FullValidate(ModelTypeUploadModel stagingModel)
        {
            return this.modelTypeList.FullValidate(stagingModel);
        }

        private void AddModelTypeUploadToMaster(ModelTypeUploadModel stagingModel)
        {
            this.modelTypeUploadService.AddModelTypeUpload(stagingModel);
        }

        private ModelTypeUploadModel AddModelTypeUploadToStaging(ModelTypeUploadModel model)
        {
            return this.modelTypeUploadService.AddModelTypeUploadToStaging(model);
        }
        #endregion

    }
}
