using DataLayer;
using ReadExcel.IServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReadExcel.Services
{
    public class MISCService : IMISCService
    {
        public M_MISC Get(M_MISC model)
        {
            try
            {
                ASHAOP_DEVEntities entities = new ASHAOP_DEVEntities();
                var query = entities.M_MISC.AsQueryable();
                if (model != null)
                {
                    if (!string.IsNullOrEmpty(model.MiscType))
                    {
                        query = query.Where(q => q.MiscType == model.MiscType);
                    }
                    if (!string.IsNullOrEmpty(model.MiscCode))
                    {
                        query = query.Where(q => q.MiscCode == model.MiscCode);
                    }
                    if (!string.IsNullOrEmpty(model.MiscDescription))
                    {
                        query = query.Where(q => q.MiscDescription == model.MiscDescription);
                    }
                }

                return query.FirstOrDefault();
            }
            catch(Exception e)
            {
                throw e;
            }
        }
    }
}
