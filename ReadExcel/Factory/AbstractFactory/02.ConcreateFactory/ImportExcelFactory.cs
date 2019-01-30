using ReadExcel.Factory.AbstractFactory._01.AbstractInterface;
using ReadExcel.Factory.AbstractFactory._03.AbstractProduct;
using ReadExcel.Factory.AbstractFactory._04.ConcreateProduct;
using ReadExcel.IServices;
using ReadExcel.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReadExcel.Factory.AbstractFactory._02.ConcreateFactory
{
    class ImportExcelFactory : IImportExcelFactory
    {
        public ImportExcelFactory()
        {
        }

        public IModelTypeUploadService ModelTypeUploadService()
        {
            return new ModelTypeUploadService();
        }

        public IKDLogisticLT ImportKDLogistic()
        {
            return new KDLogisticLTExcel();
        }

        public IModelTypeList ImportModelTypeList()
        {
            return new ModelTypeListExcel();
        }

        public IMISCService MISCService()
        {
            return new MISCService();
        }
    }
}
