using ReadExcel.Factory.AbstractFactory._01.AbstractInterface;
using ReadExcel.Factory.AbstractFactory._03.AbstractProduct;
using ReadExcel.Factory.AbstractFactory._04.ConcreateProduct;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReadExcel.Factory.AbstractFactory._02.ConcreateFactory
{
    class ExcelFileImport : IExcelImportFactory
    {
        public ExcelFileImport()
        {
        }

        public IKDLogisticLT ImportKDLogistic()
        {
            return new KDLogisticLTExcel();
        }

        public IModelTypeList ImportModelTypeList()
        {
            return new ModelTypeListExcel();
        }
    }
}
