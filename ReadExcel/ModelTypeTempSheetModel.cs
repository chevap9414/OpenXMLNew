﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReadExcel
{
    public class ModelTypeTempSheetModel
    {
        public int ModelTypeTempSheetID { get; set; }
        public int ModelTypeUploadID { get; set; }
        public int SheetNo { get; set; }
        public string YM { get; set; }
        public string Model { get; set; }
        public string Door { get; set; }
        public string Plant { get; set; }
        public string Status { get; set; }

        public List<ModelTypeTempRowModel> ModelTypeTempRowModels { get; set; } = new List<ModelTypeTempRowModel>();
        public ModelTypeUploadModel ModelTypeUploadModel { get; set; } = new ModelTypeUploadModel();
    }
}
