package com.larvalabs.svgandroid;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.Picture;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.util.Log;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

public class SVGParser {

    private enum Prefix {
        matrix,
        translate,
        scale,
        skewX,
        skewY,
        rotate
    }

    private static class a {
        String a;
        String b;
        boolean c;
        float d;
        float e;
        float f;
        float g;
        float h;
        float i;
        float j;
        ArrayList<Float> k;
        ArrayList<Integer> l;
        Matrix m;

        private a() {
            this.k = new ArrayList();
            this.l = new ArrayList();
            this.m = null;
        }

        public a a(a aVar) {
            a aVar2 = new a();
            aVar2.a = aVar.a;
            aVar2.b = this.a;
            aVar2.c = aVar.c;
            aVar2.d = aVar.d;
            aVar2.f = aVar.f;
            aVar2.e = aVar.e;
            aVar2.g = aVar.g;
            aVar2.h = aVar.h;
            aVar2.i = aVar.i;
            aVar2.j = aVar.j;
            aVar2.k = this.k;
            aVar2.l = this.l;
            aVar2.m = this.m;
            if (aVar.m != null) {
                if (this.m == null) {
                    aVar2.m = aVar.m;
                } else {
                    Matrix matrix = new Matrix(this.m);
                    matrix.preConcat(aVar.m);
                    aVar2.m = matrix;
                }
            }
            return aVar2;
        }
    }

    private static class b {
        private ArrayList<Float> a;
        private int b;

        public b(ArrayList<Float> arrayList, int i) {
            this.a = arrayList;
            this.b = i;
        }

        public int a() {
            return this.b;
        }
    }

    public static class c {
        private boolean a = false;
        private int b = 0;
        private boolean c = false;
        private int d = 0;
        private float e = 0.0f;
        private int f = 0;
        private int g = 0;
        private Map<Integer, Integer> h;
        private Set<Integer> i = new HashSet();
        private int j;

        public c(c cVar) {
            if (cVar != null) {
                this.a = cVar.a;
                this.b = cVar.b;
                this.c = cVar.c;
                this.d = cVar.d;
                this.e = cVar.e;
                this.f = cVar.f;
                this.g = cVar.g;
                if (cVar.h != null) {
                    this.h = new HashMap();
                    this.h.putAll(cVar.h);
                }
                this.j = cVar.j;
                this.i.addAll(cVar.i);
            }
        }

        public void a(Map<Integer, Integer> map, int i) {
            this.h = map;
            this.j = i;
        }

        private int a(int i) {
            Log.d("SVGAndroid", "mapColor");
            if (this.h == null || !this.h.containsKey(Integer.valueOf(i))) {
                if (this.h != null && this.j > 0) {
                    for (Entry entry : this.h.entrySet()) {
                        int intValue = ((Integer) entry.getKey()).intValue();
                        if (Math.max(Math.max(Math.abs(Color.red(intValue) - Color.red(i)), Math.abs(Color.green(intValue) - Color.green(i))), Math.abs(Color.blue(intValue) - Color.blue(i))) <= this.j) {
                            Log.d("SVGAndroid", "mapColor : SIMILAR");
                            int intValue2 = ((Integer) entry.getValue()).intValue();
                            return Color.rgb(Math.max(0, Math.min(255, (Color.red(i) - Color.red(intValue)) + Color.red(intValue2))), Math.max(0, Math.min(255, (Color.green(i) - Color.green(intValue)) + Color.green(intValue2))), Math.max(0, Math.min(255, Color.blue(intValue2) + (Color.blue(i) - Color.blue(intValue)))));
                        }
                    }
                }
                Log.d("SVGAndroid", "mapColor : NO CHANGE");
                return i;
            }
            Log.d("SVGAndroid", "mapColor : EXACT");
            return ((Integer) this.h.get(Integer.valueOf(i))).intValue();
        }
    }

    private static class d {
        g a;
        Attributes b;
        Set<String> c;

        private d(Attributes attributes) {
            this.a = null;
            this.c = null;
            this.b = attributes;
            String a = SVGParser.e("style", attributes);
            if (a != null) {
                this.a = new g(a);
            }
        }

        public void a(String str) {
            if (this.c == null) {
                this.c = new HashSet();
            }
            this.c.add(str);
        }

        public String b(String str) {
            String str2 = null;
            if (this.c != null && this.c.contains(str)) {
                return null;
            }
            if (this.a != null) {
                str2 = this.a.a(str);
            }
            if (str2 == null) {
                return SVGParser.e(str, this.b);
            }
            return str2;
        }

        public String c(String str) {
            return b(str);
        }

        public Integer d(String str) {
            Integer num = null;
            String b = b(str);
            if (b == null || !b.startsWith("#")) {
                return num;
            }
            try {
                return Integer.valueOf(Integer.parseInt(b.substring(1), 16));
            } catch (NumberFormatException e) {
                return num;
            }
        }

        public Float e(String str) {
            Float f = null;
            String b = b(str);
            if (b == null) {
                return f;
            }
            try {
                return Float.valueOf(Float.parseFloat(b));
            } catch (NumberFormatException e) {
                return f;
            }
        }
    }

    private static class e extends DefaultHandler {
        Picture a;
        Canvas b;
        Paint c;
        RectF d;
        RectF e;
        RectF f;
        Deque<f> g;
        c h;
        boolean i;
        HashMap<String, Shader> j;
        HashMap<String, a> k;
        a l;
        private boolean m;
        private int n;
        private boolean o;

        private e(Picture picture, c cVar) {
            this.d = new RectF();
            this.e = null;
            this.f = new RectF(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
            this.g = new ArrayDeque();
            this.i = false;
            this.j = new HashMap();
            this.k = new HashMap();
            this.l = null;
            this.m = false;
            this.n = 0;
            this.o = false;
            Log.d("SVGAndroid", "SVGHandler Constructed");
            this.a = picture;
            this.c = new Paint();
            this.c.setAntiAlias(true);
            f fVar = new f();
            fVar.h = true;
            this.g.push(fVar);
            this.h = new c(cVar);
        }

        public c a() {
            return this.h;
        }

        public void startDocument() throws SAXException {
        }

        public void endDocument() throws SAXException {
        }

        private boolean a(d dVar, HashMap<String, Shader> hashMap, f fVar) {
            Log.d("SVGAndroid", "doFill : IN");
            if ("none".equals(dVar.c("display"))) {
                return false;
            }
            String c = dVar.c("fill-rule");
            if (c != null) {
                if ("nonzero".equals(c)) {
                    fVar.a(FillType.WINDING);
                } else if ("evenodd".equals(c)) {
                    fVar.a(FillType.EVEN_ODD);
                }
            }
            if (this.h.a) {
                fVar.a(this.h.b);
                return true;
            }
            c = dVar.c("fill");
            if (c == null || !c.startsWith("url(#")) {
                if (c == null || !c.equals("none")) {
                    Integer d = dVar.d("fill");
                    if (d != null) {
                        Log.d("SVGAndroid", "doFill :   c=" + com.nexstreaming.app.common.util.c.a(d.intValue()));
                        fVar.a(a(dVar, d, true));
                        return true;
                    } else if (dVar.c("fill") == null && dVar.c("stroke") == null) {
                        Log.d("SVGAndroid", "doFill :   no fill & no stroke");
                        return true;
                    }
                }
                Log.d("SVGAndroid", "doFill :   none");
                fVar.h = false;
                Log.d("SVGAndroid", "doFill :   no fill");
                return false;
            }
            Log.d("SVGAndroid", "doFill :   gradient>>" + c);
            Shader shader = (Shader) hashMap.get(c.substring("url(#".length(), c.length() - 1));
            if (shader == null) {
                return false;
            }
            fVar.a(shader);
            return true;
        }

        private boolean a(d dVar, f fVar) {
            Log.d("SVGAndroid", "doStroke : IN");
            if ("none".equals(dVar.c("display"))) {
                return false;
            }
            if (this.h.c) {
                fVar.b(this.h.d);
                fVar.a(this.h.e);
                return true;
            }
            String c = dVar.c("stroke");
            if (c == null || !c.equals("none")) {
                Integer d = dVar.d("stroke");
                if (d == null) {
                    return false;
                }
                fVar.b(a(dVar, d, false));
                Float e = dVar.e("stroke-width");
                if (e != null) {
                    fVar.a(e.floatValue());
                }
                String c2 = dVar.c("stroke-linecap");
                if ("round".equals(c2)) {
                    fVar.a(Cap.ROUND);
                } else if ("square".equals(c2)) {
                    fVar.a(Cap.SQUARE);
                } else if ("butt".equals(c2)) {
                    fVar.a(Cap.BUTT);
                }
                c2 = dVar.c("stroke-linejoin");
                if ("miter".equals(c2)) {
                    fVar.a(Join.MITER);
                } else if ("round".equals(c2)) {
                    fVar.a(Join.ROUND);
                } else if ("bevel".equals(c2)) {
                    fVar.a(Join.BEVEL);
                }
                return true;
            }
            fVar.g = false;
            return true;
        }

        private a a(boolean z, Attributes attributes) {
            Log.d("SVGAndroid", "doGradient : IN");
            a aVar = new a();
            aVar.a = SVGParser.e("id", attributes);
            aVar.c = z;
            if (z) {
                aVar.d = SVGParser.b("x1", attributes, Float.valueOf(0.0f)).floatValue();
                aVar.f = SVGParser.b("x2", attributes, Float.valueOf(0.0f)).floatValue();
                aVar.e = SVGParser.b("y1", attributes, Float.valueOf(0.0f)).floatValue();
                aVar.g = SVGParser.b("y2", attributes, Float.valueOf(0.0f)).floatValue();
            } else {
                aVar.h = SVGParser.b("cx", attributes, Float.valueOf(0.0f)).floatValue();
                aVar.i = SVGParser.b("cy", attributes, Float.valueOf(0.0f)).floatValue();
                aVar.j = SVGParser.b("r", attributes, Float.valueOf(0.0f)).floatValue();
            }
            String a = SVGParser.e("gradientTransform", attributes);
            if (a != null) {
                aVar.m = SVGParser.e(a);
            }
            a = SVGParser.e("href", attributes);
            if (a != null) {
                if (a.startsWith("#")) {
                    a = a.substring(1);
                }
                aVar.b = a;
            }
            return aVar;
        }

        private int a(d dVar, Integer num, boolean z) {
            Log.d("SVGAndroid", "getColor : fillMode=" + z + " color=" + com.nexstreaming.app.common.util.c.a(num.intValue()));
            if (z && this.h.a) {
                Log.d("SVGAndroid", "getColor : FILL OVERRIDE");
                return this.h.b;
            }
            int intValue = (num.intValue() & 16777215) | -16777216;
            if (this.h.i != null) {
                this.h.i.add(Integer.valueOf(intValue));
            }
            if (this.h.f == intValue) {
                Log.d("SVGAndroid", "getColor : REPLACE COLOR");
                intValue = this.h.g;
            }
            if (this.h.h != null) {
                Log.d("SVGAndroid", "getColor : MAP COLOR");
                intValue = this.h.a(intValue);
            }
            Float e = dVar.e("opacity");
            if (e == null) {
                e = dVar.e(z ? "fill-opacity" : "stroke-opacity");
            }
            if (e != null) {
                return (intValue & 16777215) | ((((int) (e.floatValue() * 255.0f)) << 24) & -16777216);
            }
            return intValue;
        }

        private void a(float f, float f2) {
            if (f < this.f.left) {
                this.f.left = f;
            }
            if (f > this.f.right) {
                this.f.right = f;
            }
            if (f2 < this.f.top) {
                this.f.top = f2;
            }
            if (f2 > this.f.bottom) {
                this.f.bottom = f2;
            }
        }

        private void a(float f, float f2, float f3, float f4) {
            a(f, f2);
            a(f + f3, f2 + f4);
        }

        private void a(Path path) {
            path.computeBounds(this.d, false);
            a(this.d.left, this.d.top);
            a(this.d.right, this.d.bottom);
        }

        private void a(Attributes attributes) {
            String a = SVGParser.e("transform", attributes);
            this.i = a != null;
            if (this.i) {
                Matrix b = SVGParser.e(a);
                this.b.save();
                this.b.concat(b);
            }
        }

        private void b() {
            if (this.i) {
                this.b.restore();
            }
        }

        /* JADX WARNING: Missing block: B:156:0x075b, code:
            if (r19.equals("polyline") != false) goto L_0x075d;
     */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            Log.d("SVGAndroid", "startElement : " + str2 + " atts=" + attributes.toString());
            Float b;
            Float b2;
            Float b3;
            if (this.o) {
                if (str2.equals("rect")) {
                    b = SVGParser.f("x", attributes);
                    if (b == null) {
                        b = Float.valueOf(0.0f);
                    }
                    b2 = SVGParser.f("y", attributes);
                    if (b2 == null) {
                        b2 = Float.valueOf(0.0f);
                    }
                    b3 = SVGParser.f(nexExportFormat.TAG_FORMAT_WIDTH, attributes);
                    SVGParser.f(nexExportFormat.TAG_FORMAT_HEIGHT, attributes);
                    this.e = new RectF(b.floatValue(), b2.floatValue(), b.floatValue() + b3.floatValue(), b2.floatValue() + b3.floatValue());
                    return;
                }
                return;
            }
            Float b4;
            int i;
            float f;
            int i2;
            if (str2.equals("svg")) {
                float f2;
                b = SVGParser.f(nexExportFormat.TAG_FORMAT_WIDTH, attributes);
                b4 = SVGParser.f(nexExportFormat.TAG_FORMAT_HEIGHT, attributes);
                if (b == null || b4 == null) {
                    String a = SVGParser.e("viewBox", attributes);
                    if (a == null) {
                        i = 100;
                        Log.e("SVGHandler", "Missing SVG bounds! Defaulting to 100x100");
                        f2 = 0.0f;
                        f = 0.0f;
                        i2 = 100;
                    } else {
                        b a2 = SVGParser.d(a);
                        if (a2.a.size() < 4) {
                            i = 100;
                            Log.e("SVGHandler", "Malformed SVG bounds! Defaulting to 100x100");
                            f2 = 0.0f;
                            f = 0.0f;
                            i2 = 100;
                        } else {
                            f2 = ((Float) a2.a.get(0)).floatValue();
                            f = ((Float) a2.a.get(1)).floatValue();
                            i2 = (int) Math.ceil((double) ((Float) a2.a.get(2)).floatValue());
                            i = (int) Math.ceil((double) ((Float) a2.a.get(3)).floatValue());
                            Log.d("SVGAndroid", "Used viewBox");
                        }
                    }
                } else {
                    int ceil = (int) Math.ceil((double) b.floatValue());
                    i = (int) Math.ceil((double) b4.floatValue());
                    Log.d("SVGAndroid", "Used width, height");
                    int i3 = ceil;
                    f2 = 0.0f;
                    f = 0.0f;
                    i2 = i3;
                }
                Log.d("SVGAndroid", "BEGIN REC: dx,dy=" + f2 + "," + f + "  w,h=" + i2 + "," + i);
                this.b = this.a.beginRecording(i2, i);
                this.b.translate(f2, f);
                return;
            }
            if (!str2.equals("defs")) {
                if (str2.equals("linearGradient")) {
                    this.l = a(true, attributes);
                    return;
                }
                if (str2.equals("radialGradient")) {
                    this.l = a(false, attributes);
                    return;
                }
                d dVar;
                if (!str2.equals("stop")) {
                    d dVar2;
                    if (str2.equals("g")) {
                        if ("bounds".equalsIgnoreCase(SVGParser.e("id", attributes))) {
                            this.o = true;
                        }
                        if (this.m) {
                            this.n++;
                        }
                        f fVar = new f((f) this.g.peek());
                        dVar2 = new d(attributes);
                        b = dVar2.e("opacity");
                        if (b == null) {
                            i = 255;
                        } else {
                            i = Math.max(0, Math.min(255, (int) (b.floatValue() * 255.0f)));
                        }
                        if (i >= 255 || i <= 0) {
                            this.b.save();
                        } else {
                            this.b.saveLayerAlpha(null, i, 31);
                            dVar2.a("opacity");
                        }
                        a(dVar2, this.j, fVar);
                        a(dVar2, fVar);
                        this.g.push(fVar);
                        if ((i <= 0 || "none".equals(SVGParser.e("display", attributes))) && !this.m) {
                            this.m = true;
                            this.n = 1;
                            return;
                        }
                        return;
                    }
                    Float b5;
                    d dVar3;
                    f fVar2;
                    if (!this.m) {
                        if (str2.equals("rect")) {
                            Float valueOf;
                            Float valueOf2;
                            Float valueOf3;
                            Float f3;
                            b = SVGParser.f("x", attributes);
                            if (b == null) {
                                valueOf = Float.valueOf(0.0f);
                            } else {
                                valueOf = b;
                            }
                            b = SVGParser.f("y", attributes);
                            if (b == null) {
                                valueOf2 = Float.valueOf(0.0f);
                            } else {
                                valueOf2 = b;
                            }
                            b2 = SVGParser.f("rx", attributes);
                            b = SVGParser.f("ry", attributes);
                            if (b2 == null && b == null) {
                                b2 = Float.valueOf(0.0f);
                                valueOf3 = Float.valueOf(0.0f);
                                f3 = b2;
                            } else if (b2 == null) {
                                valueOf3 = b;
                                f3 = b;
                            } else if (b == null) {
                                valueOf3 = b2;
                                f3 = b2;
                            } else {
                                valueOf3 = b;
                                f3 = b2;
                            }
                            Float b6 = SVGParser.f(nexExportFormat.TAG_FORMAT_WIDTH, attributes);
                            Float b7 = SVGParser.f(nexExportFormat.TAG_FORMAT_HEIGHT, attributes);
                            a(attributes);
                            dVar = new d(attributes);
                            f fVar3 = new f((f) this.g.peek());
                            a(dVar, this.j, fVar3);
                            a(dVar, fVar3);
                            if (fVar3.a(this.c)) {
                                a(valueOf.floatValue(), valueOf2.floatValue(), b6.floatValue(), b7.floatValue());
                                if (f3.floatValue() <= 0.0f || valueOf3.floatValue() <= 0.0f) {
                                    this.b.drawRect(valueOf.floatValue(), valueOf2.floatValue(), valueOf.floatValue() + b6.floatValue(), valueOf2.floatValue() + b7.floatValue(), this.c);
                                } else {
                                    this.b.drawRoundRect(new RectF(valueOf.floatValue(), valueOf2.floatValue(), valueOf.floatValue() + b6.floatValue(), valueOf2.floatValue() + b7.floatValue()), f3.floatValue(), valueOf3.floatValue(), this.c);
                                }
                            }
                            if (fVar3.b(this.c)) {
                                if (f3.floatValue() <= 0.0f || valueOf3.floatValue() <= 0.0f) {
                                    this.b.drawRect(valueOf.floatValue(), valueOf2.floatValue(), valueOf.floatValue() + b6.floatValue(), valueOf2.floatValue() + b7.floatValue(), this.c);
                                } else {
                                    this.b.drawRoundRect(new RectF(valueOf.floatValue(), valueOf2.floatValue(), valueOf.floatValue() + b6.floatValue(), valueOf2.floatValue() + b7.floatValue()), f3.floatValue(), valueOf3.floatValue(), this.c);
                                }
                            }
                            b();
                            return;
                        }
                    }
                    if (!this.m) {
                        if (str2.equals("line")) {
                            b2 = SVGParser.f("x1", attributes);
                            b5 = SVGParser.f("x2", attributes);
                            b3 = SVGParser.f("y1", attributes);
                            b4 = SVGParser.f("y2", attributes);
                            dVar3 = new d(attributes);
                            fVar2 = new f((f) this.g.peek());
                            a(dVar3, fVar2);
                            if (fVar2.b(this.c)) {
                                a(attributes);
                                a(b2.floatValue(), b3.floatValue());
                                a(b5.floatValue(), b4.floatValue());
                                this.b.drawLine(b2.floatValue(), b3.floatValue(), b5.floatValue(), b4.floatValue(), this.c);
                                b();
                                return;
                            }
                            return;
                        }
                    }
                    if (!this.m) {
                        if (str2.equals("circle")) {
                            b2 = SVGParser.f("cx", attributes);
                            b3 = SVGParser.f("cy", attributes);
                            b5 = SVGParser.f("r", attributes);
                            if (b2 != null && b3 != null && b5 != null) {
                                a(attributes);
                                d dVar4 = new d(attributes);
                                f fVar4 = new f((f) this.g.peek());
                                a(dVar4, this.j, fVar4);
                                a(dVar4, fVar4);
                                if (fVar4.a(this.c)) {
                                    a(b2.floatValue() - b5.floatValue(), b3.floatValue() - b5.floatValue());
                                    a(b2.floatValue() + b5.floatValue(), b3.floatValue() + b5.floatValue());
                                    this.b.drawCircle(b2.floatValue(), b3.floatValue(), b5.floatValue(), this.c);
                                }
                                if (fVar4.b(this.c)) {
                                    this.b.drawCircle(b2.floatValue(), b3.floatValue(), b5.floatValue(), this.c);
                                }
                                b();
                                return;
                            }
                            return;
                        }
                    }
                    if (!this.m) {
                        if (str2.equals("ellipse")) {
                            b2 = SVGParser.f("cx", attributes);
                            b3 = SVGParser.f("cy", attributes);
                            b5 = SVGParser.f("rx", attributes);
                            b4 = SVGParser.f("ry", attributes);
                            if (b2 != null && b3 != null && b5 != null && b4 != null) {
                                a(attributes);
                                dVar3 = new d(attributes);
                                fVar2 = new f((f) this.g.peek());
                                a(dVar3, this.j, fVar2);
                                a(dVar3, fVar2);
                                this.d.set(b2.floatValue() - b5.floatValue(), b3.floatValue() - b4.floatValue(), b2.floatValue() + b5.floatValue(), b3.floatValue() + b4.floatValue());
                                if (fVar2.a(this.c)) {
                                    a(b2.floatValue() - b5.floatValue(), b3.floatValue() - b4.floatValue());
                                    a(b2.floatValue() + b5.floatValue(), b3.floatValue() + b4.floatValue());
                                    this.b.drawOval(this.d, this.c);
                                }
                                if (fVar2.b(this.c)) {
                                    this.b.drawOval(this.d, this.c);
                                }
                                b();
                                return;
                            }
                            return;
                        }
                    }
                    if (!this.m) {
                        if (!str2.equals("polygon")) {
                        }
                        b c = SVGParser.d("points", attributes);
                        if (c != null) {
                            Path path = new Path();
                            ArrayList a3 = c.a;
                            if (a3.size() > 1) {
                                a(attributes);
                                dVar = new d(attributes);
                                f fVar5 = new f((f) this.g.peek());
                                a(dVar, this.j, fVar5);
                                a(dVar, fVar5);
                                path.moveTo(((Float) a3.get(0)).floatValue(), ((Float) a3.get(1)).floatValue());
                                i = 2;
                                while (true) {
                                    i2 = i;
                                    if (i2 >= a3.size()) {
                                        break;
                                    }
                                    path.lineTo(((Float) a3.get(i2)).floatValue(), ((Float) a3.get(i2 + 1)).floatValue());
                                    i = i2 + 2;
                                }
                                if (str2.equals("polygon")) {
                                    path.close();
                                }
                                if (fVar5.a(this.c)) {
                                    path.setFillType(fVar5.a());
                                    a(path);
                                    this.b.drawPath(path, this.c);
                                }
                                if (fVar5.b(this.c)) {
                                    this.b.drawPath(path, this.c);
                                }
                                b();
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (!this.m) {
                        if (str2.equals(nexExportFormat.TAG_FORMAT_PATH)) {
                            Path c2 = SVGParser.f(SVGParser.e("d", attributes));
                            a(attributes);
                            dVar2 = new d(attributes);
                            f fVar6 = new f((f) this.g.peek());
                            a(dVar2, this.j, fVar6);
                            a(dVar2, fVar6);
                            if (fVar6.a(this.c)) {
                                c2.setFillType(fVar6.a());
                                a(c2);
                                this.b.drawPath(c2, this.c);
                            }
                            if (fVar6.b(this.c)) {
                                this.b.drawPath(c2, this.c);
                            }
                            b();
                            return;
                        }
                    }
                    if (!this.m) {
                        Log.w("SVGAndroid", "UNRECOGNIZED SVG COMMAND: " + str2);
                    }
                } else if (this.l != null) {
                    f = SVGParser.f("offset", attributes).floatValue();
                    SVGParser.e("style", attributes);
                    dVar = new d(attributes);
                    String b8 = dVar.b("stop-color");
                    i = -16777216;
                    if (b8 != null) {
                        if (b8.startsWith("#")) {
                            i = Integer.parseInt(b8.substring(1), 16);
                        } else {
                            i = Integer.parseInt(b8, 16);
                        }
                    }
                    String b9 = dVar.b("stop-opacity");
                    if (b9 != null) {
                        i2 = Math.round(Float.parseFloat(b9) * 255.0f);
                        if (i2 > 255) {
                            i2 = 255;
                        }
                        i |= i2 << 24;
                    } else {
                        i |= -16777216;
                    }
                    this.l.k.add(Float.valueOf(f));
                    if (this.h.i != null) {
                        this.h.i.add(Integer.valueOf(i));
                    }
                    this.l.l.add(Integer.valueOf(this.h.a(i)));
                }
            }
        }

        public void characters(char[] cArr, int i, int i2) {
        }

        public void endElement(String str, String str2, String str3) throws SAXException {
            int i = 0;
            a aVar;
            int i2;
            if (str2.equals("svg")) {
                this.a.endRecording();
            } else if (str2.equals("linearGradient")) {
                if (this.l.a != null) {
                    if (this.l.b != null) {
                        aVar = (a) this.k.get(this.l.b);
                        if (aVar != null) {
                            this.l = aVar.a(this.l);
                        }
                    }
                    int[] iArr = new int[this.l.l.size()];
                    for (i2 = 0; i2 < iArr.length; i2++) {
                        iArr[i2] = ((Integer) this.l.l.get(i2)).intValue();
                    }
                    float[] fArr = new float[this.l.k.size()];
                    while (i < fArr.length) {
                        fArr[i] = ((Float) this.l.k.get(i)).floatValue();
                        i++;
                    }
                    if (iArr.length == 0) {
                        Log.d("BAD", "BAD");
                    }
                    LinearGradient linearGradient = new LinearGradient(this.l.d, this.l.e, this.l.f, this.l.g, iArr, fArr, TileMode.CLAMP);
                    if (this.l.m != null) {
                        linearGradient.setLocalMatrix(this.l.m);
                    }
                    this.j.put(this.l.a, linearGradient);
                    this.k.put(this.l.a, this.l);
                }
            } else if (str2.equals("radialGradient")) {
                if (this.l.a != null) {
                    if (this.l.b != null) {
                        aVar = (a) this.k.get(this.l.b);
                        if (aVar != null) {
                            this.l = aVar.a(this.l);
                        }
                    }
                    int[] iArr2 = new int[this.l.l.size()];
                    for (i2 = 0; i2 < iArr2.length; i2++) {
                        iArr2[i2] = ((Integer) this.l.l.get(i2)).intValue();
                    }
                    float[] fArr2 = new float[this.l.k.size()];
                    while (i < fArr2.length) {
                        fArr2[i] = ((Float) this.l.k.get(i)).floatValue();
                        i++;
                    }
                    if (this.l.b != null) {
                        aVar = (a) this.k.get(this.l.b);
                        if (aVar != null) {
                            this.l = aVar.a(this.l);
                        }
                    }
                    RadialGradient radialGradient = new RadialGradient(this.l.h, this.l.i, this.l.j, iArr2, fArr2, TileMode.CLAMP);
                    if (this.l.m != null) {
                        radialGradient.setLocalMatrix(this.l.m);
                    }
                    this.j.put(this.l.a, radialGradient);
                    this.k.put(this.l.a, this.l);
                }
            } else if (str2.equals("g")) {
                this.g.pop();
                if (this.o) {
                    this.o = false;
                }
                this.b.restore();
                if (this.m) {
                    this.n--;
                    if (this.n == 0) {
                        this.m = false;
                    }
                }
            }
        }
    }

    private static class f {
        private int a = -16777216;
        private int b = -16777216;
        private Shader c = null;
        private float d = 1.0f;
        private Cap e = Cap.BUTT;
        private Join f = Join.MITER;
        private boolean g = false;
        private boolean h = false;
        private FillType i;

        public f(f fVar) {
            this.a = fVar.a;
            this.b = fVar.b;
            this.c = fVar.c;
            this.d = fVar.d;
            this.e = fVar.e;
            this.f = fVar.f;
            this.g = fVar.g;
            this.h = fVar.h;
        }

        public void a(int i) {
            this.a = i;
            this.c = null;
            this.h = true;
        }

        public void b(int i) {
            this.b = i;
            this.g = true;
        }

        public boolean a(Paint paint) {
            if (!this.h) {
                return false;
            }
            paint.setStyle(Style.FILL);
            paint.setShader(this.c);
            paint.setColor(this.a);
            return true;
        }

        public boolean b(Paint paint) {
            if (!this.g) {
                return false;
            }
            paint.setStyle(Style.STROKE);
            paint.setShader(null);
            paint.setColor(this.b);
            paint.setStrokeWidth(this.d);
            paint.setStrokeCap(this.e);
            paint.setStrokeJoin(this.f);
            return true;
        }

        public void a(float f) {
            this.d = f;
        }

        public void a(Shader shader) {
            this.c = shader;
            this.a = -16777216;
            this.h = true;
        }

        public void a(Cap cap) {
            this.e = cap;
        }

        public void a(Join join) {
            this.f = join;
        }

        public void a(FillType fillType) {
            this.i = fillType;
        }

        public FillType a() {
            return this.i == null ? FillType.WINDING : this.i;
        }
    }

    private static class g {
        HashMap<String, String> a;

        private g(String str) {
            this.a = new HashMap();
            for (String split : str.split(";")) {
                String[] split2 = split.split(":");
                if (split2.length == 2) {
                    this.a.put(split2[0], split2[1]);
                }
            }
        }

        public String a(String str) {
            return (String) this.a.get(str);
        }
    }

    private static class h {
        private final String a;
        private Matrix b = null;

        public h(String str) {
            this.a = str;
        }

        public Matrix a() {
            if (this.b == null) {
                b();
            }
            return this.b;
        }

        private void b() {
            this.b = new Matrix();
            int length = this.a.length();
            int i = 0;
            while (i < length) {
                char charAt = this.a.charAt(i);
                if (charAt >= 'a' && charAt <= 'z') {
                    for (Prefix prefix : Prefix.values()) {
                        String name = prefix.name();
                        if (this.a.startsWith(name, i) && this.a.charAt(name.length() + i) == '(') {
                            i += name.length();
                            b a = SVGParser.d(this.a.substring(i + 1));
                            i += a.a();
                            Matrix a2 = SVGParser.b(prefix, a);
                            if (a2 != null) {
                                this.b.preConcat(a2);
                            }
                        }
                    }
                }
                i++;
            }
        }
    }

    public static b a(InputStream inputStream) throws SVGParseException {
        return a(inputStream, null);
    }

    public static b a(InputStream inputStream, Map<Integer, Integer> map, int i) throws SVGParseException {
        c cVar = new c();
        cVar.a((Map) map, i);
        return a(inputStream, cVar);
    }

    private static b a(InputStream inputStream, c cVar) throws SVGParseException {
        Log.d("SVGAndroid", "Parse IN");
        try {
            System.currentTimeMillis();
            XMLReader xMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
            Picture picture = new Picture();
            e eVar = new e(picture, cVar);
            xMLReader.setContentHandler(eVar);
            xMLReader.parse(new InputSource(inputStream));
            b bVar = new b(picture, eVar.e, eVar.a().i);
            if (!Float.isInfinite(eVar.f.top)) {
                bVar.a(eVar.f);
            }
            Log.d("SVGAndroid", "Parse OUT");
            return bVar;
        } catch (Throwable e) {
            Log.w("SVGAndroid", "Parse Error", e);
            throw new SVGParseException(e);
        }
    }

    private static b d(String str) {
        String substring;
        int length = str.length();
        ArrayList arrayList = new ArrayList();
        Object obj = null;
        int i = 0;
        for (int i2 = 1; i2 < length; i2++) {
            if (obj == null) {
                char charAt = str.charAt(i2);
                switch (charAt) {
                    case 9:
                    case 10:
                    case ' ':
                    case ',':
                        String substring2 = str.substring(i, i2);
                        if (substring2.trim().length() <= 0) {
                            i++;
                            break;
                        }
                        arrayList.add(Float.valueOf(Float.parseFloat(substring2)));
                        if (charAt != '-') {
                            i = i2 + 1;
                            int obj2 = 1;
                            break;
                        }
                        i = i2;
                        break;
                    case ')':
                    case 'A':
                    case 'C':
                    case 'H':
                    case 'L':
                    case 'M':
                    case BaiduSceneResult.SWIM /*81*/:
                    case BaiduSceneResult.RUN /*83*/:
                    case BaiduSceneResult.FOOTBALL /*84*/:
                    case BaiduSceneResult.TENNIS /*86*/:
                    case 'Z':
                    case BaiduSceneResult.SKATEBOARD /*97*/:
                    case BaiduSceneResult.VOLLEYBALL /*99*/:
                    case BaiduSceneResult.SPORTS_OTHER /*104*/:
                    case BaiduSceneResult.ANCIENT_CHINESE_ARCHITECTURE /*108*/:
                    case BaiduSceneResult.CHURCH /*109*/:
                    case BaiduSceneResult.FOUNTAIN /*113*/:
                    case BaiduSceneResult.BUILDING_OTHER /*115*/:
                    case BaiduSceneResult.CAR /*116*/:
                    case BaiduSceneResult.SUBWAY /*118*/:
                    case 'z':
                        substring = str.substring(i, i2);
                        if (substring.trim().length() > 0) {
                            arrayList.add(Float.valueOf(Float.parseFloat(substring)));
                        }
                        return new b(arrayList, i2);
                    default:
                        break;
                }
            }
            obj2 = null;
        }
        substring = str.substring(i);
        if (substring.length() > 0) {
            try {
                arrayList.add(Float.valueOf(Float.parseFloat(substring)));
            } catch (NumberFormatException e) {
            }
            i = str.length();
        }
        return new b(arrayList, i);
    }

    private static Matrix b(Prefix prefix, b bVar) {
        float f = 0.0f;
        Matrix matrix;
        float floatValue;
        float floatValue2;
        Matrix matrix2;
        switch (prefix) {
            case matrix:
                if (bVar.a.size() == 6) {
                    matrix = new Matrix();
                    matrix.setValues(new float[]{((Float) bVar.a.get(0)).floatValue(), ((Float) bVar.a.get(2)).floatValue(), ((Float) bVar.a.get(4)).floatValue(), ((Float) bVar.a.get(1)).floatValue(), ((Float) bVar.a.get(3)).floatValue(), ((Float) bVar.a.get(5)).floatValue(), 0.0f, 0.0f, 1.0f});
                    return matrix;
                }
                break;
            case translate:
                if (bVar.a.size() > 0) {
                    floatValue = ((Float) bVar.a.get(0)).floatValue();
                    if (bVar.a.size() > 1) {
                        floatValue2 = ((Float) bVar.a.get(1)).floatValue();
                    } else {
                        floatValue2 = 0.0f;
                    }
                    Matrix matrix3 = new Matrix();
                    matrix3.postTranslate(floatValue, floatValue2);
                    return matrix3;
                }
                break;
            case scale:
                if (bVar.a.size() > 0) {
                    floatValue = ((Float) bVar.a.get(0)).floatValue();
                    if (bVar.a.size() > 1) {
                        f = ((Float) bVar.a.get(1)).floatValue();
                    }
                    matrix2 = new Matrix();
                    matrix2.postScale(floatValue, f);
                    return matrix2;
                }
                break;
            case skewX:
                if (bVar.a.size() > 0) {
                    floatValue = ((Float) bVar.a.get(0)).floatValue();
                    matrix2 = new Matrix();
                    matrix2.postSkew((float) Math.tan((double) floatValue), 0.0f);
                    return matrix2;
                }
                break;
            case skewY:
                if (bVar.a.size() > 0) {
                    floatValue = ((Float) bVar.a.get(0)).floatValue();
                    matrix2 = new Matrix();
                    matrix2.postSkew(0.0f, (float) Math.tan((double) floatValue));
                    return matrix2;
                }
                break;
            case rotate:
                if (bVar.a.size() > 0) {
                    float floatValue3 = ((Float) bVar.a.get(0)).floatValue();
                    if (bVar.a.size() > 2) {
                        floatValue = ((Float) bVar.a.get(1)).floatValue();
                        f = ((Float) bVar.a.get(2)).floatValue();
                        floatValue2 = floatValue;
                    } else {
                        floatValue2 = 0.0f;
                    }
                    matrix = new Matrix();
                    matrix.postTranslate(floatValue2, f);
                    matrix.postRotate(floatValue3);
                    matrix.postTranslate(-floatValue2, -f);
                    return matrix;
                }
                break;
        }
        return null;
    }

    private static Matrix e(String str) {
        return new h(str).a();
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static Path f(String str) {
        int length = str.length();
        a aVar = new a(str, 0);
        aVar.a();
        Path path = new Path();
        float f = 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        char c = 0;
        float f5 = 0.0f;
        float f6 = 0.0f;
        while (aVar.a < length) {
            char c2;
            char c3;
            float e;
            float e2;
            float e3;
            float e4;
            Object obj;
            char charAt = str.charAt(aVar.a);
            switch (charAt) {
                case '+':
                case '-':
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                    if (c != BaiduSceneResult.CHURCH && c != 'M') {
                        if (c != 'c' && c != 'C') {
                            if (c == BaiduSceneResult.ANCIENT_CHINESE_ARCHITECTURE || c == 'L') {
                                c2 = c;
                                c3 = c;
                                break;
                            }
                        }
                        c2 = c;
                        c3 = c;
                        break;
                    }
                    c2 = (char) (c - 1);
                    c3 = c;
                    break;
                    break;
                default:
                    aVar.c();
                    c2 = charAt;
                    c3 = charAt;
                    break;
            }
            float e5;
            int obj2;
            float f7;
            float f8;
            switch (c2) {
                case 'A':
                case BaiduSceneResult.SKATEBOARD /*97*/:
                    e = aVar.e();
                    e2 = aVar.e();
                    e5 = aVar.e();
                    int e6 = (int) aVar.e();
                    int e7 = (int) aVar.e();
                    e3 = aVar.e();
                    e4 = aVar.e();
                    a(path, f6, f5, e3, e4, e, e2, e5, e6, e7);
                    obj2 = null;
                    f6 = f;
                    f5 = f2;
                    e = e4;
                    e2 = e3;
                    e3 = f3;
                    e4 = f4;
                    break;
                case 'C':
                case BaiduSceneResult.VOLLEYBALL /*99*/:
                    float e8 = aVar.e();
                    e5 = aVar.e();
                    e3 = aVar.e();
                    e4 = aVar.e();
                    e = aVar.e();
                    e2 = aVar.e();
                    if (c2 == 'c') {
                        e3 += f6;
                        e += f6;
                        e4 += f5;
                        e2 += f5;
                        f5 = e5 + f5;
                        f6 = e8 + f6;
                    } else {
                        f5 = e5;
                        f6 = e8;
                    }
                    path.cubicTo(f6, f5, e3, e4, e, e2);
                    obj2 = 1;
                    f6 = f;
                    f5 = f2;
                    f7 = e4;
                    e4 = e3;
                    e3 = f7;
                    f8 = e2;
                    e2 = e;
                    e = f8;
                    break;
                case 'H':
                case BaiduSceneResult.SPORTS_OTHER /*104*/:
                    e = aVar.e();
                    if (c2 != 'h') {
                        path.lineTo(e, f5);
                        obj2 = null;
                        f6 = f;
                        e3 = f3;
                        e4 = f4;
                        e2 = e;
                        e = f5;
                        f5 = f2;
                        break;
                    }
                    path.rLineTo(e, 0.0f);
                    f6 += e;
                    obj2 = null;
                    e3 = f3;
                    e4 = f4;
                    e = f5;
                    e2 = f6;
                    f6 = f;
                    f5 = f2;
                    break;
                case 'L':
                case BaiduSceneResult.ANCIENT_CHINESE_ARCHITECTURE /*108*/:
                    e = aVar.e();
                    e2 = aVar.e();
                    if (c2 != 'l') {
                        path.lineTo(e, e2);
                        obj2 = null;
                        f6 = f;
                        f5 = f2;
                        e3 = f3;
                        e4 = f4;
                        f7 = e2;
                        e2 = e;
                        e = f7;
                        break;
                    }
                    path.rLineTo(e, e2);
                    f6 += e;
                    obj2 = null;
                    e3 = f3;
                    e4 = f4;
                    e = f5 + e2;
                    e2 = f6;
                    f6 = f;
                    f5 = f2;
                    break;
                case 'M':
                case BaiduSceneResult.CHURCH /*109*/:
                    e4 = aVar.e();
                    e3 = aVar.e();
                    if (c2 != 'm') {
                        path.moveTo(e4, e3);
                        obj2 = null;
                        f6 = e3;
                        f5 = e4;
                        e = e3;
                        e2 = e4;
                        e3 = f3;
                        e4 = f4;
                        break;
                    }
                    f2 += e4;
                    f += e3;
                    path.rMoveTo(e4, e3);
                    f6 += e4;
                    f5 += e3;
                    obj2 = null;
                    e3 = f3;
                    e4 = f4;
                    e = f5;
                    e2 = f6;
                    f6 = f;
                    f5 = f2;
                    break;
                case BaiduSceneResult.RUN /*83*/:
                case BaiduSceneResult.BUILDING_OTHER /*115*/:
                    obj2 = 1;
                    e3 = aVar.e();
                    e4 = aVar.e();
                    e = aVar.e();
                    e2 = aVar.e();
                    if (c2 == 's') {
                        e3 += f6;
                        e += f6;
                        e4 += f5;
                        e2 += f5;
                    }
                    path.cubicTo((f6 * 2.0f) - f4, (f5 * 2.0f) - f3, e3, e4, e, e2);
                    f6 = f;
                    f5 = f2;
                    f7 = e4;
                    e4 = e3;
                    e3 = f7;
                    f8 = e2;
                    e2 = e;
                    e = f8;
                    break;
                case BaiduSceneResult.TENNIS /*86*/:
                case BaiduSceneResult.SUBWAY /*118*/:
                    e2 = aVar.e();
                    if (c2 != 'v') {
                        path.lineTo(f6, e2);
                        obj2 = null;
                        f5 = f2;
                        e3 = f3;
                        e4 = f4;
                        e = e2;
                        e2 = f6;
                        f6 = f;
                        break;
                    }
                    path.rLineTo(0.0f, e2);
                    obj2 = null;
                    e3 = f3;
                    e4 = f4;
                    e = f5 + e2;
                    e2 = f6;
                    f6 = f;
                    f5 = f2;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f2, f);
                    obj2 = 1;
                    f5 = f2;
                    e3 = f;
                    e4 = f2;
                    e = f;
                    e2 = f2;
                    f6 = f;
                    break;
                default:
                    obj2 = null;
                    e3 = f3;
                    e4 = f4;
                    e = f5;
                    e2 = f6;
                    f6 = f;
                    f5 = f2;
                    break;
            }
            if (obj2 == null) {
                e3 = e;
                e4 = e2;
            }
            aVar.a();
            f = f6;
            f2 = f5;
            f3 = e3;
            f4 = e4;
            c = c3;
            f5 = e;
            f6 = e2;
        }
        return path;
    }

    private static void a(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, int i, int i2) {
    }

    private static b d(String str, Attributes attributes) {
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            if (attributes.getLocalName(i).equals(str)) {
                return d(attributes.getValue(i));
            }
        }
        return null;
    }

    private static String e(String str, Attributes attributes) {
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            if (attributes.getLocalName(i).equals(str)) {
                return attributes.getValue(i);
            }
        }
        return null;
    }

    private static Float f(String str, Attributes attributes) {
        return b(str, attributes, null);
    }

    private static Float b(String str, Attributes attributes, Float f) {
        String e = e(str, attributes);
        if (e == null) {
            return f;
        }
        if (e.endsWith("%")) {
            return Float.valueOf(Float.parseFloat(e.substring(0, e.length() - 1)) / 100.0f);
        }
        if (e.endsWith("px")) {
            e = e.substring(0, e.length() - 2);
        }
        return Float.valueOf(Float.parseFloat(e));
    }
}
