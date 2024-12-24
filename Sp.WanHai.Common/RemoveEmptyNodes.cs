using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace Sp.WanHai.Common
{
    public class RemoveEmptyNodes
    {
        public static XmlDocument RemoveEmptyNodesFromXml(XmlDocument txd)
        {

            // make a clean copy so we don't accidentally destroy the byRef txd variable passed to us.
            XmlDocument xmldoc = new XmlDocument();
            xmldoc.LoadXml(txd.OuterXml);
            XmlNodeList emptyElements = xmldoc.SelectNodes(@"//*[not(node())]");
            for (int i = emptyElements.Count - 1; i >= 0; i--)
            {
                emptyElements[i].ParentNode.RemoveChild(emptyElements[i]);
            }
            // xmldoc.InnerXml = xmldoc.InnerXml.Replace("", "");
            return xmldoc;
        }
    }
}
