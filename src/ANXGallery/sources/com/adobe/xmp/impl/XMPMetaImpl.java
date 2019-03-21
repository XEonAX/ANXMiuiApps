package com.adobe.xmp.impl;

import com.adobe.xmp.XMPException;
import com.adobe.xmp.XMPMeta;
import com.adobe.xmp.XMPUtils;
import com.adobe.xmp.impl.xpath.XMPPathParser;
import com.adobe.xmp.options.PropertyOptions;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import java.util.Iterator;

public class XMPMetaImpl implements XMPMeta {
    static final /* synthetic */ boolean $assertionsDisabled = (!XMPMetaImpl.class.desiredAssertionStatus());
    private String packetHeader;
    private XMPNode tree;

    public XMPMetaImpl() {
        this.packetHeader = null;
        this.tree = new XMPNode(null, null, null);
    }

    public XMPMetaImpl(XMPNode tree) {
        this.packetHeader = null;
        this.tree = tree;
    }

    public void setLocalizedText(String schemaNS, String altTextName, String genericLang, String specificLang, String itemValue, PropertyOptions options) throws XMPException {
        ParameterAsserts.assertSchemaNS(schemaNS);
        ParameterAsserts.assertArrayName(altTextName);
        ParameterAsserts.assertSpecificLang(specificLang);
        genericLang = genericLang != null ? Utils.normalizeLangValue(genericLang) : null;
        specificLang = Utils.normalizeLangValue(specificLang);
        XMPNode arrayNode = XMPNodeUtils.findNode(this.tree, XMPPathParser.expandXPath(schemaNS, altTextName), true, new PropertyOptions(7680));
        if (arrayNode == null) {
            throw new XMPException("Failed to find or create array node", BaiduSceneResult.TAEKWONDO);
        }
        XMPNode currItem;
        if (!arrayNode.getOptions().isArrayAltText()) {
            if (arrayNode.hasChildren() || !arrayNode.getOptions().isArrayAlternate()) {
                throw new XMPException("Specified property is no alt-text array", BaiduSceneResult.TAEKWONDO);
            }
            arrayNode.getOptions().setArrayAltText(true);
        }
        boolean haveXDefault = false;
        XMPNode xdItem = null;
        Iterator it = arrayNode.iterateChildren();
        while (it.hasNext()) {
            currItem = (XMPNode) it.next();
            if (currItem.hasQualifier() && "xml:lang".equals(currItem.getQualifier(1).getName())) {
                if ("x-default".equals(currItem.getQualifier(1).getValue())) {
                    xdItem = currItem;
                    haveXDefault = true;
                    break;
                }
            }
            throw new XMPException("Language qualifier must be first", BaiduSceneResult.TAEKWONDO);
        }
        if (xdItem != null && arrayNode.getChildrenLength() > 1) {
            arrayNode.removeChild(xdItem);
            arrayNode.addChild(1, xdItem);
        }
        Object[] result = XMPNodeUtils.chooseLocalizedText(arrayNode, genericLang, specificLang);
        int match = ((Integer) result[0]).intValue();
        XMPNode itemNode = result[1];
        boolean specificXDefault = "x-default".equals(specificLang);
        switch (match) {
            case 0:
                XMPNodeUtils.appendLangItem(arrayNode, "x-default", itemValue);
                haveXDefault = true;
                if (!specificXDefault) {
                    XMPNodeUtils.appendLangItem(arrayNode, specificLang, itemValue);
                    break;
                }
                break;
            case 1:
                if (!specificXDefault) {
                    if (haveXDefault && xdItem != itemNode && xdItem != null && xdItem.getValue().equals(itemNode.getValue())) {
                        xdItem.setValue(itemValue);
                    }
                    itemNode.setValue(itemValue);
                    break;
                } else if ($assertionsDisabled || (haveXDefault && xdItem == itemNode)) {
                    it = arrayNode.iterateChildren();
                    while (it.hasNext()) {
                        currItem = (XMPNode) it.next();
                        if (currItem != xdItem) {
                            if (currItem.getValue().equals(xdItem != null ? xdItem.getValue() : null)) {
                                currItem.setValue(itemValue);
                            }
                        }
                    }
                    if (xdItem != null) {
                        xdItem.setValue(itemValue);
                        break;
                    }
                } else {
                    throw new AssertionError();
                }
                break;
            case 2:
                if (haveXDefault && xdItem != itemNode && xdItem != null && xdItem.getValue().equals(itemNode.getValue())) {
                    xdItem.setValue(itemValue);
                }
                itemNode.setValue(itemValue);
                break;
            case 3:
                XMPNodeUtils.appendLangItem(arrayNode, specificLang, itemValue);
                if (specificXDefault) {
                    haveXDefault = true;
                    break;
                }
                break;
            case 4:
                if (xdItem != null && arrayNode.getChildrenLength() == 1) {
                    xdItem.setValue(itemValue);
                }
                XMPNodeUtils.appendLangItem(arrayNode, specificLang, itemValue);
                break;
            case 5:
                XMPNodeUtils.appendLangItem(arrayNode, specificLang, itemValue);
                if (specificXDefault) {
                    haveXDefault = true;
                    break;
                }
                break;
            default:
                throw new XMPException("Unexpected result from ChooseLocalizedText", 9);
        }
        if (!haveXDefault && arrayNode.getChildrenLength() == 1) {
            XMPNodeUtils.appendLangItem(arrayNode, "x-default", itemValue);
        }
    }

    protected Object getPropertyObject(String schemaNS, String propName, int valueType) throws XMPException {
        ParameterAsserts.assertSchemaNS(schemaNS);
        ParameterAsserts.assertPropName(propName);
        XMPNode propNode = XMPNodeUtils.findNode(this.tree, XMPPathParser.expandXPath(schemaNS, propName), false, null);
        if (propNode == null) {
            return null;
        }
        if (valueType == 0 || !propNode.getOptions().isCompositeProperty()) {
            return evaluateNodeValue(valueType, propNode);
        }
        throw new XMPException("Property must be simple when a value type is requested", BaiduSceneResult.TAEKWONDO);
    }

    public Integer getPropertyInteger(String schemaNS, String propName) throws XMPException {
        return (Integer) getPropertyObject(schemaNS, propName, 2);
    }

    public void setPacketHeader(String packetHeader) {
        this.packetHeader = packetHeader;
    }

    public Object clone() {
        return new XMPMetaImpl((XMPNode) this.tree.clone());
    }

    public XMPNode getRoot() {
        return this.tree;
    }

    private Object evaluateNodeValue(int valueType, XMPNode propNode) throws XMPException {
        String rawValue = propNode.getValue();
        switch (valueType) {
            case 1:
                return new Boolean(XMPUtils.convertToBoolean(rawValue));
            case 2:
                return new Integer(XMPUtils.convertToInteger(rawValue));
            case 3:
                return new Long(XMPUtils.convertToLong(rawValue));
            case 4:
                return new Double(XMPUtils.convertToDouble(rawValue));
            case 5:
                return XMPUtils.convertToDate(rawValue);
            case 6:
                return XMPUtils.convertToDate(rawValue).getCalendar();
            case 7:
                return XMPUtils.decodeBase64(rawValue);
            default:
                return (rawValue != null || propNode.getOptions().isCompositeProperty()) ? rawValue : "";
        }
    }
}
