using ReadExcel.Factory.AbstractFactory._03.AbstractProduct;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReadExcel.Factory.AbstractFactory._04.ConcreateProduct
{
    class KDLogisticLTExcel : IKDLogisticLT
    {
        private List<string> headerColumns { get; set; } = new List<string>() { "", "", "" }; // Read from Config
        public int[] GetIndexHeaders()
        {
            // Todo Logic here
            return new int[] { 0 };
        }

        public ModelTypeUploadModel ReadExcelFile(UploadFileImportModel uploadFileImportModel)
        {
            // Todo Logic here
            return new ModelTypeUploadModel();
        }
    }
}
