using DataLayer;
using ReadExcel.IServices;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReadExcel.Services
{
    public class ModelTypeUploadService : IModelTypeUploadService
    {
        public bool AddModelTypeUpload(ModelTypeUploadModel model)
        {

            try
            {
                ASHAOP_DEVEntities entities = new ASHAOP_DEVEntities();

                // Add Equipment
                M_Equipment equipment;
                List<string> tempEquipNames = new List<string>();
                List<string> equipNames = entities.M_Equipment.Select(e => e.EquipmentName).ToList();
                foreach(var equip in model.ModelTypeTempEquipmentModels)
                {
                    // Check Name Exists
                    if(!equipNames.Contains(equip.EquipmentName) && !tempEquipNames.Contains(equip.EquipmentName))
                    {
                        equipment = entities.M_Equipment.Add(new M_Equipment
                        {
                            EquipmentName = equip.EquipmentName
                        });
                        tempEquipNames.Add(equip.EquipmentName);
                    }
                }

                // Add YM
                List<string> ymNames = entities.M_YM.Select(ym => ym.YMName).ToList();
                if (!ymNames.Contains(model.YM.YMName))
                {
                    entities.M_YM.Add(new M_YM
                    {
                        YMName = model.YM.YMName
                    });
                }
                // Add Model
                List<string> modelNames = entities.M_Model.Select(m => m.ModelName).ToList();
                if (!modelNames.Contains(model.Model.ModelName))
                {
                    entities.M_Model.Add(new M_Model
                    {
                        ModelName = model.Model.ModelName
                    });
                }
                //entities.SaveChanges();

                // Add ModelType
                M_ModelType modelType = entities.M_ModelType.Add(new M_ModelType
                {
                    ModelTypeUploadID = model.ModelTypeUploadID,
                    CompanyID = model.Company.CompanyID,
                    ModelID = entities.M_Model.Where(x => x.ModelName == model.Model.ModelName).First().ModelID,
                    YMID = entities.M_YM.Where(x => x.YMName == model.YM.YMName).First().YMID,
                    Version = model.ModelTypeTempSheetModels.Select(s => s.Status).First(),
                    MTOCStatusID = entities.M_MISC.Where(m => m.MiscType == "MTOCStatus" && m.MiscCode == "A").Select(m => m.MiscID).First(),
                    M_ModelTypeEngine = model.ModelTypeTempEngineModels.Select(engine => new M_ModelTypeEngine
                    {
                        ModelUsed = "test",
                        ModelGPSP = "test",
                        SS = engine.SS,
                        DISP = int.Parse(engine.DISP),
                        COMCARB = engine.COMCARB,
                        GRADE = engine.Grade,
                        MIS = engine.Mis,
                        ModelCode01 = engine.ModelCode01,
                        ModelCode02 = engine.ModelCode02,
                        ModelCode03 = engine.ModelCode03,
                        ModelCode04 = engine.ModelCode04,
                        ModelCode05 = engine.ModelCode05,
                        ModelType = model.ModelTypeTempTypeModels.Select(s => s.ModelType).First(),
                        ModelCode = model.ModelTypeTempTypeModels.Select(x => x.ModelCode).First()
                    }).ToList()
                });

                entities.SaveChanges();

                return true;
            }
            catch(Exception e)
            {
                throw e;
            }
        }

        public ModelTypeUploadModel AddModelTypeUploadToStaging(ModelTypeUploadModel model)
        {
            try
            {
                ModelTypeUploadModel modelReturn = new ModelTypeUploadModel();
                ASHAOP_DEVEntities entities = new ASHAOP_DEVEntities();

                // Add ModelTypeUpload
                M_ModelTypeUpload enModel = entities.M_ModelTypeUpload.Add(new M_ModelTypeUpload
                {
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                    UpdatedBy = model.UpdatedBy,
                    UpdatedDate = DateTime.Now,
                    M_ModelTypeTempSheet = model.ModelTypeTempSheetModels.Select(sheet => new M_ModelTypeTempSheet
                    {
                        SheetNo = sheet.SheetNo,
                        YM = sheet.YM,
                        Model = sheet.Model,
                        Door = sheet.Door,
                        Engine = sheet.Engine,
                        Plant = sheet.Plant,
                        Status = sheet.Status,
                        // Add M_ModelTypeTempRow
                        M_ModelTypeTempRow = sheet.ModelTypeTempRowModels.Select(row => new M_ModelTypeTempRow
                        {
                            RowNo = row.RowNo,
                            PNo = row.PNo,
                            VIN = row.VIN,
                            ErrorMessage = row.ErrorMessage,
                            // Add M_ModelTypeTempEngine
                            M_ModelTypeTempEngine = row.ModelTypeTempEngineModels.Select(engine => new M_ModelTypeTempEngine
                            {
                                SS = engine.SS,
                                DISP = engine.DISP,
                                COMCARB = engine.COMCARB,
                                Grade = engine.Grade,
                                Mis = engine.Mis,
                                ModelCode01 = engine.ModelCode01,
                                ModelCode02 = engine.ModelCode02,
                                ModelCode03 = engine.ModelCode03,
                                ModelCode04 = engine.ModelCode04,
                                ModelCode05 = engine.ModelCode05
                            }).ToList(),
                            // Add M_ModelTypeTempEquipment
                            M_ModelTypeTempEquipment = row.ModelTypeTempEquipmentModels.Select(equip => new M_ModelTypeTempEquipment
                            {
                                EquipmentName = equip.EquipmentName,
                                EquipmentValue = equip.EquipmentValue,
                                Sequence = equip.Sequence
                            }).ToList(),
                            // Add M_ModelTypeTempType
                            M_ModelTypeTempType = row.ModelTypeTempTypeModels.Select(type => new M_ModelTypeTempType
                            {
                                ModelType = type.ModelType,
                                ModelCode = type.ModelCode,
                                Sequence = type.Sequence
                            }).ToList()
                        }).ToList(),
                    }).ToList()
                });
                //entities.SaveChanges();

                string plant = enModel.M_ModelTypeTempSheet.Select(s => s.Plant).First();
                int companyID = entities.M_Company.Where(c => c.Plant == plant).Select(c => c.CompanyID).First();
                string modelName = enModel.M_ModelTypeTempSheet.Select(s => s.Model).First();
                string ymName = enModel.M_ModelTypeTempSheet.Select(s => s.YM).First();

                modelReturn.ModelTypeUploadID = enModel.ModelTypeUploadID;
                modelReturn.Company = new CompanyModel() { CompanyID = companyID };
                modelReturn.Model = new ModelModel() { ModelName = modelName };
                modelReturn.YM = new YMModel() { YMName = ymName };

                modelReturn.ModelTypeTempSheetModels = model.ModelTypeTempSheetModels;
                foreach(var sheets in model.ModelTypeTempSheetModels)
                {
                    foreach(var row in sheets.ModelTypeTempRowModels)
                    {
                        modelReturn.ModelTypeTempRowModels.Add(row);
                        modelReturn.ModelTypeTempEquipmentModels.AddRange(row.ModelTypeTempEquipmentModels);
                        modelReturn.ModelTypeTempEngineModels.AddRange(row.ModelTypeTempEngineModels);
                        List<string> rowModeTypeCodeValue = new List<string>();
                        foreach(var type in row.ModelTypeTempTypeModels)
                        {
                            if (!string.IsNullOrEmpty(type.ModelCode))
                            {
                                rowModeTypeCodeValue.Add(type.ModelCode);
                                if (rowModeTypeCodeValue.Count <= 1)
                                {
                                    modelReturn.ModelTypeTempTypeModels.Add(type);
                                }
                                else
                                {
                                    modelReturn.ModelTypeTempTypeModels = new List<ModelTypeTempTypeModel>();
                                    break;
                                }
                            }
                        }
                    }
                }
                return modelReturn;
            }
            //catch (DbEntityValidationException e)
            //{
            //    foreach (var eve in e.EntityValidationErrors)
            //    {
            //        Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
            //            eve.Entry.Entity.GetType().Name, eve.Entry.State);
            //        foreach (var ve in eve.ValidationErrors)
            //        {
            //            Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
            //                ve.PropertyName, ve.ErrorMessage);
            //        }
            //    }
            //    throw;
            //}
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
