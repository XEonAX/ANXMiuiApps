package com.xiaomi.smack.util;

import android.text.TextUtils;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.CommonPacketExtensionProvider;
import com.xiaomi.push.service.PushClientsManager;
import com.xiaomi.push.service.PushClientsManager.ClientLoginInfo;
import com.xiaomi.push.service.RC4Cryption;
import com.xiaomi.smack.Connection;
import com.xiaomi.smack.XMPPException;
import com.xiaomi.smack.packet.CommonPacketExtension;
import com.xiaomi.smack.packet.IQ;
import com.xiaomi.smack.packet.Message;
import com.xiaomi.smack.packet.Packet;
import com.xiaomi.smack.packet.Presence;
import com.xiaomi.smack.packet.Presence.Mode;
import com.xiaomi.smack.packet.Presence.Type;
import com.xiaomi.smack.packet.StreamError;
import com.xiaomi.smack.packet.XMPPError;
import com.xiaomi.smack.packet.XMPPError.Condition;
import com.xiaomi.smack.provider.ProviderManager;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public class PacketParserUtils {
    private static XmlPullParser sDecryptedMsgParser = null;

    public static Packet parseMessage(XmlPullParser parser) throws Exception {
        boolean done;
        int eventType;
        Message message;
        if ("1".equals(parser.getAttributeValue("", "s"))) {
            String chid = parser.getAttributeValue("", "chid");
            String pktId = parser.getAttributeValue("", "id");
            String from = parser.getAttributeValue("", "from");
            String to = parser.getAttributeValue("", "to");
            String type = parser.getAttributeValue("", nexExportFormat.TAG_FORMAT_TYPE);
            ClientLoginInfo info = PushClientsManager.getInstance().getClientLoginInfoByChidAndUserId(chid, to);
            if (info == null) {
                info = PushClientsManager.getInstance().getClientLoginInfoByChidAndUserId(chid, from);
            }
            Packet resultPkt = null;
            if (info == null) {
                throw new XMPPException("the channel id is wrong while receiving a encrypted message");
            }
            done = false;
            while (!done) {
                eventType = parser.next();
                if (eventType == 2) {
                    if (!"s".equals(parser.getName())) {
                        throw new XMPPException("error while receiving a encrypted message with wrong format");
                    } else if (parser.next() != 4) {
                        throw new XMPPException("error while receiving a encrypted message with wrong format");
                    } else {
                        String encryptedContent = parser.getText();
                        if ("5".equals(chid) || "6".equals(chid)) {
                            message = new Message();
                            message.setChannelId(chid);
                            message.setEncrypted(true);
                            message.setFrom(from);
                            message.setTo(to);
                            message.setPacketID(pktId);
                            message.setType(type);
                            CommonPacketExtension extension = new CommonPacketExtension("s", null, (String[]) null, (String[]) null);
                            extension.setText(encryptedContent);
                            message.addExtension(extension);
                            return message;
                        }
                        resetDecryptedMsgParser(RC4Cryption.decrypt(RC4Cryption.generateKeyForRC4(info.security, pktId), encryptedContent));
                        sDecryptedMsgParser.next();
                        resultPkt = parseMessage(sDecryptedMsgParser);
                    }
                } else if (eventType == 3 && parser.getName().equals("message")) {
                    done = true;
                }
            }
            if (resultPkt != null) {
                return resultPkt;
            }
            throw new XMPPException("error while receiving a encrypted message with wrong format");
        }
        String defaultLanguage;
        message = new Message();
        String id = parser.getAttributeValue("", "id");
        if (id == null) {
            id = "ID_NOT_AVAILABLE";
        }
        message.setPacketID(id);
        message.setTo(parser.getAttributeValue("", "to"));
        message.setFrom(parser.getAttributeValue("", "from"));
        message.setChannelId(parser.getAttributeValue("", "chid"));
        message.setAppId(parser.getAttributeValue("", "appid"));
        String isTransient = null;
        try {
            isTransient = parser.getAttributeValue("", "transient");
        } catch (Exception e) {
        }
        try {
            String seq = parser.getAttributeValue("", "seq");
            if (!TextUtils.isEmpty(seq)) {
                message.setSeq(seq);
            }
        } catch (Exception e2) {
        }
        try {
            String mseq = parser.getAttributeValue("", "mseq");
            if (!TextUtils.isEmpty(mseq)) {
                message.setMSeq(mseq);
            }
        } catch (Exception e3) {
        }
        try {
            String fseq = parser.getAttributeValue("", "fseq");
            if (!TextUtils.isEmpty(fseq)) {
                message.setFSeq(fseq);
            }
        } catch (Exception e4) {
        }
        try {
            String status = parser.getAttributeValue("", "status");
            if (!TextUtils.isEmpty(status)) {
                message.setStatus(status);
            }
        } catch (Exception e5) {
        }
        boolean z = !TextUtils.isEmpty(isTransient) && isTransient.equalsIgnoreCase("true");
        message.setIsTransient(z);
        message.setType(parser.getAttributeValue("", nexExportFormat.TAG_FORMAT_TYPE));
        String language = getLanguageAttribute(parser);
        if (language == null || "".equals(language.trim())) {
            defaultLanguage = Packet.getDefaultLanguage();
        } else {
            message.setLanguage(language);
            defaultLanguage = language;
        }
        done = false;
        String thread = null;
        while (!done) {
            eventType = parser.next();
            if (eventType == 2) {
                String elementName = parser.getName();
                String namespace = parser.getNamespace();
                if (TextUtils.isEmpty(namespace)) {
                    namespace = "xm";
                }
                if (elementName.equals("subject")) {
                    if (getLanguageAttribute(parser) == null) {
                        String xmlLang = defaultLanguage;
                    }
                    message.setSubject(parseContent(parser));
                } else if (elementName.equals("body")) {
                    String encode = parser.getAttributeValue("", "encode");
                    String body = parseContent(parser);
                    if (TextUtils.isEmpty(encode)) {
                        message.setBody(body);
                    } else {
                        message.setBody(body, encode);
                    }
                } else if (elementName.equals("thread")) {
                    if (thread == null) {
                        thread = parser.nextText();
                    }
                } else if (elementName.equals("error")) {
                    message.setError(parseError(parser));
                } else {
                    message.addExtension(parsePacketExtension(elementName, namespace, parser));
                }
            } else if (eventType == 3 && parser.getName().equals("message")) {
                done = true;
            }
        }
        message.setThread(thread);
        return message;
    }

    private static void resetDecryptedMsgParser(byte[] input) throws XmlPullParserException {
        if (sDecryptedMsgParser == null) {
            try {
                sDecryptedMsgParser = XmlPullParserFactory.newInstance().newPullParser();
                sDecryptedMsgParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
            } catch (XmlPullParserException xppe) {
                xppe.printStackTrace();
            }
        }
        sDecryptedMsgParser.setInput(new InputStreamReader(new ByteArrayInputStream(input)));
    }

    private static String parseContent(XmlPullParser parser) throws XmlPullParserException, IOException {
        String content = "";
        int parserDepth = parser.getDepth();
        while (true) {
            if (parser.next() == 3 && parser.getDepth() == parserDepth) {
                return content;
            }
            content = content + parser.getText();
        }
    }

    public static Presence parsePresence(XmlPullParser parser) throws Exception {
        Type type = Type.available;
        String typeString = parser.getAttributeValue("", nexExportFormat.TAG_FORMAT_TYPE);
        if (!(typeString == null || typeString.equals(""))) {
            try {
                type = Type.valueOf(typeString);
            } catch (IllegalArgumentException e) {
                System.err.println("Found invalid presence type " + typeString);
            }
        }
        Presence presence = new Presence(type);
        presence.setTo(parser.getAttributeValue("", "to"));
        presence.setFrom(parser.getAttributeValue("", "from"));
        presence.setChannelId(parser.getAttributeValue("", "chid"));
        String id = parser.getAttributeValue("", "id");
        if (id == null) {
            id = "ID_NOT_AVAILABLE";
        }
        presence.setPacketID(id);
        boolean done = false;
        while (!done) {
            int eventType = parser.next();
            if (eventType == 2) {
                String elementName = parser.getName();
                String namespace = parser.getNamespace();
                if (elementName.equals("status")) {
                    presence.setStatus(parser.nextText());
                } else if (elementName.equals("priority")) {
                    try {
                        presence.setPriority(Integer.parseInt(parser.nextText()));
                    } catch (NumberFormatException e2) {
                    } catch (IllegalArgumentException e3) {
                        presence.setPriority(0);
                    }
                } else if (elementName.equals("show")) {
                    String modeText = parser.nextText();
                    try {
                        presence.setMode(Mode.valueOf(modeText));
                    } catch (IllegalArgumentException e4) {
                        System.err.println("Found invalid presence mode " + modeText);
                    }
                } else if (elementName.equals("error")) {
                    presence.setError(parseError(parser));
                } else {
                    presence.addExtension(parsePacketExtension(elementName, namespace, parser));
                }
            } else if (eventType == 3 && parser.getName().equals("presence")) {
                done = true;
            }
        }
        return presence;
    }

    public static IQ parseIQ(XmlPullParser parser, Connection connection) throws Exception {
        IQ iqPacket = null;
        String id = parser.getAttributeValue("", "id");
        String to = parser.getAttributeValue("", "to");
        String from = parser.getAttributeValue("", "from");
        String channelId = parser.getAttributeValue("", "chid");
        IQ.Type type = IQ.Type.fromString(parser.getAttributeValue("", nexExportFormat.TAG_FORMAT_TYPE));
        HashMap<String, String> attributes = new HashMap();
        for (int i = 0; i < parser.getAttributeCount(); i++) {
            String key = parser.getAttributeName(i);
            attributes.put(key, parser.getAttributeValue("", key));
        }
        XMPPError error = null;
        boolean done = false;
        while (!done) {
            int eventType = parser.next();
            if (eventType == 2) {
                String elementName = parser.getName();
                String namespace = parser.getNamespace();
                if (elementName.equals("error")) {
                    error = parseError(parser);
                } else {
                    iqPacket = new IQ();
                    iqPacket.addExtension(parsePacketExtension(elementName, namespace, parser));
                }
            } else if (eventType == 3 && parser.getName().equals("iq")) {
                done = true;
            }
        }
        if (iqPacket == null) {
            if (IQ.Type.GET == type || IQ.Type.SET == type) {
                iqPacket = new IQ() {
                    public String getChildElementXML() {
                        return null;
                    }
                };
                iqPacket.setPacketID(id);
                iqPacket.setTo(from);
                iqPacket.setFrom(to);
                iqPacket.setType(IQ.Type.ERROR);
                iqPacket.setChannelId(channelId);
                iqPacket.setError(new XMPPError(Condition.feature_not_implemented));
                connection.sendPacket(iqPacket);
                MyLog.e("iq usage error. send packet in packet parser.");
                return null;
            }
            iqPacket = new IQ() {
                public String getChildElementXML() {
                    return null;
                }
            };
        }
        iqPacket.setPacketID(id);
        iqPacket.setTo(to);
        iqPacket.setChannelId(channelId);
        iqPacket.setFrom(from);
        iqPacket.setType(type);
        iqPacket.setError(error);
        iqPacket.setAttributes(attributes);
        return iqPacket;
    }

    public static StreamError parseStreamError(XmlPullParser parser) throws IOException, XmlPullParserException {
        StreamError streamError = null;
        boolean done = false;
        while (!done) {
            int eventType = parser.next();
            if (eventType == 2) {
                streamError = new StreamError(parser.getName());
            } else if (eventType == 3 && parser.getName().equals("error")) {
                done = true;
            }
        }
        return streamError;
    }

    public static XMPPError parseError(XmlPullParser parser) throws Exception {
        String errorType;
        String errorNamespace = "urn:ietf:params:xml:ns:xmpp-stanzas";
        String errorCode = "-1";
        String type = null;
        String message = null;
        String condition = null;
        String reason = null;
        List<CommonPacketExtension> extensions = new ArrayList();
        for (int i = 0; i < parser.getAttributeCount(); i++) {
            if (parser.getAttributeName(i).equals("code")) {
                errorCode = parser.getAttributeValue("", "code");
            }
            if (parser.getAttributeName(i).equals(nexExportFormat.TAG_FORMAT_TYPE)) {
                type = parser.getAttributeValue("", nexExportFormat.TAG_FORMAT_TYPE);
            }
            if (parser.getAttributeName(i).equals("reason")) {
                reason = parser.getAttributeValue("", "reason");
            }
        }
        boolean done = false;
        while (!done) {
            int eventType = parser.next();
            if (eventType == 2) {
                if (parser.getName().equals("text")) {
                    message = parser.nextText();
                } else {
                    String elementName = parser.getName();
                    String namespace = parser.getNamespace();
                    if ("urn:ietf:params:xml:ns:xmpp-stanzas".equals(namespace)) {
                        condition = elementName;
                    } else {
                        extensions.add(parsePacketExtension(elementName, namespace, parser));
                    }
                }
            } else if (eventType == 3) {
                if (parser.getName().equals("error")) {
                    done = true;
                }
            } else if (eventType == 4) {
                message = parser.getText();
            }
        }
        if (type == null) {
            errorType = "cancel";
        } else {
            errorType = type;
        }
        return new XMPPError(Integer.parseInt(errorCode), errorType, reason, condition, message, extensions);
    }

    public static CommonPacketExtension parsePacketExtension(String elementName, String namespace, XmlPullParser parser) throws Exception {
        Object provider = ProviderManager.getInstance().getExtensionProvider("all", "xm:chat");
        if (provider == null || !(provider instanceof CommonPacketExtensionProvider)) {
            return null;
        }
        return ((CommonPacketExtensionProvider) provider).parseExtension(parser);
    }

    private static String getLanguageAttribute(XmlPullParser parser) {
        int i = 0;
        while (i < parser.getAttributeCount()) {
            String attributeName = parser.getAttributeName(i);
            if ("xml:lang".equals(attributeName) || ("lang".equals(attributeName) && "xml".equals(parser.getAttributePrefix(i)))) {
                return parser.getAttributeValue(i);
            }
            i++;
        }
        return null;
    }
}
