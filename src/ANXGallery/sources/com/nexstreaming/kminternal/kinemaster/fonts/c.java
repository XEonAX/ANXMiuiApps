package com.nexstreaming.kminternal.kinemaster.fonts;

import android.graphics.Typeface;
import android.util.Log;
import com.nexstreaming.app.common.nexasset.assetpackage.AssetPackageReader;
import com.nexstreaming.app.common.nexasset.assetpackage.AssetPackageReader.LocalPathNotAvailableException;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemType;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.app.common.util.b;
import com.nexstreaming.kminternal.kinemaster.fonts.Font.TypefaceLoadException;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: FontManager */
public class c {
    private static c a;
    private List<b> b = null;
    private Map<String, Font> c;

    /* compiled from: FontManager */
    private static class a implements b {
        private final String a;
        private final int b;
        private final List<Font> c = new ArrayList();

        a(String str, int i) {
            this.a = str;
            this.b = i;
        }

        public List<Font> a() {
            return Collections.unmodifiableList(this.c);
        }

        List<Font> b() {
            return this.c;
        }
    }

    public static c a() {
        if (a == null) {
            a = new c();
        }
        return a;
    }

    private static Map<String, Integer> d() {
        Map<String, Integer> hashMap = new HashMap();
        hashMap.put("latin", Integer.valueOf(0));
        hashMap.put("hangul", Integer.valueOf(0));
        hashMap.put("chs", Integer.valueOf(0));
        hashMap.put("cht", Integer.valueOf(0));
        hashMap.put("japanese", Integer.valueOf(0));
        hashMap.put("android", Integer.valueOf(0));
        return hashMap;
    }

    public List<b> b() {
        if (this.b == null) {
            e();
        }
        return this.b;
    }

    private void e() {
        Map d = d();
        Map hashMap = new HashMap();
        for (Font font : f().values()) {
            String b = font.b();
            a aVar = (a) hashMap.get(b);
            if (aVar == null) {
                Integer num = (Integer) d.get(b);
                if (num == null) {
                    num = Integer.valueOf(0);
                }
                a aVar2 = new a(b, num.intValue());
                hashMap.put(b, aVar2);
                aVar = aVar2;
            }
            aVar.b().add(font);
        }
        this.b = Collections.unmodifiableList(new ArrayList(hashMap.values()));
    }

    private Map<String, Font> f() {
        if (this.c == null) {
            List<Font> a = a.a();
            this.c = new HashMap();
            for (Font font : a) {
                this.c.put(font.a(), font);
            }
        }
        return this.c;
    }

    public void c() {
        this.c = null;
    }

    public boolean a(String str) {
        if (((Font) f().get(str)) != null) {
            return true;
        }
        f c = com.nexstreaming.app.common.nexasset.assetpackage.c.a().c(str);
        boolean z = c != null && c.getType() == ItemType.font;
        return z;
    }

    public Typeface b(String str) {
        if (str == null || str.trim().length() < 1) {
            return null;
        }
        String substring = str.substring(str.indexOf(47) + 1);
        Font font = (Font) f().get(substring);
        if (font != null) {
            try {
                return font.b(com.nexstreaming.kminternal.kinemaster.config.a.a().b());
            } catch (TypefaceLoadException e) {
                return null;
            }
        }
        Log.d("FontManager", "Get typeface: " + substring);
        f c = com.nexstreaming.app.common.nexasset.assetpackage.c.a().c(substring);
        if (c == null || c.getType() != ItemType.font) {
            Log.w("FontManager", "Typeface not found: " + substring);
            return null;
        } else if (com.nexstreaming.app.common.nexasset.assetpackage.c.a().a(c.getAssetPackage())) {
            Log.w("FontManager", "Typeface expire: " + substring);
            return null;
        } else {
            try {
                Closeable a = AssetPackageReader.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b(), c.getPackageURI(), c.getAssetPackage().getAssetId());
                Typeface d;
                try {
                    d = a.d(c.getFilePath());
                    return d;
                } catch (LocalPathNotAvailableException e2) {
                    d = e2;
                    Log.e("FontManager", "Error loading typeface: " + substring, d);
                    return null;
                } finally {
                    b.a(a);
                }
            } catch (Throwable e3) {
                Log.e("FontManager", "Error loading typeface: " + substring, e3);
                return null;
            }
        }
    }
}
