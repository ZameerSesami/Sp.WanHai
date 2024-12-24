namespace Sp.WanHai.Schemas {
    using Microsoft.XLANGs.BaseTypes;
    
    
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.BizTalk.Schema.Compiler", "3.0.1.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [SchemaType(SchemaTypeEnum.Document)]
    [Schema(@"http://Sp.WanHai.Schemas.InvoiceFFSingle",@"InvoiceFF")]
    [System.SerializableAttribute()]
    [SchemaRoots(new string[] {@"InvoiceFF"})]
    public sealed class InvoiceFFSingle : Microsoft.XLANGs.BaseTypes.SchemaBase {
        
        [System.NonSerializedAttribute()]
        private static object _rawSchema;
        
        [System.NonSerializedAttribute()]
        private const string _strSchema = @"<?xml version=""1.0"" encoding=""utf-16""?>
<xs:schema xmlns=""http://Sp.WanHai.Schemas.InvoiceFFSingle"" xmlns:b=""http://schemas.microsoft.com/BizTalk/2003"" targetNamespace=""http://Sp.WanHai.Schemas.InvoiceFFSingle"" xmlns:xs=""http://www.w3.org/2001/XMLSchema"">
  <xs:element name=""InvoiceFF"">
    <xs:complexType>
      <xs:sequence>
        <xs:element name=""InvoiceHeader"">
          <xs:complexType>
            <xs:sequence>
              <xs:element name=""InvoiceNumber"" type=""xs:string"" />
              <xs:element name=""OrgEInvRefNo"" type=""xs:string"" />
              <xs:element name=""IssueDate"" type=""xs:string"" />
              <xs:element name=""InvoiceTypeCode"" type=""xs:string"" />
              <xs:element name=""CurrencyCode"" type=""xs:string"" />
              <xs:element name=""SellerTIN"" type=""xs:string"" />
              <xs:element name=""SellerBRN"" type=""xs:string"" />
              <xs:element name=""SellerMSIC"" type=""xs:string"" />
              <xs:element name=""SellerBusinessDesc"" type=""xs:string"" />
              <xs:element name=""Seller"" type=""xs:string"" />
              <xs:element name=""SellerStreet"" type=""xs:string"" />
              <xs:element name=""SellerCity"" type=""xs:string"" />
              <xs:element name=""SellerPostalCode"" type=""xs:string"" />
              <xs:element name=""SellerCountryCode"" type=""xs:string"" />
              <xs:element name=""SellerSSTRegNo"" type=""xs:string"" />
              <xs:element name=""SellerContactPhone"" type=""xs:string"" />
              <xs:element name=""SellerContactEmail"" type=""xs:string"" />
              <xs:element name=""BuyerTIN"" type=""xs:string"" />
              <xs:element name=""BuyerBRN"" type=""xs:string"" />
              <xs:element name=""Buyer"" type=""xs:string"" />
              <xs:element name=""BuyerStreet"" type=""xs:string"" />
              <xs:element name=""BuyerCity"" type=""xs:string"" />
              <xs:element name=""BuyerPostalCode"" type=""xs:string"" />
              <xs:element name=""BuyerCountry"" type=""xs:string"" />
              <xs:element name=""BuyerContactPhone"" type=""xs:string"" />
              <xs:element name=""BuyerContactEmail"" type=""xs:string"" />
              <xs:element name=""BuyerSSTRegNo"" type=""xs:string"" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name=""InvoiceItems"">
          <xs:complexType>
            <xs:sequence>
              <xs:element name=""LineItemNo"" type=""xs:string"" />
              <xs:element name=""ClassificationCode"" type=""xs:string"" />
              <xs:element name=""ProdDescription"" type=""xs:string"" />
              <xs:element name=""UnitPrice"" type=""xs:string"" />
              <xs:element name=""TaxType"" type=""xs:string"" />
              <xs:element name=""TaxRate"" type=""xs:string"" />
              <xs:element name=""TaxAmount"" type=""xs:string"" />
              <xs:element name=""DetailOfTaxExemption"" type=""xs:string"" />
              <xs:element name=""AmtExemptedFromTax"" type=""xs:string"" />
              <xs:element name=""SubTotal"" type=""xs:string"" />
              <xs:element name=""TotalExcludingTax"" type=""xs:string"" />
              <xs:element name=""TotalIncludingTax"" type=""xs:string"" />
              <xs:element name=""TotalPayableAmount"" type=""xs:string"" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>";
        
        public InvoiceFFSingle() {
        }
        
        public override string XmlContent {
            get {
                return _strSchema;
            }
        }
        
        public override string[] RootNodes {
            get {
                string[] _RootElements = new string [1];
                _RootElements[0] = "InvoiceFF";
                return _RootElements;
            }
        }
        
        protected override object RawSchema {
            get {
                return _rawSchema;
            }
            set {
                _rawSchema = value;
            }
        }
    }
}
