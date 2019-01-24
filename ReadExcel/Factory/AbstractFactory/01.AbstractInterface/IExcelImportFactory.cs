using ReadExcel.Factory.AbstractFactory._03.AbstractProduct;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReadExcel.Factory.AbstractFactory._01.AbstractInterface
{
    interface IExcelImportFactory
    {
        IModelTypeList ImportModelTypeList();
        IKDLogisticLT ImportKDLogistic();
    }
}
