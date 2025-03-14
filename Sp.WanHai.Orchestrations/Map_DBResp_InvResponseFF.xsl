<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s1 s2 s0 userCSharp" version="1.0" xmlns:s1="http://schemas.microsoft.com/BizTalk/2003/aggschema" xmlns:s2="http://schemas.microsoft.com/Sql/2008/05/ProceduresResultSets/dbo/InterfaceWHLInvoiceStatus" xmlns:ns0="http://Sp.WanHai.Schemas.WHLInvoiceResponse" xmlns:s0="http://schemas.microsoft.com/Sql/2008/05/TypedProcedures/dbo" xmlns:userCSharp="http://schemas.microsoft.com/BizTalk/2003/userCSharp">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/s1:Root" />
  </xsl:template>
  <xsl:template match="/s1:Root">
    <ns0:WHLInvoiceResponse>
      <InvoiceHeader>
        <InvoiceNumber>InvoiceNumber</InvoiceNumber>
        <UUID>UUID</UUID>
        <LongID>LongID</LongID>
        <StatusCode>StatusCode</StatusCode>
        <StatusMessage>StatusMessage</StatusMessage>
        <ValidationDateTime>ValidationDateTime</ValidationDateTime>
      </InvoiceHeader>
      <xsl:for-each select="InputMessagePart_0/ns0:WHLInvoiceResponse/InvoiceBody">
        <InvoiceBody>
          <InvoiceNumber>
            <xsl:value-of select="InvoiceNumber/text()" />
          </InvoiceNumber>
          <UUID>
            <xsl:value-of select="UUID/text()" />
          </UUID>
          <LongID>
            <xsl:value-of select="LongID/text()" />
          </LongID>
          <StatusCode>
            <xsl:value-of select="StatusCode/text()" />
          </StatusCode>
          <StatusMessage>
            <xsl:value-of select="StatusMessage/text()" />
          </StatusMessage>
          <ValidationDateTime>
            <xsl:value-of select="ValidationDateTime/text()" />
          </ValidationDateTime>
        </InvoiceBody>
      </xsl:for-each>
      <!--<xsl:for-each select="InputMessagePart_1/s0:InterfaceWHLInvoiceStatusResponse/s0:StoredProcedureResultSet0/s2:StoredProcedureResultSet0">-->
        <InvoiceBody>
          <InvoiceNumber>
            <xsl:value-of select="InputMessagePart_1/s0:InterfaceWHLInvoiceStatusResponse/s0:StoredProcedureResultSet0/s2:StoredProcedureResultSet0/s2:InvoiceNumber/text()" />
          </InvoiceNumber>
          <xsl:if test="InputMessagePart_1/s0:InterfaceWHLInvoiceStatusResponse/s0:StoredProcedureResultSet0/s2:StoredProcedureResultSet0/s2:UUID">
            <UUID>
              <xsl:value-of select="InputMessagePart_1/s0:InterfaceWHLInvoiceStatusResponse/s0:StoredProcedureResultSet0/s2:StoredProcedureResultSet0/s2:UUID/text()" />
            </UUID>
          </xsl:if>
          <xsl:if test="InputMessagePart_1/s0:InterfaceWHLInvoiceStatusResponse/s0:StoredProcedureResultSet0/s2:StoredProcedureResultSet0/s2:LongId">
            <LongID>
              <xsl:value-of select="InputMessagePart_1/s0:InterfaceWHLInvoiceStatusResponse/s0:StoredProcedureResultSet0/s2:StoredProcedureResultSet0/s2:LongId/text()" />
            </LongID>
          </xsl:if>
          <xsl:if test="InputMessagePart_1/s0:InterfaceWHLInvoiceStatusResponse/s0:StoredProcedureResultSet0/s2:StoredProcedureResultSet0/s2:Status">
            <StatusCode>
              <xsl:value-of select="InputMessagePart_1/s0:InterfaceWHLInvoiceStatusResponse/s0:StoredProcedureResultSet0/s2:StoredProcedureResultSet0/s2:Status/text()" />
            </StatusCode>
          </xsl:if>
          <xsl:if test="InputMessagePart_1/s0:InterfaceWHLInvoiceStatusResponse/s0:StoredProcedureResultSet0/s2:StoredProcedureResultSet0/s2:Message">
            <StatusMessage>
              <xsl:value-of select="InputMessagePart_1/s0:InterfaceWHLInvoiceStatusResponse/s0:StoredProcedureResultSet0/s2:StoredProcedureResultSet0/s2:Message/text()" />
            </StatusMessage>
          </xsl:if>
          <xsl:if test="InputMessagePart_1/s0:InterfaceWHLInvoiceStatusResponse/s0:StoredProcedureResultSet0/s2:StoredProcedureResultSet0/s2:ValidationDateTime">
            <ValidationDateTime>
              <xsl:value-of select="InputMessagePart_1/s0:InterfaceWHLInvoiceStatusResponse/s0:StoredProcedureResultSet0/s2:StoredProcedureResultSet0/s2:ValidationDateTime/text()" />
            </ValidationDateTime>
          </xsl:if>
        </InvoiceBody>
      <!--</xsl:for-each>-->
    </ns0:WHLInvoiceResponse>
  </xsl:template>
  <msxsl:script language="C#" implements-prefix="userCSharp"><![CDATA[
public string StringConcat(string param0)
{
   return param0;
}



]]></msxsl:script>
</xsl:stylesheet>