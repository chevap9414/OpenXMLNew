using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReadExcel
{
    public class CompanyModel
    {
        public int CompanyID { get; set; }
        public string CompanyName { get; set; }
        public string Plant { get; set; }
        public int MainPlantStatusID { get; set; }
        public string MainPlantStatusValue { get; set; }
        public int SupplyPlantStatusID { get; set; }
        public string SupplyPlantStatusValue { get; set; }
        public int RegionID { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public int SortNo { get; set; }
        public string CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public DateTime UpdatedDate { get; set; }
        public int StatusID { get; set; }
        public string ActiveStatusValue { get; set; }

        public string ActiveOrTotalLine { get; set; }

    }
}
