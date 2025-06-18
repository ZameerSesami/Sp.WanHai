namespace Sp.WanHai.Pipelines
{
    using System;
    using System.Collections.Generic;
    using Microsoft.BizTalk.PipelineOM;
    using Microsoft.BizTalk.Component;
    using Microsoft.BizTalk.Component.Interop;
    
    
    public sealed class RcvWHLInvoiceFF : Microsoft.BizTalk.PipelineOM.ReceivePipeline
    {
        
        private const string _strPipeline = "<?xml version=\"1.0\" encoding=\"utf-16\"?><Document xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instanc"+
"e\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" MajorVersion=\"1\" MinorVersion=\"0\">  <Description /> "+
" <CategoryId>f66b9f5e-43ff-4f5f-ba46-885348ae1b4e</CategoryId>  <FriendlyName>Receive</FriendlyName>"+
"  <Stages>    <Stage>      <PolicyFileStage _locAttrData=\"Name\" _locID=\"1\" Name=\"Decode\" minOccurs=\""+
"0\" maxOccurs=\"-1\" execMethod=\"All\" stageId=\"9d0e4103-4cce-4536-83fa-4a5040674ad6\" />      <Component"+
"s>        <Component>          <Name>Sp.WanHai.WHLArchiveMessage.WHLArchivePipelineComponent,Sp.WanH"+
"ai.WHLArchiveMessage, Version=1.0.0.0, Culture=neutral, PublicKeyToken=212a7d0415ba7266</Name>      "+
"    <ComponentName>WHL Archive Message</ComponentName>          <Description>WHL Archive Message Pip"+
"eline Component</Description>          <Version>1.0</Version>          <Properties>            <Prop"+
"erty Name=\"ArchivePath\">              <Value xsi:type=\"xsd:string\" />            </Property>        "+
"    <Property Name=\"CreateDateFolder\">              <Value xsi:type=\"xsd:boolean\">false</Value>     "+
"       </Property>            <Property Name=\"ArchivePath2\">              <Value xsi:type=\"xsd:strin"+
"g\" />            </Property>            <Property Name=\"CreateDateFolder2\">              <Value xsi:"+
"type=\"xsd:boolean\">false</Value>            </Property>            <Property Name=\"ArchiveFileExt\"> "+
"             <Value xsi:type=\"xsd:string\" />            </Property>            <Property Name=\"Archi"+
"veFileDomain\">              <Value xsi:type=\"xsd:string\" />            </Property>            <Prope"+
"rty Name=\"ArchiveFileUsername\">              <Value xsi:type=\"xsd:string\" />            </Property> "+
"           <Property Name=\"ArchiveFilePassword\">              <Value xsi:type=\"xsd:string\" />       "+
"     </Property>          </Properties>          <CachedDisplayName>WHL Archive Message</CachedDispl"+
"ayName>          <CachedIsManaged>true</CachedIsManaged>        </Component>      </Components>    <"+
"/Stage>    <Stage>      <PolicyFileStage _locAttrData=\"Name\" _locID=\"2\" Name=\"Disassemble\" minOccurs"+
"=\"0\" maxOccurs=\"-1\" execMethod=\"FirstMatch\" stageId=\"9d0e4105-4cce-4536-83fa-4a5040674ad6\" />      <"+
"Components>        <Component>          <Name>Microsoft.BizTalk.Component.FFDasmComp,Microsoft.BizTa"+
"lk.Pipeline.Components, Version=3.0.1.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35</Name>    "+
"      <ComponentName>Flat file disassembler</ComponentName>          <Description>Streaming flat fil"+
"e disassembler component</Description>          <Version>1.0</Version>          <Properties>        "+
"    <Property Name=\"HeaderSpecName\">              <Value xsi:type=\"xsd:string\">Sp.WanHai.Schemas.Inv"+
"oiceHeaderFF, Sp.WanHai.Schemas, Version=1.0.0.0, Culture=neutral, PublicKeyToken=212a7d0415ba7266</"+
"Value>            </Property>            <Property Name=\"DocumentSpecName\">              <Value xsi:"+
"type=\"xsd:string\">Sp.WanHai.Schemas.InvoiceFF, Sp.WanHai.Schemas, Version=1.0.0.0, Culture=neutral, "+
"PublicKeyToken=212a7d0415ba7266</Value>            </Property>            <Property Name=\"TrailerSpe"+
"cName\" />            <Property Name=\"PreserveHeader\">              <Value xsi:type=\"xsd:boolean\">fal"+
"se</Value>            </Property>            <Property Name=\"ValidateDocumentStructure\">            "+
"  <Value xsi:type=\"xsd:boolean\">false</Value>            </Property>            <Property Name=\"Reco"+
"verableInterchangeProcessing\">              <Value xsi:type=\"xsd:boolean\">false</Value>            <"+
"/Property>          </Properties>          <CachedDisplayName>Flat file disassembler</CachedDisplayN"+
"ame>          <CachedIsManaged>true</CachedIsManaged>        </Component>      </Components>    </St"+
"age>    <Stage>      <PolicyFileStage _locAttrData=\"Name\" _locID=\"3\" Name=\"Validate\" minOccurs=\"0\" m"+
"axOccurs=\"-1\" execMethod=\"All\" stageId=\"9d0e410d-4cce-4536-83fa-4a5040674ad6\" />      <Components />"+
"    </Stage>    <Stage>      <PolicyFileStage _locAttrData=\"Name\" _locID=\"4\" Name=\"ResolveParty\" min"+
"Occurs=\"0\" maxOccurs=\"-1\" execMethod=\"All\" stageId=\"9d0e410e-4cce-4536-83fa-4a5040674ad6\" />      <C"+
"omponents />    </Stage>  </Stages></Document>";
        
        private const string _versionDependentGuid = "4ac5a739-37f9-41f4-9990-bbcf540afde6";
        
        public RcvWHLInvoiceFF()
        {
            Microsoft.BizTalk.PipelineOM.Stage stage = this.AddStage(new System.Guid("9d0e4103-4cce-4536-83fa-4a5040674ad6"), Microsoft.BizTalk.PipelineOM.ExecutionMode.all);
            IBaseComponent comp0 = Microsoft.BizTalk.PipelineOM.PipelineManager.CreateComponent("Sp.WanHai.WHLArchiveMessage.WHLArchivePipelineComponent,Sp.WanHai.WHLArchiveMessage, Version=1.0.0.0, Culture=neutral, PublicKeyToken=212a7d0415ba7266");;
            if (comp0 is IPersistPropertyBag)
            {
                string comp0XmlProperties = "<?xml version=\"1.0\" encoding=\"utf-16\"?><PropertyBag xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-inst"+
"ance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">  <Properties>    <Property Name=\"ArchivePath\">  "+
"    <Value xsi:type=\"xsd:string\" />    </Property>    <Property Name=\"CreateDateFolder\">      <Value"+
" xsi:type=\"xsd:boolean\">false</Value>    </Property>    <Property Name=\"ArchivePath2\">      <Value x"+
"si:type=\"xsd:string\" />    </Property>    <Property Name=\"CreateDateFolder2\">      <Value xsi:type=\""+
"xsd:boolean\">false</Value>    </Property>    <Property Name=\"ArchiveFileExt\">      <Value xsi:type=\""+
"xsd:string\" />    </Property>    <Property Name=\"ArchiveFileDomain\">      <Value xsi:type=\"xsd:strin"+
"g\" />    </Property>    <Property Name=\"ArchiveFileUsername\">      <Value xsi:type=\"xsd:string\" />  "+
"  </Property>    <Property Name=\"ArchiveFilePassword\">      <Value xsi:type=\"xsd:string\" />    </Pro"+
"perty>  </Properties></PropertyBag>";
                PropertyBag pb = PropertyBag.DeserializeFromXml(comp0XmlProperties);;
                ((IPersistPropertyBag)(comp0)).Load(pb, 0);
            }
            this.AddComponent(stage, comp0);
            stage = this.AddStage(new System.Guid("9d0e4105-4cce-4536-83fa-4a5040674ad6"), Microsoft.BizTalk.PipelineOM.ExecutionMode.firstRecognized);
            IBaseComponent comp1 = Microsoft.BizTalk.PipelineOM.PipelineManager.CreateComponent("Microsoft.BizTalk.Component.FFDasmComp,Microsoft.BizTalk.Pipeline.Components, Version=3.0.1.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35");;
            if (comp1 is IPersistPropertyBag)
            {
                string comp1XmlProperties = "<?xml version=\"1.0\" encoding=\"utf-16\"?><PropertyBag xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-inst"+
"ance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">  <Properties>    <Property Name=\"HeaderSpecName\""+
">      <Value xsi:type=\"xsd:string\">Sp.WanHai.Schemas.InvoiceHeaderFF, Sp.WanHai.Schemas, Version=1."+
"0.0.0, Culture=neutral, PublicKeyToken=212a7d0415ba7266</Value>    </Property>    <Property Name=\"Do"+
"cumentSpecName\">      <Value xsi:type=\"xsd:string\">Sp.WanHai.Schemas.InvoiceFF, Sp.WanHai.Schemas, V"+
"ersion=1.0.0.0, Culture=neutral, PublicKeyToken=212a7d0415ba7266</Value>    </Property>    <Property"+
" Name=\"TrailerSpecName\" />    <Property Name=\"PreserveHeader\">      <Value xsi:type=\"xsd:boolean\">fa"+
"lse</Value>    </Property>    <Property Name=\"ValidateDocumentStructure\">      <Value xsi:type=\"xsd:"+
"boolean\">false</Value>    </Property>    <Property Name=\"RecoverableInterchangeProcessing\">      <Va"+
"lue xsi:type=\"xsd:boolean\">false</Value>    </Property>  </Properties></PropertyBag>";
                PropertyBag pb = PropertyBag.DeserializeFromXml(comp1XmlProperties);;
                ((IPersistPropertyBag)(comp1)).Load(pb, 0);
            }
            this.AddComponent(stage, comp1);
        }
        
        public override string XmlContent
        {
            get
            {
                return _strPipeline;
            }
        }
        
        public override System.Guid VersionDependentGuid
        {
            get
            {
                return new System.Guid(_versionDependentGuid);
            }
        }
    }
}
