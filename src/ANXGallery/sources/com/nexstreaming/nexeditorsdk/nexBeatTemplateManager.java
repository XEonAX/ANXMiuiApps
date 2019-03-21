package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.util.Log;
import com.google.gson_nex.Gson;
import com.nexstreaming.kminternal.json.TemplateMetaData.EffectEntry;
import com.nexstreaming.kminternal.json.TemplateMetaData.Music;
import com.nexstreaming.nexeditorsdk.nexAssetPackageManager.Category;
import com.nexstreaming.nexeditorsdk.nexAssetPackageManager.Item;
import com.nexstreaming.nexeditorsdk.nexCrop.CropMode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class nexBeatTemplateManager {
    private static final String TAG = "nexMusicTempMan";
    private static Context mAppContext;
    private static nexBeatTemplateManager sSingleton = null;
    private List<BeatTemplate> externalView_musicTemplates = null;
    private Object m_musicTemplateLock = new Object();
    private List<BeatTemplate> musicTemplates = new ArrayList();

    public static class BeatTemplate extends c {
        private String bgmId;
        private int internalSourceCount = -1;
        private int maxExtendCount = -1;
        private int maxRecommendCount;
        private int maxSourceCount;
        private boolean parsed = false;

        BeatTemplate(Item item) {
            super(item);
        }

        public static BeatTemplate promote(c cVar) {
            if (cVar.category() != Category.beattemplate) {
                return null;
            }
            return new BeatTemplate(cVar);
        }

        private void parseTemplate() {
            int i = 0;
            if (!this.parsed) {
                this.parsed = true;
                String AssetPackageTemplateJsonToString = nexTemplateComposer.AssetPackageTemplateJsonToString(id());
                if (AssetPackageTemplateJsonToString != null) {
                    Music music = (Music) new Gson().fromJson(AssetPackageTemplateJsonToString, Music.class);
                    if (music != null) {
                        this.bgmId = music.string_audio_id;
                        Iterator it = music.list_effectEntries.iterator();
                        int i2 = -1;
                        int i3 = 1;
                        int i4 = 0;
                        while (it.hasNext()) {
                            EffectEntry effectEntry = (EffectEntry) it.next();
                            i2++;
                            if (effectEntry.b_source_change || effectEntry.int_priority > 0) {
                                if (effectEntry.int_priority > 0) {
                                    i4++;
                                } else if (effectEntry.internal_clip_id != null) {
                                    i++;
                                } else {
                                    i3++;
                                }
                            }
                            int i5 = i;
                            i3 = i3;
                            i4 = i4;
                            i = i5;
                        }
                        this.maxSourceCount = i2;
                        this.maxRecommendCount = i3;
                        this.maxExtendCount = i4;
                        this.internalSourceCount = i;
                    }
                }
            }
        }

        public String getBGMId() {
            parseTemplate();
            return this.bgmId;
        }

        public int getInternalSourceCount() {
            if (this.internalSourceCount == -1) {
                parseTemplate();
            }
            return this.internalSourceCount;
        }

        public int getMaxExtendCount() {
            if (this.maxExtendCount < 0) {
                parseTemplate();
            }
            return this.maxExtendCount;
        }

        public int getMaxRecommendCount() {
            if (this.maxRecommendCount == 0) {
                parseTemplate();
            }
            return this.maxRecommendCount;
        }

        public int getMaxSourceCount() {
            if (this.maxSourceCount == 0) {
                if (id().contains(".sc.")) {
                    String id = id();
                    id = id.substring(id.indexOf(".sc.") + 4, id.length());
                    if (id != null && id.length() > 0) {
                        this.maxSourceCount = Integer.parseInt(id);
                        return this.maxSourceCount;
                    }
                }
                parseTemplate();
            }
            return this.maxSourceCount;
        }
    }

    public enum Level {
        Recommend,
        Extends,
        Max
    }

    private static class a {
        public int a;
        public int b;
        public String c;
        public String d;
        public boolean e;
        public String f;
        public int g;
        public int h;

        private a() {
        }
    }

    private nexBeatTemplateManager(Context context) {
        mAppContext = context;
    }

    public static nexBeatTemplateManager getBeatTemplateManager(Context context) {
        if (sSingleton != null) {
            nexBeatTemplateManager nexbeattemplatemanager = sSingleton;
            if (!mAppContext.getPackageName().equals(context.getPackageName())) {
                sSingleton = null;
            }
        }
        if (sSingleton == null) {
            sSingleton = new nexBeatTemplateManager(context);
        }
        return sSingleton;
    }

    private void resolve(boolean z) {
        synchronized (this.m_musicTemplateLock) {
            this.musicTemplates.clear();
            for (Item item : nexAssetPackageManager.getAssetPackageManager(mAppContext).getInstalledAssetItems(Category.beattemplate)) {
                if (!item.hidden()) {
                    if (z) {
                        nexAssetPackageManager.getAssetPackageManager(mAppContext);
                        if (nexAssetPackageManager.checkExpireAsset(item.packageInfo())) {
                        }
                    }
                    this.musicTemplates.add(new BeatTemplate(item));
                }
            }
        }
    }

    public void loadTemplate() {
        resolve(false);
    }

    public void loadTemplate(boolean z) {
        resolve(z);
    }

    public BeatTemplate getBeatTemplate(String str) {
        BeatTemplate beatTemplate;
        synchronized (this.m_musicTemplateLock) {
            for (BeatTemplate beatTemplate2 : this.musicTemplates) {
                if (beatTemplate2.id().compareTo(str) == 0) {
                    break;
                }
            }
            beatTemplate2 = null;
        }
        return beatTemplate2;
    }

    public List<BeatTemplate> getBeatTemplates() {
        List<BeatTemplate> list;
        synchronized (this.m_musicTemplateLock) {
            if (this.externalView_musicTemplates == null) {
                this.externalView_musicTemplates = Collections.unmodifiableList(this.musicTemplates);
            }
            list = this.externalView_musicTemplates;
        }
        return list;
    }

    /* JADX WARNING: Removed duplicated region for block: B:128:0x049d  */
    /* JADX WARNING: Removed duplicated region for block: B:112:0x0401  */
    /* JADX WARNING: Removed duplicated region for block: B:135:0x04e6  */
    /* JADX WARNING: Removed duplicated region for block: B:115:0x0435  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static boolean internalApplyTemplateToProjectById(nexProject nexproject, String str) {
        String AssetPackageTemplateJsonToString = nexTemplateComposer.AssetPackageTemplateJsonToString(str);
        Level level = Level.Max;
        if (AssetPackageTemplateJsonToString == null) {
            return false;
        }
        int i;
        EffectEntry effectEntry;
        a aVar;
        Music music = (Music) new Gson().fromJson(AssetPackageTemplateJsonToString, Music.class);
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        Iterator it = music.list_effectEntries.iterator();
        int i5 = 10800000;
        int i6 = 0;
        int i7 = -1;
        while (true) {
            i = i2;
            i2 = i3;
            i3 = i4;
            if (!it.hasNext()) {
                break;
            }
            effectEntry = (EffectEntry) it.next();
            if (i6 > 0 && i5 > effectEntry.int_time - i6) {
                i5 = effectEntry.int_time - i6;
            }
            i6 = effectEntry.int_time;
            i7++;
            if (effectEntry.b_source_change || effectEntry.int_priority > 0) {
                if (music.default_effect != null) {
                    if (effectEntry.color_filter_id == null) {
                        effectEntry.color_filter_id = music.default_effect.sc_color_effect_id;
                    }
                    if (effectEntry.clip_effect_id == null) {
                        effectEntry.clip_effect_id = music.default_effect.sc_clip_effect_id;
                    }
                }
                if (effectEntry.int_priority > 0) {
                    i2++;
                } else if (effectEntry.internal_clip_id != null) {
                    i3++;
                } else {
                    i++;
                }
            } else {
                if (music.default_effect != null) {
                    if (effectEntry.color_filter_id == null) {
                        effectEntry.color_filter_id = music.default_effect.color_filter_id;
                    }
                    if (effectEntry.clip_effect_id == null) {
                        effectEntry.clip_effect_id = music.default_effect.clip_effect_id;
                    }
                }
                if (effectEntry.clip_effect_id != null) {
                    if (effectEntry.int_effect_in_duration == -1) {
                        effectEntry.int_effect_in_duration = 50;
                    }
                    if (effectEntry.int_effect_out_duration == -1) {
                        effectEntry.int_effect_out_duration = 50;
                    }
                }
            }
            i4 = i3;
            i3 = i2;
            i2 = i;
        }
        ((EffectEntry) music.list_effectEntries.get(0)).int_effect_in_duration = 0;
        ((EffectEntry) music.list_effectEntries.get(0)).int_effect_out_duration = 0;
        ((EffectEntry) music.list_effectEntries.get(0)).clip_effect_id = null;
        ((EffectEntry) music.list_effectEntries.get(music.list_effectEntries.size() - 1)).int_effect_in_duration = 0;
        ((EffectEntry) music.list_effectEntries.get(music.list_effectEntries.size() - 1)).int_effect_out_duration = 0;
        i6 = 0;
        i4 = 0;
        i5 = nexproject.getTotalClipCount(true);
        if (i5 > i) {
            i6 = i5 - i;
            if (i6 > i2) {
                i4 = i6 - i2;
                i6 = i2;
            }
        }
        if (level == Level.Extends) {
            i4 = 0;
        } else if (level == Level.Recommend) {
            i6 = 0;
            i4 = 0;
        }
        Log.d(TAG, "sourceClipCount=" + i5 + ", recommend=" + i + ", extends=" + i2 + " ,max=" + i7 + ", priorityLevel=" + i6 + ", eventLevel=" + i4 + ", internal=" + i3);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = music.list_effectEntries.iterator();
        i3 = i4;
        while (it2.hasNext()) {
            effectEntry = (EffectEntry) it2.next();
            if (effectEntry.int_priority > 0) {
                if (effectEntry.int_priority <= i6) {
                    effectEntry.b_source_change = true;
                    Log.d(TAG, "t=" + effectEntry.int_time + ", priority=" + effectEntry.int_priority);
                }
            }
            if (!effectEntry.b_source_change && i3 > 0 && effectEntry.internal_clip_id == null && effectEntry.int_time > 0) {
                effectEntry.b_source_change = true;
                i3--;
                Log.d(TAG, "t=" + effectEntry.int_time + ", event=" + i3);
            }
            arrayList2.add(effectEntry);
        }
        i7 = arrayList2.size() - 1;
        i4 = 0;
        i3 = 0;
        while (i3 < i7) {
            a aVar2 = new a();
            aVar2.a = i4;
            aVar2.c = ((EffectEntry) arrayList2.get(i3)).color_filter_id;
            aVar2.f = ((EffectEntry) arrayList2.get(i3)).internal_clip_id;
            if (((EffectEntry) arrayList2.get(i3 + 1)).b_source_change) {
                aVar2.b = ((EffectEntry) arrayList2.get(i3 + 1)).int_time;
            } else {
                aVar2.b = ((EffectEntry) arrayList2.get(i3 + 1)).int_time - ((EffectEntry) arrayList2.get(i3 + 1)).int_effect_in_duration;
            }
            i2 = aVar2.b;
            i5 = aVar2.b - aVar2.a;
            if (i5 < 100) {
                Log.w(TAG, "W[" + i3 + "](" + aVar2.a + ") lower duration (" + i5 + ")");
            }
            if (((EffectEntry) arrayList2.get(i3)).b_source_change) {
                aVar2.e = true;
            } else {
                aVar2.d = ((EffectEntry) arrayList2.get(i3)).clip_effect_id;
                aVar2.g = 0;
                aVar2.h = ((EffectEntry) arrayList2.get(i3)).int_effect_out_duration + ((EffectEntry) arrayList2.get(i3)).int_effect_in_duration;
                if (aVar2.h < 100 && i3 != 0) {
                    Log.w(TAG, "W[" + i3 + "](" + aVar2.a + ") lower effect duration (" + aVar2.h + ")");
                }
                if (i5 < aVar2.h) {
                    Log.w(TAG, "W[" + i3 + "](" + aVar2.a + ") higher effect duration (" + i5 + " < " + aVar2.h + ")");
                    aVar2.h = i5;
                }
            }
            if (aVar2.a < aVar2.b) {
                arrayList.add(aVar2);
            }
            i3++;
            i4 = i2;
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            aVar = (a) it3.next();
            Log.d(TAG, "st=" + aVar.a + ",et=" + aVar.b + ",sc=" + aVar.e + ",ei=" + aVar.d + ", cf=" + aVar.c + ", et=" + aVar.h + ", is=" + aVar.f);
        }
        nexProject clone = nexProject.clone(nexproject);
        nexproject.allClear(true);
        int totalClipCount = clone.getTotalClipCount(true);
        i3 = 0;
        nexColorEffect[] internalPresetList = nexColorEffect.getInternalPresetList();
        i = 0;
        int size = arrayList.size();
        i7 = 0;
        while (i7 < size) {
            aVar = (a) arrayList.get(i7);
            if (aVar.e && aVar.f == null) {
                i3++;
                if (i3 >= totalClipCount) {
                    i2 = 0;
                    if (aVar.f == null) {
                        nexproject.add(new nexClip(aVar.f, "@assetItem:" + aVar.f));
                        nexproject.getLastPrimaryClip().setAssetResource(true);
                    } else {
                        nexproject.add(nexClip.dup(clone.getClip(i2, true)));
                        nexproject.getLastPrimaryClip().setRotateDegree(clone.getClip(i2, true).getRotateDegree());
                    }
                    if (nexproject.getLastPrimaryClip().getClipType() != 1) {
                        nexproject.getLastPrimaryClip().setImageClipDuration(aVar.b - aVar.a);
                        nexproject.getLastPrimaryClip().getCrop().randomizeStartEndPosition(false, CropMode.FILL);
                        if (aVar.c != null) {
                            if (aVar.c.compareToIgnoreCase("rand") != 0) {
                                for (nexColorEffect nexcoloreffect : nexColorEffect.getPresetList()) {
                                    if (nexcoloreffect.getPresetName().compareToIgnoreCase(aVar.c) == 0) {
                                        nexproject.getLastPrimaryClip().setColorEffect(nexcoloreffect);
                                        i3 = i;
                                        break;
                                    }
                                }
                            }
                            nexproject.getLastPrimaryClip().setColorEffect(internalPresetList[i]);
                            i3 = i + 1;
                            if (i3 >= internalPresetList.length) {
                                i3 = 0;
                            }
                            if (aVar.d != null || aVar.d.compareToIgnoreCase("none") == 0) {
                                i4 = i7;
                            } else {
                                nexproject.getLastPrimaryClip().getClipEffect().setEffect(aVar.d);
                                nexproject.getLastPrimaryClip().getClipEffect().setEffectShowTime(aVar.g, aVar.h);
                                i4 = i7;
                            }
                        }
                        i3 = i;
                        if (aVar.d != null) {
                        }
                        i4 = i7;
                    } else if (nexproject.getLastPrimaryClip().getClipType() == 4) {
                        i5 = clone.getClip(i2, true).getVideoClipEdit().getStartTrimTime();
                        int endTrimTime = clone.getClip(i2, true).getVideoClipEdit().getEndTrimTime();
                        i3 = aVar.b - aVar.a;
                        if (i5 + i3 > endTrimTime) {
                            i4 = i7;
                            i3 = i;
                        } else {
                            a aVar3 = aVar;
                            i4 = i3;
                            i3 = i;
                            i = i7;
                            Object obj = null;
                            i6 = i5;
                            while (true) {
                                nexproject.getLastPrimaryClip().getVideoClipEdit().setTrim(i6, i6 + i4);
                                i5 = i6 + i4;
                                nexproject.getLastPrimaryClip().getCrop().randomizeStartEndPosition(false, CropMode.FILL);
                                if (obj != null) {
                                    nexproject.getLastPrimaryClip().setColorEffect(internalPresetList[i3]);
                                    i4 = i3 + 1;
                                    if (i4 >= internalPresetList.length) {
                                        i3 = 0;
                                    }
                                    i3 = i4;
                                } else if (aVar3.c != null) {
                                    if (aVar3.c.compareToIgnoreCase("rand") != 0) {
                                        for (nexColorEffect nexcoloreffect2 : nexColorEffect.getPresetList()) {
                                            if (nexcoloreffect2.getPresetName().compareToIgnoreCase(aVar3.c) == 0) {
                                                nexproject.getLastPrimaryClip().setColorEffect(nexcoloreffect2);
                                                break;
                                            }
                                        }
                                    }
                                    nexproject.getLastPrimaryClip().setColorEffect(internalPresetList[i3]);
                                    i4 = i3 + 1;
                                    if (i4 >= internalPresetList.length) {
                                        i3 = 0;
                                    }
                                    i3 = i4;
                                }
                                if (!(aVar3.d == null || aVar3.d.compareToIgnoreCase("none") == 0)) {
                                    nexproject.getLastPrimaryClip().getClipEffect().setEffect(aVar3.d);
                                    nexproject.getLastPrimaryClip().getClipEffect().setEffectShowTime(aVar3.g, aVar3.h);
                                }
                                i7 = i + 1;
                                if (i7 >= size) {
                                    i4 = i7;
                                    break;
                                }
                                Object obj2;
                                if (aVar3.e) {
                                    obj2 = 1;
                                } else {
                                    obj2 = null;
                                }
                                aVar = (a) arrayList.get(i7);
                                i6 = aVar.b - aVar.a;
                                if (i5 + i6 > endTrimTime) {
                                    i4 = i7;
                                    break;
                                }
                                nexproject.add(nexClip.dup(clone.getClip(i2, true)));
                                nexproject.getLastPrimaryClip().setRotateDegree(clone.getClip(i2, true).getRotateDegree());
                                aVar3 = aVar;
                                i4 = i6;
                                i6 = i5;
                                Object obj3 = obj2;
                                i = i7;
                                obj = obj3;
                            }
                            i2++;
                            if (i2 >= totalClipCount) {
                                i2 = 0;
                            }
                        }
                    } else {
                        i4 = i7;
                        i3 = i;
                    }
                    i7 = i4 + 1;
                    i = i3;
                    i3 = i2;
                }
            }
            i2 = i3;
            if (aVar.f == null) {
            }
            if (nexproject.getLastPrimaryClip().getClipType() != 1) {
            }
            i7 = i4 + 1;
            i = i3;
            i3 = i2;
        }
        nexproject.setBackgroundMusicPath(music.string_audio_id);
        nexproject.setProjectAudioFadeInTime(0);
        nexproject.setProjectAudioFadeOutTime(0);
        return true;
    }

    public boolean applyTemplateToProjectById(nexProject nexproject, String str) {
        BeatTemplate beatTemplate = getBeatTemplate(str);
        if (beatTemplate == null || nexAssetPackageManager.checkExpireAsset(beatTemplate.packageInfo())) {
            return false;
        }
        return internalApplyTemplateToProjectById(nexproject, str);
    }

    public boolean applyTemplateToProjectById2(nexProject nexproject, String str) {
        String AssetPackageTemplateJsonToString = nexTemplateComposer.AssetPackageTemplateJsonToString(str);
        Level level = Level.Max;
        if (AssetPackageTemplateJsonToString == null) {
            return false;
        }
        int i;
        a aVar;
        a aVar2;
        Music music = (Music) new Gson().fromJson(AssetPackageTemplateJsonToString, Music.class);
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        Iterator it = music.list_effectEntries.iterator();
        int i5 = 10800000;
        int i6 = 0;
        int i7 = -1;
        while (true) {
            i = i2;
            i2 = i3;
            i3 = i4;
            if (!it.hasNext()) {
                break;
            }
            EffectEntry effectEntry = (EffectEntry) it.next();
            if (i6 > 0 && i5 > effectEntry.int_time - i6) {
                i5 = effectEntry.int_time - i6;
            }
            i6 = effectEntry.int_time;
            i7++;
            if (effectEntry.b_source_change || effectEntry.int_priority > 0) {
                if (music.default_effect != null) {
                    if (effectEntry.color_filter_id == null) {
                        effectEntry.color_filter_id = music.default_effect.sc_color_effect_id;
                    }
                    if (effectEntry.clip_effect_id == null) {
                        effectEntry.clip_effect_id = music.default_effect.sc_clip_effect_id;
                    }
                }
                if (effectEntry.int_priority > 0) {
                    i2++;
                } else if (effectEntry.internal_clip_id != null) {
                    i3++;
                } else {
                    i++;
                }
            } else {
                if (music.default_effect != null) {
                    if (effectEntry.color_filter_id == null) {
                        effectEntry.color_filter_id = music.default_effect.color_filter_id;
                    }
                    if (effectEntry.clip_effect_id == null) {
                        effectEntry.clip_effect_id = music.default_effect.clip_effect_id;
                    }
                }
                if (!(effectEntry.clip_effect_id == null || effectEntry.clip_effect_id.compareToIgnoreCase("none") == 0)) {
                    if (effectEntry.int_effect_in_duration == 0) {
                        effectEntry.int_effect_in_duration = 50;
                    }
                    if (effectEntry.int_effect_out_duration == 0) {
                        effectEntry.int_effect_out_duration = 50;
                    }
                }
            }
            i4 = i3;
            i3 = i2;
            i2 = i;
        }
        int totalClipCount = nexproject.getTotalClipCount(true);
        i6 = 0;
        i4 = 0;
        if (totalClipCount > i) {
            i6 = totalClipCount - i;
            if (i6 > i2) {
                i4 = i6 - i2;
                i6 = i2;
            }
        }
        if (level == Level.Extends) {
            i4 = 0;
        } else if (level == Level.Recommend) {
            i6 = 0;
            i4 = 0;
        }
        Log.d(TAG, "sourceClipCount=" + totalClipCount + ", recommend=" + i + ", extends=" + i2 + " ,max=" + i7 + ", priorityLevel=" + i6 + ", eventLevel=" + i4 + ", internal=" + i3);
        i7 = music.list_effectEntries.size();
        ArrayList arrayList = new ArrayList();
        i2 = 0;
        i = 1;
        i3 = i4;
        while (i < i7 - 1) {
            aVar = new a();
            aVar.e = ((EffectEntry) music.list_effectEntries.get(i)).b_source_change;
            if (((EffectEntry) music.list_effectEntries.get(i)).int_priority > 0) {
                if (i6 == 0) {
                    i4 = i2;
                    i++;
                    i2 = i4;
                } else if (((EffectEntry) music.list_effectEntries.get(i)).int_priority <= i6) {
                    aVar.e = true;
                    Log.d(TAG, "num=" + i + ", priority=" + ((EffectEntry) music.list_effectEntries.get(i)).int_priority);
                }
            }
            if (!aVar.e && i3 > 0 && aVar.f == null) {
                aVar.e = true;
                i4 = i3 - 1;
                Log.d(TAG, "num=" + i + ", event=" + i4);
                i3 = i4;
            }
            aVar.d = ((EffectEntry) music.list_effectEntries.get(i)).clip_effect_id;
            aVar.c = ((EffectEntry) music.list_effectEntries.get(i)).color_filter_id;
            aVar.f = ((EffectEntry) music.list_effectEntries.get(i)).internal_clip_id;
            if (aVar.e) {
                aVar.a = i2;
                aVar.b = ((EffectEntry) music.list_effectEntries.get(i)).int_time;
                if (aVar.a >= aVar.b) {
                    i4 = i2;
                    i++;
                    i2 = i4;
                } else {
                    i4 = aVar.b;
                }
            } else {
                a aVar3 = new a();
                aVar3.a = i2;
                aVar3.d = "none";
                aVar3.c = "none";
                aVar3.f = aVar.f;
                aVar.a = ((EffectEntry) music.list_effectEntries.get(i)).int_time - ((EffectEntry) music.list_effectEntries.get(i)).int_effect_in_duration;
                aVar.d = ((EffectEntry) music.list_effectEntries.get(i)).clip_effect_id;
                aVar3.b = aVar.a;
                aVar.b = (((EffectEntry) music.list_effectEntries.get(i)).int_effect_out_duration + ((EffectEntry) music.list_effectEntries.get(i)).int_effect_in_duration) + aVar.a;
                i4 = aVar.b;
                if (aVar3.a < aVar3.b) {
                    arrayList.add(aVar3);
                }
            }
            arrayList.add(aVar);
            i++;
            i2 = i4;
        }
        a aVar4 = new a();
        aVar4.e = false;
        aVar4.a = i2;
        aVar4.b = ((EffectEntry) music.list_effectEntries.get(i7 - 1)).int_time;
        aVar4.d = ((EffectEntry) music.list_effectEntries.get(i7 - 1)).clip_effect_id;
        aVar4.c = ((EffectEntry) music.list_effectEntries.get(i7 - 1)).color_filter_id;
        arrayList.add(aVar4);
        Log.d(TAG, "s= ,gap duration=" + i5);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            aVar2 = (a) it2.next();
            Log.d(TAG, "s=" + aVar2.a + ",e=" + aVar2.b + ",c=" + aVar2.e + ",ee=" + aVar2.d + ", sc=" + aVar2.f);
        }
        nexProject clone = nexProject.clone(nexproject);
        nexproject.allClear(true);
        int totalClipCount2 = clone.getTotalClipCount(true);
        i7 = 0;
        nexColorEffect[] internalPresetList = nexColorEffect.getInternalPresetList();
        i2 = 0;
        int size = arrayList.size();
        i = 0;
        while (i < size) {
            aVar2 = (a) arrayList.get(i);
            if (aVar2.f != null) {
                nexproject.add(new nexClip(aVar2.f));
            } else {
                nexproject.add(nexClip.dup(clone.getClip(i7, true)));
            }
            if (nexproject.getLastPrimaryClip().getClipType() == 1) {
                nexproject.getLastPrimaryClip().setImageClipDuration(aVar2.b - aVar2.a);
                nexproject.getLastPrimaryClip().getCrop().randomizeStartEndPosition(false, CropMode.FILL);
                if (aVar2.c != null) {
                    if (aVar2.c.compareToIgnoreCase("rand") != 0) {
                        for (nexColorEffect nexcoloreffect : nexColorEffect.getPresetList()) {
                            if (nexcoloreffect.getPresetName().compareToIgnoreCase(aVar2.c) == 0) {
                                nexproject.getLastPrimaryClip().setColorEffect(nexcoloreffect);
                                i3 = i2;
                                break;
                            }
                        }
                    }
                    nexproject.getLastPrimaryClip().setColorEffect(internalPresetList[i2]);
                    i3 = i2 + 1;
                    if (i3 >= internalPresetList.length) {
                        i3 = 0;
                    }
                    if (!(aVar2.d == null || aVar2.d.compareToIgnoreCase("none") == 0)) {
                        nexproject.getLastPrimaryClip().getClipEffect().setEffect(aVar2.d);
                    }
                }
                i3 = i2;
                nexproject.getLastPrimaryClip().getClipEffect().setEffect(aVar2.d);
            } else if (nexproject.getLastPrimaryClip().getClipType() == 4) {
                i5 = clone.getClip(i7, true).getVideoClipEdit().getStartTrimTime();
                int endTrimTime = clone.getClip(i7, true).getVideoClipEdit().getEndTrimTime();
                i3 = aVar2.b - aVar2.a;
                if (i5 + i3 > endTrimTime) {
                    i4 = i;
                    i3 = i2;
                    i2 = i7;
                } else {
                    aVar = aVar2;
                    i4 = i3;
                    i3 = i2;
                    i2 = i;
                    Object obj = null;
                    i6 = i5;
                    while (true) {
                        nexproject.getLastPrimaryClip().getVideoClipEdit().setTrim(i6, i6 + i4);
                        i5 = i6 + i4;
                        nexproject.getLastPrimaryClip().getCrop().randomizeStartEndPosition(false, CropMode.FILL);
                        if (obj != null) {
                            nexproject.getLastPrimaryClip().setColorEffect(internalPresetList[i3]);
                            i4 = i3 + 1;
                            if (i4 >= internalPresetList.length) {
                                i3 = 0;
                            }
                            i3 = i4;
                        } else if (aVar.c != null) {
                            if (aVar.c.compareToIgnoreCase("rand") != 0) {
                                for (nexColorEffect nexcoloreffect2 : nexColorEffect.getPresetList()) {
                                    if (nexcoloreffect2.getPresetName().compareToIgnoreCase(aVar.c) == 0) {
                                        nexproject.getLastPrimaryClip().setColorEffect(nexcoloreffect2);
                                        break;
                                    }
                                }
                            }
                            nexproject.getLastPrimaryClip().setColorEffect(internalPresetList[i3]);
                            i4 = i3 + 1;
                            if (i4 >= internalPresetList.length) {
                                i3 = 0;
                            }
                            i3 = i4;
                        }
                        if (!(aVar.d == null || aVar.d.compareToIgnoreCase("none") == 0)) {
                            nexproject.getLastPrimaryClip().getClipEffect().setEffect(aVar.d);
                        }
                        i = i2 + 1;
                        if (i >= size) {
                            i4 = i;
                            break;
                        }
                        Object obj2;
                        if (aVar.e) {
                            obj2 = 1;
                        } else {
                            obj2 = null;
                        }
                        aVar2 = (a) arrayList.get(i);
                        i6 = aVar2.b - aVar2.a;
                        if (i5 + i6 > endTrimTime) {
                            i4 = i;
                            break;
                        }
                        nexproject.add(nexClip.dup(clone.getClip(i7, true)));
                        aVar = aVar2;
                        i4 = i6;
                        i6 = i5;
                        Object obj3 = obj2;
                        i2 = i;
                        obj = obj3;
                    }
                    i2 = i7 + 1;
                    if (i2 >= totalClipCount2) {
                        i2 = 0;
                    }
                }
                i = i4 + 1;
                i7 = i2;
                i2 = i3;
            } else {
                i3 = i2;
            }
            if (aVar2.e && aVar2.f == null) {
                i4 = i7 + 1;
                if (i4 >= totalClipCount2) {
                    i2 = 0;
                    i4 = i;
                } else {
                    i2 = i4;
                    i4 = i;
                }
                i = i4 + 1;
                i7 = i2;
                i2 = i3;
            } else {
                i4 = i;
                i2 = i7;
                i = i4 + 1;
                i7 = i2;
                i2 = i3;
            }
        }
        nexproject.setBackgroundMusicPath(music.string_audio_id);
        nexproject.setProjectAudioFadeInTime(0);
        nexproject.setProjectAudioFadeOutTime(0);
        return true;
    }

    boolean updateBeatTemplate(boolean z, Item item) {
        synchronized (this.m_musicTemplateLock) {
            Log.d(TAG, "updateMusicTemplate(" + z + "," + item.packageInfo().assetIdx() + ")");
            if (!z) {
                for (BeatTemplate beatTemplate : this.musicTemplates) {
                    if (beatTemplate.id().compareTo(item.id()) == 0) {
                        this.musicTemplates.remove(beatTemplate);
                        break;
                    }
                }
            } else if (!item.hidden()) {
                this.musicTemplates.add(new BeatTemplate(item));
            }
        }
        return false;
    }
}
