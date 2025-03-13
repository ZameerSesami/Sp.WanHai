using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sp.WanHai.CallAPI
{
    public class LHDNSubmissionResponse
    {
        public string submissionUid { get; set; }
        public int documentCount { get; set; }
        public string dateTimeReceived { get; set; }
        public string overallStatus { get; set; }
        public List<docSummary> documentSummary { get; set; }
    }
    public class docSummary
    {
        public string uuid { get; set; }
        public string submissionUid { get; set; }
        public string longId { get; set; }
        public string internalId { get; set; }
        public string typeName { get; set; }
        public string typeVersionName { get; set; }
        public string issuerTin { get; set; }
        public string issuerName { get; set; }
        public string receiverId { get; set; }
        public string receiverName { get; set; }
        public string dateTimeIssued { get; set; }
        public string dateTimeReceived { get; set; }
        public string dateTimeValidated { get; set; }
        public string totalExcludingTax { get; set; }
        public string totalDiscount { get; set; }
        public string totalNetAmount { get; set; }
        public string totalPayableAmount { get; set; }
        public string status { get; set; }
        public string cancelDateTime { get; set; }
        public string rejectRequestDateTime { get; set; }
        public string documentStatusReason { get; set; }
        public string createdByUserId { get; set; }
    }
}
