<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s1 s0" version="1.0" xmlns:s1="http://schemas.microsoft.com/BizTalk/2003/aggschema" xmlns:s0="http://schemas.microsoft.com/Sql/2008/05/TypedPolling/InterfaceWHLPeppolDBUpdDataWHL" xmlns:ns0="http://Sp.WanHai.Schemas.WHLInvoiceResponse">
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


        <InvoiceBody>
          <xsl:if test="InputMessagePart_1/s0:TypedPollingResultSet0/s0:InvoiceNumber">
            <InvoiceNumber>
              <xsl:value-of select="InputMessagePart_1/s0:TypedPollingResultSet0/s0:InvoiceNumber/text()" />
            </InvoiceNumber>
          </xsl:if>
          <xsl:if test="InputMessagePart_1/s0:TypedPollingResultSet0/s0:LHDNUUID">
            <UUID>
              <xsl:value-of select="InputMessagePart_1/s0:TypedPollingResultSet0/s0:LHDNUUID/text()" />
            </UUID>
          </xsl:if>
          <xsl:if test="InputMessagePart_1/s0:TypedPollingResultSet0/s0:LHDNLongID">
            <LongID>
              <xsl:value-of select="InputMessagePart_1/s0:TypedPollingResultSet0/s0:LHDNLongID/text()" />
            </LongID>
          </xsl:if>
          <xsl:if test="InputMessagePart_1/s0:TypedPollingResultSet0/s0:LHDNStatus">
            <StatusCode>
              <xsl:value-of select="InputMessagePart_1/s0:TypedPollingResultSet0/s0:LHDNStatus/text()" />
            </StatusCode>
          </xsl:if>
          <xsl:if test="InputMessagePart_1/s0:TypedPollingResultSet0/s0:LHDNMessage">
            <StatusMessage>
              <xsl:value-of select="InputMessagePart_1/s0:TypedPollingResultSet0/s0:LHDNMessage/text()" />
            </StatusMessage>
          </xsl:if>
          <xsl:if test="InputMessagePart_1/s0:TypedPollingResultSet0/s0:LHDNDate">
            <ValidationDateTime>
              <xsl:value-of select="InputMessagePart_1/s0:TypedPollingResultSet0/s0:LHDNDate/text()" />
            </ValidationDateTime>
          </xsl:if>
        </InvoiceBody>
    </ns0:WHLInvoiceResponse>
  </xsl:template>
</xsl:stylesheet>