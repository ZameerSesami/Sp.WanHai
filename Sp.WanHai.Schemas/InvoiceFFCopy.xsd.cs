namespace Sp.WanHai.Schemas {
    using Microsoft.XLANGs.BaseTypes;
    
    
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.BizTalk.Schema.Compiler", "3.0.1.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [SchemaType(SchemaTypeEnum.Document)]
    [Schema(@"http://Sp.WanHai.Schemas.InvoiceFFCopy",@"InvoiceFFCopy")]
    [System.SerializableAttribute()]
    [SchemaRoots(new string[] {@"InvoiceFFCopy"})]
    public sealed class InvoiceFFCopy : Microsoft.XLANGs.BaseTypes.SchemaBase {
        
        [System.NonSerializedAttribute()]
        private static object _rawSchema;
        
        [System.NonSerializedAttribute()]
        private const string _strSchema = @"<?xml version=""1.0"" encoding=""utf-16""?>
<xs:schema xmlns=""http://Sp.WanHai.Schemas.InvoiceFFCopy"" xmlns:b=""http://schemas.microsoft.com/BizTalk/2003"" targetNamespace=""http://Sp.WanHai.Schemas.InvoiceFFCopy"" xmlns:xs=""http://www.w3.org/2001/XMLSchema"">
  <xs:annotation>
    <xs:appinfo>
      <schemaEditorExtension:schemaInfo namespaceAlias=""b"" extensionClass=""Microsoft.BizTalk.FlatFileExtension.FlatFileExtension"" standardName=""Flat File"" xmlns:schemaEditorExtension=""http://schemas.microsoft.com/BizTalk/2003/SchemaEditorExtensions"" />
      <b:schemaInfo standard=""Flat File"" codepage=""65001"" default_pad_char="" "" pad_char_type=""char"" count_positions_by_byte=""false"" parser_optimization=""speed"" lookahead_depth=""3"" suppress_empty_nodes=""false"" generate_empty_nodes=""true"" allow_early_termination=""false"" early_terminate_optional_fields=""false"" allow_message_breakup_of_infix_root=""false"" compile_parse_tables=""false"" root_reference=""InvoiceFFCopy"" />
    </xs:appinfo>
  </xs:annotation>
  <xs:element name=""InvoiceFFCopy"">
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
        <xs:element maxOccurs=""unbounded"" name=""InvoiceHeader"">
          <xs:annotation>
            <xs:appinfo>
              <b:recordInfo structure=""delimited"" child_delimiter_type=""char"" child_delimiter="","" sequence_number=""1"" preserve_delimiter_for_empty_data=""true"" suppress_trailing_delimiters=""false"" tag_name=""H"" child_order=""prefix"" />
            </xs:appinfo>
          </xs:annotation>
          <xs:complexType>
            <xs:sequence>
              <xs:annotation>
                <xs:appinfo>
                  <groupInfo sequence_number=""0"" xmlns=""http://schemas.microsoft.com/BizTalk/2003"" />
                </xs:appinfo>
              </xs:annotation>
              <xs:element name=""InvoiceNumber"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""1"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""OrgEInvRefNo"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""2"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""IssueDate"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""3"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""InvoiceTypeCode"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""4"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""CurrencyCode"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""5"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""SellerTIN"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""6"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""SellerBRN"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""7"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""SellerMSIC"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""8"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""SellerBusinessDesc"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""9"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""Seller"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""10"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""SellerStreet"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""11"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""SellerCity"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""12"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""SellerPostalCode"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""13"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""SellerCountryCode"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""14"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""SellerSSTRegNo"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""15"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""SellerContactPhone"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""16"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""SellerContactEmail"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""17"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""BuyerTIN"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""18"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""BuyerBRN"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""19"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""Buyer"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""20"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""BuyerStreet"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""21"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""BuyerCity"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""22"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""BuyerPostalCode"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""23"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""BuyerCountry"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""24"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""BuyerContactPhone"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""25"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""BuyerContactEmail"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""26"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""BuyerSSTRegNo"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""27"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element maxOccurs=""unbounded"" name=""InvoiceItems"">
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
              <xs:element name=""LineItemNo"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""1"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""ClassificationCode"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""2"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""ProdDescription"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""3"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""UnitPrice"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""4"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""TaxType"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""5"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""TaxRate"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""6"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""TaxAmount"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""7"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""DetailOfTaxExemption"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""8"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""AmtExemptedFromTax"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""9"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""SubTotal"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""10"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""TotalExcludingTax"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""11"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""TotalIncludingTax"" type=""xs:string"">
                <xs:annotation>
                  <xs:appinfo>
                    <b:fieldInfo justification=""left"" sequence_number=""12"" />
                  </xs:appinfo>
                </xs:annotation>
              </xs:element>
              <xs:element name=""TotalPayableAmount"" type=""xs:string"">
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
        
        public InvoiceFFCopy() {
        }
        
        public override string XmlContent {
            get {
                return _strSchema;
            }
        }
        
        public override string[] RootNodes {
            get {
                string[] _RootElements = new string [1];
                _RootElements[0] = "InvoiceFFCopy";
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
