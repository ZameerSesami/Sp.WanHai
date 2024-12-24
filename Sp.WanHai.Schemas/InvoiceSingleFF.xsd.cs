namespace Sp.WanHai.Schemas {
    using Microsoft.XLANGs.BaseTypes;
    
    
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.BizTalk.Schema.Compiler", "3.0.1.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [SchemaType(SchemaTypeEnum.Document)]
    [Schema(@"http://Sp.WanHai.Schemas.InvoiceSingleFF",@"InvoiceSingleFF")]
    [System.SerializableAttribute()]
    [SchemaRoots(new string[] {@"InvoiceSingleFF"})]
    public sealed class InvoiceSingleFF : Microsoft.XLANGs.BaseTypes.SchemaBase {
        
        [System.NonSerializedAttribute()]
        private static object _rawSchema;
        
        [System.NonSerializedAttribute()]
        private const string _strSchema = @"<?xml version=""1.0"" encoding=""utf-16""?>
<xs:schema xmlns=""http://Sp.WanHai.Schemas.InvoiceSingleFF"" xmlns:b=""http://schemas.microsoft.com/BizTalk/2003"" targetNamespace=""http://Sp.WanHai.Schemas.InvoiceSingleFF"" xmlns:xs=""http://www.w3.org/2001/XMLSchema"">
  <xs:annotation>
    <xs:appinfo>
      <schemaEditorExtension:schemaInfo namespaceAlias=""b"" extensionClass=""Microsoft.BizTalk.FlatFileExtension.FlatFileExtension"" standardName=""Flat File"" xmlns:schemaEditorExtension=""http://schemas.microsoft.com/BizTalk/2003/SchemaEditorExtensions"" />
      <b:schemaInfo standard=""Flat File"" codepage=""65001"" default_pad_char="" "" pad_char_type=""char"" count_positions_by_byte=""false"" parser_optimization=""speed"" lookahead_depth=""3"" suppress_empty_nodes=""false"" generate_empty_nodes=""true"" allow_early_termination=""false"" early_terminate_optional_fields=""false"" allow_message_breakup_of_infix_root=""false"" compile_parse_tables=""false"" root_reference=""InvoiceSingleFF"" />
    </xs:appinfo>
  </xs:annotation>
  <xs:element name=""InvoiceSingleFF"">
    <xs:annotation>
      <xs:appinfo>
        <b:recordInfo structure=""delimited"" child_delimiter_type=""hex"" child_delimiter=""0xD 0xA"" child_order=""postfix"" sequence_number=""1"" preserve_delimiter_for_empty_data=""true"" suppress_trailing_delimiters=""false"" />
      </xs:appinfo>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence maxOccurs=""1"">
        <xs:annotation>
          <xs:appinfo>
            <groupInfo sequence_number=""0"" xmlns=""http://schemas.microsoft.com/BizTalk/2003"" />
          </xs:appinfo>
        </xs:annotation>
        <xs:element maxOccurs=""1"" name=""InvoiceSingleFF_Child1"">
          <xs:annotation>
            <xs:appinfo>
              <b:recordInfo structure=""delimited"" child_delimiter_type=""char"" child_delimiter="","" sequence_number=""1"" preserve_delimiter_for_empty_data=""true"" suppress_trailing_delimiters=""false"" child_order=""prefix"" tag_name=""H"" />
            </xs:appinfo>
          </xs:annotation>
          <xs:complexType>
            <xs:sequence>
              <xs:annotation>
                <xs:appinfo>
                  <groupInfo sequence_number=""0"" xmlns=""http://schemas.microsoft.com/BizTalk/2003"" />
                </xs:appinfo>
              </xs:annotation>
              <xs:element name=""InvoiceSingleFF_Child1_Child2"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""1"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child3"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""2"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child4"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""3"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child5"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""4"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child6"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""5"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child7"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""6"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child8"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""7"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child9"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""8"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child10"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""9"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child11"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""10"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child12"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""11"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child13"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""12"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child14"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""13"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child15"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""14"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child16"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""15"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child17"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""16"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child18"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""17"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child19"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""18"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child20"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""19"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child21"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""20"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child22"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""21"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child23"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""22"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child24"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""23"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child25"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""24"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child26"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""25"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child27"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""26"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child1_Child28"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""27"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element maxOccurs=""unbounded"" name=""InvoiceSingleFF_Child2"">
          <xs:annotation>
            <xs:appinfo>
              <b:recordInfo tag_name=""I"" structure=""delimited"" child_delimiter_type=""char"" child_delimiter="","" child_order=""prefix"" sequence_number=""2"" preserve_delimiter_for_empty_data=""true"" suppress_trailing_delimiters=""false"" />
            </xs:appinfo>
          </xs:annotation>
          <xs:complexType>
            <xs:sequence>
              <xs:annotation>
                <xs:appinfo>
                  <groupInfo sequence_number=""0"" xmlns=""http://schemas.microsoft.com/BizTalk/2003"" />
                </xs:appinfo>
              </xs:annotation>
              <xs:element name=""InvoiceSingleFF_Child2_Child1"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""1"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child2_Child2"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""2"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child2_Child3"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""3"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child2_Child4"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""4"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child2_Child5"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""5"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child2_Child6"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""6"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child2_Child7"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""7"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child2_Child8"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""8"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child2_Child9"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""9"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child2_Child10"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""10"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child2_Child11"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""11"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child2_Child12"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""12"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceSingleFF_Child2_Child13"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""13"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>";
        
        public InvoiceSingleFF() {
        }
        
        public override string XmlContent {
            get {
                return _strSchema;
            }
        }
        
        public override string[] RootNodes {
            get {
                string[] _RootElements = new string [1];
                _RootElements[0] = "InvoiceSingleFF";
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
