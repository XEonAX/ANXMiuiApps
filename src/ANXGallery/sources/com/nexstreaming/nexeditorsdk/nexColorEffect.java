package com.nexstreaming.nexeditorsdk;

import android.graphics.Bitmap;
import android.graphics.ColorMatrix;
import com.nexstreaming.kminternal.kinemaster.config.a;
import com.nexstreaming.kminternal.kinemaster.editorwrapper.b;
import com.nexstreaming.kminternal.kinemaster.editorwrapper.b.c;
import com.nexstreaming.nexeditorsdk.nexSaveDataFormat.nexColorEffectOf;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class nexColorEffect implements Cloneable {
    public static final nexColorEffect ALIEN_INVASION = new nexColorEffect("ALIEN_INVASION", 0.12f, -0.06f, -0.3f, -15437804);
    public static final nexColorEffect BLACK_AND_WHITE = new nexColorEffect("BLACK_AND_WHITE", 0.0f, 0.0f, -1.0f, -1);
    public static final nexColorEffect COOL = new nexColorEffect("COOL", 0.12f, -0.12f, -0.3f, -15449488);
    public static final nexColorEffect DEEP_BLUE = new nexColorEffect("DEEP_BLUE", -0.2f, -0.3f, -0.6f, -16763905);
    public static final nexColorEffect FALL = new nexColorEffect("FALL", 0.08f, -0.06f, -0.5f, -16711766);
    public static final nexColorEffect NOIR = new nexColorEffect("NOIR", -0.25f, 0.6f, -1.0f, -8952235);
    public static final nexColorEffect NONE = new nexColorEffect("NONE", 0.0f, 0.0f, 0.0f, 0);
    public static final nexColorEffect ORANGE = new nexColorEffect("ORANGE", 0.08f, -0.06f, -0.35f, -17664);
    public static final nexColorEffect PASTEL = new nexColorEffect("PASTEL", 0.08f, -0.06f, -0.5f, -11184811);
    public static final nexColorEffect PINK = new nexColorEffect("PINK", 0.1f, -0.3f, -0.6f, -6533297);
    public static final nexColorEffect PURPLE = new nexColorEffect("PURPLE", 0.08f, -0.06f, -0.3f, -5614132);
    public static final nexColorEffect RED_ALERT = new nexColorEffect("RED_ALERT", -0.3f, -0.19f, -1.0f, -65536);
    public static final nexColorEffect ROUGE = new nexColorEffect("ROUGE", 0.08f, -0.06f, -0.6f, -43691);
    public static final nexColorEffect SEPIA = new nexColorEffect("SEPIA", 0.12f, -0.12f, -0.3f, -9420268);
    public static final nexColorEffect SPRING = new nexColorEffect("SPRING", 0.08f, -0.06f, -0.3f, -5583787);
    public static final nexColorEffect STRONG_ORANGE = new nexColorEffect("STRONG_ORANGE", 0.08f, -0.06f, -0.5f, -17664);
    public static final nexColorEffect SUMMER = new nexColorEffect("SUMMER", 0.08f, -0.06f, -0.5f, -5570816);
    public static final nexColorEffect SUNNY = new nexColorEffect("SUNNY", 0.08f, -0.06f, -0.3f, -3364267);
    private static List<nexColorEffect> list = new ArrayList();
    private static List<nexColorEffect> listCollect = null;
    private static boolean needUpdate = true;
    private final String assetItemID;
    private final float brightness;
    private ColorMatrix colorMatrix;
    private final float contrast;
    private final String kineMasterID;
    private boolean lut_enabled_ = false;
    private int lut_resource_id_ = 0;
    private final String presetName;
    private final float saturation;
    private final int tintColor;

    protected static nexColorEffect clone(nexColorEffect nexcoloreffect) {
        nexColorEffect nexcoloreffect2;
        CloneNotSupportedException e;
        try {
            nexcoloreffect2 = (nexColorEffect) nexcoloreffect.clone();
            try {
                list = list;
                listCollect = listCollect;
            } catch (CloneNotSupportedException e2) {
                e = e2;
                e.printStackTrace();
                return nexcoloreffect2;
            }
        } catch (CloneNotSupportedException e3) {
            CloneNotSupportedException cloneNotSupportedException = e3;
            nexcoloreffect2 = null;
            e = cloneNotSupportedException;
            e.printStackTrace();
            return nexcoloreffect2;
        }
        return nexcoloreffect2;
    }

    public static List<nexColorEffect> getPresetList() {
        checkUpdate();
        if (listCollect == null) {
            listCollect = Collections.unmodifiableList(list);
        }
        return listCollect;
    }

    public static nexColorEffect getLutColorEffect(String str) {
        b a = b.a(a.a().b());
        if (a == null) {
            return null;
        }
        c d = a.d(str);
        if (d == null) {
            return null;
        }
        if (d.c()) {
            return new nexColorEffect(d.a(), 0.0f, 0.0f, 0.0f, 0, d.b(), d.d(), d.e());
        }
        checkUpdate();
        for (nexColorEffect nexcoloreffect : list) {
            if (nexcoloreffect.getLUTId() == d.b()) {
                return nexcoloreffect;
            }
        }
        return null;
    }

    public static int removeCustomLUT(String str) {
        b a = b.a(a.a().b());
        if (a == null) {
            return 0;
        }
        return a.a(str);
    }

    public static int removeAllCustomLUT() {
        b a = b.a(a.a().b());
        if (a == null) {
            return 0;
        }
        a.e();
        return 1;
    }

    public static boolean existCustomLUT(String str) {
        b a = b.a(a.a().b());
        if (a == null) {
            return false;
        }
        return a.b(str);
    }

    public static int addCustomLUT(String str, byte[] bArr, int i, int i2, int i3) {
        b a = b.a(a.a().b());
        if (a == null) {
            return 0;
        }
        a.getClass();
        b.b bVar = new b.b(bArr, i, i2, i3);
        if (bVar != null) {
            try {
                return a.a(str, bVar);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return 0;
    }

    public static int getLUTUID(String str) {
        b a = b.a(a.a().b());
        if (a == null) {
            return 0;
        }
        return a.c(str);
    }

    public static String[] getLutIds() {
        b a = b.a(a.a().b());
        if (a == null) {
            return new String[0];
        }
        return a.a(false);
    }

    public static void updatePluginLut() {
        setNeedUpdate();
    }

    public static void cleanLutCache() {
        b a = b.a(a.a().b());
        if (a != null) {
            a.b();
        }
    }

    static nexColorEffect[] getInternalPresetList() {
        return new nexColorEffect[]{ALIEN_INVASION, BLACK_AND_WHITE, COOL, PINK, SEPIA, SUNNY, PURPLE, ORANGE, STRONG_ORANGE, SPRING, SUMMER, FALL, ROUGE, PASTEL, NOIR};
    }

    private static void resolveList(boolean z) {
        if (list.size() == 0) {
            z = true;
        }
        if (z) {
            list.clear();
            list.addAll(Arrays.asList(new nexColorEffect[]{NONE, ALIEN_INVASION, BLACK_AND_WHITE, COOL, DEEP_BLUE, PINK, RED_ALERT, SEPIA, SUNNY, PURPLE, ORANGE, STRONG_ORANGE, SPRING, SUMMER, FALL, ROUGE, PASTEL, NOIR}));
            b a = b.a(a.a().b());
            if (a != null) {
                for (c cVar : a.f()) {
                    if (!cVar.c()) {
                        list.add(new nexColorEffect(cVar.a(), 0.0f, 0.0f, 0.0f, 0, cVar.b(), cVar.d(), cVar.e()));
                    }
                }
            }
        }
    }

    static void setNeedUpdate() {
        needUpdate = true;
        b a = b.a(a.a().b());
        if (a != null) {
            a.h();
        }
    }

    private static void checkUpdate() {
        if (needUpdate) {
            needUpdate = false;
            resolveList(true);
            return;
        }
        resolveList(false);
    }

    private nexColorEffect(String str, float f, float f2, float f3, int i) {
        this.brightness = f;
        this.contrast = f2;
        this.saturation = f3;
        this.tintColor = i;
        this.presetName = str;
        this.lut_enabled_ = false;
        this.kineMasterID = null;
        this.assetItemID = null;
    }

    public nexColorEffect(float f, float f2, float f3, int i) {
        this.brightness = f;
        this.contrast = f2;
        this.saturation = f3;
        this.tintColor = i;
        this.presetName = null;
        this.lut_enabled_ = false;
        this.kineMasterID = null;
        this.assetItemID = null;
    }

    private nexColorEffect(String str, float f, float f2, float f3, int i, int i2, String str2, String str3) {
        this.brightness = f;
        this.contrast = f2;
        this.saturation = f3;
        this.tintColor = i;
        this.presetName = str;
        this.lut_enabled_ = true;
        this.lut_resource_id_ = i2;
        this.kineMasterID = str2;
        this.assetItemID = str3;
    }

    public ColorMatrix getColorMatrix() {
        if (this.colorMatrix == null) {
            this.colorMatrix = com.nexstreaming.app.common.thememath.a.a(this.brightness, this.contrast, this.saturation, this.tintColor);
        }
        return this.colorMatrix;
    }

    public String getPresetName() {
        return this.presetName;
    }

    public float getContrast() {
        return this.contrast;
    }

    public float getBrightness() {
        return this.brightness;
    }

    public float getSaturation() {
        return this.saturation;
    }

    public int getTintColor() {
        return this.tintColor;
    }

    public int getLUTId() {
        if (this.lut_enabled_) {
            return this.lut_resource_id_;
        }
        return 0;
    }

    public static Bitmap applyColorEffectOnBitmap(Bitmap bitmap, nexColorEffect nexcoloreffect) {
        int lUTId = nexcoloreffect.getLUTId();
        return lUTId == 0 ? bitmap : b.a(a.a().b()).a(bitmap, lUTId);
    }

    String getKineMasterID() {
        if (this.lut_enabled_) {
            return this.kineMasterID;
        }
        return this.presetName;
    }

    public String getAssetItemID() {
        return this.assetItemID;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof nexColorEffect)) {
            return false;
        }
        nexColorEffect nexcoloreffect = (nexColorEffect) obj;
        if (nexcoloreffect.brightness == this.brightness && nexcoloreffect.contrast == this.contrast && nexcoloreffect.saturation == this.saturation && nexcoloreffect.tintColor == this.tintColor) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((int) (this.brightness * 255.0f)) * 71) + ((int) (this.contrast * 255.0f))) * 479) + ((int) (this.saturation * 255.0f))) * 977) + this.tintColor;
    }

    nexColorEffectOf getSaveData() {
        nexColorEffectOf nexcoloreffectof = new nexColorEffectOf();
        nexcoloreffectof.brightness = this.brightness;
        nexcoloreffectof.contrast = this.contrast;
        nexcoloreffectof.saturation = this.saturation;
        nexcoloreffectof.tintColor = this.tintColor;
        nexcoloreffectof.presetName = this.presetName;
        nexcoloreffectof.lut_enabled_ = this.lut_enabled_;
        nexcoloreffectof.lut_resource_id_ = this.lut_resource_id_;
        nexcoloreffectof.kineMasterID = this.kineMasterID;
        nexcoloreffectof.assetItemID = this.assetItemID;
        return nexcoloreffectof;
    }

    nexColorEffect(nexColorEffectOf nexcoloreffectof) {
        this.brightness = nexcoloreffectof.brightness;
        this.contrast = nexcoloreffectof.contrast;
        this.saturation = nexcoloreffectof.saturation;
        this.tintColor = nexcoloreffectof.tintColor;
        this.presetName = nexcoloreffectof.presetName;
        this.lut_enabled_ = nexcoloreffectof.lut_enabled_;
        this.lut_resource_id_ = nexcoloreffectof.lut_resource_id_;
        this.kineMasterID = nexcoloreffectof.kineMasterID;
        this.assetItemID = nexcoloreffectof.assetItemID;
    }
}
