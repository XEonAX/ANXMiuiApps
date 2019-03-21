package com.nexstreaming.kminternal.kinemaster.fonts;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class Font implements Comparable<Font> {
    private static final b[] k = new b[]{new b(" thin", 1), new b(" light", 2), new b(" regular", 3), new b(" medium", 4), new b(" bold", 5), new b(" black", 6), new b(" italic", 100), new b(" condensed", 1000)};
    private final String a;
    private final boolean b;
    private final String c;
    private final File d;
    private transient WeakReference<Bitmap> e;
    private transient WeakReference<Typeface> f;
    private final transient Typeface g;
    private final String h;
    private final String i;
    private a j;

    public static class TypefaceLoadException extends Exception {
        private static final long serialVersionUID = 1;

        public TypefaceLoadException(String str, Throwable th) {
            super(str, th);
        }

        public TypefaceLoadException(String str) {
            super(str);
        }

        public TypefaceLoadException(Throwable th) {
            super(th);
        }
    }

    private static class a {
        static final Map<String, a> c = new HashMap();
        final String a;
        final int b;

        public static a a(String str) {
            a aVar = (a) c.get(str);
            if (aVar != null) {
                return aVar;
            }
            return new a(str);
        }

        private a(String str) {
            String trim = str.toLowerCase(Locale.ENGLISH).trim();
            int i = 0;
            int i2;
            do {
                b[] c = Font.k;
                int length = c.length;
                int i3 = 0;
                i2 = 0;
                while (i3 < length) {
                    String substring;
                    int i4;
                    int i5;
                    b bVar = c[i3];
                    if (trim.endsWith(bVar.a)) {
                        substring = trim.substring(0, trim.length() - bVar.a.length());
                        i4 = 1;
                        i += bVar.b;
                    } else {
                        i5 = i2;
                        substring = trim;
                        i4 = i5;
                    }
                    i3++;
                    i5 = i4;
                    trim = substring;
                    i2 = i5;
                }
            } while (i2 != 0);
            this.a = trim;
            this.b = i;
        }
    }

    private static class b {
        final String a;
        final int b;

        private b(String str, int i) {
            this.a = str;
            this.b = i;
        }
    }

    public Font(String str, String str2, File file, String str3) {
        this.a = str;
        this.h = str2;
        this.b = false;
        this.g = null;
        this.c = null;
        this.d = file;
        this.i = str3;
    }

    public Font(String str, String str2, String str3, String str4) {
        this.a = str;
        this.h = str2;
        this.b = str3 != null;
        this.c = str3;
        this.d = null;
        this.g = null;
        this.i = str4;
    }

    public Font(String str, String str2, Typeface typeface, String str3) {
        this.a = str;
        this.h = str2;
        this.b = typeface != null;
        this.g = typeface;
        this.c = null;
        this.d = null;
        this.i = str3;
    }

    public String a(Context context) {
        return this.i;
    }

    public Typeface b(Context context) throws TypefaceLoadException {
        Typeface typeface;
        if (this.f != null) {
            typeface = (Typeface) this.f.get();
            if (typeface != null) {
                return typeface;
            }
        }
        if (this.b) {
            if (this.g != null) {
                typeface = this.g;
            } else {
                typeface = Typeface.createFromAsset(context.getAssets(), this.c);
            }
            this.f = new WeakReference(typeface);
            return typeface;
        } else if (this.d == null) {
            return null;
        } else {
            try {
                typeface = Typeface.createFromFile(this.d);
                this.f = new WeakReference(typeface);
                return typeface;
            } catch (Throwable e) {
                if (e.getMessage().contains("native typeface cannot be made")) {
                    throw new TypefaceLoadException(e);
                }
                throw e;
            }
        }
    }

    public Typeface a(Context context, Typeface typeface) {
        try {
            return b(context);
        } catch (TypefaceLoadException e) {
            return typeface;
        }
    }

    public Bitmap c(Context context) {
        Bitmap bitmap;
        int i = 0;
        if (this.e != null) {
            bitmap = (Bitmap) this.e.get();
            if (bitmap != null) {
                return bitmap;
            }
        }
        bitmap = d(context);
        if (bitmap == null) {
            return null;
        }
        int[] iArr = new int[(bitmap.getWidth() * bitmap.getHeight())];
        bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
        while (i < iArr.length) {
            iArr[i] = iArr[i] & ((iArr[i] << 8) | 255);
            i++;
        }
        bitmap = Bitmap.createBitmap(iArr, bitmap.getWidth(), bitmap.getHeight(), Config.ARGB_8888);
        bitmap.setHasAlpha(true);
        this.e = new WeakReference(bitmap);
        return bitmap;
    }

    private Bitmap d(Context context) {
        TextPaint textPaint = new TextPaint();
        textPaint.setTypeface(a(context, Typeface.DEFAULT));
        textPaint.setAntiAlias(true);
        textPaint.setColor(-1);
        textPaint.setTextSize(60.0f);
        StaticLayout staticLayout = new StaticLayout(TextUtils.ellipsize(this.i, textPaint, (float) 940, TruncateAt.END), textPaint, 940, Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        Bitmap createBitmap = Bitmap.createBitmap(1000, 100, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.save();
        canvas.translate((float) 30, (float) ((100 - staticLayout.getHeight()) / 2));
        staticLayout.draw(canvas);
        canvas.restore();
        return createBitmap;
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.h;
    }

    private a d() {
        if (this.j == null) {
            this.j = a.a(this.i);
        }
        return this.j;
    }

    /* renamed from: a */
    public int compareTo(Font font) {
        a d = d();
        a d2 = font.d();
        int compareTo = d.a.compareTo(d2.a);
        return compareTo != 0 ? compareTo : d.b - d2.b;
    }

    public String toString() {
        return "[font:" + this.a + ":" + System.identityHashCode(this) + "]";
    }
}
