using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sp.WanHai.CallAPI
{
    public class LHDNAPIResponse
    {
        public string submissionUID { get; set; }
        public List<AcceptedDocuments> acceptedDocuments { get; set; }
        public List<RejectedDocument> rejectedDocuments { get; set; }
    }
    public class AcceptedDocuments
    {
        public string uuid { get; set; }
        public string invoiceCodeNumber { get; set; }
    }
    // LHDNInvoiceResponse myDeserializedClass = JsonConvert.DeserializeObject<LHDNInvoiceResponse>(myJsonResponse);
    public class Detail
    {
        public string code { get; set; }
        public string message { get; set; }
        public string target { get; set; }
        public string propertyPath { get; set; }
        public object details { get; set; }
    }

    public class Error
    {
        public string code { get; set; }
        public string message { get; set; }
        public string target { get; set; }
        public object propertyPath { get; set; }
        public List<Detail> details { get; set; }
    }

    public class RejectedDocument
    {
        public string invoiceCodeNumber { get; set; }
        public string message { get; set; }
        public Error error { get; set; }
    }
}
