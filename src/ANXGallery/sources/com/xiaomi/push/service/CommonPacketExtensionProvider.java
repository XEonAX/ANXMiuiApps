package com.xiaomi.push.service;

import com.xiaomi.smack.packet.CommonPacketExtension;
import com.xiaomi.smack.provider.PacketExtensionProvider;
import com.xiaomi.smack.provider.ProviderManager;
import com.xiaomi.smack.util.StringUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class CommonPacketExtensionProvider implements PacketExtensionProvider {
    public void register() {
        ProviderManager.getInstance().addExtensionProvider("all", "xm:chat", this);
    }

    public static CommonPacketExtension parseExtensionFromStartTag(XmlPullParser xpp) throws XmlPullParserException, IOException {
        if (xpp.getEventType() != 2) {
            return null;
        }
        String[] attributeNames = null;
        String[] attributeValues = null;
        String text = null;
        List<CommonPacketExtension> children = null;
        String extensionName = xpp.getName();
        String namespace = xpp.getNamespace();
        if (xpp.getAttributeCount() > 0) {
            attributeNames = new String[xpp.getAttributeCount()];
            attributeValues = new String[xpp.getAttributeCount()];
            for (int i = 0; i < xpp.getAttributeCount(); i++) {
                attributeNames[i] = xpp.getAttributeName(i);
                attributeValues[i] = StringUtils.unescapeFromXML(xpp.getAttributeValue(i));
            }
        }
        while (true) {
            int nextEventType = xpp.next();
            if (nextEventType == 3) {
                return new CommonPacketExtension(extensionName, namespace, attributeNames, attributeValues, text, children);
            }
            if (nextEventType == 4) {
                text = xpp.getText().trim();
            } else if (nextEventType == 2) {
                if (children == null) {
                    children = new ArrayList();
                }
                CommonPacketExtension child = parseExtensionFromStartTag(xpp);
                if (child != null) {
                    children.add(child);
                }
            }
        }
    }

    public CommonPacketExtension parseExtension(XmlPullParser xpp) throws Exception {
        int eventType = xpp.getEventType();
        while (eventType != 1 && eventType != 2) {
            eventType = xpp.next();
        }
        if (eventType == 2) {
            return parseExtensionFromStartTag(xpp);
        }
        return null;
    }
}
