<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s1 s0 userCSharp" version="1.0" xmlns:s1="http://schemas.microsoft.com/BizTalk/2003/aggschema" xmlns:s0="http://schemas.microsoft.com/Sql/2008/05/TypedPolling/InterfaceWHLPeppolDBUpdDataWHL" xmlns:ns0="http://Sp.WanHai.Schemas.WHLInvoiceResponse" xmlns:userCSharp="http://schemas.microsoft.com/BizTalk/2003/userCSharp">
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
      
      
        <xsl:variable name="var:v1" select="userCSharp:StringConcat(&quot;-&quot;)" />
        <xsl:variable name="var:v2" select="userCSharp:StringConcat(string(InputMessagePart_1/s0:TypedPollingResultSet0/s0:InterfaceMessage/text()))" />
        <InvoiceBody>
          <InvoiceNumber>
            <xsl:value-of select="InputMessagePart_1/s0:TypedPollingResultSet0/s0:InterfaceStatus/text()" />
          </InvoiceNumber>
          <UUID>
            <xsl:value-of select="$var:v1" />
          </UUID>
          <LongID>
            <xsl:value-of select="$var:v1" />
          </LongID>
          <xsl:if test="InputMessagePart_1/s0:TypedPollingResultSet0/s0:InterfaceStatus">
            <StatusCode>
              <xsl:value-of select="InputMessagePart_1/s0:TypedPollingResultSet0/s0:InterfaceStatus/text()" />
            </StatusCode>
          </xsl:if>
          <StatusMessage>
            <xsl:value-of select="$var:v2" />
          </StatusMessage>
          <xsl:if test="InputMessagePart_1/s0:TypedPollingResultSet0/s0:InterfaceDate">
            <ValidationDateTime>
              <xsl:value-of select="InputMessagePart_1/s0:TypedPollingResultSet0/s0:InterfaceDate/text()" />
            </ValidationDateTime>
          </xsl:if>
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