package com.nexstreaming.app.common.util;

import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;

/* compiled from: NexEDLConverter */
public class h {
    public static String a(String str, String str2) {
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            newInstance.setNamespaceAware(true);
            XmlPullParser newPullParser = newInstance.newPullParser();
            newPullParser.setInput(new StringReader(str));
            XmlSerializer newSerializer = newInstance.newSerializer();
            Writer stringWriter = new StringWriter();
            newSerializer.setOutput(stringWriter);
            int eventType = newPullParser.getEventType();
            String str3 = "video2";
            String str4 = "video1";
            int i = eventType;
            Object obj = eventType == 1 ? 1 : null;
            Object obj2 = null;
            while (obj == null) {
                if (i != 0) {
                    if (i == 1) {
                        newSerializer.endDocument();
                        eventType = 1;
                    } else if (i == 2) {
                        if (newPullParser.getName().compareToIgnoreCase("texture") == 0) {
                            for (i = 0; i < newPullParser.getAttributeCount(); i++) {
                                if (newPullParser.getAttributeName(i).compareToIgnoreCase("video") == 0) {
                                    if (newPullParser.getAttributeValue(i).compareToIgnoreCase("2") == 0) {
                                        str3 = "@" + newPullParser.getAttributeValue(null, "id");
                                        obj2 = 1;
                                    } else if (newPullParser.getAttributeValue(i).compareToIgnoreCase("1") == 0) {
                                        str4 = "@" + newPullParser.getAttributeValue(null, "id");
                                    }
                                }
                            }
                        }
                        if (obj2 == null) {
                            newSerializer.startTag(newPullParser.getNamespace(), newPullParser.getName());
                            int i2 = 0;
                            while (i2 < newPullParser.getAttributeCount()) {
                                Object obj3;
                                if (newPullParser.getAttributeName(i2).compareToIgnoreCase("texture") == 0 && newPullParser.getAttributeValue(i2).compareToIgnoreCase(str3) == 0) {
                                    newSerializer.attribute(newPullParser.getAttributeNamespace(i2), newPullParser.getAttributeName(i2), str4);
                                    obj3 = 1;
                                } else {
                                    obj3 = null;
                                }
                                if (newPullParser.getAttributeName(i2).compareToIgnoreCase(nexExportFormat.TAG_FORMAT_TYPE) == 0 && newPullParser.getName().compareToIgnoreCase("effect") == 0) {
                                    newSerializer.attribute(newPullParser.getAttributeNamespace(i2), newPullParser.getAttributeName(i2), "title");
                                    obj3 = 1;
                                }
                                if (newPullParser.getAttributeName(i2).compareToIgnoreCase("id") == 0 && newPullParser.getName().compareToIgnoreCase("effect") == 0 && str2 != null && str2.length() > 0) {
                                    newSerializer.attribute(newPullParser.getAttributeNamespace(i2), newPullParser.getAttributeName(i2), str2);
                                    obj3 = 1;
                                }
                                if (obj3 == null) {
                                    newSerializer.attribute(newPullParser.getAttributeNamespace(i2), newPullParser.getAttributeName(i2), newPullParser.getAttributeValue(i2));
                                }
                                i2++;
                            }
                        }
                    } else if (i == 3) {
                        if (obj2 == 1 && newPullParser.getName().compareToIgnoreCase("texture") == 0) {
                            obj2 = null;
                        } else {
                            newSerializer.endTag(newPullParser.getNamespace(), newPullParser.getName());
                        }
                    } else if (i == 4) {
                        newSerializer.text(newPullParser.getText());
                    }
                }
                i = newPullParser.next();
            }
            return stringWriter.toString();
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }
}
