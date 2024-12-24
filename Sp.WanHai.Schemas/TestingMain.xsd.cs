namespace Sp.WanHai.Schemas {
    using Microsoft.XLANGs.BaseTypes;
    
    
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.BizTalk.Schema.Compiler", "3.0.1.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [SchemaType(SchemaTypeEnum.Document)]
    [Schema(@"http://Sp.WanHai.Schemas.TestingMain",@"Root")]
    [System.SerializableAttribute()]
    [SchemaRoots(new string[] {@"Root"})]
    [Microsoft.XLANGs.BaseTypes.SchemaReference(@"Sp.WanHai.Schemas.Testing", typeof(global::Sp.WanHai.Schemas.Testing))]
    public sealed class TestingMain : Microsoft.XLANGs.BaseTypes.SchemaBase {
        
        [System.NonSerializedAttribute()]
        private static object _rawSchema;
        
        [System.NonSerializedAttribute()]
        private const string _strSchema = @"<?xml version=""1.0"" encoding=""utf-16""?>
<xs:schema xmlns=""http://Sp.WanHai.Schemas.TestingMain"" xmlns:b=""http://schemas.microsoft.com/BizTalk/2003"" xmlns:ns0=""http://Sp.WanHai.Schemas.Testing"" targetNamespace=""http://Sp.WanHai.Schemas.TestingMain"" xmlns:xs=""http://www.w3.org/2001/XMLSchema"">
  <xs:import schemaLocation=""Sp.WanHai.Schemas.Testing"" namespace=""http://Sp.WanHai.Schemas.Testing"" />
  <xs:annotation>
    <xs:appinfo>
      <b:schemaInfo is_envelope=""yes"" xmlns:b=""http://schemas.microsoft.com/BizTalk/2003"" />
      <b:references>
        <b:reference targetNamespace=""http://Sp.WanHai.Schemas.Testing"" />
      </b:references>
    </xs:appinfo>
  </xs:annotation>
  <xs:element name=""Root"">
    <xs:complexType>
      <xs:sequence>
        <xs:element ref=""ns0:Testing_Child1"" />
        <xs:element ref=""ns0:Testing_Child2"" />
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>";
        
        public TestingMain() {
        }
        
        public override string XmlContent {
            get {
                return _strSchema;
            }
        }
        
        public override string[] RootNodes {
            get {
                string[] _RootElements = new string [1];
                _RootElements[0] = "Root";
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
