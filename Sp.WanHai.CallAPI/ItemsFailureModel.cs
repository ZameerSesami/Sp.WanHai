using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sp.WanHai.CallAPI
{
    public class ItemsFailureModel
    {
        public List<ItemErrorList> ItemErrorList { get; set; } = null;
        public DateTime Timestamp { get; set; }
        public bool Succeed { get; set; }
        public string ErrorDescription { get; set; } = null;
        public string InvoiceSubmissionID { get; set; } = null;
        public string POSubmissionID { get; set; } = null;
    }
    public class ItemErrorList
    {
        public string errorFieldName { get; set; }
        public string errorText { get; set; }
    }
}
