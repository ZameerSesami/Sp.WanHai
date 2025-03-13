using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sp.WanHai.CallAPI
{
    public class LHDNInvoiceDetails
    {
        public string uuid { get; set; }
        public string submissionUid { get; set; }
        public string longId { get; set; }
        public string typeName { get; set; }
        public string typeVersionName { get; set; }
        public string issuerTin { get; set; }
        public string issuerName { get; set; }
        public string receiverId { get; set; }
        public string receiverName { get; set; }
        public DateTime dateTimeReceived { get; set; }
        public DateTime? dateTimeValidated { get; set; }
        public decimal totalSales { get; set; }
        public decimal totalDiscount { get; set; }
        public decimal netAmount { get; set; }
        public decimal total { get; set; }
        public string status { get; set; }
        public string createdByUserId { get; set; }
        public string documentStatusReason { get; set; }
        public DateTime? cancelDateTime { get; set; }
        public DateTime? rejectRequestDateTime { get; set; }
        public ValidationResult validationResults { get; set; }
        public string internalId { get; set; }
        public DateTime dateTimeIssued { get; set; }
    }
    public class ValidationStep
    {
        public string status { get; set; }
        public string name { get; set; }
        public ErrorDetail error { get; set; }
    }
    public class ValidationResult
    {
        public string status { get; set; }
        public List<ValidationStep> validationSteps { get; set; }
    }

    public class ErrorDetail
    {
        public string propertyName { get; set; }
        public string propertyPath { get; set; }
        public string errorCode { get; set; }
        public string error { get; set; }
        public string errorMs { get; set; }
        public List<ErrorDetail> innerError { get; set; }
    }
}
