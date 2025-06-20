<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0 userCSharp" version="1.0" xmlns:ns0="http://Sp.WanHai.Schemas.WHLInvoiceResponse" xmlns:s0="http://schemas.microsoft.com/BizTalk/2003/aggschema" xmlns:userCSharp="http://schemas.microsoft.com/BizTalk/2003/userCSharp">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/s0:Root" />
  </xsl:template>
  <xsl:template match="/s0:Root">
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
        <!--<xsl:variable name="var:v1" select="userCSharp:StringConcat(string(../../../InputMessagePart_1/APIResponse/InterfaceStatus/text()))" />-->
        <InvoiceBody>
          <InvoiceNumber>
            <xsl:value-of select="InputMessagePart_1/APIResponse/InvoiceNumber/text()" />
          </InvoiceNumber>
          <UUID>
            <xsl:value-of select="InputMessagePart_1/APIResponse/UUID/text()" />
          </UUID>
          <LongID>
            <xsl:value-of select="InputMessagePart_1/APIResponse/LongID/text()" />
          </LongID>
          <StatusCode>
            <xsl:value-of select="InputMessagePart_1/APIResponse/StatusCode/text()" />
          </StatusCode>
          <StatusMessage>
            <xsl:value-of select="InputMessagePart_1/APIResponse/StatusMessage/text()" />
          </StatusMessage>
          <ValidationDateTime>
            <xsl:value-of select="InputMessagePart_1/APIResponse/ValidationDateTime/text()" />
          </ValidationDateTime>
        </InvoiceBody>
    </ns0:WHLInvoiceResponse>
  </xsl:template>
  <msxsl:script language="C#" implements-prefix="userCSharp"><![CDATA[
public string StringConcat(string param0)
{
   return param0;
}



]]></msxsl:script>
</xsl:stylesheet>