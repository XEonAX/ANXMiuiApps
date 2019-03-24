package com.miui.internal.hybrid;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources.NotFoundException;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import miui.hybrid.Response;
import org.xmlpull.v1.XmlPullParserException;

public class XmlConfigParser implements ConfigParser {
    private static final String eJ = "timestamp";
    private static final String eK = "vendor";
    private static final String fR = "com.miui.sdk.hybrid.config";
    private static final String fS = "miui_hybrid_config";
    private static final String fT = "widget";
    private static final String fU = "content";
    private static final String fV = "feature";
    private static final String fW = "param";
    private static final String fX = "preference";
    private static final String fY = "access";
    private static final String fZ = "src";
    private static final String fz = "signature";
    private static final String ga = "origin";
    private static final String gb = "subdomains";
    private static final String gc = "name";
    private static final String gd = "value";
    private XmlResourceParser ge;

    private XmlConfigParser(XmlResourceParser xmlResourceParser) {
        this.ge = xmlResourceParser;
    }

    public static XmlConfigParser create(Context context) throws HybridException {
        try {
            int i;
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle != null) {
                i = bundle.getInt(fR);
            } else {
                i = 0;
            }
            if (i == 0) {
                i = context.getResources().getIdentifier(fS, "xml", context.getPackageName());
            }
            return createFromResId(context, i);
        } catch (NameNotFoundException e) {
            throw new HybridException(Response.CODE_CONFIG_ERROR, e.getMessage());
        }
    }

    public static XmlConfigParser createFromResId(Context context, int i) throws HybridException {
        try {
            return createFromXmlParser(context.getResources().getXml(i));
        } catch (NotFoundException e) {
            throw new HybridException(Response.CODE_CONFIG_ERROR, e.getMessage());
        }
    }

    public static XmlConfigParser createFromXmlParser(XmlResourceParser xmlResourceParser) {
        return new XmlConfigParser(xmlResourceParser);
    }

    public Config parse(Map<String, Object> map) throws HybridException {
        Map map2;
        if (map2 == null) {
            map2 = new HashMap();
        }
        Config config = new Config();
        if (this.ge != null) {
            try {
                XmlResourceParser xmlResourceParser = this.ge;
                while (true) {
                    int next = xmlResourceParser.next();
                    if (next == 2 || next == 1) {
                    }
                }
                if ("widget".equals(xmlResourceParser.getName())) {
                    a(config, xmlResourceParser);
                }
                this.ge.close();
            } catch (XmlPullParserException e) {
                throw new HybridException(Response.CODE_CONFIG_ERROR, e.getMessage());
            } catch (IOException e2) {
                throw new HybridException(Response.CODE_CONFIG_ERROR, e2.getMessage());
            } catch (Throwable th) {
                this.ge.close();
            }
        }
        return a(config, map2);
    }

    private void a(Config config, XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && xmlResourceParser.getDepth() <= depth) {
                return;
            }
            if (next != 3) {
                if (next != 4) {
                    String name = xmlResourceParser.getName();
                    if ("content".equals(name)) {
                        b(config, xmlResourceParser);
                    } else if ("feature".equals(name)) {
                        c(config, xmlResourceParser);
                    } else if (fX.equals(name)) {
                        d(config, xmlResourceParser);
                    } else if (fY.equals(name)) {
                        e(config, xmlResourceParser);
                    }
                }
            }
        }
    }

    private void b(Config config, XmlResourceParser xmlResourceParser) {
        config.setContent(xmlResourceParser.getAttributeValue(null, "src"));
    }

    private void c(Config config, XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        Feature feature = new Feature();
        feature.setName(xmlResourceParser.getAttributeValue(null, "name"));
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || (next == 3 && xmlResourceParser.getDepth() <= depth)) {
                config.addFeature(feature);
            } else if (next != 3) {
                if (next != 4) {
                    if ("param".equals(xmlResourceParser.getName())) {
                        a(feature, xmlResourceParser);
                    }
                }
            }
        }
        config.addFeature(feature);
    }

    private void a(Feature feature, XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        feature.setParam(xmlResourceParser.getAttributeValue(null, "name").toLowerCase(), xmlResourceParser.getAttributeValue(null, "value"));
    }

    private void d(Config config, XmlResourceParser xmlResourceParser) {
        String toLowerCase = xmlResourceParser.getAttributeValue(null, "name").toLowerCase();
        String attributeValue = xmlResourceParser.getAttributeValue(null, "value");
        if (fz.equals(toLowerCase)) {
            e(config).setSignature(attributeValue);
        } else if ("timestamp".equals(toLowerCase)) {
            e(config).setTimestamp(Long.parseLong(attributeValue));
        } else if (eK.equals(toLowerCase)) {
            config.setVendor(attributeValue);
        } else {
            config.setPreference(toLowerCase, attributeValue);
        }
    }

    private Security e(Config config) {
        Security security = config.getSecurity();
        if (security != null) {
            return security;
        }
        security = new Security();
        config.setSecurity(security);
        return security;
    }

    private void e(Config config, XmlResourceParser xmlResourceParser) {
        Permission permission = new Permission();
        permission.setUri(xmlResourceParser.getAttributeValue(null, ga));
        permission.setApplySubdomains(xmlResourceParser.getAttributeBooleanValue(null, gb, false));
        permission.setForbidden(false);
        config.addPermission(permission);
    }

    private Config a(Config config, Map<String, Object> map) {
        return config;
    }
}
