namespace Sp.WanHai.Schemas {
    using Microsoft.XLANGs.BaseTypes;
    
    
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.BizTalk.Schema.Compiler", "3.0.1.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [SchemaType(SchemaTypeEnum.Document)]
    [System.SerializableAttribute()]
    [SchemaRoots(new string[] {@"InterfaceInvoiceInsert", @"InterfaceInvoiceInsertResponse"})]
    [Microsoft.XLANGs.BaseTypes.SchemaReference(@"Sp.WanHai.Schemas.uspInvInsert_TableType_dbo", typeof(global::Sp.WanHai.Schemas.uspInvInsert_TableType_dbo))]
    [Microsoft.XLANGs.BaseTypes.SchemaReference(@"Sp.WanHai.Schemas.uspInvInsert_ProcedureResultSet_dbo_InterfaceInvoiceInsert", typeof(global::Sp.WanHai.Schemas.uspInvInsert_ProcedureResultSet_dbo_InterfaceInvoiceInsert))]
    public sealed class uspInvInsert_TypedProcedure_dbo : Microsoft.XLANGs.BaseTypes.SchemaBase {
        
        [System.NonSerializedAttribute()]
        private static object _rawSchema;
        
        [System.NonSerializedAttribute()]
        private const string _strSchema = @"<?xml version=""1.0"" encoding=""utf-16""?>
<xs:schema xmlns:ns3=""http://schemas.microsoft.com/Sql/2008/05/Types/TableTypes/dbo"" xmlns:b=""http://schemas.microsoft.com/BizTalk/2003"" xmlns:ns4=""http://schemas.microsoft.com/Sql/2008/05/ProceduresResultSets/dbo/InterfaceInvoiceInsert"" elementFormDefault=""qualified"" targetNamespace=""http://schemas.microsoft.com/Sql/2008/05/TypedProcedures/dbo"" version=""1.0"" xmlns:xs=""http://www.w3.org/2001/XMLSchema"">
  <xs:import schemaLocation=""Sp.WanHai.Schemas.uspInvInsert_TableType_dbo"" namespace=""http://schemas.microsoft.com/Sql/2008/05/Types/TableTypes/dbo"" />
  <xs:import schemaLocation=""Sp.WanHai.Schemas.uspInvInsert_ProcedureResultSet_dbo_InterfaceInvoiceInsert"" namespace=""http://schemas.microsoft.com/Sql/2008/05/ProceduresResultSets/dbo/InterfaceInvoiceInsert"" />
  <xs:annotation>
    <xs:appinfo>
      <fileNameHint xmlns=""http://schemas.microsoft.com/servicemodel/adapters/metadata/xsd"">TypedProcedure.dbo</fileNameHint>
      <references xmlns=""http://schemas.microsoft.com/BizTalk/2003"">
        <reference targetNamespace=""http://schemas.microsoft.com/Sql/2008/05/Types/TableTypes/dbo"" />
        <reference targetNamespace=""http://schemas.microsoft.com/Sql/2008/05/ProceduresResultSets/dbo/InterfaceInvoiceInsert"" />
      </references>
    </xs:appinfo>
  </xs:annotation>
  <xs:element name=""InterfaceInvoiceInsert"">
    <xs:annotation>
      <xs:documentation>
        <doc:action xmlns:doc=""http://schemas.microsoft.com/servicemodel/adapters/metadata/documentation"">TypedProcedure/dbo/InterfaceInvoiceInsert</doc:action>
      </xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs=""0"" maxOccurs=""1"" name=""InvHeaderType"" nillable=""true"" type=""ns3:ArrayOfInvoiceHeaderTableType"" />
        <xs:element minOccurs=""0"" maxOccurs=""1"" name=""InvDetailsType"" nillable=""true"" type=""ns3:ArrayOfInvoiceDetailsTableType"" />
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:element name=""InterfaceInvoiceInsertResponse"">
    <xs:annotation>
      <xs:documentation>
        <doc:action xmlns:doc=""http://schemas.microsoft.com/servicemodel/adapters/metadata/documentation"">TypedProcedure/dbo/InterfaceInvoiceInsert/response</doc:action>
      </xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs=""0"" maxOccurs=""1"" name=""StoredProcedureResultSet0"" nillable=""true"" type=""ns4:ArrayOfStoredProcedureResultSet0"" />
        <xs:element minOccurs=""1"" maxOccurs=""1"" name=""ReturnValue"" type=""xs:int"" />
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>";
        
        public uspInvInsert_TypedProcedure_dbo() {
        }
        
        public override string XmlContent {
            get {
                return _strSchema;
            }
        }
        
        public override string[] RootNodes {
            get {
                string[] _RootElements = new string [2];
                _RootElements[0] = "InterfaceInvoiceInsert";
                _RootElements[1] = "InterfaceInvoiceInsertResponse";
                return _RootElements;
            }
        }
        
        protected override object RawSchema {
            get {
                return _rawSchema;
            }
            set {
                _rawSchema = value;
            }
        }
        
        [Schema(@"http://schemas.microsoft.com/Sql/2008/05/TypedProcedures/dbo",@"InterfaceInvoiceInsert")]
        [System.SerializableAttribute()]
        [SchemaRoots(new string[] {@"InterfaceInvoiceInsert"})]
        public sealed class InterfaceInvoiceInsert : Microsoft.XLANGs.BaseTypes.SchemaBase {
            
            [System.NonSerializedAttribute()]
            private static object _rawSchema;
            
            public InterfaceInvoiceInsert() {
            }
            
            public override string XmlContent {
                get {
                    return _strSchema;
                }
            }
            
            public override string[] RootNodes {
                get {
                    string[] _RootElements = new string [1];
                    _RootElements[0] = "InterfaceInvoiceInsert";
                    return _RootElements;
                }
            }
            
            protected override object RawSchema {
                get {
                    return _rawSchema;
                }
                set {
                    _rawSchema = value;
                }
            }
        }
        
        [Schema(@"http://schemas.microsoft.com/Sql/2008/05/TypedProcedures/dbo",@"InterfaceInvoiceInsertResponse")]
        [System.SerializableAttribute()]
        [SchemaRoots(new string[] {@"InterfaceInvoiceInsertResponse"})]
        public sealed class InterfaceInvoiceInsertResponse : Microsoft.XLANGs.BaseTypes.SchemaBase {
            
            [System.NonSerializedAttribute()]
            private static object _rawSchema;
            
            public InterfaceInvoiceInsertResponse() {
            }
            
            public override string XmlContent {
                get {
                    return _strSchema;
                }
            }
            
            public override string[] RootNodes {
                get {
                    string[] _RootElements = new string [1];
                    _RootElements[0] = "InterfaceInvoiceInsertResponse";
                    return _RootElements;
                }
            }
            
            protected override object RawSchema {
                get {
                    return _rawSchema;
                }
                set {
                    _rawSchema = value;
                }
            }
        }
    }
}
