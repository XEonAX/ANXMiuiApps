package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.util.Log;
import com.nexstreaming.app.common.nexasset.assetpackage.AssetPackageReader;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemCategory;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.app.common.nexasset.store.AssetLocalInstallDB;
import com.nexstreaming.app.common.util.n;
import com.nexstreaming.kminternal.kinemaster.config.a;
import com.nexstreaming.kminternal.kinemaster.fonts.Font;
import com.nexstreaming.kminternal.kinemaster.fonts.b;
import com.nexstreaming.kminternal.kinemaster.fonts.c;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public final class nexFont {
    private static final String LOG_TAG = "nexFont";
    private static List<nexFont> list = new ArrayList();
    private static boolean s_update;
    private boolean builtin;
    private Font font;
    private String sample;
    private boolean system;

    private nexFont(boolean z, Font font, String str, boolean z2) {
        this.builtin = z;
        this.font = font;
        this.sample = str;
        this.system = z2;
    }

    public String getId() {
        return this.font.a();
    }

    public String getSampleText() {
        return this.sample;
    }

    public boolean isBuiltinFont() {
        return this.builtin;
    }

    public boolean isSystemFont() {
        return this.system;
    }

    public Bitmap getSampleImage(Context context) {
        return this.font.c(context);
    }

    public Typeface getTypeFace() {
        return c.a().b(getId());
    }

    public static List<nexFont> getPresetList() {
        if (list.size() == 0) {
            for (b a : c.a().b()) {
                for (Font font : a.a()) {
                    list.add(new nexFont(true, font, font.a(null), font.a().startsWith("system")));
                }
            }
            for (f fVar : com.nexstreaming.app.common.nexasset.assetpackage.c.a().a(ItemCategory.font)) {
                if (!fVar.isHidden()) {
                    boolean z;
                    String valueOf = String.valueOf((int) fVar.getAssetPackage().getAssetSubCategory().getSubCategoryId());
                    if (valueOf == null) {
                        valueOf = "asset";
                    }
                    String sampleText = fVar.getSampleText();
                    if (sampleText == null || sampleText.trim().length() < 1) {
                        sampleText = n.a(a.a().b(), fVar.getLabel());
                    }
                    if (sampleText == null) {
                        sampleText = fVar.getId();
                    }
                    Log.d(LOG_TAG, "asset font id=" + fVar.getId() + ", loacalPath=" + getLocalPath(fVar));
                    Font font2 = new Font(fVar.getId(), valueOf, new File(getLocalPath(fVar)), sampleText);
                    if (fVar.getPackageURI().contains(AssetLocalInstallDB.getInstalledAssetPath())) {
                        z = false;
                    } else {
                        z = true;
                    }
                    list.add(new nexFont(z, font2, sampleText, false));
                }
            }
        }
        return list;
    }

    public static nexFont getFont(String str) {
        checkUpdate();
        for (nexFont nexfont : list) {
            if (nexfont.getId().compareTo(str) == 0) {
                return nexfont;
            }
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0053 A:{SYNTHETIC, Splitter: B:23:0x0053} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static String getLocalPath(f fVar) {
        AssetPackageReader a;
        Throwable e;
        Throwable th;
        String str = null;
        try {
            a = AssetPackageReader.a(a.a().b(), fVar.getPackageURI(), fVar.getId());
            try {
                str = a.c(fVar.getFilePath()).getAbsolutePath();
                if (a != null) {
                    try {
                        a.close();
                    } catch (Throwable e2) {
                        Log.e(LOG_TAG, e2.getMessage(), e2);
                    }
                }
            } catch (Exception e3) {
                e2 = e3;
            }
        } catch (Exception e4) {
            e2 = e4;
            a = str;
        } catch (Throwable e22) {
            a = str;
            th = e22;
            if (a != null) {
            }
            throw th;
        }
        return str;
        try {
            Log.e(LOG_TAG, e22.getMessage(), e22);
            if (a != null) {
                try {
                    a.close();
                } catch (Throwable e222) {
                    Log.e(LOG_TAG, e222.getMessage(), e222);
                }
            }
            return str;
        } catch (Throwable th2) {
            th = th2;
            if (a != null) {
                try {
                    a.close();
                } catch (Throwable e2222) {
                    Log.e(LOG_TAG, e2222.getMessage(), e2222);
                }
            }
            throw th;
        }
    }

    public static String[] getFontIds() {
        checkUpdate();
        String[] strArr = new String[list.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= strArr.length) {
                return strArr;
            }
            strArr[i2] = ((nexFont) list.get(i2)).getId();
            i = i2 + 1;
        }
    }

    public static Typeface getTypeface(Context context, String str) {
        return c.a().b(str);
    }

    public static void reload() {
        list.clear();
        getPresetList();
    }

    static boolean isLoadedFont(String str) {
        if (c.a().a(str)) {
            return true;
        }
        f c = com.nexstreaming.app.common.nexasset.assetpackage.c.a().c(str);
        if (c == null) {
            return false;
        }
        if (c.getCategory() != ItemCategory.font) {
            return false;
        }
        return true;
    }

    public static void clearBuiltinFontsCache() {
        c.a().c();
    }

    static void needUpdate() {
        s_update = true;
    }

    static void checkUpdate() {
        if (s_update) {
            s_update = false;
            reload();
        }
    }
}
