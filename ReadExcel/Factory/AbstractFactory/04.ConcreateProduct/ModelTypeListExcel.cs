using DataLayer;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Spreadsheet;
using ReadExcel.Factory.AbstractFactory._01.AbstractInterface;
using ReadExcel.Factory.AbstractFactory._03.AbstractProduct;
using ReadExcel.IServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
using System.Globalization;
using ReadExcel.Resources;

namespace ReadExcel.Factory.AbstractFactory._04.ConcreateProduct
{
    public class ModelTypeListExcel : IModelTypeList
    {
        readonly List<string> engineColumn = new List<string>() { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J" };
        readonly List<string> cellHeaderValueChecks = new List<string>() { "A6", "B6", "C6", "D6", "E6", "F6" }; // Read From Config
        List<string> columnEquipmentIndexs = new List<string>();
        List<string> columnEngineIndexs = new List<string>();
        List<string> columnTypeIndex = new List<string>();
        
        public ModelTypeListExcel()
        {

        }

        public List<string> GetIndexHeaders()
        {
            // Todo Logic here
            return new List<string>() { };
        }

        public ModelTypeUploadModel Import(UploadFileImportModel uploadFileImportModel)
        {
            return ReadExcel(uploadFileImportModel);
        }

        public List<string> IsHeaderValidate(UploadFileImportModel uploadFileImportModel)
        {
            List<string> results = new List<string>();
            using (SpreadsheetDocument spreadsheetDocument = SpreadsheetDocument.Open(uploadFileImportModel.FileName, false))
            {
                WorkbookPart workbookPart = spreadsheetDocument.WorkbookPart;

                foreach (Sheet sheet in workbookPart.Workbook.Sheets)
                {
                    WorksheetPart worksheetPart = (WorksheetPart)(workbookPart.GetPartById(sheet.Id));
                    foreach (string columnName in cellHeaderValueChecks)
                    {
                        string result = string.Empty;
                        if (string.IsNullOrEmpty(GetCellValue(workbookPart, sheet, columnName)))
                        {
                            switch (columnName)
                            {
                                case "A6":
                                    result = columnName + "(YM)";
                                    break;
                                case "B6":
                                    result = columnName + "(Model)";
                                    break;
                                case "C6":
                                    result = columnName + "(Door)";
                                    break;
                                case "D6":
                                    result = columnName + "(Engine)";
                                    break;
                                case "E6":
                                    result = columnName + "(Plant)";
                                    break;
                                case "F6":
                                    result = columnName + "(Status)";
                                    break;
                            }
                            results.Add(result);
                        }
                    }
                }
            }
            return results;
        }

        public ModelTypeUploadModel FullValidate(ModelTypeUploadModel model)
        {
            ModelTypeUploadModel completeModel = new ModelTypeUploadModel();
            // Type: Error Warning Success
            ModelTypeTempRowModel tempRow = new ModelTypeTempRowModel();
            List<string> errorMessage;
            string requiredColumn = string.Empty;

            foreach(var sheet in model.ModelTypeTempSheetModels)
            {
                foreach (var row in sheet.ModelTypeTempRowModels)
                {

                    #region Error
                    errorMessage = new List<string>();
                    // Check Engine Section are required data {ERR019} Ex => Invalid A10, B10.
                    List<string> errorInvalids = new List<string>();
                    foreach (ModelTypeTempEngineModel engine in row.ModelTypeTempEngineModels)
                    {
                        if (string.IsNullOrEmpty(engine.SS)) errorInvalids.Add("A" + row.RowNo);
                        if (string.IsNullOrEmpty(engine.DISP)) errorInvalids.Add("B" + row.RowNo);
                        if (string.IsNullOrEmpty(engine.COMCARB)) errorInvalids.Add("C" + row.RowNo);
                        if (string.IsNullOrEmpty(engine.Grade)) errorInvalids.Add("D" + row.RowNo);
                        if (string.IsNullOrEmpty(engine.Mis)) errorInvalids.Add("E" + row.RowNo);
                        if (string.IsNullOrEmpty(engine.ModelCode01)) errorInvalids.Add("F" + row.RowNo);
                        if (string.IsNullOrEmpty(engine.ModelCode02)) errorInvalids.Add("G" + row.RowNo);
                        if (string.IsNullOrEmpty(engine.ModelCode03)) errorInvalids.Add("H" + row.RowNo);
                        if (string.IsNullOrEmpty(engine.ModelCode04)) errorInvalids.Add("I" + row.RowNo);
                        if (string.IsNullOrEmpty(engine.ModelCode05)) errorInvalids.Add("J" + row.RowNo);
                    }
                    
                    
                    // Check Equipment are "O" or "" {ERR019} Ex => Invalid A10, B10.
                    List<string> equipValue = new List<string>() { "O", "" };
                    for (var i = 0; i < row.ModelTypeTempEquipmentModels.Count; i++)
                    {
                        if (!equipValue.Contains(row.ModelTypeTempEquipmentModels[i].EquipmentValue))
                        {
                            errorInvalids.Add(this.columnEquipmentIndexs[i]);
                        }
                    }

                    // Check Model Code is only one per row {ERR019} Ex => Invalid A10, B10.
                    var listTypeValues = row.ModelTypeTempTypeModels.Where(x => !string.IsNullOrEmpty(x.ModelCode)).ToList();
                    if (listTypeValues.Count > 1)
                    {
                        for (var i = 0; i < listTypeValues.Count; i++)
                        {
                            errorInvalids.Add(this.columnTypeIndex[listTypeValues[i].Sequence - 1]);
                        }
                    }
                    if (errorInvalids.Count > 0)
                    {
                        errorMessage.Add("Invalid " + string.Join(", ", errorInvalids.ToArray()));
                    }

                    // Check Duplication Row {ERR021} Ex => Please check duplicate Row10 Row13
                    string rowValueCompare = GetRowValue(row);
                    List<string> rowDups = new List<string>();
                    foreach (var ros in sheet.ModelTypeTempRowModels)
                    {
                        if (row.RowNo == ros.RowNo) continue;
                        string rosCompare = GetRowValue(ros);
                        if (rowValueCompare.Equals(rosCompare))
                            rowDups.Add("Row" + ros.RowNo.ToString());
                    }
                    string resultrowDup = string.Join(" ", rowDups.ToArray());
                    if(rowDups.Count > 0)
                    {
                        errorMessage.Add("Please check duplicate " + resultrowDup);
                    }

                    requiredColumn = string.Join(", ", errorMessage.ToArray());
                    #endregion
                    row.ErrorMessage = requiredColumn;
                }

            }

            return model;
        }

        private string GetRowValue(ModelTypeTempRowModel row)
        {
            List<string> LsEngine = new List<string>();
            foreach (var col in row.ModelTypeTempEngineModels)
            {
                foreach (var propName in GetPropertiesName(col))
                {
                    if (!propName.ToLower().Contains("id")) LsEngine.Add(GetPropValue(col, propName).ToString());
                }
            }
            List<string> LsEquip = new List<string>();
            foreach (var col in row.ModelTypeTempEquipmentModels)
            {
                foreach (var propName in GetPropertiesName(col))
                {
                    if (propName.ToLower().Contains("value")) LsEquip.Add(GetPropValue(col, propName).ToString());
                }
            }
            List<string> LsType = new List<string>();
            foreach (var col in row.ModelTypeTempTypeModels)
            {
                foreach (var propName in GetPropertiesName(col))
                {
                    if (propName.ToLower().Contains("code")) LsType.Add(GetPropValue(col, propName).ToString());
                }
            }
            string joinEn = string.Join("", LsEngine.ToArray());
            string joinEq = string.Join("", LsEquip.ToArray());
            string joinTy = string.Join("", LsType.ToArray());
            return (joinEn + joinEq + joinTy).Trim();
        }

        private object GetPropValue(object src, string propName)
        {
            return src.GetType().GetProperty(propName).GetValue(src, null);
        }

        private List<string> GetPropertiesName(object pObject)
        {
            List<string> propNames = new List<string>();
            if(pObject != null)
            {
                foreach (var prop in pObject.GetType().GetProperties())
                {
                    
                    propNames.Add(prop.Name);
                }
            }
            
            return propNames;
        }

        public ModelTypeUploadModel ReadExcel(UploadFileImportModel model)
        {
            ModelTypeUploadModel modelTypeUpload = new ModelTypeUploadModel
            {
                UpdatedBy = model.UploadBy,
                UpdatedDate = model.UploadDate,
                CreatedBy = model.CreatedBy,
                CreatedDate = model.CreatedDate
            };


            List<ModelTypeTempSheetModel> sheetModels = new List<ModelTypeTempSheetModel>();
            ModelTypeTempSheetModel sheetModel;

            using (SpreadsheetDocument spreadsheetDocument = SpreadsheetDocument.Open(model.FileName, false))
            {
                WorkbookPart workbookPart = spreadsheetDocument.WorkbookPart;
                int sheetCount = 0;
                foreach (Sheet sheet in workbookPart.Workbook.Sheets)
                {
                    sheetModel = new ModelTypeTempSheetModel();

                    WorksheetPart worksheetPart = (WorksheetPart)(workbookPart.GetPartById(sheet.Id));
                    Worksheet worksheet = workbookPart.WorksheetParts.First().Worksheet;
                    SheetData sheetData = worksheet.GetFirstChild<SheetData>();

                    List<Row> rows = sheetData.Descendants<Row>().ToList();
                    List<string> preRow = new List<string>();
                    List<string> cellValues = new List<string>();

                    int indexMainEquipStart = 0;
                    int indexPNoStart = 0;
                    int indexTypeStart = 0;
                    int indexVinStart = 0;
                    int indexEngineSerialNoStart = 0;
                    int indexErrorDescriptionStart = 0;
                    int inedexRowOfHeader_Start = 6;
                    int indexRowOfHeader_End = 8;

                    // Assign header value
                    foreach (Cell cell in rows.ElementAt(5).Descendants<Cell>())
                    {
                        if (cellHeaderValueChecks.Contains(cell.CellReference.Value))
                        {
                            string value = GetCellValue(workbookPart, sheet, cell.CellReference);
                            switch (cell.CellReference.Value)
                            {
                                case "A6":
                                    sheetModel.YM = value;
                                    break;
                                case "B6":
                                    sheetModel.Model = value;
                                    break;
                                case "C6":
                                    sheetModel.Door = value;
                                    break;
                                case "D6":
                                    sheetModel.Engine = value;
                                    break;
                                case "E6":
                                    sheetModel.Plant = value;
                                    break;
                                case "F6":
                                    sheetModel.Status = value;
                                    break;
                            }
                        }
                    }
                    // Find column header index
                    for (var i = inedexRowOfHeader_Start; i < indexRowOfHeader_End; i++)
                    {
                        foreach (Cell cell in rows.ElementAt(i).Descendants<Cell>())
                        {
                            if (GetCellValue(workbookPart, sheet, cell.CellReference) == "MAIN EQUIPMENT")
                            {
                                indexMainEquipStart = GetColumnIndex(cell.CellReference);
                            }
                            if (GetCellValue(workbookPart, sheet, cell.CellReference) == "P.No.")
                            {
                                indexPNoStart = GetColumnIndex(cell.CellReference);
                            }
                            if (GetCellValue(workbookPart, sheet, cell.CellReference) == "TYPE")
                            {
                                indexTypeStart = GetColumnIndex(cell.CellReference);
                            }
                            if (GetCellValue(workbookPart, sheet, cell.CellReference) == "VIN")
                            {
                                indexVinStart = GetColumnIndex(cell.CellReference);
                            }
                            if (GetCellValue(workbookPart, sheet, cell.CellReference) == "ENGINE SERIAL No.")
                            {
                                indexEngineSerialNoStart = GetColumnIndex(cell.CellReference);
                            }
                            if (GetCellValue(workbookPart, sheet, cell.CellReference) == "Error Description")
                            {
                                indexErrorDescriptionStart = GetColumnIndex(cell.CellReference);
                            }
                        }
                    }

                    // Set Column Index
                    foreach (Cell cell in rows.ElementAt(9).Cast<Cell>())
                    {
                        string columnEndGetEquipment = GetColumnName(GetEndColumnMergeCell(workbookPart, sheet, "K7"));
                        int indexMainEquipEnd = GetColumnIndex(columnEndGetEquipment);
                        int currentIndex = GetColumnIndex(cell.CellReference);
                        // Set engineIndex
                        if (currentIndex <= indexMainEquipStart - 1)
                        {
                            columnEngineIndexs.Add(cell.CellReference);
                        }
                        // Set equip Index
                        if (currentIndex >= indexMainEquipStart && currentIndex <= indexMainEquipEnd) // Start K Column
                        {
                            columnEquipmentIndexs.Add(cell.CellReference);
                        }
                        // Set PNo Index
                        if(currentIndex == indexPNoStart)
                        {

                        }
                        // Set Type Index
                        if(currentIndex >= indexTypeStart && currentIndex <= indexVinStart - 1)
                        {
                            columnTypeIndex.Add(cell.CellReference);
                        }
                        
                    }
                    ModelTypeTempRowModel modelTypeTempRowModel;
                    ModelTypeTempEngineModel engineModel;
                    List<ModelTypeTempEquipmentModel> equipmentModels;
                    ModelTypeTempEquipmentModel equipmentModel;
                    List<ModelTypeTempTypeModel> typeModels;
                    ModelTypeTempTypeModel typeModel;

                    for (var i = 9; i < rows.Count; i++)
                    {
                        modelTypeTempRowModel = new ModelTypeTempRowModel();
                        equipmentModels = new List<ModelTypeTempEquipmentModel>();
                        typeModel = new ModelTypeTempTypeModel();
                        typeModels = new List<ModelTypeTempTypeModel>();
                        cellValues = new List<string>();
                        engineModel = new ModelTypeTempEngineModel();

                        modelTypeTempRowModel.RowNo = i + 1;
                        int seqEquipment = 1;
                        int seqType = 1;
                        
                        foreach (Cell cell in rows.ElementAt(i).Cast<Cell>())
                        {
                            string columnEndGetEquipment = GetColumnName(GetEndColumnMergeCell(workbookPart, sheet, "K7"));
                            int indexMainEquipEnd = GetColumnIndex(columnEndGetEquipment);
                            string currentColumn = GetColumnName(cell.CellReference);
                            int currentIndex = GetColumnIndex(cell.CellReference);
                            string currentCellValue = GetCellValue(workbookPart, sheet, cell.CellReference);

                            #region Engine
                            if (engineColumn.Contains(GetColumnName(cell.CellReference)))
                            {

                                #region  Replace Value
                                if (cell.CellReference == "A" + (i + 1))
                                {
                                    if (string.IsNullOrEmpty(currentCellValue))
                                    {
                                        currentCellValue = preRow.Count > 0 ? preRow[0] : currentCellValue;
                                    }
                                }
                                if (cell.CellReference == "B" + (i + 1))
                                {
                                    if (string.IsNullOrEmpty(currentCellValue))
                                    {
                                        currentCellValue = preRow.Count > 0 ? preRow[1] : currentCellValue;
                                    }
                                }
                                if (cell.CellReference == "C" + (i + 1))
                                {
                                    if (string.IsNullOrEmpty(currentCellValue))
                                    {
                                        currentCellValue = preRow.Count > 0 ? preRow[2] : currentCellValue;
                                    }
                                }
                                if (cell.CellReference == "D" + (i + 1))
                                {
                                    if (string.IsNullOrEmpty(currentCellValue))
                                    {
                                        currentCellValue = preRow.Count > 0 ? preRow[3] : currentCellValue;
                                    }
                                }
                                if (cell.CellReference == "E" + (i + 1))
                                {
                                    if (string.IsNullOrEmpty(currentCellValue))
                                    {
                                        currentCellValue = preRow.Count > 0 ? preRow[4] : currentCellValue;
                                    }
                                }
                                #endregion

                                switch (GetColumnName(cell.CellReference))
                                {
                                    case "A":
                                        engineModel.SS = currentCellValue;
                                        break;
                                    case "B":
                                        engineModel.DISP = currentCellValue;
                                        break;
                                    case "C":
                                        engineModel.COMCARB = currentCellValue;
                                        break;
                                    case "D":
                                        engineModel.Grade = currentCellValue;
                                        break;
                                    case "E":
                                        engineModel.Mis = currentCellValue;
                                        break;
                                    case "F":
                                        engineModel.ModelCode01 = currentCellValue;
                                        break;
                                    case "G":
                                        engineModel.ModelCode02 = currentCellValue;
                                        break;
                                    case "H":
                                        engineModel.ModelCode03 = currentCellValue;
                                        break;
                                    case "I":
                                        engineModel.ModelCode04 = currentCellValue;
                                        break;
                                    case "J":
                                        engineModel.ModelCode05 = currentCellValue;
                                        break;

                                }

                            }
                            #endregion

                            #region MAIN EQUIPMENT
                            if (currentIndex >= indexMainEquipStart && currentIndex <= indexMainEquipEnd) // Start K Column
                            {
                                equipmentModel = new ModelTypeTempEquipmentModel
                                {
                                    EquipmentName = GetCellValue(workbookPart, sheet, currentColumn + 9),
                                    EquipmentValue = currentCellValue,
                                    Sequence = seqEquipment
                                };

                                seqEquipment++;
                                equipmentModels.Add(equipmentModel);
                            }
                            #endregion

                            #region PNo
                            if (currentIndex == indexPNoStart)
                            {
                                modelTypeTempRowModel.PNo = currentCellValue;
                            }
                            #endregion

                            #region TYPE
                            if (currentIndex >= indexTypeStart && currentIndex <= indexVinStart - 1)
                            {
                                typeModel = new ModelTypeTempTypeModel
                                {
                                    ModelType = GetCellValue(workbookPart, sheet, currentColumn + 9),
                                    ModelCode = currentCellValue,
                                    Sequence = seqType
                                };
                                seqType++;
                                typeModels.Add(typeModel);
                            }
                            #endregion

                            #region VIN
                            if (currentIndex == indexVinStart)
                            {
                                modelTypeTempRowModel.VIN = currentCellValue;
                            }
                            #endregion

                            cellValues.Add(currentCellValue);
                        }
                        // End Cell
                        preRow = cellValues;
                        modelTypeTempRowModel.ModelTypeTempEngineModels.Add(engineModel);
                        modelTypeTempRowModel.ModelTypeTempEquipmentModels.AddRange(equipmentModels);
                        modelTypeTempRowModel.ModelTypeTempTypeModels.AddRange(typeModels);
                        sheetModel.ModelTypeTempRowModels.Add(modelTypeTempRowModel);
                    }
                    //End  Row
                    sheetModel.SheetNo = ++sheetCount;

                    modelTypeUpload.ModelTypeTempSheetModels.Add(sheetModel);
                }
            }
            modelTypeUpload.UploadStatusID = 44; // wait edit
            return modelTypeUpload;
        }

        private string GetCellValue(WorkbookPart workbookPart, Sheet sheet, string addressName)
        {
            string value = null;

            WorksheetPart worksheetPart = (WorksheetPart)(workbookPart.GetPartById(sheet.Id));

            Cell theCell = worksheetPart.Worksheet.Descendants<Cell>().Where(c => c.CellReference == addressName).FirstOrDefault();
            if (theCell != null)
            {
                value = theCell.InnerText;
                if (theCell.DataType != null)
                {
                    switch (theCell.DataType.Value)
                    {
                        case CellValues.SharedString:
                            var stringSharedTable = workbookPart.GetPartsOfType<SharedStringTablePart>().FirstOrDefault();

                            if (stringSharedTable != null)
                            {
                                value = stringSharedTable.SharedStringTable.ElementAt(int.Parse(value)).InnerText;
                            }
                            break;
                        case CellValues.Boolean:
                            switch (value)
                            {
                                case "0":
                                    value = "FALSE";
                                    break;
                                case "1":
                                    value = "TRUE";
                                    break;
                            }
                            break;
                    }
                }
            }

            return value;
        }
        private int GetColumnIndex(string reference)
        {
            int ci = 0;
            reference = reference.ToUpper();
            for (int ix = 0; ix < reference.Length && reference[ix] >= 'A'; ix++)
                ci = (ci * 26) + ((int)reference[ix] - 64);
            return ci;
        }
        private string GetColumnName(string cellName)
        {
            Regex regex = new Regex("[A-Za-z]+");
            Match match = regex.Match(cellName);
            return match.Value;
        }
        private string GetEndColumnMergeCell(WorkbookPart workbookPart, Sheet sheet, string addressStart)
        {
            string mergecellPosition = string.Empty;
            WorksheetPart worksheetPart = (WorksheetPart)(workbookPart.GetPartById(sheet.Id));
            if (worksheetPart.Worksheet.Elements<MergeCells>().Count() > 0)
            {
                MergeCells mergeCells = worksheetPart.Worksheet.Elements<MergeCells>().First();
                foreach (MergeCell mergeCell in mergeCells.Descendants<MergeCell>())
                {
                    string[] cellMerge = mergeCell.Reference.Value.Split(':');
                    if (cellMerge[0] == addressStart)
                    {
                        mergecellPosition = cellMerge[1];
                    }
                }
            }
            return mergecellPosition;
        }
    }

    struct Engine
    {
        public string SS { get; set; } 
        public string DISP { get; set; }
        public string COMCARB { get; set; }
        public string GRADE { get; set; }
        public string MIS { get; set; }
        public string MODELCODE01 { get; set; }
        public string MODELCODE02 { get; set; }
        public string MODELCODE03 { get; set; }
        public string MODELCODE04 { get; set; }
        public string MODELCODE05 { get; set; }
    }
}
