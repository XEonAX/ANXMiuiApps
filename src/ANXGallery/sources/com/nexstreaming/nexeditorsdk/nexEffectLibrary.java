package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemCategory;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemParameterType;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemType;
import com.nexstreaming.app.common.nexasset.assetpackage.c;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.app.common.nexasset.assetpackage.g;
import com.nexstreaming.app.common.nexasset.assetpackage.h;
import com.nexstreaming.app.common.nexasset.assetpackage.i;
import com.nexstreaming.kminternal.kinemaster.config.EditorGlobal;
import com.nexstreaming.kminternal.kinemaster.config.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;

public final class nexEffectLibrary {
    private static nexEffectLibrary sSingleton = null;
    private final Context mAppContext;

    @Deprecated
    public static abstract class OnInstallPluginEffectPackageAsyncListener {
        public abstract void onComplete(int i, String[] strArr);

        public abstract void onPackageLoaded(int i);
    }

    private nexEffectLibrary(Context context) {
        this.mAppContext = context;
    }

    public static nexEffectLibrary getEffectLibrary(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (!(sSingleton == null || sSingleton.mAppContext.getPackageName().equals(applicationContext.getPackageName()))) {
            sSingleton = null;
        }
        if (sSingleton == null) {
            sSingleton = new nexEffectLibrary(applicationContext);
        }
        return sSingleton;
    }

    @Deprecated
    public ArrayList<nexTheme> getThemesEx() {
        return new ArrayList();
    }

    @Deprecated
    public nexTheme[] getThemes() {
        return new nexTheme[0];
    }

    public ArrayList<nexTransitionEffect> getTransitionEffectsEx() {
        ArrayList<nexTransitionEffect> arrayList = new ArrayList();
        for (f fVar : c.a(this.mAppContext).a(ItemCategory.transition)) {
            if (!fVar.isHidden()) {
                arrayList.add(new nexTransitionEffect(fVar.getId()));
            }
        }
        return arrayList;
    }

    public nexTransitionEffect[] getTransitionEffects() {
        int i = 0;
        List<f> a = c.a(this.mAppContext).a(ItemCategory.transition);
        int i2 = 0;
        for (f isHidden : a) {
            int i3;
            if (isHidden.isHidden()) {
                i3 = i2;
            } else {
                i3 = i2 + 1;
            }
            i2 = i3;
        }
        nexTransitionEffect[] nextransitioneffectArr = new nexTransitionEffect[i2];
        for (f isHidden2 : a) {
            if (!isHidden2.isHidden()) {
                nextransitioneffectArr[i] = new nexTransitionEffect(isHidden2.getId());
                nextransitioneffectArr[i].itemMethodType = nexAssetPackageManager.getMethodType(isHidden2.getType());
                i++;
            }
        }
        return nextransitioneffectArr;
    }

    public nexClipEffect[] getClipEffects() {
        int i = 0;
        List<f> a = c.a(this.mAppContext).a(ItemCategory.effect);
        int i2 = 0;
        for (f isHidden : a) {
            int i3;
            if (isHidden.isHidden()) {
                i3 = i2;
            } else {
                i3 = i2 + 1;
            }
            i2 = i3;
        }
        nexClipEffect[] nexclipeffectArr = new nexClipEffect[i2];
        for (f isHidden2 : a) {
            if (!isHidden2.isHidden()) {
                nexclipeffectArr[i] = new nexClipEffect(isHidden2.getId());
                nexclipeffectArr[i].itemMethodType = nexAssetPackageManager.getMethodType(isHidden2.getType());
                i++;
            }
        }
        return nexclipeffectArr;
    }

    public nexOverlayFilter[] getOverlayFilters() {
        List arrayList = new ArrayList();
        for (f fVar : c.a(this.mAppContext).a(ItemCategory.effect)) {
            if (!fVar.isHidden() && fVar.getType() == ItemType.renderitem) {
                arrayList.add(fVar.getId());
            }
        }
        nexOverlayFilter[] nexoverlayfilterArr = new nexOverlayFilter[arrayList.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= nexoverlayfilterArr.length) {
                return nexoverlayfilterArr;
            }
            nexoverlayfilterArr[i2] = new nexOverlayFilter((String) arrayList.get(i2));
            i = i2 + 1;
        }
    }

    @Deprecated
    public nexTheme findThemeById(String str) {
        return null;
    }

    public nexClipEffect findClipEffectById(String str) {
        f c = c.a(this.mAppContext).c(str);
        if (c == null || c.getCategory() != ItemCategory.effect) {
            return null;
        }
        nexClipEffect nexclipeffect = new nexClipEffect(str);
        nexclipeffect.itemMethodType = nexAssetPackageManager.getMethodType(c.getType());
        return nexclipeffect;
    }

    public nexTransitionEffect findTransitionEffectById(String str) {
        f c = c.a(this.mAppContext).c(str);
        if (c == null || c.getCategory() != ItemCategory.transition) {
            return null;
        }
        nexTransitionEffect nextransitioneffect = new nexTransitionEffect(str);
        nextransitioneffect.itemMethodType = nexAssetPackageManager.getMethodType(c.getType());
        return nextransitioneffect;
    }

    public nexOverlayFilter findOverlayFilterById(String str) {
        f c = c.a(this.mAppContext).c(str);
        if (c != null && c.getType() == ItemType.renderitem) {
            return new nexOverlayFilter(str);
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x009c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public nexEffectOptions getEffectOptions(Context context, String str) {
        f c = c.a(a.a().b()).c(str);
        if (c == null) {
            return null;
        }
        int i;
        h a;
        if (c.getCategory() == ItemCategory.transition) {
            i = 4;
        } else if (c.getCategory() == ItemCategory.effect) {
            i = 2;
        } else if (c.getCategory() == ItemCategory.filter && c.getType() == ItemType.renderitem) {
            i = 5;
        } else {
            i = 0;
        }
        nexEffectOptions nexeffectoptions = new nexEffectOptions(str, i);
        try {
            a = i.a(a.a().b(), str);
        } catch (XmlPullParserException e) {
            e.printStackTrace();
            a = null;
        } catch (IOException e2) {
            e2.printStackTrace();
            a = null;
        }
        if (a == null) {
            return nexeffectoptions;
        }
        for (g gVar : a.a()) {
            String str2;
            Map i2 = gVar.i();
            if (i2 != null) {
                i2 = (Map) i2.get("label");
                if (i2 != null) {
                    str2 = (String) i2.get("en");
                    String str3;
                    if (gVar.a() != ItemParameterType.RGBA || gVar.a() == ItemParameterType.RGB) {
                        if (str2 == null) {
                            str2 = "Color";
                        }
                        nexeffectoptions.addColorOpt(gVar.e(), str2, gVar.b());
                    } else if (gVar.a() == ItemParameterType.TEXT) {
                        if (str2 == null) {
                            str2 = "Text";
                        }
                        nexeffectoptions.addTextOpt(gVar.e(), str2, gVar.f() ? 2 : 1);
                    } else if (gVar.a() == ItemParameterType.CHOICE) {
                        if (str2 == null) {
                            str3 = "Choice";
                        } else {
                            str3 = str2;
                        }
                        List j = gVar.j();
                        int i3 = 0;
                        String[] strArr = new String[j.size()];
                        String[] strArr2 = new String[j.size()];
                        i = 0;
                        while (true) {
                            int i4 = i;
                            if (i4 >= j.size()) {
                                break;
                            }
                            i2 = ((g.a) j.get(i4)).a();
                            String str4 = null;
                            if (i2 != null) {
                                i2 = (Map) i2.get("label");
                                if (i2 != null) {
                                    str4 = (String) i2.get("en");
                                }
                            }
                            if (((g.a) j.get(i4)).b().compareTo(gVar.b()) == 0) {
                                i3 = i4;
                            }
                            if (str4 == null) {
                                str4 = new String("item" + i4);
                            }
                            strArr[i4] = str4;
                            strArr2[i4] = ((g.a) j.get(i4)).b();
                            i = i4 + 1;
                        }
                        nexeffectoptions.addSelectOpt(gVar.e(), str3, strArr, strArr2, i3);
                    } else if (gVar.a() == ItemParameterType.RANGE) {
                        if (str2 == null) {
                            str3 = "Range";
                        } else {
                            str3 = str2;
                        }
                        nexeffectoptions.addRangeOpt(gVar.e(), str3, Integer.parseInt(gVar.b()), gVar.g(), gVar.h());
                    } else if (gVar.a() == ItemParameterType.SWITCH) {
                        if (str2 == null) {
                            str2 = "Switch";
                        }
                        boolean z = false;
                        if (gVar.d().compareTo(gVar.b()) == 0) {
                            z = true;
                        }
                        nexeffectoptions.addSwitchOpt(gVar.e(), str2, z);
                    }
                }
            }
            str2 = null;
            if (gVar.a() != ItemParameterType.RGBA) {
            }
            if (str2 == null) {
            }
            nexeffectoptions.addColorOpt(gVar.e(), str2, gVar.b());
        }
        return nexeffectoptions;
    }

    boolean checkEffectID(String str) {
        boolean a = c.a(this.mAppContext).a(str, ItemCategory.transition);
        if (a) {
            return a;
        }
        return c.a(this.mAppContext).a(str, ItemCategory.effect);
    }

    @Deprecated
    public boolean installPluginEffectPackageAsync(String[] strArr, OnInstallPluginEffectPackageAsyncListener onInstallPluginEffectPackageAsyncListener) {
        return true;
    }

    @Deprecated
    public static String getPluginDirPath() {
        return EditorGlobal.g().getAbsolutePath();
    }
}
