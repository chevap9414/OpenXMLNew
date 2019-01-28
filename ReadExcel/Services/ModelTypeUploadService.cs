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
        public bool AddModelTypeUpload(M_ModelTypeUpload model)
        {
            /*
            Get ModelTypeUploadID from tempSheet
            Update ModelTypeUpload
            ModelTypeUpload Relation
               - Add M_ModelType
               - 
            */
            try
            {
                using (ASHAOP_DEVEntities entities = new ASHAOP_DEVEntities())
                {
                    var enModelTypeUpload = entities.M_ModelTypeUpload
                                            .Where(m => m.ModelTypeUploadID == model.ModelTypeUploadID).First();
                    var enYM = entities.M_YM.Add(new M_YM
                    {
                        YMName = entities.M_ModelTypeTempSheet
                                .Where(s => s.ModelTypeUploadID == enModelTypeUpload.ModelTypeUploadID)
                                .Select(s => s.YM).First(),

                    });
                }

                return true;
            }
            catch(Exception e)
            {
                throw e;
            }
        }

        public M_ModelTypeUpload AddModelTypeUploadToStaging(ModelTypeUploadModel model)
        {
            try
            {
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

                entities.SaveChanges();
                return enModel;
            }
            catch (DbEntityValidationException e)
            {
                foreach (var eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
