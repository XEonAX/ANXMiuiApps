package com.nexstreaming.kminternal.nexvideoeditor;

import android.content.ContentUris;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.BlurMaskFilter;
import android.graphics.BlurMaskFilter.Blur;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetrics;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.net.Uri;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Images.Thumbnails;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils.TruncateAt;
import android.util.Log;
import com.nexstreaming.app.common.nexasset.assetpackage.AssetPackageReader;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.kminternal.kinemaster.fonts.Font.TypefaceLoadException;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.WeakHashMap;

public final class NexImageLoader {
    private static final String LOG_TAG = "NexImageLoader";
    private static final int MAX_USERSTRINGS = 3;
    private static final int NXT_ALIGNMASK = 15;
    private static final int NXT_ALIGN_CENTER = 1;
    private static final int NXT_ALIGN_LEFT = 0;
    private static final int NXT_ALIGN_RIGHT = 2;
    private static final int NXT_BLUR_INNER = 2;
    private static final int NXT_BLUR_NORMAL = 0;
    private static final int NXT_BLUR_OUTER = 3;
    private static final int NXT_BLUR_SOLID = 1;
    private static final int NXT_LONGTEXT_CROP_END = 0;
    private static final int NXT_LONGTEXT_ELLIPSIZE_END = 4;
    private static final int NXT_LONGTEXT_ELLIPSIZE_MIDDLE = 3;
    private static final int NXT_LONGTEXT_ELLIPSIZE_START = 2;
    private static final int NXT_LONGTEXT_WRAP = 1;
    private static final int NXT_TEXTFLAG_AUTOSIZE = 1024;
    private static final int NXT_TEXTFLAG_BOLD = 1;
    private static final int NXT_TEXTFLAG_CUTOUT = 2048;
    private static final int NXT_TEXTFLAG_FILL = 4;
    private static final int NXT_TEXTFLAG_ITALIC = 2;
    private static final int NXT_TEXTFLAG_LINEAR = 512;
    private static final int NXT_TEXTFLAG_SHADOW = 256;
    private static final int NXT_TEXTFLAG_STRIKE = 32;
    private static final int NXT_TEXTFLAG_STROKE = 8;
    private static final int NXT_TEXTFLAG_STROKEBACK = 4096;
    private static final int NXT_TEXTFLAG_SUBPIXEL = 128;
    private static final int NXT_TEXTFLAG_UNDERLINE = 16;
    private static final int NXT_VALIGNMASK = 240;
    private static final int NXT_VALIGN_BOTTOM = 32;
    private static final int NXT_VALIGN_CENTER = 16;
    private static final int NXT_VALIGN_TOP = 0;
    private static final String TAG_Overlay = "[Overlay]";
    private static final String TAG_PreviewThemeImage = "[PvwThImage]";
    private static final String TAG_Text = "[Text]";
    private static final String TAG_ThemeImage = "[ThemeImage]";
    private static final String TYPEFACE_ASSET = "asset:";
    private static final String TYPEFACE_FILE = "file:";
    private static final String TYPEFACE_FONTFILE = "fontfile:";
    private static final String TYPEFACE_FONTID = "fontid:";
    private static final String TYPEFACE_SYSTEM = "android:";
    private static final String TYPEFACE_THEME = "theme:";
    private static Map<a, WeakReference<Bitmap>> sBitmapCache = new HashMap();
    private static final Object sBitmapCacheLock = new Object();
    private static int sCleanCacheCount = 0;
    private static WeakHashMap<Bitmap, c> sLoadedBitmapCache = new WeakHashMap();
    private AssetManager m_assetManager;
    private a m_effectResourceLoader;
    private int m_jpegMaxHeight;
    private int m_jpegMaxSize;
    private int m_jpegMaxWidth;
    private d m_overlayPathResolver;

    public static abstract class d {
        public abstract String a(String str);
    }

    private static class a {
        final String a;
        final int b;
        final int c;
        final int d;
        final Config e;
        final boolean f;

        private a(String str, int i, int i2, int i3, Config config, boolean z) {
            if (str == null) {
                str = "";
            }
            this.a = str;
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = config;
            this.f = z;
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof a)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            a aVar = (a) obj;
            if (this.b == aVar.b && this.c == aVar.c && this.d == aVar.d && this.e == aVar.e && this.a.equals(aVar.a) && this.f == aVar.f) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.e == null ? 0 : this.e.hashCode()) + ((this.d * 199) + ((this.a.hashCode() + (this.b * 191)) + (this.c * 61)));
        }
    }

    public static class b {
        private Bitmap a;
        private int b;
        private int c;
        private int d;

        private b(Bitmap bitmap, int i, int i2, int i3) {
            this.b = i;
            this.c = i2;
            this.a = bitmap;
            this.d = i3;
        }

        private b(Bitmap bitmap, int i, int i2) {
            this.b = i;
            this.c = i2;
            this.a = bitmap;
            this.d = 1;
        }

        public Bitmap a() {
            return this.a;
        }

        public int b() {
            return this.b;
        }

        public int c() {
            return this.c;
        }

        public int d() {
            return this.d;
        }
    }

    public static class c {
        private int a;
        private int b;
        private int c;

        private c(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }

        private c(int i, int i2) {
            this.a = i;
            this.b = i2;
            this.c = 1;
        }

        public int a() {
            return this.a;
        }

        public int b() {
            return this.b;
        }

        public int c() {
            return this.c;
        }
    }

    public NexImageLoader(Resources resources, a aVar, d dVar, int i, int i2, int i3) {
        if (resources == null) {
            this.m_assetManager = null;
        } else {
            this.m_assetManager = resources.getAssets();
        }
        this.m_effectResourceLoader = aVar;
        this.m_overlayPathResolver = dVar;
        this.m_jpegMaxWidth = i;
        this.m_jpegMaxHeight = i2;
        this.m_jpegMaxSize = i3;
    }

    public void setResources(Resources resources) {
        if (resources == null) {
            this.m_assetManager = null;
        } else {
            this.m_assetManager = resources.getAssets();
        }
    }

    private String pdecode(String str) {
        String str2 = "0123456789ABCDEF";
        StringBuilder stringBuilder = new StringBuilder(str);
        int i = -1;
        while (true) {
            i = stringBuilder.indexOf("%", i + 1);
            if (i != -1 && i + 2 < stringBuilder.length()) {
                int indexOf = "0123456789ABCDEF".indexOf(str.charAt(i + 1));
                int indexOf2 = "0123456789ABCDEF".indexOf(str.charAt(i + 2));
                if (!(indexOf == -1 || indexOf2 == -1)) {
                    stringBuilder.setCharAt(i, (char) ((indexOf << 4) | indexOf2));
                    stringBuilder.delete(i + 1, i + 3);
                    str = stringBuilder.toString();
                }
            }
        }
        return stringBuilder.toString();
    }

    public byte[] openThemeFile(String str) {
        String substring;
        int indexOf = str.indexOf(47);
        if (indexOf >= 0) {
            substring = str.substring(0, indexOf);
            str = str.substring(indexOf + 1);
        } else {
            substring = "";
        }
        if (this.m_effectResourceLoader == null) {
            return null;
        }
        try {
            if (this.m_effectResourceLoader.a(substring, str).exists()) {
                int skip;
                InputStream b = this.m_effectResourceLoader.b(substring, str);
                Log.e(LOG_TAG, "get size begin loading bitmap for effect(" + substring + ") : " + str);
                int i = 0;
                while (true) {
                    skip = (int) b.skip(2147483647L);
                    if (skip <= 0) {
                        break;
                    }
                    i += skip;
                }
                b.close();
                InputStream b2 = this.m_effectResourceLoader.b(substring, str);
                Log.e(LOG_TAG, "get size end loading bitmap for effect(" + substring + ") : " + str + " size=" + i);
                byte[] bArr = new byte[i];
                skip = 0;
                int i2 = i;
                do {
                    i2 = b2.read(bArr, skip, i2);
                    if (-1 == i2) {
                        break;
                    }
                    skip += i2;
                    i2 = i - skip;
                } while (i2 > 0);
                return bArr;
            }
        } catch (IOException e) {
            Log.e(LOG_TAG, "Error loading bitmap for effect(" + substring + ") : " + str);
            e.printStackTrace();
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:205:0x087f  */
    /* JADX WARNING: Removed duplicated region for block: B:199:0x086c  */
    /* JADX WARNING: Removed duplicated region for block: B:218:0x08df  */
    /* JADX WARNING: Removed duplicated region for block: B:211:0x08a6  */
    /* JADX WARNING: Missing block: B:233:0x094f, code:
            if (r4 <= r19) goto L_0x0953;
     */
    /* JADX WARNING: Missing block: B:234:0x0951, code:
            r4 = r19;
     */
    /* JADX WARNING: Missing block: B:235:0x0953, code:
            if (r5 <= r14) goto L_0x0db1;
     */
    /* JADX WARNING: Missing block: B:236:0x0955, code:
            r5 = r4;
            r4 = r14;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public NexImage openThemeImage(String str) {
        if (str.contains(".force_effect/")) {
            str = str.replace(".force_effect/", "/");
        }
        if (!str.startsWith("[ThemeImage]/@special:")) {
            if (!str.startsWith("[PvwThImage]/@special:")) {
                int width;
                int i;
                Bitmap createBitmap;
                String substring;
                String substring2;
                Bitmap bitmap;
                if (str.startsWith(TAG_Text)) {
                    Typeface typeface;
                    int i2;
                    int length;
                    int i3;
                    Object obj;
                    int i4;
                    String substring3 = str.substring(TAG_Text.length());
                    int indexOf = substring3.indexOf(";;");
                    substring = substring3.substring(indexOf + 2);
                    Typeface typeface2 = null;
                    int indexOf2 = substring.indexOf(27);
                    if (indexOf2 > -1) {
                        if (this.m_effectResourceLoader != null) {
                            try {
                                typeface2 = this.m_effectResourceLoader.a(substring.substring(0, indexOf2));
                            } catch (Throwable e) {
                                Log.e(LOG_TAG, "typeface error", e);
                            }
                        }
                        typeface = typeface2;
                        substring2 = substring.substring(indexOf2 + 1);
                    } else {
                        typeface = typeface2;
                        substring2 = substring;
                    }
                    if (substring2.length() < 1) {
                        substring2 = "Title Text Goes Here";
                    }
                    String[] strArr = new String[]{substring2};
                    Log.d(LOG_TAG, "==== User Text: " + substring2);
                    String[] split = substring3.substring(0, indexOf).split(";");
                    HashMap hashMap = new HashMap();
                    for (String split2 : split) {
                        String[] split3 = split2.split("=");
                        if (split3.length < 2) {
                            hashMap.put(split3[0], "");
                        } else {
                            hashMap.put(split3[0], split3[1]);
                        }
                    }
                    int parseLong = (int) Long.parseLong((String) hashMap.get("flags"), 16);
                    int parseInt = Integer.parseInt((String) hashMap.get("align"));
                    int parseInt2 = Integer.parseInt((String) hashMap.get("longtext"));
                    int parseInt3 = Integer.parseInt((String) hashMap.get(nexExportFormat.TAG_FORMAT_WIDTH));
                    int parseInt4 = Integer.parseInt((String) hashMap.get(nexExportFormat.TAG_FORMAT_HEIGHT));
                    int parseLong2 = (int) Long.parseLong((String) hashMap.get("bgcolor"), 16);
                    int parseLong3 = (int) Long.parseLong((String) hashMap.get("fillcolor"), 16);
                    int parseLong4 = (int) Long.parseLong((String) hashMap.get("strokecolor"), 16);
                    int parseLong5 = (int) Long.parseLong((String) hashMap.get("shadowcolor"), 16);
                    int parseLong6 = (int) Long.parseLong((String) hashMap.get("maxlines"), 16);
                    float parseFloat = Float.parseFloat((String) hashMap.get("skewx"));
                    float parseFloat2 = Float.parseFloat((String) hashMap.get("scalex"));
                    float parseFloat3 = Float.parseFloat((String) hashMap.get("size"));
                    float parseFloat4 = Float.parseFloat((String) hashMap.get("strokewidth"));
                    float parseFloat5 = Float.parseFloat((String) hashMap.get("spacingmult"));
                    float parseFloat6 = Float.parseFloat((String) hashMap.get("spacingadd"));
                    float parseFloat7 = Float.parseFloat((String) hashMap.get("shadowradius"));
                    float parseFloat8 = Float.parseFloat((String) hashMap.get("textblur"));
                    int parseInt5 = Integer.parseInt((String) hashMap.get("blurtype"));
                    int parseInt6 = Integer.parseInt((String) hashMap.get("margin"));
                    float parseFloat9 = Float.parseFloat((String) hashMap.get("shadowoffsx"));
                    float parseFloat10 = Float.parseFloat((String) hashMap.get("shadowoffsy"));
                    String split22 = (String) hashMap.get("baseid");
                    substring = pdecode((String) hashMap.get("text"));
                    int i5 = parseInt & NXT_VALIGNMASK;
                    int i6 = parseInt & 15;
                    int i7 = 0;
                    while (i7 < 3) {
                        if (i7 < strArr.length) {
                            CharSequence substring4;
                            CharSequence substring5;
                            String str2 = strArr[i7];
                            length = str2.length();
                            String str3 = "";
                            i2 = 0;
                            parseInt = 0;
                            i3 = length;
                            while (parseInt < length) {
                                if (str2.charAt(parseInt) == ' ') {
                                    indexOf = Math.abs((length / 2) - parseInt);
                                    if (indexOf < i3) {
                                        i2 = parseInt;
                                        parseInt++;
                                        i3 = indexOf;
                                    }
                                }
                                indexOf = i3;
                                parseInt++;
                                i3 = indexOf;
                            }
                            if (i2 <= 0 || i2 + 1 >= length) {
                                Object substring52 = str3;
                                Object substring42 = str2;
                            } else {
                                substring42 = str2.substring(0, i2);
                                substring52 = str2.substring(i2 + 1);
                            }
                            substring2 = substring.replace("%" + (i7 + 1), str2).replace("%f" + (i7 + 1), substring42).replace("%b" + (i7 + 1), substring52);
                            if (str2.length() == 1) {
                                substring2 = substring2.replace("%s" + (i7 + 1), str2.substring(0, 1)).replace("%!s" + (i7 + 1), "").replace("%e" + (i7 + 1), "").replace("%!e" + (i7 + 1), "").replace("%m" + (i7 + 1), "");
                            } else if (str2.length() < 1) {
                                substring2 = substring2.replace("%s" + (i7 + 1), "").replace("%!s" + (i7 + 1), "").replace("%e" + (i7 + 1), "").replace("%!e" + (i7 + 1), "").replace("%m" + (i7 + 1), "");
                            } else if (str2.length() > 1) {
                                substring2 = substring2.replace("%s" + (i7 + 1), str2.substring(0, 1)).replace("%!s" + (i7 + 1), str2.substring(1, length)).replace("%e" + (i7 + 1), str2.substring(length - 1, length)).replace("%!e" + (i7 + 1), str2.substring(0, length - 1)).replace("%m" + (i7 + 1), str2.substring(1, length - 1));
                            }
                        } else {
                            substring2 = substring.replace("%" + (i7 + 1), "").replace("%s" + (i7 + 1), "").replace("%!s" + (i7 + 1), "").replace("%e" + (i7 + 1), "").replace("%!e" + (i7 + 1), "").replace("%m" + (i7 + 1), "");
                        }
                        i7++;
                        substring = substring2;
                    }
                    if (substring.matches(".*[[\\u0400-\\u052F][\\u2DE0-\\u2DFF][\\uA640-\\uA69F]].*")) {
                        obj = 1;
                    } else {
                        obj = null;
                    }
                    Paint textPaint = new TextPaint();
                    textPaint.setAntiAlias(true);
                    substring2 = (String) hashMap.get("typeface");
                    if (typeface != null) {
                        textPaint.setTypeface(typeface);
                    } else if (obj != null) {
                        i2 = 0;
                        if ((parseLong & 1) != 0) {
                            i2 = 1;
                        }
                        if ((parseLong & 2) != 0) {
                            i2 |= 2;
                        }
                        textPaint.setTypeface(Typeface.defaultFromStyle(i2));
                    } else if (substring2.startsWith(TYPEFACE_SYSTEM)) {
                        split22 = substring2.substring(TYPEFACE_SYSTEM.length());
                        i2 = 0;
                        if ((parseLong & 1) != 0) {
                            i2 = 1;
                        }
                        if ((parseLong & 2) != 0) {
                            i2 |= 2;
                        }
                        textPaint.setTypeface(Typeface.create(split22, i2));
                    } else if (substring2.startsWith(TYPEFACE_FILE)) {
                        textPaint.setTypeface(Typeface.createFromFile(substring2.substring(TYPEFACE_FILE.length())));
                    } else if (substring2.startsWith(TYPEFACE_ASSET)) {
                        substring2 = substring2.substring(TYPEFACE_ASSET.length());
                        if (this.m_assetManager != null) {
                            textPaint.setTypeface(Typeface.createFromAsset(this.m_assetManager, substring2));
                        }
                    } else if (substring2.startsWith(TYPEFACE_THEME)) {
                        substring2 = substring2.substring(TYPEFACE_THEME.length());
                        if (this.m_effectResourceLoader != null) {
                            try {
                                textPaint.setTypeface(this.m_effectResourceLoader.a(substring2));
                            } catch (TypefaceLoadException e2) {
                                e2.printStackTrace();
                            }
                        }
                    } else if (substring2.startsWith(TYPEFACE_FONTID)) {
                        textPaint.setTypeface(com.nexstreaming.kminternal.kinemaster.fonts.c.a().b(substring2.substring(TYPEFACE_FONTID.length())));
                    } else if (substring2.startsWith(TYPEFACE_FONTFILE)) {
                        typeface = null;
                        String substring6 = substring2.substring(TYPEFACE_FONTFILE.length());
                        if (this.m_effectResourceLoader != null) {
                            try {
                                typeface2 = this.m_effectResourceLoader.c(split22, substring6);
                            } catch (IOException e3) {
                                e3.printStackTrace();
                                typeface2 = null;
                            } catch (TypefaceLoadException e22) {
                                typeface = null;
                                e22.printStackTrace();
                            }
                            if (typeface2 == null) {
                                textPaint.setTypeface(typeface2);
                            } else {
                                Log.d(LOG_TAG, String.format("TYPEFACE NOT FOUND : base_id=%s, font=%s", new Object[]{split22, substring6}));
                            }
                        }
                        typeface2 = typeface;
                        if (typeface2 == null) {
                        }
                    } else {
                        File a;
                        if (this.m_effectResourceLoader != null) {
                            try {
                                a = this.m_effectResourceLoader.a(split22, substring2);
                            } catch (IOException e32) {
                                e32.printStackTrace();
                            }
                            if (a != null) {
                                Log.i(LOG_TAG, "TYPEFACE NOT FOUND : base_id=" + split22);
                            } else if (a.exists()) {
                                textPaint.setTypeface(Typeface.createFromFile(a));
                            } else {
                                Log.i(LOG_TAG, "TYPEFACE FILE DOES NOT EXIST : base_id=" + split22 + "; f=" + a);
                            }
                        }
                        a = null;
                        if (a != null) {
                        }
                    }
                    if ((parseLong & 16) != 0) {
                        textPaint.setUnderlineText(true);
                    }
                    if ((parseLong & 32) != 0) {
                        textPaint.setStrikeThruText(true);
                    }
                    if ((parseLong & 128) != 0) {
                        textPaint.setSubpixelText(true);
                    }
                    if ((parseLong & 512) != 0) {
                        textPaint.setLinearText(true);
                    }
                    if ((parseLong & 256) != 0) {
                    }
                    if (((double) parseFloat2) > 0.0d) {
                        textPaint.setTextScaleX(parseFloat2);
                    }
                    if (((double) parseFloat) > 0.0d) {
                        textPaint.setTextSkewX(parseFloat);
                    }
                    if (((double) parseFloat3) > 0.0d) {
                        textPaint.setTextSize(parseFloat3);
                    } else {
                        parseFloat3 = textPaint.getTextSize();
                    }
                    if ((parseLong & 12) == 0) {
                        i4 = parseLong | 4;
                    } else {
                        i4 = parseLong;
                    }
                    float max;
                    if (parseInt3 > 0) {
                        Alignment alignment;
                        StaticLayout staticLayout;
                        int i8;
                        TruncateAt truncateAt = null;
                        switch (parseInt2) {
                            case 2:
                                truncateAt = TruncateAt.START;
                                break;
                            case 3:
                                truncateAt = TruncateAt.MIDDLE;
                                break;
                            case 4:
                                truncateAt = TruncateAt.END;
                                break;
                        }
                        Alignment alignment2 = Alignment.ALIGN_NORMAL;
                        switch (i6) {
                            case 1:
                                alignment = Alignment.ALIGN_CENTER;
                                break;
                            case 2:
                                alignment = Alignment.ALIGN_OPPOSITE;
                                break;
                            default:
                                alignment = Alignment.ALIGN_NORMAL;
                                break;
                        }
                        int i9 = parseInt3 > 0 ? parseInt3 : 2048;
                        if (parseInt4 > 0) {
                            length = parseInt4;
                        } else {
                            length = 2048;
                        }
                        float f = parseFloat3;
                        parseLong = parseInt3;
                        while (true) {
                            staticLayout = new StaticLayout(substring, 0, substring.length(), textPaint, parseLong - (parseInt6 * 2), alignment, parseFloat5, parseFloat6, true, truncateAt, parseLong - (parseInt6 * 2));
                            width = staticLayout.getWidth() + (parseInt6 * 2);
                            indexOf2 = staticLayout.getHeight() + (parseInt6 * 2);
                            if (width <= i9 && indexOf2 <= r14) {
                                if (parseLong6 >= 1) {
                                    if (staticLayout.getLineCount() <= parseLong6) {
                                        i8 = indexOf2;
                                        indexOf2 = width;
                                        width = i8;
                                    }
                                }
                            }
                            if (((double) f) > ((double) parseFloat3) / 5.0d && ((double) f) > 6.0d) {
                                max = f - Math.max(1.0f, parseFloat3 / 12.0f);
                                textPaint.setTextSize(max);
                                f = max;
                                parseLong = width;
                            }
                        }
                        i8 = indexOf2;
                        indexOf2 = width;
                        width = i8;
                        i = 0;
                        if ((i4 & 1024) != 0 || parseInt3 <= 0 || parseInt4 <= 0) {
                            i3 = 0;
                            i = width;
                            width = indexOf2;
                        } else {
                            Log.d(LOG_TAG, "VAlign=" + i5 + " originalWidth=" + parseInt3 + " originalHeight=" + parseInt4 + " width=" + indexOf2 + " height=" + width);
                            switch (i5) {
                                case 16:
                                    i = (parseInt4 - width) / 2;
                                    break;
                                case 32:
                                    i = parseInt4 - width;
                                    break;
                            }
                            i3 = i;
                            width = parseInt3;
                            i = parseInt4;
                        }
                        if (width > 2048) {
                            width = 2048;
                        }
                        if (i > 2048) {
                            i = 2048;
                        }
                        if (width < 1) {
                            width = 1;
                        }
                        if (i < 1) {
                            i = 1;
                        }
                        Bitmap createBitmap2 = Bitmap.createBitmap(width, i, Config.ARGB_8888);
                        indexOf2 = createBitmap2.getWidth() & -2;
                        width = createBitmap2.getHeight() & -2;
                        Canvas canvas = new Canvas(createBitmap2);
                        canvas.drawColor(parseLong2);
                        canvas.save();
                        canvas.translate((float) parseInt6, (float) parseInt6);
                        canvas.translate(0.0f, (float) i3);
                        if ((i4 & 256) != 0 && parseFloat7 > 0.0f) {
                            canvas.save();
                            canvas.translate(parseFloat9, parseFloat10);
                            textPaint.setMaskFilter(new BlurMaskFilter(parseFloat7, Blur.SOLID));
                            textPaint.setStyle(Style.FILL);
                            textPaint.setColor(parseLong5);
                            staticLayout.draw(canvas);
                            textPaint.setMaskFilter(null);
                            canvas.restore();
                        }
                        if ((i4 & 4096) != 0) {
                            textPaint.setStyle(Style.STROKE);
                            textPaint.setColor(parseLong4);
                            textPaint.setStrokeWidth(parseFloat4);
                            staticLayout.draw(canvas);
                        }
                        if (((double) parseFloat8) > 1.0E-5d) {
                            Blur blur = Blur.NORMAL;
                            switch (parseInt5) {
                                case 0:
                                    blur = Blur.NORMAL;
                                    break;
                                case 1:
                                    blur = Blur.SOLID;
                                    break;
                                case 2:
                                    blur = Blur.INNER;
                                    break;
                                case 3:
                                    blur = Blur.OUTER;
                                    break;
                            }
                            textPaint.setMaskFilter(new BlurMaskFilter(parseFloat8, blur));
                        }
                        if ((i4 & 4) != 0) {
                            if ((i4 & 2048) != 0) {
                                textPaint.setXfermode(new PorterDuffXfermode(Mode.DST_IN));
                            }
                            textPaint.setStyle(Style.FILL);
                            textPaint.setColor(parseLong3);
                            staticLayout.draw(canvas);
                            textPaint.setXfermode(null);
                        }
                        if ((i4 & 8) != 0) {
                            textPaint.setStyle(Style.STROKE);
                            textPaint.setColor(parseLong4);
                            textPaint.setStrokeWidth(parseFloat4);
                            staticLayout.draw(canvas);
                        }
                        textPaint.setMaskFilter(null);
                        canvas.restore();
                        i2 = width;
                        i = indexOf2;
                        bitmap = createBitmap2;
                    } else {
                        Rect rect = new Rect();
                        textPaint.getTextBounds(substring, 0, substring.length(), rect);
                        rect.right += 20;
                        indexOf = (int) Math.ceil((double) parseFloat7);
                        FontMetrics fontMetrics = textPaint.getFontMetrics();
                        indexOf2 = (int) Math.max((fontMetrics.bottom * 2.0f) - fontMetrics.top, (float) rect.height());
                        if (parseInt3 < 1 || parseInt4 < 1) {
                            width = ((int) Math.abs(parseFloat9)) + (Math.max(rect.width(), rect.right) + (indexOf * 2));
                            i2 = ((indexOf * 2) + indexOf2) + ((int) Math.abs(parseFloat10));
                            if (width > 2048) {
                                width = 2048;
                            }
                            if (i2 > 2048) {
                                i2 = 2048;
                            }
                        } else {
                            i2 = parseInt4;
                            width = parseInt3;
                        }
                        indexOf2 = width < 1 ? 1 : width;
                        if (i2 < 1) {
                            width = 1;
                        } else {
                            width = i2;
                        }
                        switch (i6) {
                            case 1:
                                textPaint.setTextAlign(Align.CENTER);
                                max = (float) (indexOf2 / 2);
                                break;
                            case 2:
                                textPaint.setTextAlign(Align.RIGHT);
                                max = (float) indexOf2;
                                break;
                            default:
                                textPaint.setTextAlign(Align.LEFT);
                                max = 20.0f;
                                break;
                        }
                        float f2 = (((float) width) - fontMetrics.ascent) / 2.0f;
                        parseFloat6 = max + (((float) indexOf) - Math.min(0.0f, parseFloat9));
                        createBitmap = Bitmap.createBitmap(indexOf2, width, Config.ARGB_8888);
                        width = createBitmap.getWidth() & -2;
                        i2 = createBitmap.getHeight() & -2;
                        Canvas canvas2 = new Canvas(createBitmap);
                        canvas2.drawColor(parseLong2);
                        if ((i4 & 4) != 0) {
                            textPaint.setStyle(Style.FILL);
                            textPaint.setColor(parseLong3);
                            canvas2.drawText(substring, parseFloat6, f2, textPaint);
                        }
                        if ((i4 & 8) != 0) {
                            if (!((i4 & 4) == 0 || (i4 & 256) == 0)) {
                                textPaint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
                            }
                            textPaint.setStyle(Style.STROKE);
                            textPaint.setColor(parseLong4);
                            textPaint.setStrokeWidth(parseFloat4);
                            Path path = new Path();
                            textPaint.getTextPath(substring, 0, substring.length(), parseFloat6, f2, path);
                            canvas2.drawPath(path, textPaint);
                        }
                        i = width;
                        bitmap = createBitmap;
                    }
                    createBitmap = bitmap;
                    width = i;
                    i = i2;
                } else {
                    if (str.startsWith(TAG_ThemeImage)) {
                        substring2 = str.substring(TAG_ThemeImage.length());
                        width = substring2.indexOf(47);
                        if (width >= 0) {
                            substring = substring2.substring(0, width);
                            substring2 = substring2.substring(width + 1);
                        } else {
                            substring = "";
                        }
                        bitmap = null;
                        if (this.m_effectResourceLoader != null) {
                            try {
                                bitmap = BitmapFactory.decodeStream(this.m_effectResourceLoader.b(substring, substring2));
                            } catch (IOException e4) {
                                Log.e(LOG_TAG, "Error loading bitmap for effect(" + substring + ") : " + substring2);
                                e4.printStackTrace();
                                bitmap = null;
                            }
                        }
                        if (bitmap == null && this.m_assetManager != null) {
                            try {
                                bitmap = BitmapFactory.decodeStream(this.m_assetManager.open(substring2));
                            } catch (IOException e42) {
                                Log.e(LOG_TAG, "Error loading bitmap (general asset mode) for effect(" + substring + ") : " + substring2);
                                e42.printStackTrace();
                                bitmap = null;
                            }
                        }
                        if (bitmap != null) {
                            return new NexImage(bitmap, bitmap.getWidth(), bitmap.getHeight());
                        }
                        Log.e(LOG_TAG, "Bitmap failed to load for effect(" + substring + ") : " + substring2);
                        i = 0;
                        createBitmap = bitmap;
                        width = 0;
                    } else {
                        Bitmap createBitmap3;
                        Options options;
                        if (!str.startsWith(TAG_Overlay)) {
                            if (str.startsWith(TAG_PreviewThemeImage)) {
                                substring2 = str.substring(TAG_ThemeImage.length());
                                width = substring2.indexOf(47);
                                if (width >= 0) {
                                    substring = substring2.substring(0, width);
                                    substring2 = substring2.substring(width + 1);
                                } else {
                                    substring = "";
                                }
                                bitmap = null;
                                Options options2 = new Options();
                                if (this.m_effectResourceLoader != null) {
                                    try {
                                        bitmap = BitmapFactory.decodeStream(this.m_effectResourceLoader.b(substring, substring2), null, options2);
                                    } catch (IOException e422) {
                                        Log.e(LOG_TAG, "Error loading bitmap for effect(" + substring + ") : " + substring2);
                                        e422.printStackTrace();
                                        bitmap = null;
                                    }
                                }
                                if (bitmap == null && this.m_assetManager != null) {
                                    try {
                                        bitmap = BitmapFactory.decodeStream(this.m_assetManager.open(substring2), null, options2);
                                    } catch (IOException e4222) {
                                        Log.e(LOG_TAG, "Error loading bitmap (general asset mode) for effect(" + substring + ") : " + substring2);
                                        e4222.printStackTrace();
                                        bitmap = null;
                                    }
                                }
                                if (bitmap != null) {
                                    return new NexImage(bitmap, bitmap.getWidth(), bitmap.getHeight());
                                }
                                Log.e(LOG_TAG, "Bitmap failed to load for effect(" + substring + ") : " + substring2);
                                i = 0;
                                createBitmap = bitmap;
                                width = 0;
                            } else {
                                if (!str.startsWith(TAG_Overlay)) {
                                    if (str.startsWith("[")) {
                                        i = 0;
                                        createBitmap = null;
                                        width = 0;
                                    } else {
                                        bitmap = null;
                                        if (this.m_assetManager != null) {
                                            try {
                                                Bitmap decodeStream;
                                                if (str.compareTo("placeholder1.jpg") != 0) {
                                                    if (str.compareTo("placeholder2.jpg") != 0) {
                                                        decodeStream = BitmapFactory.decodeStream(this.m_assetManager.open(str));
                                                        bitmap = decodeStream;
                                                    }
                                                }
                                                decodeStream = BitmapFactory.decodeStream(this.m_assetManager.open(str));
                                                bitmap = decodeStream;
                                            } catch (IOException e322) {
                                                e322.printStackTrace();
                                            }
                                        }
                                        if (bitmap != null) {
                                            return new NexImage(bitmap, bitmap.getWidth(), bitmap.getHeight());
                                        }
                                        i = 0;
                                        createBitmap = bitmap;
                                        width = 0;
                                    }
                                } else if (this.m_overlayPathResolver == null) {
                                    createBitmap3 = Bitmap.createBitmap(8, 8, Config.ARGB_8888);
                                    return new NexImage(createBitmap3, createBitmap3.getWidth(), createBitmap3.getHeight());
                                } else {
                                    substring2 = this.m_overlayPathResolver.a(str.substring(TAG_Overlay.length()));
                                    if (substring2 == null) {
                                        createBitmap3 = Bitmap.createBitmap(8, 8, Config.ARGB_8888);
                                        return new NexImage(createBitmap3, createBitmap3.getWidth(), createBitmap3.getHeight());
                                    }
                                    options = new Options();
                                    options.inJustDecodeBounds = true;
                                    BitmapFactory.decodeFile(substring2, options);
                                    options.inJustDecodeBounds = false;
                                    options.inSampleSize = 1;
                                    bitmap = BitmapFactory.decodeFile(substring2, options);
                                    if (bitmap != null) {
                                        return new NexImage(bitmap, bitmap.getWidth(), bitmap.getHeight());
                                    }
                                    i = 0;
                                    createBitmap = bitmap;
                                    width = 0;
                                }
                            }
                        } else if (this.m_overlayPathResolver == null) {
                            createBitmap3 = Bitmap.createBitmap(8, 8, Config.ARGB_8888);
                            return new NexImage(createBitmap3, createBitmap3.getWidth(), createBitmap3.getHeight());
                        } else {
                            substring2 = this.m_overlayPathResolver.a(str.substring(TAG_Overlay.length()));
                            if (substring2 == null) {
                                createBitmap3 = Bitmap.createBitmap(8, 8, Config.ARGB_8888);
                                return new NexImage(createBitmap3, createBitmap3.getWidth(), createBitmap3.getHeight());
                            }
                            options = new Options();
                            options.inJustDecodeBounds = true;
                            BitmapFactory.decodeFile(substring2, options);
                            options.inJustDecodeBounds = false;
                            options.inSampleSize = 1;
                            bitmap = BitmapFactory.decodeFile(substring2, options);
                            if (bitmap != null) {
                                return new NexImage(bitmap, bitmap.getWidth(), bitmap.getHeight());
                            }
                            i = 0;
                            createBitmap = bitmap;
                            width = 0;
                        }
                    }
                }
                if (createBitmap == null || width <= 0 || i <= 0) {
                    return null;
                }
                return new NexImage(createBitmap, width, i);
            }
        }
        return null;
    }

    public static b loadBitmap(String str, int i, int i2) {
        return loadBitmap(str, i, i2, Integer.MAX_VALUE, 0);
    }

    public static b loadBitmap(InputStream inputStream, int i, int i2, int i3) {
        int i4 = 1;
        InputStream bufferedInputStream = new BufferedInputStream(inputStream);
        Options options = new Options();
        options.inJustDecodeBounds = true;
        try {
            bufferedInputStream.mark(inputStream.available());
        } catch (IOException e) {
            e.printStackTrace();
        }
        BitmapFactory.decodeStream(bufferedInputStream, null, options);
        try {
            bufferedInputStream.reset();
            options.inJustDecodeBounds = false;
            int i5 = options.outWidth;
            int i6 = options.outHeight;
            while (i4 < 8) {
                if (options.outWidth / i4 <= i || options.outHeight / i4 <= i2) {
                    if (((options.outWidth / i4) * options.outHeight) / i4 <= (i3 > 0 ? i3 : 1500000)) {
                        break;
                    }
                }
                i4 *= 2;
            }
            options.inSampleSize = i4;
            Log.d(LOG_TAG, "loadBitmap from stream width=" + options.outWidth + " height=" + options.outHeight + " sampleSize=" + i4);
            Bitmap decodeStream = BitmapFactory.decodeStream(bufferedInputStream, null, options);
            try {
                bufferedInputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            if (decodeStream == null) {
                return new b(null, 0, 0, null);
            }
            return new b(decodeStream, i5, i6, null);
        } catch (Throwable e3) {
            throw new RuntimeException("Failed to reset stream", e3);
        }
    }

    public static b loadBitmap(String str, int i, int i2, int i3, int i4) {
        return loadBitmap(str, i, i2, i3, null, i4);
    }

    /* JADX WARNING: Missing block: B:38:0x00b7, code:
            r3 = r11.toLowerCase(java.util.Locale.US);
            r2 = 0;
     */
    /* JADX WARNING: Missing block: B:39:0x00c4, code:
            if (r3.endsWith(".jpeg") != false) goto L_0x00ce;
     */
    /* JADX WARNING: Missing block: B:41:0x00cc, code:
            if (r3.endsWith(".jpg") == false) goto L_0x00da;
     */
    /* JADX WARNING: Missing block: B:43:?, code:
            r2 = new android.media.ExifInterface(r11).getAttributeInt("Orientation", 0);
     */
    /* JADX WARNING: Missing block: B:57:0x0110, code:
            r2 = 0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static b loadBitmap(String str, int i, int i2, int i3, Config config, int i4) {
        a aVar;
        Bitmap bitmap;
        if (i4 == 1) {
            return loadBitmapThumb(str, i, i2, i3, config);
        }
        Log.d(LOG_TAG, "loadBitmap");
        aVar = new a(str, i, i2, i3, config, false);
        synchronized (sBitmapCacheLock) {
            b bVar = null;
            WeakReference weakReference = (WeakReference) sBitmapCache.get(aVar);
            if (weakReference != null) {
                bitmap = (Bitmap) weakReference.get();
                if (bitmap != null) {
                    c cVar = (c) sLoadedBitmapCache.get(bitmap);
                    if (cVar != null) {
                        bVar = new b(bitmap, cVar.a(), cVar.b(), cVar.c());
                    }
                }
            }
            sCleanCacheCount++;
            if (sCleanCacheCount > 30) {
                sCleanCacheCount = 0;
                List list = null;
                for (Entry entry : sBitmapCache.entrySet()) {
                    List list2;
                    if (((WeakReference) entry.getValue()).get() == null) {
                        List arrayList;
                        if (list == null) {
                            arrayList = new ArrayList();
                        } else {
                            arrayList = list;
                        }
                        arrayList.add(entry.getKey());
                        list2 = arrayList;
                    } else {
                        list2 = list;
                    }
                    list = list2;
                }
                if (list != null) {
                    for (a remove : list) {
                        sBitmapCache.remove(remove);
                    }
                }
            }
            if (bVar != null) {
                return bVar;
            }
        }
        int i5;
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inJustDecodeBounds = false;
        options.inPreferredConfig = config;
        int i6 = options.outWidth;
        int i7 = options.outHeight;
        int i8 = 1;
        while (true) {
            i5 = i8;
            if (i5 >= 8) {
                break;
            }
            if (options.outWidth / i5 <= i || options.outHeight / i5 <= i2) {
                if (((options.outWidth / i5) * options.outHeight) / i5 <= (i3 > 0 ? i3 : 1500000)) {
                    break;
                }
            }
            i8 = i5 * 2;
        }
        options.inSampleSize = i5;
        Log.d(LOG_TAG, "loadBitmap width=" + options.outWidth + " height=" + options.outHeight + " sampleSize=" + i5 + " name='" + str + "'");
        bitmap = BitmapFactory.decodeFile(str, options);
        if (bitmap == null) {
            return new b(null, 0, 0, null);
        }
        Bitmap bitmap2;
        Canvas canvas;
        Matrix matrix;
        b bVar2;
        switch (r2) {
            case 0:
                bitmap2 = bitmap;
                break;
            case 1:
                bitmap2 = bitmap;
                break;
            case 2:
                canvas = new Canvas(Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Config.ARGB_8888));
                Matrix matrix2 = new Matrix();
                matrix2.setScale(-1.0f, 1.0f);
                matrix2.postTranslate((float) bitmap.getWidth(), 0.0f);
                canvas.drawBitmap(bitmap, matrix2, null);
                break;
            case 3:
                bitmap2 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Config.ARGB_8888);
                canvas = new Canvas(bitmap2);
                matrix = new Matrix();
                matrix.setScale(-1.0f, -1.0f);
                matrix.postTranslate((float) bitmap.getWidth(), (float) bitmap.getHeight());
                canvas.drawBitmap(bitmap, matrix, null);
                break;
            case 4:
                break;
            case 5:
                bitmap2 = bitmap;
                break;
            case 6:
                bitmap2 = Bitmap.createBitmap(bitmap.getHeight(), bitmap.getWidth(), Config.ARGB_8888);
                canvas = new Canvas(bitmap2);
                matrix = new Matrix();
                matrix.setRotate(90.0f);
                matrix.postTranslate((float) bitmap.getHeight(), 0.0f);
                canvas.drawBitmap(bitmap, matrix, null);
                break;
            case 7:
                bitmap2 = bitmap;
                break;
            case 8:
                bitmap2 = Bitmap.createBitmap(bitmap.getHeight(), bitmap.getWidth(), Config.ARGB_8888);
                canvas = new Canvas(bitmap2);
                matrix = new Matrix();
                matrix.setRotate(270.0f);
                matrix.postTranslate(0.0f, (float) bitmap.getWidth());
                canvas.drawBitmap(bitmap, matrix, null);
                break;
            default:
                bitmap2 = bitmap;
                break;
        }
        bitmap2 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Config.ARGB_8888);
        canvas = new Canvas(bitmap2);
        matrix = new Matrix();
        matrix.setScale(1.0f, -1.0f);
        matrix.postTranslate(0.0f, (float) bitmap.getHeight());
        canvas.drawBitmap(bitmap, matrix, null);
        if (config == null || bitmap2.getConfig() == config) {
            bitmap = bitmap2;
        } else {
            bitmap = Bitmap.createBitmap(bitmap2.getWidth(), bitmap2.getHeight(), config);
            new Canvas(bitmap).drawBitmap(bitmap2, 0.0f, 0.0f, null);
            bitmap2.recycle();
        }
        switch (r2) {
            case 5:
            case 6:
            case 7:
            case 8:
                bVar2 = new b(bitmap, i7, i6, null);
                break;
            default:
                bVar2 = new b(bitmap, i6, i7, null);
                break;
        }
        sBitmapCache.put(aVar, new WeakReference(bitmap));
        sLoadedBitmapCache.put(bitmap, new c(bVar2.b(), bVar2.c(), null));
        return bVar2;
    }

    /* JADX WARNING: Missing block: B:35:0x00ac, code:
            r8 = getThumbnail(com.nexstreaming.kminternal.kinemaster.config.a.a().b(), r9);
     */
    /* JADX WARNING: Missing block: B:36:0x00b8, code:
            if (r8 != null) goto L_0x00c5;
     */
    /* JADX WARNING: Missing block: B:39:0x00d1, code:
            switch(getThumbnailOrientation(com.nexstreaming.kminternal.kinemaster.config.a.a().b(), r9)) {
                case 90: goto L_0x0103;
                case com.nexstreaming.nexeditorsdk.nexClip.kClip_Rotate_180 :int: goto L_0x0115;
                case com.nexstreaming.nexeditorsdk.nexClip.kClip_Rotate_270 :int: goto L_0x0127;
                default: goto L_0x00d4;
            };
     */
    /* JADX WARNING: Missing block: B:40:0x00d4, code:
            r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.b(r8, 1280, 720, 2, null);
     */
    /* JADX WARNING: Missing block: B:41:0x00e0, code:
            sBitmapCache.put(r1, new java.lang.ref.WeakReference(r8));
            sLoadedBitmapCache.put(r8, new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.c(r2.b(), r2.c(), r2.d(), null));
     */
    /* JADX WARNING: Missing block: B:42:0x0103, code:
            r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.b(rotateImage(r8, 90), 720, 1280, 2, null);
     */
    /* JADX WARNING: Missing block: B:43:0x0115, code:
            r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.b(rotateImage(r8, com.nexstreaming.nexeditorsdk.nexClip.kClip_Rotate_180), 1280, 720, 2, null);
     */
    /* JADX WARNING: Missing block: B:44:0x0127, code:
            r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.b(rotateImage(r8, com.nexstreaming.nexeditorsdk.nexClip.kClip_Rotate_270), 720, 1280, 2, null);
     */
    /* JADX WARNING: Missing block: B:52:?, code:
            return new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.b(null, 0, 0, 0, null);
     */
    /* JADX WARNING: Missing block: B:53:?, code:
            return r2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static b loadBitmapThumb(String str, int i, int i2, int i3, Config config) {
        Log.d(LOG_TAG, "loadBitmapThumb");
        a aVar = new a(str, i, i2, i3, config, true);
        synchronized (sBitmapCacheLock) {
            b bVar = null;
            WeakReference weakReference = (WeakReference) sBitmapCache.get(aVar);
            if (weakReference != null) {
                Bitmap bitmap = (Bitmap) weakReference.get();
                if (bitmap != null) {
                    c cVar = (c) sLoadedBitmapCache.get(bitmap);
                    if (cVar != null) {
                        bVar = new b(bitmap, cVar.a(), cVar.b(), cVar.c());
                    }
                }
            }
            sCleanCacheCount++;
            if (sCleanCacheCount > 30) {
                sCleanCacheCount = 0;
                List list = null;
                for (Entry entry : sBitmapCache.entrySet()) {
                    List list2;
                    if (((WeakReference) entry.getValue()).get() == null) {
                        List arrayList;
                        if (list == null) {
                            arrayList = new ArrayList();
                        } else {
                            arrayList = list;
                        }
                        arrayList.add(entry.getKey());
                        list2 = arrayList;
                    } else {
                        list2 = list;
                    }
                    list = list2;
                }
                if (list != null) {
                    for (a remove : list) {
                        sBitmapCache.remove(remove);
                    }
                }
            }
            if (bVar != null) {
                return bVar;
            }
        }
    }

    public static Bitmap rotateImage(Bitmap bitmap, int i) {
        if (i == 0 || bitmap == null) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.setRotate((float) i, ((float) bitmap.getWidth()) / 2.0f, ((float) bitmap.getHeight()) / 2.0f);
        try {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            if (bitmap != createBitmap) {
                return createBitmap;
            }
            return bitmap;
        } catch (OutOfMemoryError e) {
            Log.e(LOG_TAG, "rotateImage Error : " + e);
            return bitmap;
        }
    }

    public static Bitmap rotateAndFlipImage(Bitmap bitmap, int i, boolean z, boolean z2) {
        float f = -1.0f;
        if ((i == 0 && !z && !z2) || bitmap == null) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.preRotate((float) i, ((float) bitmap.getWidth()) / 2.0f, ((float) bitmap.getHeight()) / 2.0f);
        float f2 = z ? -1.0f : 1.0f;
        if (!z2) {
            f = 1.0f;
        }
        matrix.preScale(f2, f, ((float) bitmap.getWidth()) / 2.0f, ((float) bitmap.getHeight()) / 2.0f);
        try {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            if (bitmap != createBitmap) {
                return createBitmap;
            }
            return bitmap;
        } catch (OutOfMemoryError e) {
            Log.e(LOG_TAG, "rotateImage Error : " + e);
            return bitmap;
        }
    }

    public static void calcSampleSize(Options options) {
        int i = 1;
        while (i < 8 && ((options.outWidth / i > 1440 && options.outHeight / i > 810) || ((options.outWidth / i) * options.outHeight) / i > 1500000)) {
            i *= 2;
        }
        options.inSampleSize = i;
    }

    public static void calcSampleSize(Options options, int i, int i2, int i3) {
        int i4;
        int i5 = 1;
        while (true) {
            i4 = i5;
            if (i4 >= 8) {
                break;
            }
            if (options.outWidth / i4 <= i || options.outHeight / i4 <= i2) {
                if (((options.outWidth / i4) * options.outHeight) / i4 <= (i3 > 0 ? i3 : 1500000)) {
                    break;
                }
            }
            i5 = i4 * 2;
        }
        options.inSampleSize = i4;
    }

    public NexImage openFile(String str, int i) {
        Bitmap a;
        if (str.startsWith("@solid:") && str.endsWith(".jpg")) {
            int parseLong = (int) Long.parseLong(str.substring(7, 15), 16);
            int[] iArr = new int[576];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                iArr[i2] = parseLong;
            }
            return new NexImage(Bitmap.createBitmap(iArr, 32, 18, Config.ARGB_8888), 32, 18);
        } else if (str.startsWith("@assetItem:")) {
            String substring = str.substring(11);
            if (this.m_effectResourceLoader != null) {
                try {
                    a = loadBitmap(this.m_effectResourceLoader.b(substring, null), this.m_jpegMaxWidth, this.m_jpegMaxHeight, this.m_jpegMaxSize).a();
                    if (a == null) {
                        return null;
                    }
                    Log.d(LOG_TAG, "@assetItem bitmap width=" + a.getWidth() + " height=" + a.getHeight());
                    return new NexImage(a, a.getWidth() & -2, a.getHeight() & -2);
                } catch (IOException e) {
                }
            }
            return null;
        } else {
            try {
                b loadBitmap = loadBitmap(str, this.m_jpegMaxWidth, this.m_jpegMaxHeight, this.m_jpegMaxSize, i);
                a = loadBitmap.a();
                int d = loadBitmap.d();
                if (a == null) {
                    return null;
                }
                Log.d(LOG_TAG, "Actual bitmap width=" + a.getWidth() + " height=" + a.getHeight() + ", loadedtype=" + d);
                return new NexImage(a, a.getWidth() & -2, a.getHeight() & -2, d);
            } catch (Exception e2) {
                return null;
            }
        }
    }

    public byte[] callbackReadAssetItemFile(String str, String str2) {
        f c = com.nexstreaming.app.common.nexasset.assetpackage.c.a().c(str);
        if (c == null) {
            Log.d(LOG_TAG, "Error get assetItem id=" + str);
            return null;
        }
        try {
            String filePath;
            AssetPackageReader a = AssetPackageReader.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b(), c.getPackageURI(), c.getAssetPackage().getAssetId());
            if (str2 == null || str2.length() < 1) {
                filePath = c.getFilePath();
            } else {
                filePath = relativePath(c.getFilePath(), str2);
            }
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            InputStream a2;
            try {
                a2 = a.a(filePath);
                copy(a2, byteArrayOutputStream);
                a2.close();
                return byteArrayOutputStream.toByteArray();
            } catch (Throwable e) {
                Log.d(LOG_TAG, "Error reading file", e);
                return null;
            } catch (Throwable th) {
                a2.close();
            }
        } catch (Throwable e2) {
            Log.d(LOG_TAG, "Error making reader", e2);
            return null;
        }
    }

    private static String relativePath(String str, String str2) {
        if (str2.startsWith("..") || str2.contains("/..")) {
            throw new SecurityException("Parent Path References Not Allowed");
        } else if (str.endsWith("/")) {
            return str + str2;
        } else {
            int lastIndexOf = str.lastIndexOf(47);
            return lastIndexOf >= 0 ? str.substring(0, lastIndexOf + 1) + str2 : str2;
        }
    }

    private static void copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 != read) {
                outputStream.write(bArr, 0, read);
                j += (long) read;
            } else {
                return;
            }
        }
    }

    private static Bitmap getThumbnail(Context context, String str) {
        Cursor query = context.getContentResolver().query(Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data=?", new String[]{str}, null);
        if (query == null || !query.moveToFirst()) {
            query.close();
            return null;
        }
        int i = query.getInt(query.getColumnIndex("_id"));
        query.close();
        return Thumbnails.getThumbnail(context.getContentResolver(), (long) i, 1, null);
    }

    private static int getThumbnailOrientation(Context context, String str) {
        Uri uri;
        Cursor query = context.getContentResolver().query(Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data=?", new String[]{str}, null);
        if (query == null || !query.moveToFirst()) {
            uri = null;
        } else {
            uri = ContentUris.withAppendedId(Media.EXTERNAL_CONTENT_URI, (long) query.getInt(query.getColumnIndex("_id")));
            query.close();
        }
        if (uri != null) {
            String[] strArr = new String[]{"orientation"};
            query = context.getContentResolver().query(uri, strArr, null, null, null);
            if (query != null && query.moveToFirst()) {
                return query.getInt(query.getColumnIndex(strArr[0]));
            }
        }
        return -1;
    }
}
