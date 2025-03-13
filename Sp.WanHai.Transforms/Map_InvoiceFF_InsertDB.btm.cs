namespace Sp.WanHai.Transforms {
    
    
    [Microsoft.XLANGs.BaseTypes.SchemaReference(@"Sp.WanHai.Schemas.InvoiceFF", typeof(global::Sp.WanHai.Schemas.InvoiceFF))]
    [Microsoft.XLANGs.BaseTypes.SchemaReference(@"Sp.WanHai.Schemas.uspInvInsert_TypedProcedure_dbo+InterfaceInvoiceInsert", typeof(global::Sp.WanHai.Schemas.uspInvInsert_TypedProcedure_dbo.InterfaceInvoiceInsert))]
    public sealed class Map_InvoiceFF_InsertDB : global::Microsoft.XLANGs.BaseTypes.TransformBase {
        
        private const string _strMap = @"<?xml version=""1.0"" encoding=""UTF-16""?>
<xsl:stylesheet xmlns:xsl=""http://www.w3.org/1999/XSL/Transform"" xmlns:msxsl=""urn:schemas-microsoft-com:xslt"" xmlns:var=""http://schemas.microsoft.com/BizTalk/2003/var"" exclude-result-prefixes=""msxsl var s0 userCSharp"" version=""1.0"" xmlns:s0=""http://Sp.WanHai.Schemas.InvoiceFF"" xmlns:ns4=""http://schemas.microsoft.com/Sql/2008/05/ProceduresResultSets/dbo/InterfaceInvoiceInsert"" xmlns:ns0=""http://schemas.microsoft.com/Sql/2008/05/TypedProcedures/dbo"" xmlns:ns3=""http://schemas.microsoft.com/Sql/2008/05/Types/TableTypes/dbo"" xmlns:userCSharp=""http://schemas.microsoft.com/BizTalk/2003/userCSharp"">
  <xsl:output omit-xml-declaration=""yes"" method=""xml"" version=""1.0"" />
  <xsl:template match=""/"">
    <xsl:apply-templates select=""/s0:InvoiceFF"" />
  </xsl:template>
  <xsl:template match=""/s0:InvoiceFF"">
    <ns0:InterfaceInvoiceInsert>
      <ns0:InvHeaderType>
        <xsl:for-each select=""InvoiceHeader"">
          <xsl:variable name=""var:v1"" select=""userCSharp:StringConcat(string(InvoiceTypeCode/text()))"" />
          <ns3:InvoiceHeaderTableType>
            <ns3:HubID>WHL</ns3:HubID>
            <ns3:InvoiceNumber>
              <xsl:value-of select=""InvoiceNumber/text()"" />
            </ns3:InvoiceNumber>
            <ns3:OrgEInvRefNo>
              <xsl:value-of select=""OrgEInvRefNo/text()"" />
            </ns3:OrgEInvRefNo>
            <ns3:IssueDate>
              <xsl:value-of select=""IssueDate/text()"" />
            </ns3:IssueDate>
            <ns3:InvoiceTypeCode>
              <xsl:value-of select=""$var:v1"" />
            </ns3:InvoiceTypeCode>
            <ns3:CurrencyCode>
              <xsl:value-of select=""CurrencyCode/text()"" />
            </ns3:CurrencyCode>
            <ns3:SellerTIN>
              <xsl:value-of select=""SellerTIN/text()"" />
            </ns3:SellerTIN>
            <ns3:SellerBRN>
              <xsl:value-of select=""SellerBRN/text()"" />
            </ns3:SellerBRN>
            <ns3:SellerMSIC>
              <xsl:value-of select=""SellerMSIC/text()"" />
            </ns3:SellerMSIC>
            <ns3:SellerBusinessDesc>
              <xsl:value-of select=""SellerBusinessDesc/text()"" />
            </ns3:SellerBusinessDesc>
            <ns3:Seller>
              <xsl:value-of select=""Seller/text()"" />
            </ns3:Seller>
            <ns3:SellerStreet>
              <xsl:value-of select=""SellerStreet/text()"" />
            </ns3:SellerStreet>
            <ns3:SellerCity>
              <xsl:value-of select=""SellerCity/text()"" />
            </ns3:SellerCity>
            <ns3:SellerPostalCode>
              <xsl:value-of select=""SellerPostalCode/text()"" />
            </ns3:SellerPostalCode>
            <ns3:SellerCountryCode>
              <xsl:value-of select=""SellerCountryCode/text()"" />
            </ns3:SellerCountryCode>
            <ns3:SellerSSTRegNo>
              <xsl:value-of select=""SellerSSTRegNo/text()"" />
            </ns3:SellerSSTRegNo>
            <ns3:SellerContactPhone>
              <xsl:value-of select=""SellerContactPhone/text()"" />
            </ns3:SellerContactPhone>
            <ns3:SellerContactEmail>
              <xsl:value-of select=""SellerContactEmail/text()"" />
            </ns3:SellerContactEmail>
            <ns3:BuyerTIN>
              <xsl:value-of select=""BuyerTIN/text()"" />
            </ns3:BuyerTIN>
            <ns3:BuyerBRN>
              <xsl:value-of select=""BuyerBRN/text()"" />
            </ns3:BuyerBRN>
            <ns3:Buyer>
              <xsl:value-of select=""Buyer/text()"" />
            </ns3:Buyer>
            <ns3:BuyerStreet>
              <xsl:value-of select=""BuyerStreet/text()"" />
            </ns3:BuyerStreet>
            <ns3:BuyerCity>
              <xsl:value-of select=""BuyerCity/text()"" />
            </ns3:BuyerCity>
            <ns3:BuyerPostalCode>
              <xsl:value-of select=""BuyerPostalCode/text()"" />
            </ns3:BuyerPostalCode>
            <ns3:BuyerCountry>
              <xsl:value-of select=""BuyerCountry/text()"" />
            </ns3:BuyerCountry>
            <ns3:BuyerContactPhone>
              <xsl:value-of select=""BuyerContactPhone/text()"" />
            </ns3:BuyerContactPhone>
            <ns3:BuyerContactEmail>
              <xsl:value-of select=""BuyerContactEmail/text()"" />
            </ns3:BuyerContactEmail>
            <ns3:BuyerSSTRegNo>
              <xsl:value-of select=""BuyerSSTRegNo/text()"" />
            </ns3:BuyerSSTRegNo>
            <ns3:DocumentStatus>NEW</ns3:DocumentStatus>
            <ns3:InterfaceStatus>NEW</ns3:InterfaceStatus>
          </ns3:InvoiceHeaderTableType>
        </xsl:for-each>
      </ns0:InvHeaderType>
      <ns0:InvDetailsType>
        <xsl:for-each select=""InvoiceItems"">
          <ns3:InvoiceDetailsTableType>
            <ns3:LineItemNo>
              <xsl:value-of select=""LineItemNo/text()"" />
            </ns3:LineItemNo>
            <ns3:ClassificationCode>
              <xsl:value-of select=""ClassificationCode/text()"" />
            </ns3:ClassificationCode>
            <ns3:ProdDescription>
              <xsl:value-of select=""ProdDescription/text()"" />
            </ns3:ProdDescription>
             <ns3:Quantity>
              <xsl:value-of select=""Quantity/text()"" />
            </ns3:Quantity>
             <ns3:UOM>
              <xsl:value-of select=""UOM/text()"" />
            </ns3:UOM>
            <ns3:UnitPrice>
              <xsl:value-of select=""UnitPrice/text()"" />
            </ns3:UnitPrice>
            <ns3:TaxType>
              <xsl:value-of select=""TaxType/text()"" />
            </ns3:TaxType>
            <ns3:TaxRate>
              <xsl:value-of select=""TaxRate/text()"" />
            </ns3:TaxRate>
            <ns3:TaxAmount>
              <xsl:value-of select=""TaxAmount/text()"" />
            </ns3:TaxAmount>
            <ns3:DetailOfTaxExemption>
              <xsl:value-of select=""DetailOfTaxExemption/text()"" />
            </ns3:DetailOfTaxExemption>
            <ns3:AmtExemptedFromTax>
              <xsl:value-of select=""AmtExemptedFromTax/text()"" />
            </ns3:AmtExemptedFromTax>
            <ns3:SubTotal>
              <xsl:value-of select=""SubTotal/text()"" />
            </ns3:SubTotal>
            <ns3:TotalExcludingTax>
              <xsl:value-of select=""TotalExcludingTax/text()"" />
            </ns3:TotalExcludingTax>
            <ns3:TotalIncludingTax>
              <xsl:value-of select=""TotalIncludingTax/text()"" />
            </ns3:TotalIncludingTax>
            <ns3:TotalPayableAmount>
              <xsl:value-of select=""TotalPayableAmount/text()"" />
            </ns3:TotalPayableAmount>
          </ns3:InvoiceDetailsTableType>
        </xsl:for-each>
      </ns0:InvDetailsType>
    </ns0:InterfaceInvoiceInsert>
  </xsl:template>
  <msxsl:script language=""C#"" implements-prefix=""userCSharp""><![CDATA[
public string StringConcat(string param0)
{
   return param0;
}



]]></msxsl:script>
</xsl:stylesheet>";
        
        private const int _useXSLTransform = 0;
        
        private const string _strArgList = @"<ExtensionObjects />";
        
        private const string _strSrcSchemasList0 = @"Sp.WanHai.Schemas.InvoiceFF";
        
        private const global::Sp.WanHai.Schemas.InvoiceFF _srcSchemaTypeReference0 = null;
        
        private const string _strTrgSchemasList0 = @"Sp.WanHai.Schemas.uspInvInsert_TypedProcedure_dbo+InterfaceInvoiceInsert";
        
        private const global::Sp.WanHai.Schemas.uspInvInsert_TypedProcedure_dbo.InterfaceInvoiceInsert _trgSchemaTypeReference0 = null;
        
        public override string XmlContent {
            get {
                return _strMap;
            }
        }
        
        public override int UseXSLTransform {
            get {
                return _useXSLTransform;
            }
        }
        
        public override string XsltArgumentListContent {
            get {
                return _strArgList;
            }
        }
        
        public override string[] SourceSchemas {
            get {
                string[] _SrcSchemas = new string [1];
                _SrcSchemas[0] = @"Sp.WanHai.Schemas.InvoiceFF";
                return _SrcSchemas;
            }
        }
        
        public override string[] TargetSchemas {
            get {
                string[] _TrgSchemas = new string [1];
                _TrgSchemas[0] = @"Sp.WanHai.Schemas.uspInvInsert_TypedProcedure_dbo+InterfaceInvoiceInsert";
                return _TrgSchemas;
            }
        }
    }
}
