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
"s />    </Stage>    <Stage>      <PolicyFileStage _locAttrData=\"Name\" _locID=\"2\" Name=\"Disassemble\" "+
"minOccurs=\"0\" maxOccurs=\"-1\" execMethod=\"FirstMatch\" stageId=\"9d0e4105-4cce-4536-83fa-4a5040674ad6\" "+
"/>      <Components>        <Component>          <Name>Microsoft.BizTalk.Component.FFDasmComp,Micros"+
"oft.BizTalk.Pipeline.Components, Version=3.0.1.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35</"+
"Name>          <ComponentName>Flat file disassembler</ComponentName>          <Description>Streaming"+
" flat file disassembler component</Description>          <Version>1.0</Version>          <Properties"+
">            <Property Name=\"HeaderSpecName\">              <Value xsi:type=\"xsd:string\">Sp.WanHai.Sc"+
"hemas.InvoiceHeaderFF, Sp.WanHai.Schemas, Version=1.0.0.0, Culture=neutral, PublicKeyToken=212a7d041"+
"5ba7266</Value>            </Property>            <Property Name=\"DocumentSpecName\">              <V"+
"alue xsi:type=\"xsd:string\">Sp.WanHai.Schemas.InvoiceFF, Sp.WanHai.Schemas, Version=1.0.0.0, Culture="+
"neutral, PublicKeyToken=212a7d0415ba7266</Value>            </Property>            <Property Name=\"T"+
"railerSpecName\" />            <Property Name=\"PreserveHeader\">              <Value xsi:type=\"xsd:boo"+
"lean\">false</Value>            </Property>            <Property Name=\"ValidateDocumentStructure\">   "+
"           <Value xsi:type=\"xsd:boolean\">false</Value>            </Property>            <Property N"+
"ame=\"RecoverableInterchangeProcessing\">              <Value xsi:type=\"xsd:boolean\">false</Value>    "+
"        </Property>          </Properties>          <CachedDisplayName>Flat file disassembler</Cache"+
"dDisplayName>          <CachedIsManaged>true</CachedIsManaged>        </Component>      </Components"+
">    </Stage>    <Stage>      <PolicyFileStage _locAttrData=\"Name\" _locID=\"3\" Name=\"Validate\" minOcc"+
"urs=\"0\" maxOccurs=\"-1\" execMethod=\"All\" stageId=\"9d0e410d-4cce-4536-83fa-4a5040674ad6\" />      <Comp"+
"onents />    </Stage>    <Stage>      <PolicyFileStage _locAttrData=\"Name\" _locID=\"4\" Name=\"ResolveP"+
"arty\" minOccurs=\"0\" maxOccurs=\"-1\" execMethod=\"All\" stageId=\"9d0e410e-4cce-4536-83fa-4a5040674ad6\" /"+
">      <Components />    </Stage>  </Stages></Document>";
        
        private const string _versionDependentGuid = "5ea8ede0-04b1-4ea7-96e2-2d27275cce8e";
        
        public RcvWHLInvoiceFF()
        {
            Microsoft.BizTalk.PipelineOM.Stage stage = this.AddStage(new System.Guid("9d0e4105-4cce-4536-83fa-4a5040674ad6"), Microsoft.BizTalk.PipelineOM.ExecutionMode.firstRecognized);
            IBaseComponent comp0 = Microsoft.BizTalk.PipelineOM.PipelineManager.CreateComponent("Microsoft.BizTalk.Component.FFDasmComp,Microsoft.BizTalk.Pipeline.Components, Version=3.0.1.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35");;
            if (comp0 is IPersistPropertyBag)
            {
                string comp0XmlProperties = "<?xml version=\"1.0\" encoding=\"utf-16\"?><PropertyBag xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-inst"+
"ance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">  <Properties>    <Property Name=\"HeaderSpecName\""+
">      <Value xsi:type=\"xsd:string\">Sp.WanHai.Schemas.InvoiceHeaderFF, Sp.WanHai.Schemas, Version=1."+
"0.0.0, Culture=neutral, PublicKeyToken=212a7d0415ba7266</Value>    </Property>    <Property Name=\"Do"+
"cumentSpecName\">      <Value xsi:type=\"xsd:string\">Sp.WanHai.Schemas.InvoiceFF, Sp.WanHai.Schemas, V"+
"ersion=1.0.0.0, Culture=neutral, PublicKeyToken=212a7d0415ba7266</Value>    </Property>    <Property"+
" Name=\"TrailerSpecName\" />    <Property Name=\"PreserveHeader\">      <Value xsi:type=\"xsd:boolean\">fa"+
"lse</Value>    </Property>    <Property Name=\"ValidateDocumentStructure\">      <Value xsi:type=\"xsd:"+
"boolean\">false</Value>    </Property>    <Property Name=\"RecoverableInterchangeProcessing\">      <Va"+
"lue xsi:type=\"xsd:boolean\">false</Value>    </Property>  </Properties></PropertyBag>";
                PropertyBag pb = PropertyBag.DeserializeFromXml(comp0XmlProperties);;
                ((IPersistPropertyBag)(comp0)).Load(pb, 0);
            }
            this.AddComponent(stage, comp0);
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
