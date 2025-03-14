<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0 s2 s3 s1 userCSharp" version="1.0" xmlns:s0="http://Sp.WanHai.Schemas.SSOValues" xmlns:s1="http://schemas.microsoft.com/Sql/2008/05/TypedProcedures/dbo" xmlns:ns0="urn:oasis:names:specification:ubl:schema:xsd:CreditNote-2" xmlns:s2="http://schemas.microsoft.com/BizTalk/2003/aggschema" xmlns:s3="http://schemas.microsoft.com/Sql/2008/05/ProceduresResultSets/dbo/InterfaceWHLInvoiceDetails" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:userCSharp="http://schemas.microsoft.com/BizTalk/2003/userCSharp">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/s2:Root" />
  </xsl:template>
  <xsl:template match="/s2:Root">
    <xsl:variable name="var:v1" select="userCSharp:StringConcat(string(InputMessagePart_1/s0:Root/PeppolIdType/text()))" />
    <ns0:CreditNote
	xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"
	xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"
	xmlns="urn:oasis:names:specification:ubl:schema:xsd:CreditNote-2">
      <xsl:for-each select="InputMessagePart_0/s1:InterfaceWHLInvoiceDetailsResponse/s1:StoredProcedureResultSet0/s3:StoredProcedureResultSet0">
        <cbc:CustomizationID>
          <xsl:if test="s3:CustomizationID">
            <xsl:value-of select="s3:CustomizationID/text()" />
          </xsl:if>
        </cbc:CustomizationID>
        <cbc:ProfileID>
          <xsl:if test="s3:ProfileID">
            <xsl:value-of select="s3:ProfileID/text()" />
          </xsl:if>
        </cbc:ProfileID>
        <cbc:ID>
          <xsl:if test="s3:InvoiceNumber">
            <xsl:value-of select="s3:InvoiceNumber/text()" />
          </xsl:if>
        </cbc:ID>
        <xsl:if test="s3:IssueDate">
          <cbc:IssueDate>
            <xsl:value-of select="s3:IssueDate/text()" />
          </cbc:IssueDate>
        </xsl:if>
        <xsl:if test="s3:InvoiceTypeCode">
          <cbc:CreditNoteTypeCode>
            <xsl:value-of select="s3:InvoiceTypeCode/text()" />
          </cbc:CreditNoteTypeCode>
        </xsl:if>
        <xsl:if test="s3:CurrencyCode">
          <cbc:DocumentCurrencyCode>
            <xsl:value-of select="s3:CurrencyCode/text()" />
          </cbc:DocumentCurrencyCode>
        </xsl:if>
        <xsl:if test="s3:OrgEInvRefNo">
          <cac:BillingReference>
            <cac:InvoiceDocumentReference>
              <cbc:ID>
                <xsl:value-of select="s3:OrgEInvRefNo/text()" />
              </cbc:ID>
            </cac:InvoiceDocumentReference>
          </cac:BillingReference>
        </xsl:if>
        <cac:AccountingSupplierParty>
          <cac:Party>
            <cbc:EndpointID schemeID="0230">
              <xsl:value-of select="s3:SellerPartyEndPointID/text()" />
            </cbc:EndpointID>
            <cbc:IndustryClassificationCode>
              <xsl:value-of select="s3:SellerMSIC/text()" />
            </cbc:IndustryClassificationCode>
            <cac:PartyIdentification>
              <cbc:ID>
                <xsl:value-of select="s3:SellerBRN/text()" />
              </cbc:ID>
            </cac:PartyIdentification>
            <cac:PartyName>
              <cbc:Name>
                <xsl:value-of select="s3:Seller/text()" />
              </cbc:Name>
            </cac:PartyName>
            <!--<cac:PartyIdentification>
              <cbc:ID>
                <xsl:value-of select="s3:SellerTIN/text()" />
              </cbc:ID>
            </cac:PartyIdentification>
            <cac:PartyName>
              <cbc:Name>
                <xsl:value-of select="s3:SellerBusinessDesc/text()" />
              </cbc:Name>
            </cac:PartyName>-->
            <cac:PostalAddress>
              <cbc:StreetName>
                <xsl:value-of select="s3:SellerStreet/text()" />
              </cbc:StreetName>
              <cbc:CityName>
                <xsl:value-of select="s3:SellerCity/text()" />
              </cbc:CityName>
              <cbc:PostalZone>
                <xsl:value-of select="s3:SellerPostalCode/text()" />
              </cbc:PostalZone>
              <cbc:CountrySubentity>
                <xsl:value-of select="s3:SellerCountryCode/text()" />
              </cbc:CountrySubentity>
              <cac:Country>
                <cbc:IdentificationCode>
                  <xsl:value-of select="s3:SellerCountryCode/text()" />
                </cbc:IdentificationCode>
              </cac:Country>
            </cac:PostalAddress>
            <xsl:variable name="varTaxCompID" select="s3:SellerTaxSchemeCompID/text()" />
            <!--<xsl:for-each select="../../../../InputMessagePart_0/s1:InterfaceWHLInvoiceDetailsResponse/s1:StoredProcedureResultSet1/s3:StoredProcedureResultSet1">-->
            <cac:PartyTaxScheme>
              <cbc:CompanyID>
                <xsl:value-of select="$varTaxCompID" />
              </cbc:CompanyID>
              <cac:TaxScheme>
                <cbc:ID>GST</cbc:ID>
              </cac:TaxScheme>
            </cac:PartyTaxScheme>
            <cac:PartyTaxScheme>
              <cbc:CompanyID>NA</cbc:CompanyID>
              <cac:TaxScheme>
                <cbc:ID>VAT</cbc:ID>
              </cac:TaxScheme>
            </cac:PartyTaxScheme>
            <!--</xsl:for-each>-->
            <cac:PartyLegalEntity>
              <cbc:RegistrationName>
                <xsl:value-of select="s3:Seller/text()" />
              </cbc:RegistrationName>
              <cbc:CompanyID>
                <xsl:value-of select="s3:SellerLECompID/text()" />
              </cbc:CompanyID>
            </cac:PartyLegalEntity>
            <cac:Contact>
              <cbc:Telephone>
                <xsl:value-of select="s3:SellerContactPhone/text()" />
              </cbc:Telephone>
              <cbc:ElectronicMail>
                <xsl:value-of select="s3:SellerContactEmail/text()" />
              </cbc:ElectronicMail>
            </cac:Contact>
          </cac:Party>
        </cac:AccountingSupplierParty>
        <cac:AccountingCustomerParty>
          <cac:Party>
            <cbc:EndpointID schemeID="0230">
              <xsl:value-of select="s3:BuyerPartyEndPointID/text()" />
            </cbc:EndpointID>
            <cac:PartyIdentification>
              <cbc:ID>
                <xsl:value-of select="s3:BuyerTIN/text()" />
              </cbc:ID>
            </cac:PartyIdentification>
            <cac:PartyName>
              <cbc:Name>
                <xsl:value-of select="s3:Buyer/text()" />
              </cbc:Name>
            </cac:PartyName>
            <cac:PostalAddress>
              <cbc:StreetName>
                <xsl:value-of select="s3:BuyerStreet/text()" />
              </cbc:StreetName>
              <cbc:AdditionalStreetName></cbc:AdditionalStreetName>
              <cbc:CityName>
                <xsl:value-of select="s3:BuyerCity/text()" />
              </cbc:CityName>
              <cbc:PostalZone>
                <xsl:value-of select="s3:BuyerPostalCode/text()" />
              </cbc:PostalZone>
              <cbc:CountrySubentity>MALAYSIA</cbc:CountrySubentity>
              <xsl:if test="s3:BuyerStreet">
                <cac:AddressLine>
                  <cbc:Line>
                    <xsl:value-of select="s3:BuyerStreet/text()" />
                  </cbc:Line>
                </cac:AddressLine>
              </xsl:if>
              <cac:Country>
                <cbc:IdentificationCode>
                  <xsl:value-of select="s3:BuyerCountry/text()" />
                </cbc:IdentificationCode>
              </cac:Country>
            </cac:PostalAddress>
            <cac:PartyTaxScheme>
              <cbc:CompanyID>
                <xsl:value-of select="s3:BuyerSSTRegNo/text()" />
              </cbc:CompanyID>
              <cac:TaxScheme>
                <cbc:ID>VAT</cbc:ID>
              </cac:TaxScheme>
            </cac:PartyTaxScheme>
            <cac:PartyLegalEntity>
              <cbc:RegistrationName>
                <xsl:value-of select="s3:BuyerLECompName/text()" />
              </cbc:RegistrationName>
              <cbc:CompanyID>
                <xsl:value-of select="s3:BuyerLECompID/text()" />
              </cbc:CompanyID>
            </cac:PartyLegalEntity>
            <cac:Contact>
              <cbc:Telephone>
                <xsl:value-of select="s3:BuyerContactPhone/text()" />
              </cbc:Telephone>
              <cbc:ElectronicMail>
                <xsl:value-of select="s3:BuyerContactEmail/text()" />
              </cbc:ElectronicMail>
            </cac:Contact>
          </cac:Party>
        </cac:AccountingCustomerParty>
        <cac:Delivery>
          <cac:DeliveryLocation>
            <cac:Address>
              <cac:Country>
                <cbc:IdentificationCode>
                  <xsl:value-of select="s3:BuyerCountry/text()" />
                </cbc:IdentificationCode>
              </cac:Country>
            </cac:Address>
          </cac:DeliveryLocation>
        </cac:Delivery>
        <cac:PaymentTerms>
          <cbc:Note>30 Days</cbc:Note>
        </cac:PaymentTerms>
        <cac:TaxTotal>
          <cbc:TaxAmount currencyID="MYR">
            <xsl:value-of select="s3:TotalTaxAmount/text()" />
          </cbc:TaxAmount>
          <xsl:for-each select="../../../../InputMessagePart_0/s1:InterfaceWHLInvoiceDetailsResponse/s1:StoredProcedureResultSet2/s3:StoredProcedureResultSet2">
            <cac:TaxSubtotal>
              <cbc:TaxableAmount currencyID="MYR">
                <xsl:value-of select="s3:CummulativeTaxableAmount/text()" />
              </cbc:TaxableAmount>
              <cbc:TaxAmount currencyID="MYR">
                <xsl:value-of select="s3:CummulativeTaxAmount/text()" />
              </cbc:TaxAmount>
              <cac:TaxCategory>
                <cbc:ID>
                  <xsl:value-of select="s3:CummulativeTaxType/text()" />
                </cbc:ID>
                <cbc:Percent>
                  <xsl:value-of select="s3:CummulativeTaxPercent/text()" />
                </cbc:Percent>
                <cac:TaxScheme>
                  <cbc:ID>VAT</cbc:ID>
                </cac:TaxScheme>
              </cac:TaxCategory>
            </cac:TaxSubtotal>
          </xsl:for-each>
        </cac:TaxTotal>
        <cac:LegalMonetaryTotal>
          <cbc:LineExtensionAmount currencyID="MYR">
            <xsl:value-of select="s3:TotalLineAmount/text()" />
          </cbc:LineExtensionAmount>
          <cbc:TaxExclusiveAmount currencyID="MYR">
            <xsl:value-of select="s3:TaxExclAmount/text()" />
          </cbc:TaxExclusiveAmount>
          <cbc:TaxInclusiveAmount currencyID="MYR">
            <xsl:value-of select="s3:TaxInclAmount/text()" />
          </cbc:TaxInclusiveAmount>
          <cbc:PrepaidAmount currencyID="MYR">0</cbc:PrepaidAmount>
          <cbc:PayableAmount currencyID="MYR">
            <xsl:value-of select="s3:TotalPayableAmount/text()" />
          </cbc:PayableAmount>
        </cac:LegalMonetaryTotal>
      </xsl:for-each>

      <xsl:for-each select="InputMessagePart_0/s1:InterfaceWHLInvoiceDetailsResponse/s1:StoredProcedureResultSet1/s3:StoredProcedureResultSet1">
        <!--<cac:CreditNoteLine>
          <xsl:if test="s3:LineItemNo">
            <cbc:ID>
              <xsl:value-of select="s3:LineItemNo/text()" />
            </cbc:ID>
          </xsl:if>
        </cac:CreditNoteLine>-->
        <cac:CreditNoteLine>
          <cbc:ID>
            <xsl:if test="s3:LineItemNo">
              <xsl:value-of select="s3:LineItemNo/text()" />
            </xsl:if>
          </cbc:ID>
          <cbc:CreditedQuantity>
            <xsl:attribute name="unitCode">
              <xsl:value-of select="s3:UOM/text()" />
            </xsl:attribute>
            <xsl:value-of select="s3:Quantity/text()" />
          </cbc:CreditedQuantity>
          <cbc:LineExtensionAmount currencyID="MYR">
            <xsl:value-of select="s3:SubTotal/text()" />
          </cbc:LineExtensionAmount>
          <cac:Item>
            <cbc:Name>
              <xsl:value-of select="s3:ProdDescription/text()" />
            </cbc:Name>
            <cac:CommodityClassification>
              <cbc:ItemClassificationCode listID="SSU">
                <xsl:value-of select="s3:ClassificationCode/text()" />
              </cbc:ItemClassificationCode>
            </cac:CommodityClassification>
            <!--<cac:SellersItemIdentification>
              <cbc:ID>
                <xsl:value-of select="s3:ClassificationCode/text()" />
              </cbc:ID>
            </cac:SellersItemIdentification>-->
            <cac:ClassifiedTaxCategory>
              <cbc:ID>
                <xsl:value-of select="s3:TaxType/text()" />
              </cbc:ID>
              <cbc:Percent>
                <xsl:value-of select="s3:TaxRate/text()" />
              </cbc:Percent>
              <cac:TaxScheme>
                <cbc:ID>VAT</cbc:ID>
              </cac:TaxScheme>
            </cac:ClassifiedTaxCategory>
          </cac:Item>
          <cac:Price>
            <cbc:PriceAmount currencyID="MYR">
              <xsl:value-of select="s3:UnitPrice/text()" />
            </cbc:PriceAmount>
          </cac:Price>
        </cac:CreditNoteLine>
      </xsl:for-each>
    </ns0:CreditNote>
  </xsl:template>
  <msxsl:script language="C#" implements-prefix="userCSharp">
    <![CDATA[
public string StringConcat(string param0)
{
   return param0;
}



]]>
  </msxsl:script>
</xsl:stylesheet>