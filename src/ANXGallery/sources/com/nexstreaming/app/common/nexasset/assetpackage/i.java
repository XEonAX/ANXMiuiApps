package com.nexstreaming.app.common.nexasset.assetpackage;

import android.content.Context;
import android.graphics.RectF;
import android.util.LruCache;
import android.util.Xml;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: XMLItemDefReader */
public class i {
    private static h a = new h() {
        public List<g> a() {
            return Collections.emptyList();
        }

        public int b() {
            return 0;
        }

        public int c() {
            return 0;
        }

        public int d() {
            return 0;
        }

        public int e() {
            return 0;
        }
    };
    private static LruCache<String, h> b = new LruCache(100);

    /* compiled from: XMLItemDefReader */
    private static class a implements g {
        public ItemParameterType a;
        public String b;
        public String c;
        public String d;
        public String e;
        public int f;
        public boolean g;
        public boolean h;
        public int i;
        public int j;
        public int k;
        public RectF l;
        public Map<String, Map<String, String>> m;
        public List<com.nexstreaming.app.common.nexasset.assetpackage.g.a> n;
        public String o;

        private a() {
        }

        /* synthetic */ a(AnonymousClass1 anonymousClass1) {
            this();
        }

        public ItemParameterType a() {
            return this.a;
        }

        public String b() {
            return this.b;
        }

        public String c() {
            return this.c;
        }

        public String d() {
            return this.d;
        }

        public String e() {
            return k() + ":" + this.e;
        }

        private String k() {
            switch (this.a) {
                case CHOICE:
                    return "selection";
                case SWITCH:
                    return "switch";
                case IMAGE:
                    return "image";
                case RANGE:
                    return "range";
                case RECT:
                    return "rect";
                case RGB:
                case RGBA:
                    return "color";
                case TEXT:
                    return "text";
                case XY:
                case XYZ:
                    return "point";
                default:
                    throw new IllegalStateException("Unknown type: " + String.valueOf(this.a));
            }
        }

        public boolean f() {
            return this.g;
        }

        public int g() {
            return this.i;
        }

        public int h() {
            return this.j;
        }

        public Map<String, Map<String, String>> i() {
            return this.m;
        }

        public List<com.nexstreaming.app.common.nexasset.assetpackage.g.a> j() {
            return this.n;
        }
    }

    /* compiled from: XMLItemDefReader */
    private static class b implements com.nexstreaming.app.common.nexasset.assetpackage.g.a {
        public Map<String, Map<String, String>> a;
        public String b;
        public String c;

        private b() {
        }

        /* synthetic */ b(AnonymousClass1 anonymousClass1) {
            this();
        }

        public Map<String, Map<String, String>> a() {
            return this.a;
        }

        public String b() {
            return this.c;
        }
    }

    /* compiled from: XMLItemDefReader */
    private static class c implements h {
        private int a;
        private int b;
        private int c;
        private int d;
        private List<g> e;

        private c() {
        }

        /* synthetic */ c(AnonymousClass1 anonymousClass1) {
            this();
        }

        public List<g> a() {
            return this.e;
        }

        public int b() {
            return this.a;
        }

        public int c() {
            return this.b;
        }

        public int d() {
            return this.c;
        }

        public int e() {
            return this.d;
        }
    }

    public static h a(Context context, String str) throws XmlPullParserException, IOException {
        if (str == null) {
            return a;
        }
        h hVar = (h) b.get(str);
        if (hVar != null) {
            return hVar;
        }
        f c = c.a(context).c(str);
        if (c == null) {
            return a;
        }
        switch (c.getType()) {
            case kedl:
            case renderitem:
            case overlay:
                hVar = a(AssetPackageReader.a(context, c.getPackageURI(), c.getAssetPackage().getAssetId()).a(c.getFilePath()));
                b.put(str, hVar);
                return hVar;
            default:
                return a;
        }
    }

    public static h a(InputStream inputStream) throws XmlPullParserException, IOException {
        try {
            XmlPullParser newPullParser = Xml.newPullParser();
            newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
            newPullParser.setInput(inputStream, null);
            newPullParser.nextTag();
            h a = a(newPullParser);
            return a;
        } finally {
            inputStream.close();
        }
    }

    public static h a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        c cVar = new c();
        String name = xmlPullParser.getName();
        if (xmlPullParser.getEventType() == 2 && (name.equalsIgnoreCase("effect") || name.equalsIgnoreCase("renderitem") || name.equalsIgnoreCase("overlay"))) {
            if (name.equalsIgnoreCase("effect")) {
                if ("transition".equalsIgnoreCase(xmlPullParser.getAttributeValue(null, nexExportFormat.TAG_FORMAT_TYPE))) {
                    cVar.a = a(xmlPullParser.getAttributeValue(null, "effectoffset"), 100);
                    name = xmlPullParser.getAttributeValue(null, "effectoverlap");
                    if (name == null) {
                        name = xmlPullParser.getAttributeValue(null, "videooverlap");
                    }
                    cVar.b = a(name, 100);
                }
            } else if (name.equalsIgnoreCase("renderitem")) {
                if ("transition".equalsIgnoreCase(xmlPullParser.getAttributeValue(null, nexExportFormat.TAG_FORMAT_TYPE))) {
                    cVar.a = a(xmlPullParser.getAttributeValue(null, "transitionoffset"), 100);
                    cVar.b = a(xmlPullParser.getAttributeValue(null, "transitionoverlap"), 100);
                }
                cVar.c = a(xmlPullParser.getAttributeValue(null, nexExportFormat.TAG_FORMAT_WIDTH), 0);
                cVar.d = a(xmlPullParser.getAttributeValue(null, nexExportFormat.TAG_FORMAT_HEIGHT), 0);
            }
            cVar.e = new ArrayList();
            while (xmlPullParser.next() != 3) {
                if (xmlPullParser.getEventType() == 2) {
                    name = xmlPullParser.getName();
                    if (name.equalsIgnoreCase("parameter")) {
                        cVar.e.add(c(xmlPullParser));
                    } else if (name.equalsIgnoreCase("userfield")) {
                        g b = b(xmlPullParser);
                        if (b != null) {
                            cVar.e.add(b);
                        }
                    } else {
                        f(xmlPullParser);
                    }
                }
            }
            return cVar;
        }
        throw new XmlPullParserException("expected <effect>, <overlay> or <renderitem>" + xmlPullParser.getPositionDescription());
    }

    private static g b(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "userfield");
        a aVar = new a();
        aVar.e = xmlPullParser.getAttributeValue(null, "id");
        aVar.b = xmlPullParser.getAttributeValue(null, "default");
        aVar.f = Integer.MAX_VALUE;
        aVar.g = a(xmlPullParser.getAttributeValue(null, "maxlines"), 1) > 1;
        aVar.h = false;
        aVar.i = 0;
        aVar.j = 100;
        aVar.k = 1;
        aVar.l = a(xmlPullParser.getAttributeValue(null, "step"), null);
        String attributeValue = xmlPullParser.getAttributeValue(null, "label");
        if (attributeValue != null) {
            aVar.m = new HashMap();
            aVar.m.put("label", new HashMap());
            ((Map) aVar.m.get("label")).put("", attributeValue);
        }
        String attributeValue2 = xmlPullParser.getAttributeValue(null, nexExportFormat.TAG_FORMAT_TYPE);
        if ("selection".equalsIgnoreCase(attributeValue2)) {
            aVar.a = ItemParameterType.CHOICE;
        } else if ("color".equalsIgnoreCase(attributeValue2)) {
            aVar.a = ItemParameterType.RGB;
        } else if ("text".equalsIgnoreCase(attributeValue2)) {
            aVar.a = ItemParameterType.TEXT;
        } else if ("overlay".equalsIgnoreCase(attributeValue2)) {
            aVar.a = ItemParameterType.IMAGE;
        } else if ("undefined".equalsIgnoreCase(attributeValue2)) {
            f(xmlPullParser);
            return null;
        } else {
            throw new XmlPullParserException("unrecognized parameter type" + xmlPullParser.getPositionDescription());
        }
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                attributeValue2 = xmlPullParser.getName();
                if (attributeValue2.equalsIgnoreCase("fieldlabel")) {
                    if (aVar.m == null) {
                        aVar.m = new HashMap();
                    }
                    attributeValue = "label";
                    String attributeValue3 = xmlPullParser.getAttributeValue(null, "locale");
                    String attributeValue4 = xmlPullParser.getAttributeValue(null, "value");
                    f(xmlPullParser);
                    if (!(attributeValue3 == null || attributeValue4 == null)) {
                        Map map = (Map) aVar.m.get(attributeValue);
                        if (map == null) {
                            map = new HashMap();
                            aVar.m.put(attributeValue, map);
                        }
                        map.put(attributeValue3, attributeValue4);
                    }
                } else if (attributeValue2.equalsIgnoreCase("option")) {
                    if (aVar.n == null) {
                        aVar.n = new ArrayList();
                    }
                    aVar.n.add(e(xmlPullParser));
                } else if (!attributeValue2.equalsIgnoreCase("icon")) {
                    f(xmlPullParser);
                } else if (aVar.o != null) {
                    throw new XmlPullParserException("multiple <icon> tags not allowed" + xmlPullParser.getPositionDescription());
                } else {
                    aVar.o = xmlPullParser.getAttributeValue(null, "src");
                }
            }
        }
        return aVar;
    }

    private static int a(String str, int i) {
        if (str == null) {
            return i;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            return i;
        }
    }

    private static RectF a(String str, RectF rectF) {
        if (str == null) {
            return rectF;
        }
        try {
            String[] split = str.split(" +");
            if (split.length >= 4) {
                return new RectF(Float.parseFloat(split[0]), Float.parseFloat(split[1]), Float.parseFloat(split[2]), Float.parseFloat(split[3]));
            }
            return rectF;
        } catch (NumberFormatException e) {
            return rectF;
        }
    }

    private static boolean a(String str, boolean z) {
        if (str == null) {
            return z;
        }
        if ("true".equalsIgnoreCase(str)) {
            return true;
        }
        if ("false".equalsIgnoreCase(str)) {
            return false;
        }
        return z;
    }

    private static g c(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "parameter");
        a aVar = new a();
        aVar.e = xmlPullParser.getAttributeValue(null, "id");
        aVar.b = xmlPullParser.getAttributeValue(null, "default");
        aVar.f = a(xmlPullParser.getAttributeValue(null, "maxlen"), Integer.MAX_VALUE);
        aVar.g = a(xmlPullParser.getAttributeValue(null, "multiline"), false);
        aVar.h = a(xmlPullParser.getAttributeValue(null, "private"), false);
        aVar.i = a(xmlPullParser.getAttributeValue(null, "minvalue"), 0);
        aVar.j = a(xmlPullParser.getAttributeValue(null, "maxvalue"), 100);
        aVar.k = a(xmlPullParser.getAttributeValue(null, "step"), 1);
        aVar.l = a(xmlPullParser.getAttributeValue(null, "bounds"), null);
        String attributeValue = xmlPullParser.getAttributeValue(null, nexExportFormat.TAG_FORMAT_TYPE);
        if ("choice".equalsIgnoreCase(attributeValue)) {
            aVar.a = ItemParameterType.CHOICE;
        } else if ("point".equalsIgnoreCase(attributeValue)) {
            int a = a(xmlPullParser.getAttributeValue(null, "dimensions"), 2);
            if (a == 2) {
                aVar.a = ItemParameterType.XY;
            } else if (a == 3) {
                aVar.a = ItemParameterType.XYZ;
            } else {
                throw new XmlPullParserException("unsupported number of parameter dimensions: " + a);
            }
        } else if ("color".equalsIgnoreCase(attributeValue)) {
            if (a(xmlPullParser.getAttributeValue(null, "alpha"), false)) {
                aVar.a = ItemParameterType.RGBA;
            } else {
                aVar.a = ItemParameterType.RGB;
            }
        } else if ("range".equalsIgnoreCase(attributeValue)) {
            aVar.a = ItemParameterType.RANGE;
        } else if ("rect".equalsIgnoreCase(attributeValue)) {
            aVar.a = ItemParameterType.RECT;
        } else if ("text".equalsIgnoreCase(attributeValue)) {
            aVar.a = ItemParameterType.TEXT;
        } else if ("switch".equalsIgnoreCase(attributeValue)) {
            aVar.a = ItemParameterType.SWITCH;
            aVar.c = xmlPullParser.getAttributeValue(null, "off");
            aVar.d = xmlPullParser.getAttributeValue(null, "on");
        } else if ("image".equalsIgnoreCase(attributeValue)) {
            aVar.a = ItemParameterType.IMAGE;
        } else {
            throw new XmlPullParserException("unrecognized parameter type" + xmlPullParser.getPositionDescription());
        }
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                attributeValue = xmlPullParser.getName();
                if (attributeValue.equalsIgnoreCase("string")) {
                    if (aVar.m == null) {
                        aVar.m = new HashMap();
                    }
                    String attributeValue2 = xmlPullParser.getAttributeValue(null, "name");
                    String attributeValue3 = xmlPullParser.getAttributeValue(null, "lang");
                    String g = g(xmlPullParser);
                    if (!(attributeValue2 == null || attributeValue3 == null || g == null)) {
                        Map map = (Map) aVar.m.get(attributeValue2);
                        if (map == null) {
                            map = new HashMap();
                            aVar.m.put(attributeValue2, map);
                        }
                        map.put(attributeValue3, g);
                    }
                } else if (attributeValue.equalsIgnoreCase("option")) {
                    if (aVar.n == null) {
                        aVar.n = new ArrayList();
                    }
                    aVar.n.add(d(xmlPullParser));
                } else if (!attributeValue.equalsIgnoreCase("icon")) {
                    f(xmlPullParser);
                } else if (aVar.o != null) {
                    throw new XmlPullParserException("multiple <icon> tags not allowed" + xmlPullParser.getPositionDescription());
                } else {
                    aVar.o = xmlPullParser.getAttributeValue(null, "src");
                }
            }
        }
        return aVar;
    }

    private static com.nexstreaming.app.common.nexasset.assetpackage.g.a d(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "option");
        com.nexstreaming.app.common.nexasset.assetpackage.g.a bVar = new b();
        bVar.c = xmlPullParser.getAttributeValue(null, "value");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name.equalsIgnoreCase("string")) {
                    String attributeValue = xmlPullParser.getAttributeValue(null, "name");
                    String attributeValue2 = xmlPullParser.getAttributeValue(null, "lang");
                    String g = g(xmlPullParser);
                    if (!(attributeValue == null || attributeValue2 == null || g == null)) {
                        if (bVar.a == null) {
                            bVar.a = new HashMap();
                        }
                        Map map = (Map) bVar.a.get(attributeValue);
                        if (map == null) {
                            map = new HashMap();
                            bVar.a.put(attributeValue, map);
                        }
                        map.put(attributeValue2, g);
                    }
                } else if (!name.equalsIgnoreCase("icon")) {
                    f(xmlPullParser);
                } else if (bVar.b != null) {
                    throw new XmlPullParserException("multiple <icon> tags not allowed" + xmlPullParser.getPositionDescription());
                } else {
                    bVar.b = xmlPullParser.getAttributeValue(null, "src");
                }
            }
        }
        return bVar;
    }

    private static com.nexstreaming.app.common.nexasset.assetpackage.g.a e(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "option");
        com.nexstreaming.app.common.nexasset.assetpackage.g.a bVar = new b();
        bVar.c = xmlPullParser.getAttributeValue(null, "value");
        bVar.b = xmlPullParser.getAttributeValue(null, "icon");
        String attributeValue = xmlPullParser.getAttributeValue(null, "label");
        if (attributeValue != null) {
            bVar.a = new HashMap();
            bVar.a.put("label", new HashMap());
            ((Map) bVar.a.get("label")).put("", attributeValue);
        }
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equalsIgnoreCase("fieldlabel")) {
                    if (bVar.a == null) {
                        bVar.a = new HashMap();
                    }
                    attributeValue = "label";
                    String attributeValue2 = xmlPullParser.getAttributeValue(null, "locale");
                    String attributeValue3 = xmlPullParser.getAttributeValue(null, "value");
                    f(xmlPullParser);
                    if (!(attributeValue2 == null || attributeValue3 == null)) {
                        Map map = (Map) bVar.a.get(attributeValue);
                        if (map == null) {
                            map = new HashMap();
                            bVar.a.put(attributeValue, map);
                        }
                        map.put(attributeValue2, attributeValue3);
                    }
                } else {
                    f(xmlPullParser);
                }
            }
        }
        return bVar;
    }

    private static void f(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (xmlPullParser.getEventType() != 2) {
            throw new IllegalStateException();
        }
        int i = 1;
        while (i != 0) {
            switch (xmlPullParser.next()) {
                case 2:
                    i++;
                    break;
                case 3:
                    i--;
                    break;
                default:
                    break;
            }
        }
    }

    private static String g(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String str = null;
        if (xmlPullParser.getEventType() != 2) {
            throw new IllegalStateException();
        }
        int i = 1;
        while (i != 0) {
            switch (xmlPullParser.next()) {
                case 2:
                    i++;
                    break;
                case 3:
                    i--;
                    break;
                case 4:
                    if (str != null) {
                        str = str + xmlPullParser.getText();
                        break;
                    }
                    str = xmlPullParser.getText();
                    break;
                default:
                    break;
            }
        }
        return str;
    }
}
