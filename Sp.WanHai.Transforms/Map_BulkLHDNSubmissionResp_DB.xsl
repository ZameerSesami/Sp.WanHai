<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var userCSharp" version="1.0" xmlns:ns4="http://schemas.microsoft.com/Sql/2008/05/ProceduresResultSets/dbo/InterfaceWHLInvLHDNRespBulkUpd" xmlns:ns0="http://schemas.microsoft.com/Sql/2008/05/TypedProcedures/dbo" xmlns:ns3="http://schemas.microsoft.com/Sql/2008/05/Types/TableTypes/dbo" xmlns:userCSharp="http://schemas.microsoft.com/BizTalk/2003/userCSharp">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/APISubmissionResponse" />
  </xsl:template>
  <xsl:template match="/APISubmissionResponse">
    <ns0:InterfaceWHLInvLHDNRespBulkUpd>
      <ns0:LHDNAPIResponse>
        <xsl:for-each select="SubmissionResponses">
          <xsl:variable name="var:v1" select="userCSharp:StringConcat(string(documentStatusReason/text()))" />
          <ns3:LHDNAPIResponseTT>
            <ns3:uuid>
              <xsl:value-of select="uuid/text()" />
            </ns3:uuid>
            <ns3:submissionUid>
              <xsl:value-of select="submissionUid/text()" />
            </ns3:submissionUid>
            <ns3:longId>
              <xsl:value-of select="longId/text()" />
            </ns3:longId>
            <ns3:internalId>
              <xsl:value-of select="internalId/text()" />
            </ns3:internalId>
            <ns3:dateTimeValidated>
              <xsl:value-of select="dateTimeValidated/text()" />
            </ns3:dateTimeValidated>
            <ns3:status>
              <xsl:value-of select="status/text()" />
            </ns3:status>
            <ns3:errorReason>
              <xsl:value-of select="$var:v1" />
            </ns3:errorReason>
          </ns3:LHDNAPIResponseTT>
        </xsl:for-each>
      </ns0:LHDNAPIResponse>
    </ns0:InterfaceWHLInvLHDNRespBulkUpd>
  </xsl:template>
  <msxsl:script language="C#" implements-prefix="userCSharp"><![CDATA[
public string StringConcat(string param0)
{
   return param0;
}



]]></msxsl:script>
</xsl:stylesheet>