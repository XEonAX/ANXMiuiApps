package com.xiaomi.smack;

import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Vector;
import org.keyczar.Keyczar;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

public final class SmackConfiguration {
    private static Vector<String> defaultMechs = new Vector();
    private static int keepAliveInterval;
    private static int packetReplyTimeout;
    private static int pingInterval = 600000;
    private static int serverShutdownTimeout = 330000;

    static {
        packetReplyTimeout = 5000;
        keepAliveInterval = 330000;
        try {
            for (ClassLoader classLoader : getClassLoaders()) {
                Enumeration configEnum = classLoader.getResources("META-INF/smack-config.xml");
                while (configEnum.hasMoreElements()) {
                    InputStream systemStream = null;
                    try {
                        systemStream = ((URL) configEnum.nextElement()).openStream();
                        XmlPullParser parser = XmlPullParserFactory.newInstance().newPullParser();
                        parser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
                        parser.setInput(systemStream, Keyczar.DEFAULT_ENCODING);
                        int eventType = parser.getEventType();
                        do {
                            if (eventType == 2) {
                                if (parser.getName().equals("className")) {
                                    parseClassToLoad(parser);
                                } else if (parser.getName().equals("packetReplyTimeout")) {
                                    packetReplyTimeout = parseIntProperty(parser, packetReplyTimeout);
                                } else if (parser.getName().equals("keepAliveInterval")) {
                                    keepAliveInterval = parseIntProperty(parser, keepAliveInterval);
                                } else if (parser.getName().equals("mechName")) {
                                    defaultMechs.add(parser.nextText());
                                }
                            }
                            eventType = parser.next();
                        } while (eventType != 1);
                        try {
                            systemStream.close();
                        } catch (Exception e) {
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        systemStream.close();
                    } catch (Throwable th) {
                        try {
                            systemStream.close();
                        } catch (Exception e3) {
                        }
                        throw th;
                    }
                }
            }
        } catch (Exception e22) {
            e22.printStackTrace();
        }
    }

    private SmackConfiguration() {
    }

    public static String getVersion() {
        return "3.1.0";
    }

    public static int getCheckAliveInterval() {
        return keepAliveInterval;
    }

    public static int getPingInteval() {
        return pingInterval;
    }

    private static void parseClassToLoad(XmlPullParser parser) throws Exception {
        String className = parser.nextText();
        try {
            Class.forName(className);
        } catch (ClassNotFoundException e) {
            System.err.println("Error! A startup class specified in smack-config.xml could not be loaded: " + className);
        }
    }

    private static int parseIntProperty(XmlPullParser parser, int defaultValue) throws Exception {
        try {
            return Integer.parseInt(parser.nextText());
        } catch (NumberFormatException nfe) {
            nfe.printStackTrace();
            return defaultValue;
        }
    }

    private static ClassLoader[] getClassLoaders() {
        int i = 0;
        ClassLoader[] classLoaders = new ClassLoader[]{SmackConfiguration.class.getClassLoader(), Thread.currentThread().getContextClassLoader()};
        List<ClassLoader> loaders = new ArrayList();
        int length = classLoaders.length;
        while (i < length) {
            ClassLoader classLoader = classLoaders[i];
            if (classLoader != null) {
                loaders.add(classLoader);
            }
            i++;
        }
        return (ClassLoader[]) loaders.toArray(new ClassLoader[loaders.size()]);
    }
}
