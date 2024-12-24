namespace Sp.WanHai.Transforms {
    
    
    [Microsoft.XLANGs.BaseTypes.SchemaReference(@"Sp.WanHai.Schemas.InvoiceSingleFF", typeof(global::Sp.WanHai.Schemas.InvoiceSingleFF))]
    [Microsoft.XLANGs.BaseTypes.SchemaReference(@"Sp.WanHai.Schemas.uspInvInsert_TypedProcedure_dbo+InterfaceInvoiceInsert", typeof(global::Sp.WanHai.Schemas.uspInvInsert_TypedProcedure_dbo.InterfaceInvoiceInsert))]
    public sealed class Map_InvoiceFF_InsertDB : global::Microsoft.XLANGs.BaseTypes.TransformBase {
        
        private const string _strMap = @"<?xml version=""1.0"" encoding=""UTF-16""?>
<xsl:stylesheet xmlns:xsl=""http://www.w3.org/1999/XSL/Transform"" xmlns:msxsl=""urn:schemas-microsoft-com:xslt"" xmlns:var=""http://schemas.microsoft.com/BizTalk/2003/var"" exclude-result-prefixes=""msxsl var s0"" version=""1.0"" xmlns:s0=""http://Sp.WanHai.Schemas.InvoiceSingleFF"" xmlns:ns4=""http://schemas.microsoft.com/Sql/2008/05/ProceduresResultSets/dbo/InterfaceInvoiceInsert"" xmlns:ns0=""http://schemas.microsoft.com/Sql/2008/05/TypedProcedures/dbo"" xmlns:ns3=""http://schemas.microsoft.com/Sql/2008/05/Types/TableTypes/dbo"">
  <xsl:output omit-xml-declaration=""yes"" method=""xml"" version=""1.0"" />
  <xsl:template match=""/"">
    <xsl:apply-templates select=""/s0:InvoiceSingleFF"" />
  </xsl:template>
  <xsl:template match=""/s0:InvoiceSingleFF"">
    <ns0:InterfaceInvoiceInsert>
      <ns0:InvHeaderType>
        <ns3:InvoiceHeaderTableType>
          <ns3:InvoiceNumber>
            <xsl:value-of select=""InvoiceSingleFF_Child1/InvoiceSingleFF_Child1_Child2/text()"" />
          </ns3:InvoiceNumber>
        </ns3:InvoiceHeaderTableType>
      </ns0:InvHeaderType>
    </ns0:InterfaceInvoiceInsert>
  </xsl:template>
</xsl:stylesheet>";
        
        private const int _useXSLTransform = 0;
        
        private const string _strArgList = @"<ExtensionObjects />";
        
        private const string _strSrcSchemasList0 = @"Sp.WanHai.Schemas.InvoiceSingleFF";
        
        private const global::Sp.WanHai.Schemas.InvoiceSingleFF _srcSchemaTypeReference0 = null;
        
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
                _SrcSchemas[0] = @"Sp.WanHai.Schemas.InvoiceSingleFF";
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
