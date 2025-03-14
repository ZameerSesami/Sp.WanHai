<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0" version="1.0" xmlns:s0="http://schemas.microsoft.com/BizTalk/2003/aggschema" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/s0:Root" />
  </xsl:template>
  <xsl:template match="/s0:Root">
    <xsl:for-each select="InputMessagePart_0/Invoice">
      <Invoice>
        <cbc:ID>
          <xsl:value-of select="ID/text()" />
        </cbc:ID>
        <cbc:IssueDate>
          <xsl:value-of select="cbc:IssueDate/text()" />
        </cbc:IssueDate>
        <cbc:IssueDate>
          <xsl:value-of select="cbc:IssueDate/text()" />
        </cbc:IssueDate>
        <cbc:IssueTime>
          <xsl:value-of select="cbc:IssueTime/text()" />
        </cbc:IssueTime>
        <cbc:IssueTime>
          <xsl:value-of select="cbc:IssueTime/text()" />
        </cbc:IssueTime>
        <cbc:InvoiceTypeCode>
          <xsl:attribute name="listVersionID">
            <xsl:value-of select="cbc:InvoiceTypeCode/@listVersionID" />
          </xsl:attribute>
          <xsl:attribute name="listVersionID">
            <xsl:value-of select="cbc:InvoiceTypeCode/@listVersionID" />
          </xsl:attribute>
          <xsl:value-of select="cbc:InvoiceTypeCode/text()" />
          <xsl:value-of select="cbc:InvoiceTypeCode/text()" />
        </cbc:InvoiceTypeCode>
        <cbc:DocumentCurrencyCode>
          <xsl:value-of select="cbc:DocumentCurrencyCode/text()" />
        </cbc:DocumentCurrencyCode>
        <cbc:DocumentCurrencyCode>
          <xsl:value-of select="cbc:DocumentCurrencyCode/text()" />
        </cbc:DocumentCurrencyCode>
        <cbc:TaxCurrencyCode>
          <xsl:value-of select="cbc:TaxCurrencyCode/text()" />
        </cbc:TaxCurrencyCode>
        <cbc:TaxCurrencyCode>
          <xsl:value-of select="cbc:TaxCurrencyCode/text()" />
        </cbc:TaxCurrencyCode>
        <cac:InvoicePeriod>
          <cbc:StartDate>
            <xsl:value-of select="cac:InvoicePeriod/cbc:StartDate/text()" />
          </cbc:StartDate>
          <cbc:StartDate>
            <xsl:value-of select="cac:InvoicePeriod/cbc:StartDate/text()" />
          </cbc:StartDate>
          <cbc:EndDate>
            <xsl:value-of select="cac:InvoicePeriod/cbc:EndDate/text()" />
          </cbc:EndDate>
          <cbc:EndDate>
            <xsl:value-of select="cac:InvoicePeriod/cbc:EndDate/text()" />
          </cbc:EndDate>
          <cbc:Description>
            <xsl:value-of select="cac:InvoicePeriod/cbc:Description/text()" />
          </cbc:Description>
          <cbc:Description>
            <xsl:value-of select="cac:InvoicePeriod/cbc:Description/text()" />
          </cbc:Description>
          <xsl:value-of select="cac:InvoicePeriod/text()" />
          <xsl:value-of select="cac:InvoicePeriod/text()" />
        </cac:InvoicePeriod>
        <cac:BillingReference>
          <cac:AdditionalDocumentReference>
            <cbc:ID>
              <xsl:if test="cac:BillingReference/cac:AdditionalDocumentReference/cbc:ID/@schemeID">
                <xsl:attribute name="schemeID">
                  <xsl:value-of select="cac:BillingReference/cac:AdditionalDocumentReference/cbc:ID/@schemeID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="cac:BillingReference/cac:AdditionalDocumentReference/cbc:ID/@schemeID">
                <xsl:attribute name="schemeID">
                  <xsl:value-of select="cac:BillingReference/cac:AdditionalDocumentReference/cbc:ID/@schemeID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="cac:BillingReference/cac:AdditionalDocumentReference/cbc:ID/@schemeAgencyID">
                <xsl:attribute name="schemeAgencyID">
                  <xsl:value-of select="cac:BillingReference/cac:AdditionalDocumentReference/cbc:ID/@schemeAgencyID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="cac:BillingReference/cac:AdditionalDocumentReference/cbc:ID/@schemeAgencyID">
                <xsl:attribute name="schemeAgencyID">
                  <xsl:value-of select="cac:BillingReference/cac:AdditionalDocumentReference/cbc:ID/@schemeAgencyID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:value-of select="cac:BillingReference/cac:AdditionalDocumentReference/cbc:ID/text()" />
              <xsl:value-of select="cac:BillingReference/cac:AdditionalDocumentReference/cbc:ID/text()" />
            </cbc:ID>
            <xsl:value-of select="cac:BillingReference/cac:AdditionalDocumentReference/text()" />
            <xsl:value-of select="cac:BillingReference/cac:AdditionalDocumentReference/text()" />
          </cac:AdditionalDocumentReference>
          <xsl:for-each select="cac:BillingReference/cac:InvoiceDocumentReference">
            <cac:InvoiceDocumentReference>
              <cbc:ID>
                <xsl:if test="cbc:ID/@schemeID">
                  <xsl:attribute name="schemeID">
                    <xsl:value-of select="cbc:ID/@schemeID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="../../../../cac:BillingReference/cac:InvoiceDocumentReference/cbc:ID/@schemeID">
                  <xsl:attribute name="schemeID">
                    <xsl:value-of select="../../../../cac:BillingReference/cac:InvoiceDocumentReference/cbc:ID/@schemeID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="cbc:ID/@schemeAgencyID">
                  <xsl:attribute name="schemeAgencyID">
                    <xsl:value-of select="cbc:ID/@schemeAgencyID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="../../../../cac:BillingReference/cac:InvoiceDocumentReference/cbc:ID/@schemeAgencyID">
                  <xsl:attribute name="schemeAgencyID">
                    <xsl:value-of select="../../../../cac:BillingReference/cac:InvoiceDocumentReference/cbc:ID/@schemeAgencyID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="cbc:ID/text()" />
                <xsl:value-of select="../../../../cac:BillingReference/cac:InvoiceDocumentReference/cbc:ID/text()" />
              </cbc:ID>
              <cbc:UUID>
                <xsl:value-of select="cbc:UUID/text()" />
              </cbc:UUID>
              <cbc:UUID>
                <xsl:value-of select="../../../../cac:BillingReference/cac:InvoiceDocumentReference/cbc:UUID/text()" />
              </cbc:UUID>
              <xsl:value-of select="./text()" />
              <xsl:if test="../../../../cac:BillingReference/cac:InvoiceDocumentReference">
                <xsl:value-of select="../../../../cac:BillingReference/cac:InvoiceDocumentReference/text()" />
              </xsl:if>
            </cac:InvoiceDocumentReference>
          </xsl:for-each>
          <xsl:value-of select="cac:BillingReference/text()" />
          <xsl:value-of select="cac:BillingReference/text()" />
        </cac:BillingReference>
        <xsl:for-each select="cac:AdditionalDocumentReference">
          <cac:AdditionalDocumentReference>
            <cbc:ID>
              <xsl:if test="cbc:ID/@schemeID">
                <xsl:attribute name="schemeID">
                  <xsl:value-of select="cbc:ID/@schemeID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="../../../cac:AdditionalDocumentReference/cbc:ID/@schemeID">
                <xsl:attribute name="schemeID">
                  <xsl:value-of select="../../../cac:AdditionalDocumentReference/cbc:ID/@schemeID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="cbc:ID/@schemeAgencyID">
                <xsl:attribute name="schemeAgencyID">
                  <xsl:value-of select="cbc:ID/@schemeAgencyID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="../../../cac:AdditionalDocumentReference/cbc:ID/@schemeAgencyID">
                <xsl:attribute name="schemeAgencyID">
                  <xsl:value-of select="../../../cac:AdditionalDocumentReference/cbc:ID/@schemeAgencyID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:value-of select="cbc:ID/text()" />
              <xsl:value-of select="../../../cac:AdditionalDocumentReference/cbc:ID/text()" />
            </cbc:ID>
            <xsl:if test="cbc:DocumentType">
              <cbc:DocumentType>
                <xsl:value-of select="cbc:DocumentType/text()" />
              </cbc:DocumentType>
            </xsl:if>
            <xsl:if test="../../../cac:AdditionalDocumentReference/cbc:DocumentType">
              <cbc:DocumentType>
                <xsl:value-of select="../../../cac:AdditionalDocumentReference/cbc:DocumentType/text()" />
              </cbc:DocumentType>
            </xsl:if>
            <xsl:if test="cbc:DocumentDescription">
              <cbc:DocumentDescription>
                <xsl:value-of select="cbc:DocumentDescription/text()" />
              </cbc:DocumentDescription>
            </xsl:if>
            <xsl:if test="../../../cac:AdditionalDocumentReference/cbc:DocumentDescription">
              <cbc:DocumentDescription>
                <xsl:value-of select="../../../cac:AdditionalDocumentReference/cbc:DocumentDescription/text()" />
              </cbc:DocumentDescription>
            </xsl:if>
            <xsl:value-of select="./text()" />
            <xsl:value-of select="../../../cac:AdditionalDocumentReference/text()" />
          </cac:AdditionalDocumentReference>
        </xsl:for-each>
        <cac:AccountingSupplierParty>
          <cbc:AdditionalAccountID>
            <xsl:attribute name="schemeAgencyName">
              <xsl:value-of select="cac:AccountingSupplierParty/cbc:AdditionalAccountID/@schemeAgencyName" />
            </xsl:attribute>
            <xsl:attribute name="schemeAgencyName">
              <xsl:value-of select="cac:AccountingSupplierParty/cbc:AdditionalAccountID/@schemeAgencyName" />
            </xsl:attribute>
            <xsl:value-of select="cac:AccountingSupplierParty/cbc:AdditionalAccountID/text()" />
            <xsl:value-of select="cac:AccountingSupplierParty/cbc:AdditionalAccountID/text()" />
          </cbc:AdditionalAccountID>
          <cac:Party>
            <cbc:IndustryClassificationCode>
              <xsl:attribute name="name">
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cbc:IndustryClassificationCode/@name" />
              </xsl:attribute>
              <xsl:attribute name="name">
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cbc:IndustryClassificationCode/@name" />
              </xsl:attribute>
              <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cbc:IndustryClassificationCode/text()" />
              <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cbc:IndustryClassificationCode/text()" />
            </cbc:IndustryClassificationCode>
            <xsl:for-each select="cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification">
              <cac:PartyIdentification>
                <cbc:ID>
                  <xsl:if test="cbc:ID/@schemeID">
                    <xsl:attribute name="schemeID">
                      <xsl:value-of select="cbc:ID/@schemeID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="../../../../../cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID/@schemeID">
                    <xsl:attribute name="schemeID">
                      <xsl:value-of select="../../../../../cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID/@schemeID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cbc:ID/@schemeAgencyID">
                    <xsl:attribute name="schemeAgencyID">
                      <xsl:value-of select="cbc:ID/@schemeAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="../../../../../cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID/@schemeAgencyID">
                    <xsl:attribute name="schemeAgencyID">
                      <xsl:value-of select="../../../../../cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID/@schemeAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="cbc:ID/text()" />
                  <xsl:value-of select="../../../../../cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID/text()" />
                </cbc:ID>
                <xsl:value-of select="./text()" />
                <xsl:value-of select="../../../../../cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/text()" />
              </cac:PartyIdentification>
            </xsl:for-each>
            <cac:PostalAddress>
              <cbc:CityName>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:CityName/text()" />
              </cbc:CityName>
              <cbc:CityName>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:CityName/text()" />
              </cbc:CityName>
              <cbc:PostalZone>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:PostalZone/text()" />
              </cbc:PostalZone>
              <cbc:PostalZone>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:PostalZone/text()" />
              </cbc:PostalZone>
              <cbc:CountrySubentityCode>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:CountrySubentityCode/text()" />
              </cbc:CountrySubentityCode>
              <cbc:CountrySubentityCode>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:CountrySubentityCode/text()" />
              </cbc:CountrySubentityCode>
              <xsl:for-each select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:AddressLine">
                <cac:AddressLine>
                  <cbc:Line>
                    <xsl:value-of select="cbc:Line/text()" />
                  </cbc:Line>
                  <cbc:Line>
                    <xsl:value-of select="../../../../../../cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:AddressLine/cbc:Line/text()" />
                  </cbc:Line>
                  <xsl:value-of select="./text()" />
                  <xsl:value-of select="../../../../../../cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:AddressLine/text()" />
                </cac:AddressLine>
              </xsl:for-each>
              <cac:Country>
                <cbc:IdentificationCode>
                  <xsl:if test="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID">
                    <xsl:attribute name="listID">
                      <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID">
                    <xsl:attribute name="listID">
                      <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID">
                    <xsl:attribute name="listAgencyID">
                      <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID">
                    <xsl:attribute name="listAgencyID">
                      <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/text()" />
                  <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/text()" />
                </cbc:IdentificationCode>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/text()" />
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/text()" />
              </cac:Country>
              <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/text()" />
              <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/text()" />
            </cac:PostalAddress>
            <cac:PartyLegalEntity>
              <cbc:RegistrationName>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName/text()" />
              </cbc:RegistrationName>
              <cbc:RegistrationName>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName/text()" />
              </cbc:RegistrationName>
              <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/text()" />
              <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/text()" />
            </cac:PartyLegalEntity>
            <cac:Contact>
              <cbc:Telephone>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telephone/text()" />
              </cbc:Telephone>
              <cbc:Telephone>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telephone/text()" />
              </cbc:Telephone>
              <cbc:ElectronicMail>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail/text()" />
              </cbc:ElectronicMail>
              <cbc:ElectronicMail>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail/text()" />
              </cbc:ElectronicMail>
              <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:Contact/text()" />
              <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:Contact/text()" />
            </cac:Contact>
            <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/text()" />
            <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/text()" />
          </cac:Party>
          <xsl:value-of select="cac:AccountingSupplierParty/text()" />
          <xsl:value-of select="cac:AccountingSupplierParty/text()" />
        </cac:AccountingSupplierParty>
        <cac:AccountingCustomerParty>
          <cac:Party>
            <xsl:for-each select="cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification">
              <cac:PartyIdentification>
                <cbc:ID>
                  <xsl:if test="cbc:ID/@schemeID">
                    <xsl:attribute name="schemeID">
                      <xsl:value-of select="cbc:ID/@schemeID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="../../../../../cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID/@schemeID">
                    <xsl:attribute name="schemeID">
                      <xsl:value-of select="../../../../../cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID/@schemeID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cbc:ID/@schemeAgencyID">
                    <xsl:attribute name="schemeAgencyID">
                      <xsl:value-of select="cbc:ID/@schemeAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="../../../../../cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID/@schemeAgencyID">
                    <xsl:attribute name="schemeAgencyID">
                      <xsl:value-of select="../../../../../cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID/@schemeAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="cbc:ID/text()" />
                  <xsl:value-of select="../../../../../cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID/text()" />
                </cbc:ID>
                <xsl:value-of select="./text()" />
                <xsl:value-of select="../../../../../cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/text()" />
              </cac:PartyIdentification>
            </xsl:for-each>
            <cac:PostalAddress>
              <cbc:CityName>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:CityName/text()" />
              </cbc:CityName>
              <cbc:CityName>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:CityName/text()" />
              </cbc:CityName>
              <cbc:PostalZone>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:PostalZone/text()" />
              </cbc:PostalZone>
              <cbc:PostalZone>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:PostalZone/text()" />
              </cbc:PostalZone>
              <cbc:CountrySubentityCode>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:CountrySubentityCode/text()" />
              </cbc:CountrySubentityCode>
              <cbc:CountrySubentityCode>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:CountrySubentityCode/text()" />
              </cbc:CountrySubentityCode>
              <xsl:for-each select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:AddressLine">
                <cac:AddressLine>
                  <cbc:Line>
                    <xsl:value-of select="cbc:Line/text()" />
                  </cbc:Line>
                  <cbc:Line>
                    <xsl:value-of select="../../../../../../cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:AddressLine/cbc:Line/text()" />
                  </cbc:Line>
                  <xsl:value-of select="./text()" />
                  <xsl:value-of select="../../../../../../cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:AddressLine/text()" />
                </cac:AddressLine>
              </xsl:for-each>
              <cac:Country>
                <cbc:IdentificationCode>
                  <xsl:if test="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID">
                    <xsl:attribute name="listID">
                      <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID">
                    <xsl:attribute name="listID">
                      <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID">
                    <xsl:attribute name="listAgencyID">
                      <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID">
                    <xsl:attribute name="listAgencyID">
                      <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/text()" />
                  <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/text()" />
                </cbc:IdentificationCode>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/text()" />
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/text()" />
              </cac:Country>
              <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/text()" />
              <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/text()" />
            </cac:PostalAddress>
            <cac:PartyLegalEntity>
              <cbc:RegistrationName>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName/text()" />
              </cbc:RegistrationName>
              <cbc:RegistrationName>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName/text()" />
              </cbc:RegistrationName>
              <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/text()" />
              <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/text()" />
            </cac:PartyLegalEntity>
            <cac:Contact>
              <cbc:Telephone>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:Telephone/text()" />
              </cbc:Telephone>
              <cbc:Telephone>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:Telephone/text()" />
              </cbc:Telephone>
              <cbc:ElectronicMail>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:ElectronicMail/text()" />
              </cbc:ElectronicMail>
              <cbc:ElectronicMail>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:ElectronicMail/text()" />
              </cbc:ElectronicMail>
              <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:Contact/text()" />
              <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:Contact/text()" />
            </cac:Contact>
            <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/text()" />
            <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/text()" />
          </cac:Party>
          <xsl:value-of select="cac:AccountingCustomerParty/text()" />
          <xsl:value-of select="cac:AccountingCustomerParty/text()" />
        </cac:AccountingCustomerParty>
        <cac:Delivery>
          <cac:DeliveryParty>
            <xsl:for-each select="cac:Delivery/cac:DeliveryParty/cac:PartyIdentification">
              <cac:PartyIdentification>
                <cbc:ID>
                  <xsl:if test="cbc:ID/@schemeID">
                    <xsl:attribute name="schemeID">
                      <xsl:value-of select="cbc:ID/@schemeID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="../../../../../cac:Delivery/cac:DeliveryParty/cac:PartyIdentification/cbc:ID/@schemeID">
                    <xsl:attribute name="schemeID">
                      <xsl:value-of select="../../../../../cac:Delivery/cac:DeliveryParty/cac:PartyIdentification/cbc:ID/@schemeID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cbc:ID/@schemeAgencyID">
                    <xsl:attribute name="schemeAgencyID">
                      <xsl:value-of select="cbc:ID/@schemeAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="../../../../../cac:Delivery/cac:DeliveryParty/cac:PartyIdentification/cbc:ID/@schemeAgencyID">
                    <xsl:attribute name="schemeAgencyID">
                      <xsl:value-of select="../../../../../cac:Delivery/cac:DeliveryParty/cac:PartyIdentification/cbc:ID/@schemeAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="cbc:ID/text()" />
                  <xsl:value-of select="../../../../../cac:Delivery/cac:DeliveryParty/cac:PartyIdentification/cbc:ID/text()" />
                </cbc:ID>
                <xsl:value-of select="./text()" />
                <xsl:value-of select="../../../../../cac:Delivery/cac:DeliveryParty/cac:PartyIdentification/text()" />
              </cac:PartyIdentification>
            </xsl:for-each>
            <cac:PostalAddress>
              <cbc:CityName>
                <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cbc:CityName/text()" />
              </cbc:CityName>
              <cbc:CityName>
                <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cbc:CityName/text()" />
              </cbc:CityName>
              <cbc:PostalZone>
                <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cbc:PostalZone/text()" />
              </cbc:PostalZone>
              <cbc:PostalZone>
                <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cbc:PostalZone/text()" />
              </cbc:PostalZone>
              <cbc:CountrySubentityCode>
                <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cbc:CountrySubentityCode/text()" />
              </cbc:CountrySubentityCode>
              <cbc:CountrySubentityCode>
                <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cbc:CountrySubentityCode/text()" />
              </cbc:CountrySubentityCode>
              <xsl:for-each select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:AddressLine">
                <cac:AddressLine>
                  <cbc:Line>
                    <xsl:value-of select="cbc:Line/text()" />
                  </cbc:Line>
                  <cbc:Line>
                    <xsl:value-of select="../../../../../../cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:AddressLine/cbc:Line/text()" />
                  </cbc:Line>
                  <xsl:value-of select="./text()" />
                  <xsl:value-of select="../../../../../../cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:AddressLine/text()" />
                </cac:AddressLine>
              </xsl:for-each>
              <cac:Country>
                <cbc:IdentificationCode>
                  <xsl:if test="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID">
                    <xsl:attribute name="listID">
                      <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID">
                    <xsl:attribute name="listID">
                      <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID">
                    <xsl:attribute name="listAgencyID">
                      <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID">
                    <xsl:attribute name="listAgencyID">
                      <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode/text()" />
                  <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode/text()" />
                </cbc:IdentificationCode>
                <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/text()" />
                <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/text()" />
              </cac:Country>
              <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/text()" />
              <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/text()" />
            </cac:PostalAddress>
            <cac:PartyLegalEntity>
              <cbc:RegistrationName>
                <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PartyLegalEntity/cbc:RegistrationName/text()" />
              </cbc:RegistrationName>
              <cbc:RegistrationName>
                <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PartyLegalEntity/cbc:RegistrationName/text()" />
              </cbc:RegistrationName>
              <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PartyLegalEntity/text()" />
              <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PartyLegalEntity/text()" />
            </cac:PartyLegalEntity>
            <xsl:value-of select="cac:Delivery/cac:DeliveryParty/text()" />
            <xsl:value-of select="cac:Delivery/cac:DeliveryParty/text()" />
          </cac:DeliveryParty>
          <cac:Shipment>
            <cbc:ID>
              <xsl:if test="cac:Delivery/cac:Shipment/cbc:ID/@schemeID">
                <xsl:attribute name="schemeID">
                  <xsl:value-of select="cac:Delivery/cac:Shipment/cbc:ID/@schemeID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="cac:Delivery/cac:Shipment/cbc:ID/@schemeID">
                <xsl:attribute name="schemeID">
                  <xsl:value-of select="cac:Delivery/cac:Shipment/cbc:ID/@schemeID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="cac:Delivery/cac:Shipment/cbc:ID/@schemeAgencyID">
                <xsl:attribute name="schemeAgencyID">
                  <xsl:value-of select="cac:Delivery/cac:Shipment/cbc:ID/@schemeAgencyID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="cac:Delivery/cac:Shipment/cbc:ID/@schemeAgencyID">
                <xsl:attribute name="schemeAgencyID">
                  <xsl:value-of select="cac:Delivery/cac:Shipment/cbc:ID/@schemeAgencyID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:value-of select="cac:Delivery/cac:Shipment/cbc:ID/text()" />
              <xsl:value-of select="cac:Delivery/cac:Shipment/cbc:ID/text()" />
            </cbc:ID>
            <cac:FreightAllowanceCharge>
              <cbc:ChargeIndicator>
                <xsl:value-of select="cac:Delivery/cac:Shipment/cac:FreightAllowanceCharge/cbc:ChargeIndicator/text()" />
              </cbc:ChargeIndicator>
              <cbc:ChargeIndicator>
                <xsl:value-of select="cac:Delivery/cac:Shipment/cac:FreightAllowanceCharge/cbc:ChargeIndicator/text()" />
              </cbc:ChargeIndicator>
              <cbc:AllowanceChargeReason>
                <xsl:value-of select="cac:Delivery/cac:Shipment/cac:FreightAllowanceCharge/cbc:AllowanceChargeReason/text()" />
              </cbc:AllowanceChargeReason>
              <cbc:AllowanceChargeReason>
                <xsl:value-of select="cac:Delivery/cac:Shipment/cac:FreightAllowanceCharge/cbc:AllowanceChargeReason/text()" />
              </cbc:AllowanceChargeReason>
              <cbc:Amount>
                <xsl:attribute name="currencyID">
                  <xsl:value-of select="cac:Delivery/cac:Shipment/cac:FreightAllowanceCharge/cbc:Amount/@currencyID" />
                </xsl:attribute>
                <xsl:attribute name="currencyID">
                  <xsl:value-of select="cac:Delivery/cac:Shipment/cac:FreightAllowanceCharge/cbc:Amount/@currencyID" />
                </xsl:attribute>
                <xsl:value-of select="cac:Delivery/cac:Shipment/cac:FreightAllowanceCharge/cbc:Amount/text()" />
                <xsl:value-of select="cac:Delivery/cac:Shipment/cac:FreightAllowanceCharge/cbc:Amount/text()" />
              </cbc:Amount>
              <xsl:value-of select="cac:Delivery/cac:Shipment/cac:FreightAllowanceCharge/text()" />
              <xsl:value-of select="cac:Delivery/cac:Shipment/cac:FreightAllowanceCharge/text()" />
            </cac:FreightAllowanceCharge>
            <xsl:value-of select="cac:Delivery/cac:Shipment/text()" />
            <xsl:value-of select="cac:Delivery/cac:Shipment/text()" />
          </cac:Shipment>
          <xsl:value-of select="cac:Delivery/text()" />
          <xsl:value-of select="cac:Delivery/text()" />
        </cac:Delivery>
        <cac:PaymentMeans>
          <cbc:PaymentMeansCode>
            <xsl:value-of select="cac:PaymentMeans/cbc:PaymentMeansCode/text()" />
          </cbc:PaymentMeansCode>
          <cbc:PaymentMeansCode>
            <xsl:value-of select="cac:PaymentMeans/cbc:PaymentMeansCode/text()" />
          </cbc:PaymentMeansCode>
          <cac:PayeeFinancialAccount>
            <cbc:ID>
              <xsl:if test="cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID/@schemeID">
                <xsl:attribute name="schemeID">
                  <xsl:value-of select="cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID/@schemeID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID/@schemeID">
                <xsl:attribute name="schemeID">
                  <xsl:value-of select="cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID/@schemeID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID/@schemeAgencyID">
                <xsl:attribute name="schemeAgencyID">
                  <xsl:value-of select="cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID/@schemeAgencyID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID/@schemeAgencyID">
                <xsl:attribute name="schemeAgencyID">
                  <xsl:value-of select="cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID/@schemeAgencyID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:value-of select="cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID/text()" />
              <xsl:value-of select="cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID/text()" />
            </cbc:ID>
            <xsl:value-of select="cac:PaymentMeans/cac:PayeeFinancialAccount/text()" />
            <xsl:value-of select="cac:PaymentMeans/cac:PayeeFinancialAccount/text()" />
          </cac:PayeeFinancialAccount>
          <xsl:value-of select="cac:PaymentMeans/text()" />
          <xsl:value-of select="cac:PaymentMeans/text()" />
        </cac:PaymentMeans>
        <cac:PaymentTerms>
          <cbc:Note>
            <xsl:value-of select="cac:PaymentTerms/cbc:Note/text()" />
          </cbc:Note>
          <cbc:Note>
            <xsl:value-of select="cac:PaymentTerms/cbc:Note/text()" />
          </cbc:Note>
          <xsl:value-of select="cac:PaymentTerms/text()" />
          <xsl:value-of select="cac:PaymentTerms/text()" />
        </cac:PaymentTerms>
        <cac:PrepaidPayment>
          <cbc:ID>
            <xsl:if test="cac:PrepaidPayment/cbc:ID/@schemeID">
              <xsl:attribute name="schemeID">
                <xsl:value-of select="cac:PrepaidPayment/cbc:ID/@schemeID" />
              </xsl:attribute>
            </xsl:if>
            <xsl:if test="cac:PrepaidPayment/cbc:ID/@schemeID">
              <xsl:attribute name="schemeID">
                <xsl:value-of select="cac:PrepaidPayment/cbc:ID/@schemeID" />
              </xsl:attribute>
            </xsl:if>
            <xsl:if test="cac:PrepaidPayment/cbc:ID/@schemeAgencyID">
              <xsl:attribute name="schemeAgencyID">
                <xsl:value-of select="cac:PrepaidPayment/cbc:ID/@schemeAgencyID" />
              </xsl:attribute>
            </xsl:if>
            <xsl:if test="cac:PrepaidPayment/cbc:ID/@schemeAgencyID">
              <xsl:attribute name="schemeAgencyID">
                <xsl:value-of select="cac:PrepaidPayment/cbc:ID/@schemeAgencyID" />
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="cac:PrepaidPayment/cbc:ID/text()" />
            <xsl:value-of select="cac:PrepaidPayment/cbc:ID/text()" />
          </cbc:ID>
          <cbc:PaidAmount>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:PrepaidPayment/cbc:PaidAmount/@currencyID" />
            </xsl:attribute>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:PrepaidPayment/cbc:PaidAmount/@currencyID" />
            </xsl:attribute>
            <xsl:value-of select="cac:PrepaidPayment/cbc:PaidAmount/text()" />
            <xsl:value-of select="cac:PrepaidPayment/cbc:PaidAmount/text()" />
          </cbc:PaidAmount>
          <cbc:PaidDate>
            <xsl:value-of select="cac:PrepaidPayment/cbc:PaidDate/text()" />
          </cbc:PaidDate>
          <cbc:PaidDate>
            <xsl:value-of select="cac:PrepaidPayment/cbc:PaidDate/text()" />
          </cbc:PaidDate>
          <cbc:PaidTime>
            <xsl:value-of select="cac:PrepaidPayment/cbc:PaidTime/text()" />
          </cbc:PaidTime>
          <cbc:PaidTime>
            <xsl:value-of select="cac:PrepaidPayment/cbc:PaidTime/text()" />
          </cbc:PaidTime>
          <xsl:value-of select="cac:PrepaidPayment/text()" />
          <xsl:value-of select="cac:PrepaidPayment/text()" />
        </cac:PrepaidPayment>
        <xsl:for-each select="cac:AllowanceCharge">
          <cac:AllowanceCharge>
            <cbc:ChargeIndicator>
              <xsl:value-of select="cbc:ChargeIndicator/text()" />
            </cbc:ChargeIndicator>
            <cbc:ChargeIndicator>
              <xsl:value-of select="../../../cac:AllowanceCharge/cbc:ChargeIndicator/text()" />
            </cbc:ChargeIndicator>
            <cbc:AllowanceChargeReason>
              <xsl:value-of select="cbc:AllowanceChargeReason/text()" />
            </cbc:AllowanceChargeReason>
            <cbc:AllowanceChargeReason>
              <xsl:value-of select="../../../cac:AllowanceCharge/cbc:AllowanceChargeReason/text()" />
            </cbc:AllowanceChargeReason>
            <cbc:Amount>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cbc:Amount/@currencyID" />
              </xsl:attribute>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="../../../cac:AllowanceCharge/cbc:Amount/@currencyID" />
              </xsl:attribute>
              <xsl:value-of select="cbc:Amount/text()" />
              <xsl:value-of select="../../../cac:AllowanceCharge/cbc:Amount/text()" />
            </cbc:Amount>
            <xsl:value-of select="./text()" />
            <xsl:value-of select="../../../cac:AllowanceCharge/text()" />
          </cac:AllowanceCharge>
        </xsl:for-each>
        <cac:TaxTotal>
          <cbc:TaxAmount>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:TaxTotal/cbc:TaxAmount/@currencyID" />
            </xsl:attribute>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:TaxTotal/cbc:TaxAmount/@currencyID" />
            </xsl:attribute>
            <xsl:value-of select="cac:TaxTotal/cbc:TaxAmount/text()" />
            <xsl:value-of select="cac:TaxTotal/cbc:TaxAmount/text()" />
          </cbc:TaxAmount>
          <cac:TaxSubtotal>
            <cbc:TaxableAmount>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount/@currencyID" />
              </xsl:attribute>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount/@currencyID" />
              </xsl:attribute>
              <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount/text()" />
              <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount/text()" />
            </cbc:TaxableAmount>
            <cbc:TaxAmount>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/@currencyID" />
              </xsl:attribute>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/@currencyID" />
              </xsl:attribute>
              <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/text()" />
              <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/text()" />
            </cbc:TaxAmount>
            <cac:TaxCategory>
              <cbc:ID>
                <xsl:if test="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeID">
                  <xsl:attribute name="schemeID">
                    <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeID">
                  <xsl:attribute name="schemeID">
                    <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeAgencyID">
                  <xsl:attribute name="schemeAgencyID">
                    <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeAgencyID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeAgencyID">
                  <xsl:attribute name="schemeAgencyID">
                    <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeAgencyID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/text()" />
                <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/text()" />
              </cbc:ID>
              <cac:TaxScheme>
                <cbc:ID>
                  <xsl:if test="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeID">
                    <xsl:attribute name="schemeID">
                      <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeID">
                    <xsl:attribute name="schemeID">
                      <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeAgencyID">
                    <xsl:attribute name="schemeAgencyID">
                      <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeAgencyID">
                    <xsl:attribute name="schemeAgencyID">
                      <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/text()" />
                  <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/text()" />
                </cbc:ID>
                <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/text()" />
                <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/text()" />
              </cac:TaxScheme>
              <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/text()" />
              <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/text()" />
            </cac:TaxCategory>
            <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/text()" />
            <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/text()" />
          </cac:TaxSubtotal>
          <xsl:value-of select="cac:TaxTotal/text()" />
          <xsl:value-of select="cac:TaxTotal/text()" />
        </cac:TaxTotal>
        <cac:LegalMonetaryTotal>
          <cbc:LineExtensionAmount>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID" />
            </xsl:attribute>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID" />
            </xsl:attribute>
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:LineExtensionAmount/text()" />
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:LineExtensionAmount/text()" />
          </cbc:LineExtensionAmount>
          <cbc:TaxExclusiveAmount>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount/@currencyID" />
            </xsl:attribute>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount/@currencyID" />
            </xsl:attribute>
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount/text()" />
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount/text()" />
          </cbc:TaxExclusiveAmount>
          <cbc:TaxInclusiveAmount>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID" />
            </xsl:attribute>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID" />
            </xsl:attribute>
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/text()" />
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/text()" />
          </cbc:TaxInclusiveAmount>
          <cbc:AllowanceTotalAmount>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID" />
            </xsl:attribute>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID" />
            </xsl:attribute>
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/text()" />
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/text()" />
          </cbc:AllowanceTotalAmount>
          <cbc:ChargeTotalAmount>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:ChargeTotalAmount/@currencyID" />
            </xsl:attribute>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:ChargeTotalAmount/@currencyID" />
            </xsl:attribute>
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:ChargeTotalAmount/text()" />
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:ChargeTotalAmount/text()" />
          </cbc:ChargeTotalAmount>
          <cbc:PayableRoundingAmount>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:PayableRoundingAmount/@currencyID" />
            </xsl:attribute>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:PayableRoundingAmount/@currencyID" />
            </xsl:attribute>
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:PayableRoundingAmount/text()" />
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:PayableRoundingAmount/text()" />
          </cbc:PayableRoundingAmount>
          <cbc:PayableAmount>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID" />
            </xsl:attribute>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID" />
            </xsl:attribute>
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:PayableAmount/text()" />
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:PayableAmount/text()" />
          </cbc:PayableAmount>
          <xsl:value-of select="cac:LegalMonetaryTotal/text()" />
          <xsl:value-of select="cac:LegalMonetaryTotal/text()" />
        </cac:LegalMonetaryTotal>
        <cac:InvoiceLine>
          <cbc:ID>
            <xsl:if test="cac:InvoiceLine/cbc:ID/@schemeID">
              <xsl:attribute name="schemeID">
                <xsl:value-of select="cac:InvoiceLine/cbc:ID/@schemeID" />
              </xsl:attribute>
            </xsl:if>
            <xsl:if test="cac:InvoiceLine/cbc:ID/@schemeID">
              <xsl:attribute name="schemeID">
                <xsl:value-of select="cac:InvoiceLine/cbc:ID/@schemeID" />
              </xsl:attribute>
            </xsl:if>
            <xsl:if test="cac:InvoiceLine/cbc:ID/@schemeAgencyID">
              <xsl:attribute name="schemeAgencyID">
                <xsl:value-of select="cac:InvoiceLine/cbc:ID/@schemeAgencyID" />
              </xsl:attribute>
            </xsl:if>
            <xsl:if test="cac:InvoiceLine/cbc:ID/@schemeAgencyID">
              <xsl:attribute name="schemeAgencyID">
                <xsl:value-of select="cac:InvoiceLine/cbc:ID/@schemeAgencyID" />
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="cac:InvoiceLine/cbc:ID/text()" />
            <xsl:value-of select="cac:InvoiceLine/cbc:ID/text()" />
          </cbc:ID>
          <cbc:InvoicedQuantity>
            <xsl:attribute name="unitCode">
              <xsl:value-of select="cac:InvoiceLine/cbc:InvoicedQuantity/@unitCode" />
            </xsl:attribute>
            <xsl:attribute name="unitCode">
              <xsl:value-of select="cac:InvoiceLine/cbc:InvoicedQuantity/@unitCode" />
            </xsl:attribute>
            <xsl:value-of select="cac:InvoiceLine/cbc:InvoicedQuantity/text()" />
            <xsl:value-of select="cac:InvoiceLine/cbc:InvoicedQuantity/text()" />
          </cbc:InvoicedQuantity>
          <cbc:LineExtensionAmount>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID" />
            </xsl:attribute>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID" />
            </xsl:attribute>
            <xsl:value-of select="cac:InvoiceLine/cbc:LineExtensionAmount/text()" />
            <xsl:value-of select="cac:InvoiceLine/cbc:LineExtensionAmount/text()" />
          </cbc:LineExtensionAmount>
          <xsl:for-each select="cac:InvoiceLine/cac:AllowanceCharge">
            <cac:AllowanceCharge>
              <cbc:ChargeIndicator>
                <xsl:value-of select="cbc:ChargeIndicator/text()" />
              </cbc:ChargeIndicator>
              <cbc:ChargeIndicator>
                <xsl:value-of select="../../../../cac:InvoiceLine/cac:AllowanceCharge/cbc:ChargeIndicator/text()" />
              </cbc:ChargeIndicator>
              <cbc:AllowanceChargeReason>
                <xsl:value-of select="cbc:AllowanceChargeReason/text()" />
              </cbc:AllowanceChargeReason>
              <cbc:AllowanceChargeReason>
                <xsl:value-of select="../../../../cac:InvoiceLine/cac:AllowanceCharge/cbc:AllowanceChargeReason/text()" />
              </cbc:AllowanceChargeReason>
              <cbc:MultiplierFactorNumeric>
                <xsl:value-of select="cbc:MultiplierFactorNumeric/text()" />
              </cbc:MultiplierFactorNumeric>
              <cbc:MultiplierFactorNumeric>
                <xsl:value-of select="../../../../cac:InvoiceLine/cac:AllowanceCharge/cbc:MultiplierFactorNumeric/text()" />
              </cbc:MultiplierFactorNumeric>
              <cbc:Amount>
                <xsl:attribute name="currencyID">
                  <xsl:value-of select="cbc:Amount/@currencyID" />
                </xsl:attribute>
                <xsl:attribute name="currencyID">
                  <xsl:value-of select="../../../../cac:InvoiceLine/cac:AllowanceCharge/cbc:Amount/@currencyID" />
                </xsl:attribute>
                <xsl:value-of select="cbc:Amount/text()" />
                <xsl:value-of select="../../../../cac:InvoiceLine/cac:AllowanceCharge/cbc:Amount/text()" />
              </cbc:Amount>
              <xsl:value-of select="./text()" />
              <xsl:value-of select="../../../../cac:InvoiceLine/cac:AllowanceCharge/text()" />
            </cac:AllowanceCharge>
          </xsl:for-each>
          <cac:TaxTotal>
            <cbc:TaxAmount>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cbc:TaxAmount/@currencyID" />
              </xsl:attribute>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cbc:TaxAmount/@currencyID" />
              </xsl:attribute>
              <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cbc:TaxAmount/text()" />
              <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cbc:TaxAmount/text()" />
            </cbc:TaxAmount>
            <cac:TaxSubtotal>
              <cbc:TaxableAmount>
                <xsl:attribute name="currencyID">
                  <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount/@currencyID" />
                </xsl:attribute>
                <xsl:attribute name="currencyID">
                  <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount/@currencyID" />
                </xsl:attribute>
                <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount/text()" />
                <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount/text()" />
              </cbc:TaxableAmount>
              <cbc:TaxAmount>
                <xsl:attribute name="currencyID">
                  <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/@currencyID" />
                </xsl:attribute>
                <xsl:attribute name="currencyID">
                  <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/@currencyID" />
                </xsl:attribute>
                <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/text()" />
                <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/text()" />
              </cbc:TaxAmount>
              <cbc:Percent>
                <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cbc:Percent/text()" />
              </cbc:Percent>
              <cbc:Percent>
                <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cbc:Percent/text()" />
              </cbc:Percent>
              <cac:TaxCategory>
                <cbc:ID>
                  <xsl:if test="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeID">
                    <xsl:attribute name="schemeID">
                      <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeID">
                    <xsl:attribute name="schemeID">
                      <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeAgencyID">
                    <xsl:attribute name="schemeAgencyID">
                      <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeAgencyID">
                    <xsl:attribute name="schemeAgencyID">
                      <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/text()" />
                  <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/text()" />
                </cbc:ID>
                <cbc:TaxExemptionReason>
                  <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason/text()" />
                </cbc:TaxExemptionReason>
                <cbc:TaxExemptionReason>
                  <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason/text()" />
                </cbc:TaxExemptionReason>
                <cac:TaxScheme>
                  <cbc:ID>
                    <xsl:if test="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeID">
                      <xsl:attribute name="schemeID">
                        <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeID" />
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeID">
                      <xsl:attribute name="schemeID">
                        <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeID" />
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeAgencyID">
                      <xsl:attribute name="schemeAgencyID">
                        <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeAgencyID" />
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeAgencyID">
                      <xsl:attribute name="schemeAgencyID">
                        <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeAgencyID" />
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/text()" />
                    <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/text()" />
                  </cbc:ID>
                  <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/text()" />
                  <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/text()" />
                </cac:TaxScheme>
                <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/text()" />
                <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/text()" />
              </cac:TaxCategory>
              <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/text()" />
              <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/text()" />
            </cac:TaxSubtotal>
            <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/text()" />
            <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/text()" />
          </cac:TaxTotal>
          <cac:Item>
            <cbc:Description>
              <xsl:value-of select="cac:InvoiceLine/cac:Item/cbc:Description/text()" />
            </cbc:Description>
            <cbc:Description>
              <xsl:value-of select="cac:InvoiceLine/cac:Item/cbc:Description/text()" />
            </cbc:Description>
            <cac:OriginCountry>
              <cbc:IdentificationCode>
                <xsl:if test="cac:InvoiceLine/cac:Item/cac:OriginCountry/cbc:IdentificationCode/@listID">
                  <xsl:attribute name="listID">
                    <xsl:value-of select="cac:InvoiceLine/cac:Item/cac:OriginCountry/cbc:IdentificationCode/@listID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="cac:InvoiceLine/cac:Item/cac:OriginCountry/cbc:IdentificationCode/@listID">
                  <xsl:attribute name="listID">
                    <xsl:value-of select="cac:InvoiceLine/cac:Item/cac:OriginCountry/cbc:IdentificationCode/@listID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="cac:InvoiceLine/cac:Item/cac:OriginCountry/cbc:IdentificationCode/@listAgencyID">
                  <xsl:attribute name="listAgencyID">
                    <xsl:value-of select="cac:InvoiceLine/cac:Item/cac:OriginCountry/cbc:IdentificationCode/@listAgencyID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="cac:InvoiceLine/cac:Item/cac:OriginCountry/cbc:IdentificationCode/@listAgencyID">
                  <xsl:attribute name="listAgencyID">
                    <xsl:value-of select="cac:InvoiceLine/cac:Item/cac:OriginCountry/cbc:IdentificationCode/@listAgencyID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="cac:InvoiceLine/cac:Item/cac:OriginCountry/cbc:IdentificationCode/text()" />
                <xsl:value-of select="cac:InvoiceLine/cac:Item/cac:OriginCountry/cbc:IdentificationCode/text()" />
              </cbc:IdentificationCode>
              <xsl:value-of select="cac:InvoiceLine/cac:Item/cac:OriginCountry/text()" />
              <xsl:value-of select="cac:InvoiceLine/cac:Item/cac:OriginCountry/text()" />
            </cac:OriginCountry>
            <xsl:for-each select="cac:InvoiceLine/cac:Item/cac:CommodityClassification">
              <cac:CommodityClassification>
                <cbc:ItemClassificationCode>
                  <xsl:attribute name="listID">
                    <xsl:value-of select="cbc:ItemClassificationCode/@listID" />
                  </xsl:attribute>
                  <xsl:attribute name="listID">
                    <xsl:value-of select="../../../../../cac:InvoiceLine/cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode/@listID" />
                  </xsl:attribute>
                  <xsl:value-of select="cbc:ItemClassificationCode/text()" />
                  <xsl:value-of select="../../../../../cac:InvoiceLine/cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode/text()" />
                </cbc:ItemClassificationCode>
                <xsl:value-of select="./text()" />
                <xsl:value-of select="../../../../../cac:InvoiceLine/cac:Item/cac:CommodityClassification/text()" />
              </cac:CommodityClassification>
            </xsl:for-each>
            <xsl:value-of select="cac:InvoiceLine/cac:Item/text()" />
            <xsl:value-of select="cac:InvoiceLine/cac:Item/text()" />
          </cac:Item>
          <cac:Price>
            <cbc:PriceAmount>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID" />
              </xsl:attribute>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID" />
              </xsl:attribute>
              <xsl:value-of select="cac:InvoiceLine/cac:Price/cbc:PriceAmount/text()" />
              <xsl:value-of select="cac:InvoiceLine/cac:Price/cbc:PriceAmount/text()" />
            </cbc:PriceAmount>
            <xsl:value-of select="cac:InvoiceLine/cac:Price/text()" />
            <xsl:value-of select="cac:InvoiceLine/cac:Price/text()" />
          </cac:Price>
          <cac:ItemPriceExtension>
            <cbc:Amount>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cac:InvoiceLine/cac:ItemPriceExtension/cbc:Amount/@currencyID" />
              </xsl:attribute>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cac:InvoiceLine/cac:ItemPriceExtension/cbc:Amount/@currencyID" />
              </xsl:attribute>
              <xsl:value-of select="cac:InvoiceLine/cac:ItemPriceExtension/cbc:Amount/text()" />
              <xsl:value-of select="cac:InvoiceLine/cac:ItemPriceExtension/cbc:Amount/text()" />
            </cbc:Amount>
            <xsl:value-of select="cac:InvoiceLine/cac:ItemPriceExtension/text()" />
            <xsl:value-of select="cac:InvoiceLine/cac:ItemPriceExtension/text()" />
          </cac:ItemPriceExtension>
          <xsl:value-of select="cac:InvoiceLine/text()" />
          <xsl:value-of select="cac:InvoiceLine/text()" />
        </cac:InvoiceLine>
      </Invoice>
    </xsl:for-each>

    <xsl:for-each select="InputMessagePart_1/Invoice">
      <Invoice>
        <cbc:ID>
          <xsl:value-of select="ID/text()" />
        </cbc:ID>
        <cbc:IssueDate>
          <xsl:value-of select="cbc:IssueDate/text()" />
        </cbc:IssueDate>
        <cbc:IssueDate>
          <xsl:value-of select="cbc:IssueDate/text()" />
        </cbc:IssueDate>
        <cbc:IssueTime>
          <xsl:value-of select="cbc:IssueTime/text()" />
        </cbc:IssueTime>
        <cbc:IssueTime>
          <xsl:value-of select="cbc:IssueTime/text()" />
        </cbc:IssueTime>
        <cbc:InvoiceTypeCode>
          <xsl:attribute name="listVersionID">
            <xsl:value-of select="cbc:InvoiceTypeCode/@listVersionID" />
          </xsl:attribute>
          <xsl:attribute name="listVersionID">
            <xsl:value-of select="cbc:InvoiceTypeCode/@listVersionID" />
          </xsl:attribute>
          <xsl:value-of select="cbc:InvoiceTypeCode/text()" />
          <xsl:value-of select="cbc:InvoiceTypeCode/text()" />
        </cbc:InvoiceTypeCode>
        <cbc:DocumentCurrencyCode>
          <xsl:value-of select="cbc:DocumentCurrencyCode/text()" />
        </cbc:DocumentCurrencyCode>
        <cbc:DocumentCurrencyCode>
          <xsl:value-of select="cbc:DocumentCurrencyCode/text()" />
        </cbc:DocumentCurrencyCode>
        <cbc:TaxCurrencyCode>
          <xsl:value-of select="cbc:TaxCurrencyCode/text()" />
        </cbc:TaxCurrencyCode>
        <cbc:TaxCurrencyCode>
          <xsl:value-of select="cbc:TaxCurrencyCode/text()" />
        </cbc:TaxCurrencyCode>
        <cac:InvoicePeriod>
          <cbc:StartDate>
            <xsl:value-of select="cac:InvoicePeriod/cbc:StartDate/text()" />
          </cbc:StartDate>
          <cbc:StartDate>
            <xsl:value-of select="cac:InvoicePeriod/cbc:StartDate/text()" />
          </cbc:StartDate>
          <cbc:EndDate>
            <xsl:value-of select="cac:InvoicePeriod/cbc:EndDate/text()" />
          </cbc:EndDate>
          <cbc:EndDate>
            <xsl:value-of select="cac:InvoicePeriod/cbc:EndDate/text()" />
          </cbc:EndDate>
          <cbc:Description>
            <xsl:value-of select="cac:InvoicePeriod/cbc:Description/text()" />
          </cbc:Description>
          <cbc:Description>
            <xsl:value-of select="cac:InvoicePeriod/cbc:Description/text()" />
          </cbc:Description>
          <xsl:value-of select="cac:InvoicePeriod/text()" />
          <xsl:value-of select="cac:InvoicePeriod/text()" />
        </cac:InvoicePeriod>
        <cac:BillingReference>
          <cac:AdditionalDocumentReference>
            <cbc:ID>
              <xsl:if test="cac:BillingReference/cac:AdditionalDocumentReference/cbc:ID/@schemeID">
                <xsl:attribute name="schemeID">
                  <xsl:value-of select="cac:BillingReference/cac:AdditionalDocumentReference/cbc:ID/@schemeID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="cac:BillingReference/cac:AdditionalDocumentReference/cbc:ID/@schemeID">
                <xsl:attribute name="schemeID">
                  <xsl:value-of select="cac:BillingReference/cac:AdditionalDocumentReference/cbc:ID/@schemeID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="cac:BillingReference/cac:AdditionalDocumentReference/cbc:ID/@schemeAgencyID">
                <xsl:attribute name="schemeAgencyID">
                  <xsl:value-of select="cac:BillingReference/cac:AdditionalDocumentReference/cbc:ID/@schemeAgencyID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="cac:BillingReference/cac:AdditionalDocumentReference/cbc:ID/@schemeAgencyID">
                <xsl:attribute name="schemeAgencyID">
                  <xsl:value-of select="cac:BillingReference/cac:AdditionalDocumentReference/cbc:ID/@schemeAgencyID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:value-of select="cac:BillingReference/cac:AdditionalDocumentReference/cbc:ID/text()" />
              <xsl:value-of select="cac:BillingReference/cac:AdditionalDocumentReference/cbc:ID/text()" />
            </cbc:ID>
            <xsl:value-of select="cac:BillingReference/cac:AdditionalDocumentReference/text()" />
            <xsl:value-of select="cac:BillingReference/cac:AdditionalDocumentReference/text()" />
          </cac:AdditionalDocumentReference>
          <xsl:for-each select="cac:BillingReference/cac:InvoiceDocumentReference">
            <cac:InvoiceDocumentReference>
              <cbc:ID>
                <xsl:if test="cbc:ID/@schemeID">
                  <xsl:attribute name="schemeID">
                    <xsl:value-of select="cbc:ID/@schemeID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="../../../../cac:BillingReference/cac:InvoiceDocumentReference/cbc:ID/@schemeID">
                  <xsl:attribute name="schemeID">
                    <xsl:value-of select="../../../../cac:BillingReference/cac:InvoiceDocumentReference/cbc:ID/@schemeID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="cbc:ID/@schemeAgencyID">
                  <xsl:attribute name="schemeAgencyID">
                    <xsl:value-of select="cbc:ID/@schemeAgencyID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="../../../../cac:BillingReference/cac:InvoiceDocumentReference/cbc:ID/@schemeAgencyID">
                  <xsl:attribute name="schemeAgencyID">
                    <xsl:value-of select="../../../../cac:BillingReference/cac:InvoiceDocumentReference/cbc:ID/@schemeAgencyID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="cbc:ID/text()" />
                <xsl:value-of select="../../../../cac:BillingReference/cac:InvoiceDocumentReference/cbc:ID/text()" />
              </cbc:ID>
              <cbc:UUID>
                <xsl:value-of select="cbc:UUID/text()" />
              </cbc:UUID>
              <cbc:UUID>
                <xsl:value-of select="../../../../cac:BillingReference/cac:InvoiceDocumentReference/cbc:UUID/text()" />
              </cbc:UUID>
              <xsl:value-of select="./text()" />
              <xsl:if test="../../../../cac:BillingReference/cac:InvoiceDocumentReference">
                <xsl:value-of select="../../../../cac:BillingReference/cac:InvoiceDocumentReference/text()" />
              </xsl:if>
            </cac:InvoiceDocumentReference>
          </xsl:for-each>
          <xsl:value-of select="cac:BillingReference/text()" />
          <xsl:value-of select="cac:BillingReference/text()" />
        </cac:BillingReference>
        <xsl:for-each select="cac:AdditionalDocumentReference">
          <cac:AdditionalDocumentReference>
            <cbc:ID>
              <xsl:if test="cbc:ID/@schemeID">
                <xsl:attribute name="schemeID">
                  <xsl:value-of select="cbc:ID/@schemeID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="../../../cac:AdditionalDocumentReference/cbc:ID/@schemeID">
                <xsl:attribute name="schemeID">
                  <xsl:value-of select="../../../cac:AdditionalDocumentReference/cbc:ID/@schemeID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="cbc:ID/@schemeAgencyID">
                <xsl:attribute name="schemeAgencyID">
                  <xsl:value-of select="cbc:ID/@schemeAgencyID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="../../../cac:AdditionalDocumentReference/cbc:ID/@schemeAgencyID">
                <xsl:attribute name="schemeAgencyID">
                  <xsl:value-of select="../../../cac:AdditionalDocumentReference/cbc:ID/@schemeAgencyID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:value-of select="cbc:ID/text()" />
              <xsl:value-of select="../../../cac:AdditionalDocumentReference/cbc:ID/text()" />
            </cbc:ID>
            <xsl:if test="cbc:DocumentType">
              <cbc:DocumentType>
                <xsl:value-of select="cbc:DocumentType/text()" />
              </cbc:DocumentType>
            </xsl:if>
            <xsl:if test="../../../cac:AdditionalDocumentReference/cbc:DocumentType">
              <cbc:DocumentType>
                <xsl:value-of select="../../../cac:AdditionalDocumentReference/cbc:DocumentType/text()" />
              </cbc:DocumentType>
            </xsl:if>
            <xsl:if test="cbc:DocumentDescription">
              <cbc:DocumentDescription>
                <xsl:value-of select="cbc:DocumentDescription/text()" />
              </cbc:DocumentDescription>
            </xsl:if>
            <xsl:if test="../../../cac:AdditionalDocumentReference/cbc:DocumentDescription">
              <cbc:DocumentDescription>
                <xsl:value-of select="../../../cac:AdditionalDocumentReference/cbc:DocumentDescription/text()" />
              </cbc:DocumentDescription>
            </xsl:if>
            <xsl:value-of select="./text()" />
            <xsl:value-of select="../../../cac:AdditionalDocumentReference/text()" />
          </cac:AdditionalDocumentReference>
        </xsl:for-each>
        <cac:AccountingSupplierParty>
          <cbc:AdditionalAccountID>
            <xsl:attribute name="schemeAgencyName">
              <xsl:value-of select="cac:AccountingSupplierParty/cbc:AdditionalAccountID/@schemeAgencyName" />
            </xsl:attribute>
            <xsl:attribute name="schemeAgencyName">
              <xsl:value-of select="cac:AccountingSupplierParty/cbc:AdditionalAccountID/@schemeAgencyName" />
            </xsl:attribute>
            <xsl:value-of select="cac:AccountingSupplierParty/cbc:AdditionalAccountID/text()" />
            <xsl:value-of select="cac:AccountingSupplierParty/cbc:AdditionalAccountID/text()" />
          </cbc:AdditionalAccountID>
          <cac:Party>
            <cbc:IndustryClassificationCode>
              <xsl:attribute name="name">
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cbc:IndustryClassificationCode/@name" />
              </xsl:attribute>
              <xsl:attribute name="name">
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cbc:IndustryClassificationCode/@name" />
              </xsl:attribute>
              <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cbc:IndustryClassificationCode/text()" />
              <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cbc:IndustryClassificationCode/text()" />
            </cbc:IndustryClassificationCode>
            <xsl:for-each select="cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification">
              <cac:PartyIdentification>
                <cbc:ID>
                  <xsl:if test="cbc:ID/@schemeID">
                    <xsl:attribute name="schemeID">
                      <xsl:value-of select="cbc:ID/@schemeID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="../../../../../cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID/@schemeID">
                    <xsl:attribute name="schemeID">
                      <xsl:value-of select="../../../../../cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID/@schemeID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cbc:ID/@schemeAgencyID">
                    <xsl:attribute name="schemeAgencyID">
                      <xsl:value-of select="cbc:ID/@schemeAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="../../../../../cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID/@schemeAgencyID">
                    <xsl:attribute name="schemeAgencyID">
                      <xsl:value-of select="../../../../../cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID/@schemeAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="cbc:ID/text()" />
                  <xsl:value-of select="../../../../../cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID/text()" />
                </cbc:ID>
                <xsl:value-of select="./text()" />
                <xsl:value-of select="../../../../../cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/text()" />
              </cac:PartyIdentification>
            </xsl:for-each>
            <cac:PostalAddress>
              <cbc:CityName>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:CityName/text()" />
              </cbc:CityName>
              <cbc:CityName>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:CityName/text()" />
              </cbc:CityName>
              <cbc:PostalZone>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:PostalZone/text()" />
              </cbc:PostalZone>
              <cbc:PostalZone>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:PostalZone/text()" />
              </cbc:PostalZone>
              <cbc:CountrySubentityCode>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:CountrySubentityCode/text()" />
              </cbc:CountrySubentityCode>
              <cbc:CountrySubentityCode>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:CountrySubentityCode/text()" />
              </cbc:CountrySubentityCode>
              <xsl:for-each select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:AddressLine">
                <cac:AddressLine>
                  <cbc:Line>
                    <xsl:value-of select="cbc:Line/text()" />
                  </cbc:Line>
                  <cbc:Line>
                    <xsl:value-of select="../../../../../../cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:AddressLine/cbc:Line/text()" />
                  </cbc:Line>
                  <xsl:value-of select="./text()" />
                  <xsl:value-of select="../../../../../../cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:AddressLine/text()" />
                </cac:AddressLine>
              </xsl:for-each>
              <cac:Country>
                <cbc:IdentificationCode>
                  <xsl:if test="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID">
                    <xsl:attribute name="listID">
                      <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID">
                    <xsl:attribute name="listID">
                      <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID">
                    <xsl:attribute name="listAgencyID">
                      <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID">
                    <xsl:attribute name="listAgencyID">
                      <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/text()" />
                  <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/text()" />
                </cbc:IdentificationCode>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/text()" />
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/text()" />
              </cac:Country>
              <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/text()" />
              <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/text()" />
            </cac:PostalAddress>
            <cac:PartyLegalEntity>
              <cbc:RegistrationName>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName/text()" />
              </cbc:RegistrationName>
              <cbc:RegistrationName>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName/text()" />
              </cbc:RegistrationName>
              <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/text()" />
              <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/text()" />
            </cac:PartyLegalEntity>
            <cac:Contact>
              <cbc:Telephone>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telephone/text()" />
              </cbc:Telephone>
              <cbc:Telephone>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telephone/text()" />
              </cbc:Telephone>
              <cbc:ElectronicMail>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail/text()" />
              </cbc:ElectronicMail>
              <cbc:ElectronicMail>
                <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail/text()" />
              </cbc:ElectronicMail>
              <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:Contact/text()" />
              <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/cac:Contact/text()" />
            </cac:Contact>
            <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/text()" />
            <xsl:value-of select="cac:AccountingSupplierParty/cac:Party/text()" />
          </cac:Party>
          <xsl:value-of select="cac:AccountingSupplierParty/text()" />
          <xsl:value-of select="cac:AccountingSupplierParty/text()" />
        </cac:AccountingSupplierParty>
        <cac:AccountingCustomerParty>
          <cac:Party>
            <xsl:for-each select="cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification">
              <cac:PartyIdentification>
                <cbc:ID>
                  <xsl:if test="cbc:ID/@schemeID">
                    <xsl:attribute name="schemeID">
                      <xsl:value-of select="cbc:ID/@schemeID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="../../../../../cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID/@schemeID">
                    <xsl:attribute name="schemeID">
                      <xsl:value-of select="../../../../../cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID/@schemeID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cbc:ID/@schemeAgencyID">
                    <xsl:attribute name="schemeAgencyID">
                      <xsl:value-of select="cbc:ID/@schemeAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="../../../../../cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID/@schemeAgencyID">
                    <xsl:attribute name="schemeAgencyID">
                      <xsl:value-of select="../../../../../cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID/@schemeAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="cbc:ID/text()" />
                  <xsl:value-of select="../../../../../cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID/text()" />
                </cbc:ID>
                <xsl:value-of select="./text()" />
                <xsl:value-of select="../../../../../cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/text()" />
              </cac:PartyIdentification>
            </xsl:for-each>
            <cac:PostalAddress>
              <cbc:CityName>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:CityName/text()" />
              </cbc:CityName>
              <cbc:CityName>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:CityName/text()" />
              </cbc:CityName>
              <cbc:PostalZone>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:PostalZone/text()" />
              </cbc:PostalZone>
              <cbc:PostalZone>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:PostalZone/text()" />
              </cbc:PostalZone>
              <cbc:CountrySubentityCode>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:CountrySubentityCode/text()" />
              </cbc:CountrySubentityCode>
              <cbc:CountrySubentityCode>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:CountrySubentityCode/text()" />
              </cbc:CountrySubentityCode>
              <xsl:for-each select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:AddressLine">
                <cac:AddressLine>
                  <cbc:Line>
                    <xsl:value-of select="cbc:Line/text()" />
                  </cbc:Line>
                  <cbc:Line>
                    <xsl:value-of select="../../../../../../cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:AddressLine/cbc:Line/text()" />
                  </cbc:Line>
                  <xsl:value-of select="./text()" />
                  <xsl:value-of select="../../../../../../cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:AddressLine/text()" />
                </cac:AddressLine>
              </xsl:for-each>
              <cac:Country>
                <cbc:IdentificationCode>
                  <xsl:if test="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID">
                    <xsl:attribute name="listID">
                      <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID">
                    <xsl:attribute name="listID">
                      <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID">
                    <xsl:attribute name="listAgencyID">
                      <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID">
                    <xsl:attribute name="listAgencyID">
                      <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/text()" />
                  <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode/text()" />
                </cbc:IdentificationCode>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/text()" />
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/text()" />
              </cac:Country>
              <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/text()" />
              <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/text()" />
            </cac:PostalAddress>
            <cac:PartyLegalEntity>
              <cbc:RegistrationName>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName/text()" />
              </cbc:RegistrationName>
              <cbc:RegistrationName>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName/text()" />
              </cbc:RegistrationName>
              <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/text()" />
              <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/text()" />
            </cac:PartyLegalEntity>
            <cac:Contact>
              <cbc:Telephone>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:Telephone/text()" />
              </cbc:Telephone>
              <cbc:Telephone>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:Telephone/text()" />
              </cbc:Telephone>
              <cbc:ElectronicMail>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:ElectronicMail/text()" />
              </cbc:ElectronicMail>
              <cbc:ElectronicMail>
                <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:ElectronicMail/text()" />
              </cbc:ElectronicMail>
              <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:Contact/text()" />
              <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/cac:Contact/text()" />
            </cac:Contact>
            <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/text()" />
            <xsl:value-of select="cac:AccountingCustomerParty/cac:Party/text()" />
          </cac:Party>
          <xsl:value-of select="cac:AccountingCustomerParty/text()" />
          <xsl:value-of select="cac:AccountingCustomerParty/text()" />
        </cac:AccountingCustomerParty>
        <cac:Delivery>
          <cac:DeliveryParty>
            <xsl:for-each select="cac:Delivery/cac:DeliveryParty/cac:PartyIdentification">
              <cac:PartyIdentification>
                <cbc:ID>
                  <xsl:if test="cbc:ID/@schemeID">
                    <xsl:attribute name="schemeID">
                      <xsl:value-of select="cbc:ID/@schemeID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="../../../../../cac:Delivery/cac:DeliveryParty/cac:PartyIdentification/cbc:ID/@schemeID">
                    <xsl:attribute name="schemeID">
                      <xsl:value-of select="../../../../../cac:Delivery/cac:DeliveryParty/cac:PartyIdentification/cbc:ID/@schemeID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cbc:ID/@schemeAgencyID">
                    <xsl:attribute name="schemeAgencyID">
                      <xsl:value-of select="cbc:ID/@schemeAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="../../../../../cac:Delivery/cac:DeliveryParty/cac:PartyIdentification/cbc:ID/@schemeAgencyID">
                    <xsl:attribute name="schemeAgencyID">
                      <xsl:value-of select="../../../../../cac:Delivery/cac:DeliveryParty/cac:PartyIdentification/cbc:ID/@schemeAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="cbc:ID/text()" />
                  <xsl:value-of select="../../../../../cac:Delivery/cac:DeliveryParty/cac:PartyIdentification/cbc:ID/text()" />
                </cbc:ID>
                <xsl:value-of select="./text()" />
                <xsl:value-of select="../../../../../cac:Delivery/cac:DeliveryParty/cac:PartyIdentification/text()" />
              </cac:PartyIdentification>
            </xsl:for-each>
            <cac:PostalAddress>
              <cbc:CityName>
                <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cbc:CityName/text()" />
              </cbc:CityName>
              <cbc:CityName>
                <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cbc:CityName/text()" />
              </cbc:CityName>
              <cbc:PostalZone>
                <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cbc:PostalZone/text()" />
              </cbc:PostalZone>
              <cbc:PostalZone>
                <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cbc:PostalZone/text()" />
              </cbc:PostalZone>
              <cbc:CountrySubentityCode>
                <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cbc:CountrySubentityCode/text()" />
              </cbc:CountrySubentityCode>
              <cbc:CountrySubentityCode>
                <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cbc:CountrySubentityCode/text()" />
              </cbc:CountrySubentityCode>
              <xsl:for-each select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:AddressLine">
                <cac:AddressLine>
                  <cbc:Line>
                    <xsl:value-of select="cbc:Line/text()" />
                  </cbc:Line>
                  <cbc:Line>
                    <xsl:value-of select="../../../../../../cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:AddressLine/cbc:Line/text()" />
                  </cbc:Line>
                  <xsl:value-of select="./text()" />
                  <xsl:value-of select="../../../../../../cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:AddressLine/text()" />
                </cac:AddressLine>
              </xsl:for-each>
              <cac:Country>
                <cbc:IdentificationCode>
                  <xsl:if test="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID">
                    <xsl:attribute name="listID">
                      <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID">
                    <xsl:attribute name="listID">
                      <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID">
                    <xsl:attribute name="listAgencyID">
                      <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID">
                    <xsl:attribute name="listAgencyID">
                      <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode/@listAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode/text()" />
                  <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode/text()" />
                </cbc:IdentificationCode>
                <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/text()" />
                <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/cac:Country/text()" />
              </cac:Country>
              <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/text()" />
              <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PostalAddress/text()" />
            </cac:PostalAddress>
            <cac:PartyLegalEntity>
              <cbc:RegistrationName>
                <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PartyLegalEntity/cbc:RegistrationName/text()" />
              </cbc:RegistrationName>
              <cbc:RegistrationName>
                <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PartyLegalEntity/cbc:RegistrationName/text()" />
              </cbc:RegistrationName>
              <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PartyLegalEntity/text()" />
              <xsl:value-of select="cac:Delivery/cac:DeliveryParty/cac:PartyLegalEntity/text()" />
            </cac:PartyLegalEntity>
            <xsl:value-of select="cac:Delivery/cac:DeliveryParty/text()" />
            <xsl:value-of select="cac:Delivery/cac:DeliveryParty/text()" />
          </cac:DeliveryParty>
          <cac:Shipment>
            <cbc:ID>
              <xsl:if test="cac:Delivery/cac:Shipment/cbc:ID/@schemeID">
                <xsl:attribute name="schemeID">
                  <xsl:value-of select="cac:Delivery/cac:Shipment/cbc:ID/@schemeID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="cac:Delivery/cac:Shipment/cbc:ID/@schemeID">
                <xsl:attribute name="schemeID">
                  <xsl:value-of select="cac:Delivery/cac:Shipment/cbc:ID/@schemeID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="cac:Delivery/cac:Shipment/cbc:ID/@schemeAgencyID">
                <xsl:attribute name="schemeAgencyID">
                  <xsl:value-of select="cac:Delivery/cac:Shipment/cbc:ID/@schemeAgencyID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="cac:Delivery/cac:Shipment/cbc:ID/@schemeAgencyID">
                <xsl:attribute name="schemeAgencyID">
                  <xsl:value-of select="cac:Delivery/cac:Shipment/cbc:ID/@schemeAgencyID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:value-of select="cac:Delivery/cac:Shipment/cbc:ID/text()" />
              <xsl:value-of select="cac:Delivery/cac:Shipment/cbc:ID/text()" />
            </cbc:ID>
            <cac:FreightAllowanceCharge>
              <cbc:ChargeIndicator>
                <xsl:value-of select="cac:Delivery/cac:Shipment/cac:FreightAllowanceCharge/cbc:ChargeIndicator/text()" />
              </cbc:ChargeIndicator>
              <cbc:ChargeIndicator>
                <xsl:value-of select="cac:Delivery/cac:Shipment/cac:FreightAllowanceCharge/cbc:ChargeIndicator/text()" />
              </cbc:ChargeIndicator>
              <cbc:AllowanceChargeReason>
                <xsl:value-of select="cac:Delivery/cac:Shipment/cac:FreightAllowanceCharge/cbc:AllowanceChargeReason/text()" />
              </cbc:AllowanceChargeReason>
              <cbc:AllowanceChargeReason>
                <xsl:value-of select="cac:Delivery/cac:Shipment/cac:FreightAllowanceCharge/cbc:AllowanceChargeReason/text()" />
              </cbc:AllowanceChargeReason>
              <cbc:Amount>
                <xsl:attribute name="currencyID">
                  <xsl:value-of select="cac:Delivery/cac:Shipment/cac:FreightAllowanceCharge/cbc:Amount/@currencyID" />
                </xsl:attribute>
                <xsl:attribute name="currencyID">
                  <xsl:value-of select="cac:Delivery/cac:Shipment/cac:FreightAllowanceCharge/cbc:Amount/@currencyID" />
                </xsl:attribute>
                <xsl:value-of select="cac:Delivery/cac:Shipment/cac:FreightAllowanceCharge/cbc:Amount/text()" />
                <xsl:value-of select="cac:Delivery/cac:Shipment/cac:FreightAllowanceCharge/cbc:Amount/text()" />
              </cbc:Amount>
              <xsl:value-of select="cac:Delivery/cac:Shipment/cac:FreightAllowanceCharge/text()" />
              <xsl:value-of select="cac:Delivery/cac:Shipment/cac:FreightAllowanceCharge/text()" />
            </cac:FreightAllowanceCharge>
            <xsl:value-of select="cac:Delivery/cac:Shipment/text()" />
            <xsl:value-of select="cac:Delivery/cac:Shipment/text()" />
          </cac:Shipment>
          <xsl:value-of select="cac:Delivery/text()" />
          <xsl:value-of select="cac:Delivery/text()" />
        </cac:Delivery>
        <cac:PaymentMeans>
          <cbc:PaymentMeansCode>
            <xsl:value-of select="cac:PaymentMeans/cbc:PaymentMeansCode/text()" />
          </cbc:PaymentMeansCode>
          <cbc:PaymentMeansCode>
            <xsl:value-of select="cac:PaymentMeans/cbc:PaymentMeansCode/text()" />
          </cbc:PaymentMeansCode>
          <cac:PayeeFinancialAccount>
            <cbc:ID>
              <xsl:if test="cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID/@schemeID">
                <xsl:attribute name="schemeID">
                  <xsl:value-of select="cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID/@schemeID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID/@schemeID">
                <xsl:attribute name="schemeID">
                  <xsl:value-of select="cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID/@schemeID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID/@schemeAgencyID">
                <xsl:attribute name="schemeAgencyID">
                  <xsl:value-of select="cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID/@schemeAgencyID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID/@schemeAgencyID">
                <xsl:attribute name="schemeAgencyID">
                  <xsl:value-of select="cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID/@schemeAgencyID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:value-of select="cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID/text()" />
              <xsl:value-of select="cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID/text()" />
            </cbc:ID>
            <xsl:value-of select="cac:PaymentMeans/cac:PayeeFinancialAccount/text()" />
            <xsl:value-of select="cac:PaymentMeans/cac:PayeeFinancialAccount/text()" />
          </cac:PayeeFinancialAccount>
          <xsl:value-of select="cac:PaymentMeans/text()" />
          <xsl:value-of select="cac:PaymentMeans/text()" />
        </cac:PaymentMeans>
        <cac:PaymentTerms>
          <cbc:Note>
            <xsl:value-of select="cac:PaymentTerms/cbc:Note/text()" />
          </cbc:Note>
          <cbc:Note>
            <xsl:value-of select="cac:PaymentTerms/cbc:Note/text()" />
          </cbc:Note>
          <xsl:value-of select="cac:PaymentTerms/text()" />
          <xsl:value-of select="cac:PaymentTerms/text()" />
        </cac:PaymentTerms>
        <cac:PrepaidPayment>
          <cbc:ID>
            <xsl:if test="cac:PrepaidPayment/cbc:ID/@schemeID">
              <xsl:attribute name="schemeID">
                <xsl:value-of select="cac:PrepaidPayment/cbc:ID/@schemeID" />
              </xsl:attribute>
            </xsl:if>
            <xsl:if test="cac:PrepaidPayment/cbc:ID/@schemeID">
              <xsl:attribute name="schemeID">
                <xsl:value-of select="cac:PrepaidPayment/cbc:ID/@schemeID" />
              </xsl:attribute>
            </xsl:if>
            <xsl:if test="cac:PrepaidPayment/cbc:ID/@schemeAgencyID">
              <xsl:attribute name="schemeAgencyID">
                <xsl:value-of select="cac:PrepaidPayment/cbc:ID/@schemeAgencyID" />
              </xsl:attribute>
            </xsl:if>
            <xsl:if test="cac:PrepaidPayment/cbc:ID/@schemeAgencyID">
              <xsl:attribute name="schemeAgencyID">
                <xsl:value-of select="cac:PrepaidPayment/cbc:ID/@schemeAgencyID" />
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="cac:PrepaidPayment/cbc:ID/text()" />
            <xsl:value-of select="cac:PrepaidPayment/cbc:ID/text()" />
          </cbc:ID>
          <cbc:PaidAmount>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:PrepaidPayment/cbc:PaidAmount/@currencyID" />
            </xsl:attribute>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:PrepaidPayment/cbc:PaidAmount/@currencyID" />
            </xsl:attribute>
            <xsl:value-of select="cac:PrepaidPayment/cbc:PaidAmount/text()" />
            <xsl:value-of select="cac:PrepaidPayment/cbc:PaidAmount/text()" />
          </cbc:PaidAmount>
          <cbc:PaidDate>
            <xsl:value-of select="cac:PrepaidPayment/cbc:PaidDate/text()" />
          </cbc:PaidDate>
          <cbc:PaidDate>
            <xsl:value-of select="cac:PrepaidPayment/cbc:PaidDate/text()" />
          </cbc:PaidDate>
          <cbc:PaidTime>
            <xsl:value-of select="cac:PrepaidPayment/cbc:PaidTime/text()" />
          </cbc:PaidTime>
          <cbc:PaidTime>
            <xsl:value-of select="cac:PrepaidPayment/cbc:PaidTime/text()" />
          </cbc:PaidTime>
          <xsl:value-of select="cac:PrepaidPayment/text()" />
          <xsl:value-of select="cac:PrepaidPayment/text()" />
        </cac:PrepaidPayment>
        <xsl:for-each select="cac:AllowanceCharge">
          <cac:AllowanceCharge>
            <cbc:ChargeIndicator>
              <xsl:value-of select="cbc:ChargeIndicator/text()" />
            </cbc:ChargeIndicator>
            <cbc:ChargeIndicator>
              <xsl:value-of select="../../../cac:AllowanceCharge/cbc:ChargeIndicator/text()" />
            </cbc:ChargeIndicator>
            <cbc:AllowanceChargeReason>
              <xsl:value-of select="cbc:AllowanceChargeReason/text()" />
            </cbc:AllowanceChargeReason>
            <cbc:AllowanceChargeReason>
              <xsl:value-of select="../../../cac:AllowanceCharge/cbc:AllowanceChargeReason/text()" />
            </cbc:AllowanceChargeReason>
            <cbc:Amount>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cbc:Amount/@currencyID" />
              </xsl:attribute>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="../../../cac:AllowanceCharge/cbc:Amount/@currencyID" />
              </xsl:attribute>
              <xsl:value-of select="cbc:Amount/text()" />
              <xsl:value-of select="../../../cac:AllowanceCharge/cbc:Amount/text()" />
            </cbc:Amount>
            <xsl:value-of select="./text()" />
            <xsl:value-of select="../../../cac:AllowanceCharge/text()" />
          </cac:AllowanceCharge>
        </xsl:for-each>
        <cac:TaxTotal>
          <cbc:TaxAmount>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:TaxTotal/cbc:TaxAmount/@currencyID" />
            </xsl:attribute>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:TaxTotal/cbc:TaxAmount/@currencyID" />
            </xsl:attribute>
            <xsl:value-of select="cac:TaxTotal/cbc:TaxAmount/text()" />
            <xsl:value-of select="cac:TaxTotal/cbc:TaxAmount/text()" />
          </cbc:TaxAmount>
          <cac:TaxSubtotal>
            <cbc:TaxableAmount>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount/@currencyID" />
              </xsl:attribute>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount/@currencyID" />
              </xsl:attribute>
              <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount/text()" />
              <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount/text()" />
            </cbc:TaxableAmount>
            <cbc:TaxAmount>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/@currencyID" />
              </xsl:attribute>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/@currencyID" />
              </xsl:attribute>
              <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/text()" />
              <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/text()" />
            </cbc:TaxAmount>
            <cac:TaxCategory>
              <cbc:ID>
                <xsl:if test="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeID">
                  <xsl:attribute name="schemeID">
                    <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeID">
                  <xsl:attribute name="schemeID">
                    <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeAgencyID">
                  <xsl:attribute name="schemeAgencyID">
                    <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeAgencyID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeAgencyID">
                  <xsl:attribute name="schemeAgencyID">
                    <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeAgencyID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/text()" />
                <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/text()" />
              </cbc:ID>
              <cac:TaxScheme>
                <cbc:ID>
                  <xsl:if test="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeID">
                    <xsl:attribute name="schemeID">
                      <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeID">
                    <xsl:attribute name="schemeID">
                      <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeAgencyID">
                    <xsl:attribute name="schemeAgencyID">
                      <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeAgencyID">
                    <xsl:attribute name="schemeAgencyID">
                      <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/text()" />
                  <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/text()" />
                </cbc:ID>
                <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/text()" />
                <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/text()" />
              </cac:TaxScheme>
              <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/text()" />
              <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/text()" />
            </cac:TaxCategory>
            <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/text()" />
            <xsl:value-of select="cac:TaxTotal/cac:TaxSubtotal/text()" />
          </cac:TaxSubtotal>
          <xsl:value-of select="cac:TaxTotal/text()" />
          <xsl:value-of select="cac:TaxTotal/text()" />
        </cac:TaxTotal>
        <cac:LegalMonetaryTotal>
          <cbc:LineExtensionAmount>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID" />
            </xsl:attribute>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID" />
            </xsl:attribute>
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:LineExtensionAmount/text()" />
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:LineExtensionAmount/text()" />
          </cbc:LineExtensionAmount>
          <cbc:TaxExclusiveAmount>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount/@currencyID" />
            </xsl:attribute>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount/@currencyID" />
            </xsl:attribute>
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount/text()" />
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount/text()" />
          </cbc:TaxExclusiveAmount>
          <cbc:TaxInclusiveAmount>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID" />
            </xsl:attribute>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID" />
            </xsl:attribute>
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/text()" />
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/text()" />
          </cbc:TaxInclusiveAmount>
          <cbc:AllowanceTotalAmount>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID" />
            </xsl:attribute>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID" />
            </xsl:attribute>
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/text()" />
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/text()" />
          </cbc:AllowanceTotalAmount>
          <cbc:ChargeTotalAmount>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:ChargeTotalAmount/@currencyID" />
            </xsl:attribute>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:ChargeTotalAmount/@currencyID" />
            </xsl:attribute>
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:ChargeTotalAmount/text()" />
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:ChargeTotalAmount/text()" />
          </cbc:ChargeTotalAmount>
          <cbc:PayableRoundingAmount>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:PayableRoundingAmount/@currencyID" />
            </xsl:attribute>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:PayableRoundingAmount/@currencyID" />
            </xsl:attribute>
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:PayableRoundingAmount/text()" />
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:PayableRoundingAmount/text()" />
          </cbc:PayableRoundingAmount>
          <cbc:PayableAmount>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID" />
            </xsl:attribute>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID" />
            </xsl:attribute>
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:PayableAmount/text()" />
            <xsl:value-of select="cac:LegalMonetaryTotal/cbc:PayableAmount/text()" />
          </cbc:PayableAmount>
          <xsl:value-of select="cac:LegalMonetaryTotal/text()" />
          <xsl:value-of select="cac:LegalMonetaryTotal/text()" />
        </cac:LegalMonetaryTotal>
        <cac:InvoiceLine>
          <cbc:ID>
            <xsl:if test="cac:InvoiceLine/cbc:ID/@schemeID">
              <xsl:attribute name="schemeID">
                <xsl:value-of select="cac:InvoiceLine/cbc:ID/@schemeID" />
              </xsl:attribute>
            </xsl:if>
            <xsl:if test="cac:InvoiceLine/cbc:ID/@schemeID">
              <xsl:attribute name="schemeID">
                <xsl:value-of select="cac:InvoiceLine/cbc:ID/@schemeID" />
              </xsl:attribute>
            </xsl:if>
            <xsl:if test="cac:InvoiceLine/cbc:ID/@schemeAgencyID">
              <xsl:attribute name="schemeAgencyID">
                <xsl:value-of select="cac:InvoiceLine/cbc:ID/@schemeAgencyID" />
              </xsl:attribute>
            </xsl:if>
            <xsl:if test="cac:InvoiceLine/cbc:ID/@schemeAgencyID">
              <xsl:attribute name="schemeAgencyID">
                <xsl:value-of select="cac:InvoiceLine/cbc:ID/@schemeAgencyID" />
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="cac:InvoiceLine/cbc:ID/text()" />
            <xsl:value-of select="cac:InvoiceLine/cbc:ID/text()" />
          </cbc:ID>
          <cbc:InvoicedQuantity>
            <xsl:attribute name="unitCode">
              <xsl:value-of select="cac:InvoiceLine/cbc:InvoicedQuantity/@unitCode" />
            </xsl:attribute>
            <xsl:attribute name="unitCode">
              <xsl:value-of select="cac:InvoiceLine/cbc:InvoicedQuantity/@unitCode" />
            </xsl:attribute>
            <xsl:value-of select="cac:InvoiceLine/cbc:InvoicedQuantity/text()" />
            <xsl:value-of select="cac:InvoiceLine/cbc:InvoicedQuantity/text()" />
          </cbc:InvoicedQuantity>
          <cbc:LineExtensionAmount>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID" />
            </xsl:attribute>
            <xsl:attribute name="currencyID">
              <xsl:value-of select="cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID" />
            </xsl:attribute>
            <xsl:value-of select="cac:InvoiceLine/cbc:LineExtensionAmount/text()" />
            <xsl:value-of select="cac:InvoiceLine/cbc:LineExtensionAmount/text()" />
          </cbc:LineExtensionAmount>
          <xsl:for-each select="cac:InvoiceLine/cac:AllowanceCharge">
            <cac:AllowanceCharge>
              <cbc:ChargeIndicator>
                <xsl:value-of select="cbc:ChargeIndicator/text()" />
              </cbc:ChargeIndicator>
              <cbc:ChargeIndicator>
                <xsl:value-of select="../../../../cac:InvoiceLine/cac:AllowanceCharge/cbc:ChargeIndicator/text()" />
              </cbc:ChargeIndicator>
              <cbc:AllowanceChargeReason>
                <xsl:value-of select="cbc:AllowanceChargeReason/text()" />
              </cbc:AllowanceChargeReason>
              <cbc:AllowanceChargeReason>
                <xsl:value-of select="../../../../cac:InvoiceLine/cac:AllowanceCharge/cbc:AllowanceChargeReason/text()" />
              </cbc:AllowanceChargeReason>
              <cbc:MultiplierFactorNumeric>
                <xsl:value-of select="cbc:MultiplierFactorNumeric/text()" />
              </cbc:MultiplierFactorNumeric>
              <cbc:MultiplierFactorNumeric>
                <xsl:value-of select="../../../../cac:InvoiceLine/cac:AllowanceCharge/cbc:MultiplierFactorNumeric/text()" />
              </cbc:MultiplierFactorNumeric>
              <cbc:Amount>
                <xsl:attribute name="currencyID">
                  <xsl:value-of select="cbc:Amount/@currencyID" />
                </xsl:attribute>
                <xsl:attribute name="currencyID">
                  <xsl:value-of select="../../../../cac:InvoiceLine/cac:AllowanceCharge/cbc:Amount/@currencyID" />
                </xsl:attribute>
                <xsl:value-of select="cbc:Amount/text()" />
                <xsl:value-of select="../../../../cac:InvoiceLine/cac:AllowanceCharge/cbc:Amount/text()" />
              </cbc:Amount>
              <xsl:value-of select="./text()" />
              <xsl:value-of select="../../../../cac:InvoiceLine/cac:AllowanceCharge/text()" />
            </cac:AllowanceCharge>
          </xsl:for-each>
          <cac:TaxTotal>
            <cbc:TaxAmount>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cbc:TaxAmount/@currencyID" />
              </xsl:attribute>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cbc:TaxAmount/@currencyID" />
              </xsl:attribute>
              <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cbc:TaxAmount/text()" />
              <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cbc:TaxAmount/text()" />
            </cbc:TaxAmount>
            <cac:TaxSubtotal>
              <cbc:TaxableAmount>
                <xsl:attribute name="currencyID">
                  <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount/@currencyID" />
                </xsl:attribute>
                <xsl:attribute name="currencyID">
                  <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount/@currencyID" />
                </xsl:attribute>
                <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount/text()" />
                <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount/text()" />
              </cbc:TaxableAmount>
              <cbc:TaxAmount>
                <xsl:attribute name="currencyID">
                  <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/@currencyID" />
                </xsl:attribute>
                <xsl:attribute name="currencyID">
                  <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/@currencyID" />
                </xsl:attribute>
                <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/text()" />
                <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount/text()" />
              </cbc:TaxAmount>
              <cbc:Percent>
                <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cbc:Percent/text()" />
              </cbc:Percent>
              <cbc:Percent>
                <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cbc:Percent/text()" />
              </cbc:Percent>
              <cac:TaxCategory>
                <cbc:ID>
                  <xsl:if test="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeID">
                    <xsl:attribute name="schemeID">
                      <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeID">
                    <xsl:attribute name="schemeID">
                      <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeAgencyID">
                    <xsl:attribute name="schemeAgencyID">
                      <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeAgencyID">
                    <xsl:attribute name="schemeAgencyID">
                      <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/@schemeAgencyID" />
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/text()" />
                  <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID/text()" />
                </cbc:ID>
                <cbc:TaxExemptionReason>
                  <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason/text()" />
                </cbc:TaxExemptionReason>
                <cbc:TaxExemptionReason>
                  <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason/text()" />
                </cbc:TaxExemptionReason>
                <cac:TaxScheme>
                  <cbc:ID>
                    <xsl:if test="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeID">
                      <xsl:attribute name="schemeID">
                        <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeID" />
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeID">
                      <xsl:attribute name="schemeID">
                        <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeID" />
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeAgencyID">
                      <xsl:attribute name="schemeAgencyID">
                        <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeAgencyID" />
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeAgencyID">
                      <xsl:attribute name="schemeAgencyID">
                        <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/@schemeAgencyID" />
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/text()" />
                    <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID/text()" />
                  </cbc:ID>
                  <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/text()" />
                  <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/text()" />
                </cac:TaxScheme>
                <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/text()" />
                <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/text()" />
              </cac:TaxCategory>
              <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/text()" />
              <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/text()" />
            </cac:TaxSubtotal>
            <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/text()" />
            <xsl:value-of select="cac:InvoiceLine/cac:TaxTotal/text()" />
          </cac:TaxTotal>
          <cac:Item>
            <cbc:Description>
              <xsl:value-of select="cac:InvoiceLine/cac:Item/cbc:Description/text()" />
            </cbc:Description>
            <cbc:Description>
              <xsl:value-of select="cac:InvoiceLine/cac:Item/cbc:Description/text()" />
            </cbc:Description>
            <cac:OriginCountry>
              <cbc:IdentificationCode>
                <xsl:if test="cac:InvoiceLine/cac:Item/cac:OriginCountry/cbc:IdentificationCode/@listID">
                  <xsl:attribute name="listID">
                    <xsl:value-of select="cac:InvoiceLine/cac:Item/cac:OriginCountry/cbc:IdentificationCode/@listID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="cac:InvoiceLine/cac:Item/cac:OriginCountry/cbc:IdentificationCode/@listID">
                  <xsl:attribute name="listID">
                    <xsl:value-of select="cac:InvoiceLine/cac:Item/cac:OriginCountry/cbc:IdentificationCode/@listID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="cac:InvoiceLine/cac:Item/cac:OriginCountry/cbc:IdentificationCode/@listAgencyID">
                  <xsl:attribute name="listAgencyID">
                    <xsl:value-of select="cac:InvoiceLine/cac:Item/cac:OriginCountry/cbc:IdentificationCode/@listAgencyID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="cac:InvoiceLine/cac:Item/cac:OriginCountry/cbc:IdentificationCode/@listAgencyID">
                  <xsl:attribute name="listAgencyID">
                    <xsl:value-of select="cac:InvoiceLine/cac:Item/cac:OriginCountry/cbc:IdentificationCode/@listAgencyID" />
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="cac:InvoiceLine/cac:Item/cac:OriginCountry/cbc:IdentificationCode/text()" />
                <xsl:value-of select="cac:InvoiceLine/cac:Item/cac:OriginCountry/cbc:IdentificationCode/text()" />
              </cbc:IdentificationCode>
              <xsl:value-of select="cac:InvoiceLine/cac:Item/cac:OriginCountry/text()" />
              <xsl:value-of select="cac:InvoiceLine/cac:Item/cac:OriginCountry/text()" />
            </cac:OriginCountry>
            <xsl:for-each select="cac:InvoiceLine/cac:Item/cac:CommodityClassification">
              <cac:CommodityClassification>
                <cbc:ItemClassificationCode>
                  <xsl:attribute name="listID">
                    <xsl:value-of select="cbc:ItemClassificationCode/@listID" />
                  </xsl:attribute>
                  <xsl:attribute name="listID">
                    <xsl:value-of select="../../../../../cac:InvoiceLine/cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode/@listID" />
                  </xsl:attribute>
                  <xsl:value-of select="cbc:ItemClassificationCode/text()" />
                  <xsl:value-of select="../../../../../cac:InvoiceLine/cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode/text()" />
                </cbc:ItemClassificationCode>
                <xsl:value-of select="./text()" />
                <xsl:value-of select="../../../../../cac:InvoiceLine/cac:Item/cac:CommodityClassification/text()" />
              </cac:CommodityClassification>
            </xsl:for-each>
            <xsl:value-of select="cac:InvoiceLine/cac:Item/text()" />
            <xsl:value-of select="cac:InvoiceLine/cac:Item/text()" />
          </cac:Item>
          <cac:Price>
            <cbc:PriceAmount>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID" />
              </xsl:attribute>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID" />
              </xsl:attribute>
              <xsl:value-of select="cac:InvoiceLine/cac:Price/cbc:PriceAmount/text()" />
              <xsl:value-of select="cac:InvoiceLine/cac:Price/cbc:PriceAmount/text()" />
            </cbc:PriceAmount>
            <xsl:value-of select="cac:InvoiceLine/cac:Price/text()" />
            <xsl:value-of select="cac:InvoiceLine/cac:Price/text()" />
          </cac:Price>
          <cac:ItemPriceExtension>
            <cbc:Amount>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cac:InvoiceLine/cac:ItemPriceExtension/cbc:Amount/@currencyID" />
              </xsl:attribute>
              <xsl:attribute name="currencyID">
                <xsl:value-of select="cac:InvoiceLine/cac:ItemPriceExtension/cbc:Amount/@currencyID" />
              </xsl:attribute>
              <xsl:value-of select="cac:InvoiceLine/cac:ItemPriceExtension/cbc:Amount/text()" />
              <xsl:value-of select="cac:InvoiceLine/cac:ItemPriceExtension/cbc:Amount/text()" />
            </cbc:Amount>
            <xsl:value-of select="cac:InvoiceLine/cac:ItemPriceExtension/text()" />
            <xsl:value-of select="cac:InvoiceLine/cac:ItemPriceExtension/text()" />
          </cac:ItemPriceExtension>
          <xsl:value-of select="cac:InvoiceLine/text()" />
          <xsl:value-of select="cac:InvoiceLine/text()" />
        </cac:InvoiceLine>
      </Invoice>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>