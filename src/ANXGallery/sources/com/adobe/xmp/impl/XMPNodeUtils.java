package com.adobe.xmp.impl;

import com.adobe.xmp.XMPException;
import com.adobe.xmp.XMPMetaFactory;
import com.adobe.xmp.impl.xpath.XMPPath;
import com.adobe.xmp.impl.xpath.XMPPathSegment;
import com.adobe.xmp.options.PropertyOptions;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import java.util.Iterator;

public class XMPNodeUtils {
    static final /* synthetic */ boolean $assertionsDisabled = (!XMPNodeUtils.class.desiredAssertionStatus());

    private XMPNodeUtils() {
    }

    static XMPNode findSchemaNode(XMPNode tree, String namespaceURI, boolean createNodes) throws XMPException {
        return findSchemaNode(tree, namespaceURI, null, createNodes);
    }

    static XMPNode findSchemaNode(XMPNode tree, String namespaceURI, String suggestedPrefix, boolean createNodes) throws XMPException {
        if ($assertionsDisabled || tree.getParent() == null) {
            XMPNode schemaNode = tree.findChildByName(namespaceURI);
            if (schemaNode == null && createNodes) {
                schemaNode = new XMPNode(namespaceURI, new PropertyOptions().setSchemaNode(true));
                schemaNode.setImplicit(true);
                String prefix = XMPMetaFactory.getSchemaRegistry().getNamespacePrefix(namespaceURI);
                if (prefix == null) {
                    if (suggestedPrefix == null || suggestedPrefix.length() == 0) {
                        throw new XMPException("Unregistered schema namespace URI", BaiduSceneResult.SHOOTING);
                    }
                    prefix = XMPMetaFactory.getSchemaRegistry().registerNamespace(namespaceURI, suggestedPrefix);
                }
                schemaNode.setValue(prefix);
                tree.addChild(schemaNode);
            }
            return schemaNode;
        }
        throw new AssertionError();
    }

    static XMPNode findChildNode(XMPNode parent, String childName, boolean createNodes) throws XMPException {
        if (!(parent.getOptions().isSchemaNode() || parent.getOptions().isStruct())) {
            if (!parent.isImplicit()) {
                throw new XMPException("Named children only allowed for schemas and structs", BaiduSceneResult.TAEKWONDO);
            } else if (parent.getOptions().isArray()) {
                throw new XMPException("Named children not allowed for arrays", BaiduSceneResult.TAEKWONDO);
            } else if (createNodes) {
                parent.getOptions().setStruct(true);
            }
        }
        XMPNode childNode = parent.findChildByName(childName);
        if (childNode == null && createNodes) {
            childNode = new XMPNode(childName, new PropertyOptions());
            childNode.setImplicit(true);
            parent.addChild(childNode);
        }
        if ($assertionsDisabled || childNode != null || !createNodes) {
            return childNode;
        }
        throw new AssertionError();
    }

    static XMPNode findNode(XMPNode xmpTree, XMPPath xpath, boolean createNodes, PropertyOptions leafOptions) throws XMPException {
        if (xpath == null || xpath.size() == 0) {
            throw new XMPException("Empty XMPPath", BaiduSceneResult.TAEKWONDO);
        }
        XMPNode rootImplicitNode = null;
        XMPNode currNode = findSchemaNode(xmpTree, xpath.getSegment(0).getName(), createNodes);
        if (currNode == null) {
            return null;
        }
        if (currNode.isImplicit()) {
            currNode.setImplicit(false);
            rootImplicitNode = currNode;
        }
        int i = 1;
        while (i < xpath.size()) {
            try {
                currNode = followXPathStep(currNode, xpath.getSegment(i), createNodes);
                if (currNode != null) {
                    if (currNode.isImplicit()) {
                        currNode.setImplicit(false);
                        if (i == 1 && xpath.getSegment(i).isAlias() && xpath.getSegment(i).getAliasForm() != 0) {
                            currNode.getOptions().setOption(xpath.getSegment(i).getAliasForm(), true);
                        } else if (i < xpath.size() - 1 && xpath.getSegment(i).getKind() == 1 && !currNode.getOptions().isCompositeProperty()) {
                            currNode.getOptions().setStruct(true);
                        }
                        if (rootImplicitNode == null) {
                            rootImplicitNode = currNode;
                        }
                    }
                    i++;
                } else if (!createNodes) {
                    return null;
                } else {
                    deleteNode(rootImplicitNode);
                    return null;
                }
            } catch (XMPException e) {
                if (rootImplicitNode != null) {
                    deleteNode(rootImplicitNode);
                }
                throw e;
            }
        }
        if (rootImplicitNode != null) {
            currNode.getOptions().mergeWith(leafOptions);
            currNode.setOptions(currNode.getOptions());
        }
        return currNode;
    }

    static void deleteNode(XMPNode node) {
        XMPNode parent = node.getParent();
        if (node.getOptions().isQualifier()) {
            parent.removeQualifier(node);
        } else {
            parent.removeChild(node);
        }
        if (!parent.hasChildren() && parent.getOptions().isSchemaNode()) {
            parent.getParent().removeChild(parent);
        }
    }

    static PropertyOptions verifySetOptions(PropertyOptions options, Object itemValue) throws XMPException {
        if (options == null) {
            options = new PropertyOptions();
        }
        if (options.isArrayAltText()) {
            options.setArrayAlternate(true);
        }
        if (options.isArrayAlternate()) {
            options.setArrayOrdered(true);
        }
        if (options.isArrayOrdered()) {
            options.setArray(true);
        }
        if (!options.isCompositeProperty() || itemValue == null || itemValue.toString().length() <= 0) {
            options.assertConsistency(options.getOptions());
            return options;
        }
        throw new XMPException("Structs and arrays can't have values", BaiduSceneResult.MOUNTAINEERING);
    }

    private static XMPNode followXPathStep(XMPNode parentNode, XMPPathSegment nextStep, boolean createNodes) throws XMPException {
        int stepKind = nextStep.getKind();
        if (stepKind == 1) {
            return findChildNode(parentNode, nextStep.getName(), createNodes);
        }
        if (stepKind == 2) {
            return findQualifierNode(parentNode, nextStep.getName().substring(1), createNodes);
        }
        if (parentNode.getOptions().isArray()) {
            int index;
            String[] result;
            if (stepKind == 3) {
                index = findIndexedItem(parentNode, nextStep.getName(), createNodes);
            } else if (stepKind == 4) {
                index = parentNode.getChildrenLength();
            } else if (stepKind == 6) {
                result = Utils.splitNameAndValue(nextStep.getName());
                index = lookupFieldSelector(parentNode, result[0], result[1]);
            } else if (stepKind == 5) {
                result = Utils.splitNameAndValue(nextStep.getName());
                index = lookupQualSelector(parentNode, result[0], result[1], nextStep.getAliasForm());
            } else {
                throw new XMPException("Unknown array indexing step in FollowXPathStep", 9);
            }
            if (1 > index || index > parentNode.getChildrenLength()) {
                return null;
            }
            return parentNode.getChild(index);
        }
        throw new XMPException("Indexing applied to non-array", BaiduSceneResult.TAEKWONDO);
    }

    private static XMPNode findQualifierNode(XMPNode parent, String qualName, boolean createNodes) throws XMPException {
        if ($assertionsDisabled || !qualName.startsWith("?")) {
            XMPNode qualNode = parent.findQualifierByName(qualName);
            if (qualNode != null || !createNodes) {
                return qualNode;
            }
            qualNode = new XMPNode(qualName, null);
            qualNode.setImplicit(true);
            parent.addQualifier(qualNode);
            return qualNode;
        }
        throw new AssertionError();
    }

    private static int findIndexedItem(XMPNode arrayNode, String segment, boolean createNodes) throws XMPException {
        try {
            int index = Integer.parseInt(segment.substring(1, segment.length() - 1));
            if (index < 1) {
                throw new XMPException("Array index must be larger than zero", BaiduSceneResult.TAEKWONDO);
            }
            if (createNodes && index == arrayNode.getChildrenLength() + 1) {
                XMPNode newItem = new XMPNode("[]", null);
                newItem.setImplicit(true);
                arrayNode.addChild(newItem);
            }
            return index;
        } catch (NumberFormatException e) {
            throw new XMPException("Array index not digits.", BaiduSceneResult.TAEKWONDO);
        }
    }

    private static int lookupFieldSelector(XMPNode arrayNode, String fieldName, String fieldValue) throws XMPException {
        int result = -1;
        int index = 1;
        while (index <= arrayNode.getChildrenLength() && result < 0) {
            XMPNode currItem = arrayNode.getChild(index);
            if (currItem.getOptions().isStruct()) {
                for (int f = 1; f <= currItem.getChildrenLength(); f++) {
                    XMPNode currField = currItem.getChild(f);
                    if (fieldName.equals(currField.getName()) && fieldValue.equals(currField.getValue())) {
                        result = index;
                        break;
                    }
                }
                index++;
            } else {
                throw new XMPException("Field selector must be used on array of struct", BaiduSceneResult.TAEKWONDO);
            }
        }
        return result;
    }

    private static int lookupQualSelector(XMPNode arrayNode, String qualName, String qualValue, int aliasForm) throws XMPException {
        int index;
        if ("xml:lang".equals(qualName)) {
            index = lookupLanguageItem(arrayNode, Utils.normalizeLangValue(qualValue));
            if (index >= 0 || (aliasForm & 4096) <= 0) {
                return index;
            }
            XMPNode langNode = new XMPNode("[]", null);
            langNode.addQualifier(new XMPNode("xml:lang", "x-default", null));
            arrayNode.addChild(1, langNode);
            return 1;
        }
        for (index = 1; index < arrayNode.getChildrenLength(); index++) {
            Iterator it = arrayNode.getChild(index).iterateQualifier();
            while (it.hasNext()) {
                XMPNode qualifier = (XMPNode) it.next();
                if (qualName.equals(qualifier.getName()) && qualValue.equals(qualifier.getValue())) {
                    return index;
                }
            }
        }
        return -1;
    }

    static void normalizeLangArray(XMPNode arrayNode) {
        if (arrayNode.getOptions().isArrayAltText()) {
            for (int i = 2; i <= arrayNode.getChildrenLength(); i++) {
                XMPNode child = arrayNode.getChild(i);
                if (child.hasQualifier() && "x-default".equals(child.getQualifier(1).getValue())) {
                    try {
                        arrayNode.removeChild(i);
                        arrayNode.addChild(1, child);
                    } catch (XMPException e) {
                        if (!$assertionsDisabled) {
                            throw new AssertionError();
                        }
                    }
                    if (i == 2) {
                        arrayNode.getChild(2).setValue(child.getValue());
                        return;
                    }
                    return;
                }
            }
        }
    }

    static void detectAltText(XMPNode arrayNode) {
        if (arrayNode.getOptions().isArrayAlternate() && arrayNode.hasChildren()) {
            boolean isAltText = false;
            Iterator it = arrayNode.iterateChildren();
            while (it.hasNext()) {
                if (((XMPNode) it.next()).getOptions().getHasLanguage()) {
                    isAltText = true;
                    break;
                }
            }
            if (isAltText) {
                arrayNode.getOptions().setArrayAltText(true);
                normalizeLangArray(arrayNode);
            }
        }
    }

    static void appendLangItem(XMPNode arrayNode, String itemLang, String itemValue) throws XMPException {
        XMPNode newItem = new XMPNode("[]", itemValue, null);
        XMPNode langQual = new XMPNode("xml:lang", itemLang, null);
        newItem.addQualifier(langQual);
        if ("x-default".equals(langQual.getValue())) {
            arrayNode.addChild(1, newItem);
        } else {
            arrayNode.addChild(newItem);
        }
    }

    static Object[] chooseLocalizedText(XMPNode arrayNode, String genericLang, String specificLang) throws XMPException {
        if (!arrayNode.getOptions().isArrayAltText()) {
            throw new XMPException("Localized text array is not alt-text", BaiduSceneResult.TAEKWONDO);
        } else if (arrayNode.hasChildren()) {
            int foundGenericMatches = 0;
            XMPNode resultNode = null;
            XMPNode xDefault = null;
            Iterator it = arrayNode.iterateChildren();
            while (it.hasNext()) {
                XMPNode currItem = (XMPNode) it.next();
                if (currItem.getOptions().isCompositeProperty()) {
                    throw new XMPException("Alt-text array item is not simple", BaiduSceneResult.TAEKWONDO);
                } else if (currItem.hasQualifier() && "xml:lang".equals(currItem.getQualifier(1).getName())) {
                    String currLang = currItem.getQualifier(1).getValue();
                    if (specificLang.equals(currLang)) {
                        return new Object[]{new Integer(1), currItem};
                    } else if (genericLang != null && currLang.startsWith(genericLang)) {
                        if (resultNode == null) {
                            resultNode = currItem;
                        }
                        foundGenericMatches++;
                    } else if ("x-default".equals(currLang)) {
                        xDefault = currItem;
                    }
                } else {
                    throw new XMPException("Alt-text array item has no language qualifier", BaiduSceneResult.TAEKWONDO);
                }
            }
            if (foundGenericMatches == 1) {
                return new Object[]{new Integer(2), resultNode};
            } else if (foundGenericMatches > 1) {
                return new Object[]{new Integer(3), resultNode};
            } else if (xDefault != null) {
                return new Object[]{new Integer(4), xDefault};
            } else {
                return new Object[]{new Integer(5), arrayNode.getChild(1)};
            }
        } else {
            return new Object[]{new Integer(0), null};
        }
    }

    static int lookupLanguageItem(XMPNode arrayNode, String language) throws XMPException {
        if (arrayNode.getOptions().isArray()) {
            for (int index = 1; index <= arrayNode.getChildrenLength(); index++) {
                XMPNode child = arrayNode.getChild(index);
                if (child.hasQualifier() && "xml:lang".equals(child.getQualifier(1).getName()) && language.equals(child.getQualifier(1).getValue())) {
                    return index;
                }
            }
            return -1;
        }
        throw new XMPException("Language item must be used on array", BaiduSceneResult.TAEKWONDO);
    }
}
