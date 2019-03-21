package com.adobe.xmp.impl;

import com.adobe.xmp.XMPException;
import com.adobe.xmp.XMPMetaFactory;
import com.adobe.xmp.XMPSchemaRegistry;
import com.adobe.xmp.options.PropertyOptions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.w3c.dom.Attr;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

public class ParseRDF {
    static final /* synthetic */ boolean $assertionsDisabled = (!ParseRDF.class.desiredAssertionStatus());

    static XMPMetaImpl parse(Node xmlRoot) throws XMPException {
        XMPMetaImpl xmp = new XMPMetaImpl();
        rdf_RDF(xmp, xmlRoot);
        return xmp;
    }

    static void rdf_RDF(XMPMetaImpl xmp, Node rdfRdfNode) throws XMPException {
        if (rdfRdfNode.hasAttributes()) {
            rdf_NodeElementList(xmp, xmp.getRoot(), rdfRdfNode);
            return;
        }
        throw new XMPException("Invalid attributes of rdf:RDF element", 202);
    }

    private static void rdf_NodeElementList(XMPMetaImpl xmp, XMPNode xmpParent, Node rdfRdfNode) throws XMPException {
        for (int i = 0; i < rdfRdfNode.getChildNodes().getLength(); i++) {
            Node child = rdfRdfNode.getChildNodes().item(i);
            if (!isWhitespaceNode(child)) {
                rdf_NodeElement(xmp, xmpParent, child, true);
            }
        }
    }

    private static void rdf_NodeElement(XMPMetaImpl xmp, XMPNode xmpParent, Node xmlNode, boolean isTopLevel) throws XMPException {
        int nodeTerm = getRDFTermKind(xmlNode);
        if (nodeTerm != 8 && nodeTerm != 0) {
            throw new XMPException("Node element must be rdf:Description or typed node", 202);
        } else if (isTopLevel && nodeTerm == 0) {
            throw new XMPException("Top level typed node not allowed", 203);
        } else {
            rdf_NodeElementAttrs(xmp, xmpParent, xmlNode, isTopLevel);
            rdf_PropertyElementList(xmp, xmpParent, xmlNode, isTopLevel);
        }
    }

    private static void rdf_NodeElementAttrs(XMPMetaImpl xmp, XMPNode xmpParent, Node xmlNode, boolean isTopLevel) throws XMPException {
        int exclusiveAttrs = 0;
        for (int i = 0; i < xmlNode.getAttributes().getLength(); i++) {
            Node attribute = xmlNode.getAttributes().item(i);
            if (!("xmlns".equals(attribute.getPrefix()) || (attribute.getPrefix() == null && "xmlns".equals(attribute.getNodeName())))) {
                int attrTerm = getRDFTermKind(attribute);
                switch (attrTerm) {
                    case 0:
                        addChildNode(xmp, xmpParent, attribute, attribute.getNodeValue(), isTopLevel);
                        break;
                    case 2:
                    case 3:
                    case 6:
                        if (exclusiveAttrs <= 0) {
                            exclusiveAttrs++;
                            if (isTopLevel && attrTerm == 3) {
                                if (xmpParent.getName() != null && xmpParent.getName().length() > 0) {
                                    if (xmpParent.getName().equals(attribute.getNodeValue())) {
                                        break;
                                    }
                                    throw new XMPException("Mismatched top level rdf:about values", 203);
                                }
                                xmpParent.setName(attribute.getNodeValue());
                                break;
                            }
                        }
                        throw new XMPException("Mutally exclusive about, ID, nodeID attributes", 202);
                        break;
                    default:
                        throw new XMPException("Invalid nodeElement attribute", 202);
                }
            }
        }
    }

    private static void rdf_PropertyElementList(XMPMetaImpl xmp, XMPNode xmpParent, Node xmlParent, boolean isTopLevel) throws XMPException {
        for (int i = 0; i < xmlParent.getChildNodes().getLength(); i++) {
            Node currChild = xmlParent.getChildNodes().item(i);
            if (!isWhitespaceNode(currChild)) {
                if (currChild.getNodeType() != (short) 1) {
                    throw new XMPException("Expected property element node not found", 202);
                }
                rdf_PropertyElement(xmp, xmpParent, currChild, isTopLevel);
            }
        }
    }

    private static void rdf_PropertyElement(XMPMetaImpl xmp, XMPNode xmpParent, Node xmlNode, boolean isTopLevel) throws XMPException {
        if (isPropertyElementName(getRDFTermKind(xmlNode))) {
            int i;
            Node attribute;
            NamedNodeMap attributes = xmlNode.getAttributes();
            List nsAttrs = null;
            for (i = 0; i < attributes.getLength(); i++) {
                attribute = attributes.item(i);
                if ("xmlns".equals(attribute.getPrefix()) || (attribute.getPrefix() == null && "xmlns".equals(attribute.getNodeName()))) {
                    if (nsAttrs == null) {
                        nsAttrs = new ArrayList();
                    }
                    nsAttrs.add(attribute.getNodeName());
                }
            }
            if (nsAttrs != null) {
                for (String ns : nsAttrs) {
                    attributes.removeNamedItem(ns);
                }
            }
            if (attributes.getLength() > 3) {
                rdf_EmptyPropertyElement(xmp, xmpParent, xmlNode, isTopLevel);
                return;
            }
            i = 0;
            while (i < attributes.getLength()) {
                attribute = attributes.item(i);
                String attrLocal = attribute.getLocalName();
                String attrNS = attribute.getNamespaceURI();
                String attrValue = attribute.getNodeValue();
                if ("xml:lang".equals(attribute.getNodeName()) && (!"ID".equals(attrLocal) || !"http://www.w3.org/1999/02/22-rdf-syntax-ns#".equals(attrNS))) {
                    i++;
                } else if ("datatype".equals(attrLocal) && "http://www.w3.org/1999/02/22-rdf-syntax-ns#".equals(attrNS)) {
                    rdf_LiteralPropertyElement(xmp, xmpParent, xmlNode, isTopLevel);
                    return;
                } else if (!"parseType".equals(attrLocal) || !"http://www.w3.org/1999/02/22-rdf-syntax-ns#".equals(attrNS)) {
                    rdf_EmptyPropertyElement(xmp, xmpParent, xmlNode, isTopLevel);
                    return;
                } else if ("Literal".equals(attrValue)) {
                    rdf_ParseTypeLiteralPropertyElement();
                    return;
                } else if ("Resource".equals(attrValue)) {
                    rdf_ParseTypeResourcePropertyElement(xmp, xmpParent, xmlNode, isTopLevel);
                    return;
                } else if ("Collection".equals(attrValue)) {
                    rdf_ParseTypeCollectionPropertyElement();
                    return;
                } else {
                    rdf_ParseTypeOtherPropertyElement();
                    return;
                }
            }
            if (xmlNode.hasChildNodes()) {
                for (i = 0; i < xmlNode.getChildNodes().getLength(); i++) {
                    if (xmlNode.getChildNodes().item(i).getNodeType() != (short) 3) {
                        rdf_ResourcePropertyElement(xmp, xmpParent, xmlNode, isTopLevel);
                        return;
                    }
                }
                rdf_LiteralPropertyElement(xmp, xmpParent, xmlNode, isTopLevel);
                return;
            }
            rdf_EmptyPropertyElement(xmp, xmpParent, xmlNode, isTopLevel);
            return;
        }
        throw new XMPException("Invalid property element name", 202);
    }

    private static void rdf_ResourcePropertyElement(XMPMetaImpl xmp, XMPNode xmpParent, Node xmlNode, boolean isTopLevel) throws XMPException {
        if (!isTopLevel || !"iX:changes".equals(xmlNode.getNodeName())) {
            int i;
            XMPNode newCompound = addChildNode(xmp, xmpParent, xmlNode, "", isTopLevel);
            for (i = 0; i < xmlNode.getAttributes().getLength(); i++) {
                Node attribute = xmlNode.getAttributes().item(i);
                if (!("xmlns".equals(attribute.getPrefix()) || (attribute.getPrefix() == null && "xmlns".equals(attribute.getNodeName())))) {
                    String attrLocal = attribute.getLocalName();
                    String attrNS = attribute.getNamespaceURI();
                    if ("xml:lang".equals(attribute.getNodeName())) {
                        addQualifierNode(newCompound, "xml:lang", attribute.getNodeValue());
                    } else if (!"ID".equals(attrLocal) || !"http://www.w3.org/1999/02/22-rdf-syntax-ns#".equals(attrNS)) {
                        throw new XMPException("Invalid attribute for resource property element", 202);
                    }
                }
            }
            boolean found = false;
            for (i = 0; i < xmlNode.getChildNodes().getLength(); i++) {
                Node currChild = xmlNode.getChildNodes().item(i);
                if (!isWhitespaceNode(currChild)) {
                    if (currChild.getNodeType() == (short) 1 && !found) {
                        boolean isRDF = "http://www.w3.org/1999/02/22-rdf-syntax-ns#".equals(currChild.getNamespaceURI());
                        String childLocal = currChild.getLocalName();
                        if (isRDF && "Bag".equals(childLocal)) {
                            newCompound.getOptions().setArray(true);
                        } else if (isRDF && "Seq".equals(childLocal)) {
                            newCompound.getOptions().setArray(true).setArrayOrdered(true);
                        } else if (isRDF && "Alt".equals(childLocal)) {
                            newCompound.getOptions().setArray(true).setArrayOrdered(true).setArrayAlternate(true);
                        } else {
                            newCompound.getOptions().setStruct(true);
                            if (!(isRDF || "Description".equals(childLocal))) {
                                String typeName = currChild.getNamespaceURI();
                                if (typeName == null) {
                                    throw new XMPException("All XML elements must be in a namespace", 203);
                                }
                                addQualifierNode(newCompound, "rdf:type", typeName + ':' + childLocal);
                            }
                        }
                        rdf_NodeElement(xmp, newCompound, currChild, false);
                        if (newCompound.getHasValueChild()) {
                            fixupQualifiedNode(newCompound);
                        } else if (newCompound.getOptions().isArrayAlternate()) {
                            XMPNodeUtils.detectAltText(newCompound);
                        }
                        found = true;
                    } else if (found) {
                        throw new XMPException("Invalid child of resource property element", 202);
                    } else {
                        throw new XMPException("Children of resource property element must be XML elements", 202);
                    }
                }
            }
            if (!found) {
                throw new XMPException("Missing child of resource property element", 202);
            }
        }
    }

    private static void rdf_LiteralPropertyElement(XMPMetaImpl xmp, XMPNode xmpParent, Node xmlNode, boolean isTopLevel) throws XMPException {
        int i;
        XMPNode newChild = addChildNode(xmp, xmpParent, xmlNode, null, isTopLevel);
        for (i = 0; i < xmlNode.getAttributes().getLength(); i++) {
            Node attribute = xmlNode.getAttributes().item(i);
            if (!("xmlns".equals(attribute.getPrefix()) || (attribute.getPrefix() == null && "xmlns".equals(attribute.getNodeName())))) {
                String attrNS = attribute.getNamespaceURI();
                String attrLocal = attribute.getLocalName();
                if ("xml:lang".equals(attribute.getNodeName())) {
                    addQualifierNode(newChild, "xml:lang", attribute.getNodeValue());
                } else if (!("http://www.w3.org/1999/02/22-rdf-syntax-ns#".equals(attrNS) && ("ID".equals(attrLocal) || "datatype".equals(attrLocal)))) {
                    throw new XMPException("Invalid attribute for literal property element", 202);
                }
            }
        }
        String textValue = "";
        i = 0;
        while (i < xmlNode.getChildNodes().getLength()) {
            Node child = xmlNode.getChildNodes().item(i);
            if (child.getNodeType() == (short) 3) {
                textValue = textValue + child.getNodeValue();
                i++;
            } else {
                throw new XMPException("Invalid child of literal property element", 202);
            }
        }
        newChild.setValue(textValue);
    }

    private static void rdf_ParseTypeLiteralPropertyElement() throws XMPException {
        throw new XMPException("ParseTypeLiteral property element not allowed", 203);
    }

    private static void rdf_ParseTypeResourcePropertyElement(XMPMetaImpl xmp, XMPNode xmpParent, Node xmlNode, boolean isTopLevel) throws XMPException {
        XMPNode newStruct = addChildNode(xmp, xmpParent, xmlNode, "", isTopLevel);
        newStruct.getOptions().setStruct(true);
        for (int i = 0; i < xmlNode.getAttributes().getLength(); i++) {
            Node attribute = xmlNode.getAttributes().item(i);
            if (!("xmlns".equals(attribute.getPrefix()) || (attribute.getPrefix() == null && "xmlns".equals(attribute.getNodeName())))) {
                String attrLocal = attribute.getLocalName();
                String attrNS = attribute.getNamespaceURI();
                if ("xml:lang".equals(attribute.getNodeName())) {
                    addQualifierNode(newStruct, "xml:lang", attribute.getNodeValue());
                } else if (!("http://www.w3.org/1999/02/22-rdf-syntax-ns#".equals(attrNS) && ("ID".equals(attrLocal) || "parseType".equals(attrLocal)))) {
                    throw new XMPException("Invalid attribute for ParseTypeResource property element", 202);
                }
            }
        }
        rdf_PropertyElementList(xmp, newStruct, xmlNode, false);
        if (newStruct.getHasValueChild()) {
            fixupQualifiedNode(newStruct);
        }
    }

    private static void rdf_ParseTypeCollectionPropertyElement() throws XMPException {
        throw new XMPException("ParseTypeCollection property element not allowed", 203);
    }

    private static void rdf_ParseTypeOtherPropertyElement() throws XMPException {
        throw new XMPException("ParseTypeOther property element not allowed", 203);
    }

    private static void rdf_EmptyPropertyElement(XMPMetaImpl xmp, XMPNode xmpParent, Node xmlNode, boolean isTopLevel) throws XMPException {
        boolean hasPropertyAttrs = false;
        boolean hasResourceAttr = false;
        boolean hasNodeIDAttr = false;
        boolean hasValueAttr = false;
        Node valueNode = null;
        if (xmlNode.hasChildNodes()) {
            throw new XMPException("Nested content not allowed with rdf:resource or property attributes", 202);
        }
        int i;
        Node attribute;
        for (i = 0; i < xmlNode.getAttributes().getLength(); i++) {
            attribute = xmlNode.getAttributes().item(i);
            if (!("xmlns".equals(attribute.getPrefix()) || (attribute.getPrefix() == null && "xmlns".equals(attribute.getNodeName())))) {
                switch (getRDFTermKind(attribute)) {
                    case 0:
                        if (!"value".equals(attribute.getLocalName()) || !"http://www.w3.org/1999/02/22-rdf-syntax-ns#".equals(attribute.getNamespaceURI())) {
                            if (!"xml:lang".equals(attribute.getNodeName())) {
                                hasPropertyAttrs = true;
                                break;
                            }
                            break;
                        } else if (!hasResourceAttr) {
                            hasValueAttr = true;
                            valueNode = attribute;
                            break;
                        } else {
                            throw new XMPException("Empty property element can't have both rdf:value and rdf:resource", 203);
                        }
                    case 2:
                        break;
                    case 5:
                        if (!hasNodeIDAttr) {
                            if (!hasValueAttr) {
                                hasResourceAttr = true;
                                if (!hasValueAttr) {
                                    valueNode = attribute;
                                    break;
                                }
                                break;
                            }
                            throw new XMPException("Empty property element can't have both rdf:value and rdf:resource", 203);
                        }
                        throw new XMPException("Empty property element can't have both rdf:resource and rdf:nodeID", 202);
                    case 6:
                        if (!hasResourceAttr) {
                            hasNodeIDAttr = true;
                            break;
                        }
                        throw new XMPException("Empty property element can't have both rdf:resource and rdf:nodeID", 202);
                    default:
                        throw new XMPException("Unrecognized attribute of empty property element", 202);
                }
            }
        }
        XMPNode childNode = addChildNode(xmp, xmpParent, xmlNode, "", isTopLevel);
        boolean childIsStruct = false;
        if (hasValueAttr || hasResourceAttr) {
            childNode.setValue(valueNode != null ? valueNode.getNodeValue() : "");
            if (!hasValueAttr) {
                childNode.getOptions().setURI(true);
            }
        } else if (hasPropertyAttrs) {
            childNode.getOptions().setStruct(true);
            childIsStruct = true;
        }
        for (i = 0; i < xmlNode.getAttributes().getLength(); i++) {
            attribute = xmlNode.getAttributes().item(i);
            if (!(attribute == valueNode || "xmlns".equals(attribute.getPrefix()) || (attribute.getPrefix() == null && "xmlns".equals(attribute.getNodeName())))) {
                switch (getRDFTermKind(attribute)) {
                    case 0:
                        if (childIsStruct) {
                            if (!"xml:lang".equals(attribute.getNodeName())) {
                                addChildNode(xmp, childNode, attribute, attribute.getNodeValue(), false);
                                break;
                            } else {
                                addQualifierNode(childNode, "xml:lang", attribute.getNodeValue());
                                break;
                            }
                        }
                        addQualifierNode(childNode, attribute.getNodeName(), attribute.getNodeValue());
                        break;
                    case 2:
                    case 6:
                        break;
                    case 5:
                        addQualifierNode(childNode, "rdf:resource", attribute.getNodeValue());
                        break;
                    default:
                        throw new XMPException("Unrecognized attribute of empty property element", 202);
                }
            }
        }
    }

    private static XMPNode addChildNode(XMPMetaImpl xmp, XMPNode xmpParent, Node xmlNode, String value, boolean isTopLevel) throws XMPException {
        XMPSchemaRegistry registry = XMPMetaFactory.getSchemaRegistry();
        String namespace = xmlNode.getNamespaceURI();
        if (namespace != null) {
            if ("http://purl.org/dc/1.1/".equals(namespace)) {
                namespace = "http://purl.org/dc/elements/1.1/";
            }
            String prefix = registry.getNamespacePrefix(namespace);
            if (prefix == null) {
                prefix = registry.registerNamespace(namespace, xmlNode.getPrefix() != null ? xmlNode.getPrefix() : "_dflt");
            }
            String childName = prefix + xmlNode.getLocalName();
            PropertyOptions childOptions = new PropertyOptions();
            boolean isAlias = false;
            if (isTopLevel) {
                XMPNode schemaNode = XMPNodeUtils.findSchemaNode(xmp.getRoot(), namespace, "_dflt", true);
                schemaNode.setImplicit(false);
                xmpParent = schemaNode;
                if (registry.findAlias(childName) != null) {
                    isAlias = true;
                    xmp.getRoot().setHasAliases(true);
                    schemaNode.setHasAliases(true);
                }
            }
            boolean isArrayItem = "rdf:li".equals(childName);
            boolean isValueNode = "rdf:value".equals(childName);
            XMPNode newChild = new XMPNode(childName, value, childOptions);
            newChild.setAlias(isAlias);
            if (isValueNode) {
                xmpParent.addChild(1, newChild);
            } else {
                xmpParent.addChild(newChild);
            }
            if (isValueNode) {
                if (isTopLevel || !xmpParent.getOptions().isStruct()) {
                    throw new XMPException("Misplaced rdf:value element", 202);
                }
                xmpParent.setHasValueChild(true);
            }
            if (isArrayItem) {
                if (xmpParent.getOptions().isArray()) {
                    newChild.setName("[]");
                } else {
                    throw new XMPException("Misplaced rdf:li element", 202);
                }
            }
            return newChild;
        }
        throw new XMPException("XML namespace required for all elements and attributes", 202);
    }

    private static XMPNode addQualifierNode(XMPNode xmpParent, String name, String value) throws XMPException {
        if ("xml:lang".equals(name)) {
            value = Utils.normalizeLangValue(value);
        }
        XMPNode newQual = new XMPNode(name, value, null);
        xmpParent.addQualifier(newQual);
        return newQual;
    }

    private static void fixupQualifiedNode(XMPNode xmpParent) throws XMPException {
        if ($assertionsDisabled || (xmpParent.getOptions().isStruct() && xmpParent.hasChildren())) {
            XMPNode valueNode = xmpParent.getChild(1);
            if ($assertionsDisabled || "rdf:value".equals(valueNode.getName())) {
                int i;
                if (valueNode.getOptions().getHasLanguage()) {
                    if (xmpParent.getOptions().getHasLanguage()) {
                        throw new XMPException("Redundant xml:lang for rdf:value element", 203);
                    }
                    XMPNode langQual = valueNode.getQualifier(1);
                    valueNode.removeQualifier(langQual);
                    xmpParent.addQualifier(langQual);
                }
                for (i = 1; i <= valueNode.getQualifierLength(); i++) {
                    xmpParent.addQualifier(valueNode.getQualifier(i));
                }
                for (i = 2; i <= xmpParent.getChildrenLength(); i++) {
                    xmpParent.addQualifier(xmpParent.getChild(i));
                }
                if ($assertionsDisabled || xmpParent.getOptions().isStruct() || xmpParent.getHasValueChild()) {
                    xmpParent.setHasValueChild(false);
                    xmpParent.getOptions().setStruct(false);
                    xmpParent.getOptions().mergeWith(valueNode.getOptions());
                    xmpParent.setValue(valueNode.getValue());
                    xmpParent.removeChildren();
                    Iterator it = valueNode.iterateChildren();
                    while (it.hasNext()) {
                        xmpParent.addChild((XMPNode) it.next());
                    }
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    private static boolean isWhitespaceNode(Node node) {
        if (node.getNodeType() != (short) 3) {
            return false;
        }
        String value = node.getNodeValue();
        for (int i = 0; i < value.length(); i++) {
            if (!Character.isWhitespace(value.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    private static boolean isPropertyElementName(int term) {
        if (term == 8 || isOldTerm(term) || isCoreSyntaxTerm(term)) {
            return false;
        }
        return true;
    }

    private static boolean isOldTerm(int term) {
        return 10 <= term && term <= 12;
    }

    private static boolean isCoreSyntaxTerm(int term) {
        return 1 <= term && term <= 7;
    }

    private static int getRDFTermKind(Node node) {
        String localName = node.getLocalName();
        String namespace = node.getNamespaceURI();
        if (namespace == null && (("about".equals(localName) || "ID".equals(localName)) && (node instanceof Attr) && "http://www.w3.org/1999/02/22-rdf-syntax-ns#".equals(((Attr) node).getOwnerElement().getNamespaceURI()))) {
            namespace = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
        }
        if ("http://www.w3.org/1999/02/22-rdf-syntax-ns#".equals(namespace)) {
            if ("li".equals(localName)) {
                return 9;
            }
            if ("parseType".equals(localName)) {
                return 4;
            }
            if ("Description".equals(localName)) {
                return 8;
            }
            if ("about".equals(localName)) {
                return 3;
            }
            if ("resource".equals(localName)) {
                return 5;
            }
            if ("RDF".equals(localName)) {
                return 1;
            }
            if ("ID".equals(localName)) {
                return 2;
            }
            if ("nodeID".equals(localName)) {
                return 6;
            }
            if ("datatype".equals(localName)) {
                return 7;
            }
            if ("aboutEach".equals(localName)) {
                return 10;
            }
            if ("aboutEachPrefix".equals(localName)) {
                return 11;
            }
            if ("bagID".equals(localName)) {
                return 12;
            }
        }
        return 0;
    }
}
