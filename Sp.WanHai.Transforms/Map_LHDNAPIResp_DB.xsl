<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var userCSharp" version="1.0" xmlns:ns4="http://schemas.microsoft.com/Sql/2008/05/ProceduresResultSets/dbo/InterfaceWHLInvLHDNAPIResp" xmlns:ns0="http://schemas.microsoft.com/Sql/2008/05/TypedProcedures/dbo" xmlns:ns3="http://schemas.microsoft.com/Sql/2008/05/Types/TableTypes/dbo" xmlns:userCSharp="http://schemas.microsoft.com/BizTalk/2003/userCSharp">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/LHDNAPIResponse" />
  </xsl:template>
  <xsl:template match="/LHDNAPIResponse">
    <ns0:InterfaceWHLInvLHDNAPIResp>
      <xsl:choose>
        <xsl:when test="submissionUID">
          <ns0:SubmissionID>
            <xsl:value-of select="submissionUID/text()" />
          </ns0:SubmissionID>
        </xsl:when>
        <xsl:otherwise>
          <ns0:SubmissionID>NA</ns0:SubmissionID>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:if test="acceptedDocuments/uuid">
        <ns0:acceptedInv>
          <xsl:for-each select="acceptedDocuments">
            <ns3:LHDNacceptedDocsTT>
              <ns3:uuid>
                <xsl:value-of select="uuid/text()" />
              </ns3:uuid>
              <ns3:invoiceCodeNumber>
                <xsl:value-of select="invoiceCodeNumber/text()" />
              </ns3:invoiceCodeNumber>
            </ns3:LHDNacceptedDocsTT>
          </xsl:for-each>
        </ns0:acceptedInv>
      </xsl:if>
      <xsl:if test="rejectedDocuments/invoiceCodeNumber">
        <ns0:rejectedInv>
          <xsl:for-each select="rejectedDocuments">
            <xsl:variable name="var:v1" select="userCSharp:StringConcat(string(errormessage/text()))" />
            <ns3:LHDNrejectedDocsTT>
              <ns3:invoiceCodeNumber>
                <xsl:value-of select="invoiceCodeNumber/text()" />
              </ns3:invoiceCodeNumber>
              <ns3:error>
                <xsl:value-of select="$var:v1" />
              </ns3:error>
            </ns3:LHDNrejectedDocsTT>
          </xsl:for-each>
        </ns0:rejectedInv>
      </xsl:if>
    </ns0:InterfaceWHLInvLHDNAPIResp>
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