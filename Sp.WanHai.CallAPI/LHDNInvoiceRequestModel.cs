using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sp.WanHai.CallAPI
{
    public class LHDNInvoiceRequestModel
    {
        public List<DocumentModel> documents { get; set; } = new List<DocumentModel>();
    }
    public class DocumentModel
    {
        public string format { get; set; }
        public string documentHash { get; set; }
        public string codeNumber { get; set; }
        public string document { get; set; }
    }
}
