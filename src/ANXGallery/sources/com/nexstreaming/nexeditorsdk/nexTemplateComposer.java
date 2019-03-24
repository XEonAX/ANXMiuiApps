package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Environment;
import android.util.Log;
import android.util.SparseArray;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.nexstreaming.app.common.nexasset.assetpackage.AssetPackageReader;
import com.nexstreaming.app.common.nexasset.assetpackage.c;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.app.common.util.b;
import com.nexstreaming.kminternal.kinemaster.config.EditorGlobal;
import com.nexstreaming.nexeditorsdk.exception.nexSDKException;
import com.nexstreaming.nexeditorsdk.nexCrop.CropMode;
import com.nexstreaming.nexeditorsdk.nexOverlayImage.runTimeMakeBitMap;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class nexTemplateComposer {
    private static final String TAG = "nexTemplateComposer";
    private static final String TAG_BRIGHTNESS = "brightness";
    private static final String TAG_COLOR_FILTER = "color_filter";
    private static final String TAG_CONTRAST = "contrast";
    private static final String TAG_CROP_MODE = "crop_mode";
    private static final String TAG_CROP_SPEED = "image_crop_speed";
    private static final String TAG_DURATION = "duration";
    private static final String TAG_EFFECTS = "effects";
    private static final String TAG_EXTERNAL_IMAGE_PATH = "external_image_path";
    private static final String TAG_EXTERNAL_VIDEO_PATH = "external_video_path";
    private static final String TAG_ID = "id";
    private static final String TAG_IMAGE_CROP_MODE = "image_crop_mode";
    private static final String TAG_LUT = "lut";
    private static final String TAG_SATURATION = "saturation";
    private static final String TAG_SOLID_COLOR = "solid_color";
    private static final String TAG_SOURCE_TYPE = "source_type";
    private static final String TAG_SPEED_CONTROL = "speed_control";
    private static final String TAG_TEMPLATE = "template";
    private static final String TAG_TEMPLATE_BGM = "template_bgm";
    private static final String TAG_TEMPLATE_BGM_VOLUME = "template_bgm_volume";
    private static final String TAG_TEMPLATE_DESCRIPTION = "template_desc";
    private static final String TAG_TEMPLATE_INTRO = "template_intro";
    private static final String TAG_TEMPLATE_LETTERBOX = "template_letterbox";
    private static final String TAG_TEMPLATE_LOOP = "template_loop";
    private static final String TAG_TEMPLATE_NAME = "template_name";
    private static final String TAG_TEMPLATE_OUTRO = "template_outro";
    private static final String TAG_TEMPLATE_VERSION = "template_version";
    private static final String TAG_TYPE = "type";
    private static final String TAG_VIDEO_CROP_MODE = "video_crop_mode";
    private static final String TAG_VIGNETTE = "vignette";
    private static final String TAG_VOLUME = "volume";
    private static final String cancelMassage = "cancel template";
    int introCount = 0;
    int loopCount = 0;
    private Context mAppContext;
    private String mBGMPath = null;
    private boolean mBGMTempFile = false;
    private boolean mCancel = false;
    private InputStream mInputStream;
    private JSONArray mIntroTemplateArray = null;
    private ArrayList<HashMap<String, String>> mIntroTemplateList = new ArrayList();
    private JSONArray mLoopTemplateArray = null;
    private ArrayList<HashMap<String, String>> mLoopTemplateList = new ArrayList();
    private JSONArray mOutroTemplateArray = null;
    private ArrayList<HashMap<String, String>> mOutroTemplateList = new ArrayList();
    private boolean mOverlappedTransition = true;
    private ArrayList<a> mOverlayList = new ArrayList();
    private nexProject mProject;
    private Context mResContext;
    private c mTemplate = null;
    private JSONArray mTemplateArray = null;
    private String mTemplateFilePath;
    private String mTemplateID;
    private ArrayList<HashMap<String, String>> mTemplateList = new ArrayList();
    private SparseArray<Integer> mTemplateTypeCountList = new SparseArray();
    private String mTemplateVersion = null;
    private boolean mUseProjectSpeed;
    int tempClipID = 0;
    ArrayList<HashMap<String, String>> templateList;
    int templateListID = 0;

    private class a {
        private int b;
        private int c;
        private int d;
        private boolean e;
        private int f;
        private int g;
        private int h;
        private int i;

        public a(int i, int i2, int i3, boolean z, int i4, int i5, int i6, int i7) {
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = z;
            this.f = i4;
            this.g = i5;
            this.h = i6;
            this.i = i7;
        }

        public int a() {
            return this.b;
        }

        public int b() {
            return this.c;
        }

        public int c() {
            return this.d;
        }

        public boolean d() {
            return this.e;
        }

        public int e() {
            return this.f;
        }

        public int f() {
            return this.g;
        }

        public int g() {
            return this.h;
        }

        public int h() {
            return this.i;
        }
    }

    public nexProject createProject() {
        return new nexProject();
    }

    public void release() {
        this.introCount = 0;
        this.loopCount = 0;
        this.tempClipID = 0;
        this.mCancel = false;
        if (this.mTemplate != null) {
            this.mTemplate.a();
        }
        if (this.mTemplateList != null) {
            this.mTemplateList.clear();
        }
        if (this.mIntroTemplateList != null) {
            this.mIntroTemplateList.clear();
        }
        if (this.mLoopTemplateList != null) {
            this.mLoopTemplateList.clear();
        }
        if (this.mOutroTemplateList != null) {
            this.mOutroTemplateList.clear();
        }
        if (this.mTemplateTypeCountList != null) {
            this.mTemplateTypeCountList.clear();
        }
        if (this.mOverlayList != null) {
            this.mOverlayList.clear();
        }
        if (this.mBGMPath != null && this.mBGMTempFile) {
            new File(this.mBGMPath).delete();
        }
        this.templateListID = 0;
        this.mTemplateVersion = null;
    }

    public String setTemplateEffects2Project(nexProject nexproject, Context context, Context context2, String str, boolean z) throws nexSDKException {
        initTemplateComposer(nexproject, context, context2, str);
        return setTemplateEffect();
    }

    void initTemplateComposer(nexProject nexproject, Context context, Context context2, String str) throws nexSDKException {
        this.mProject = nexproject;
        this.mAppContext = context;
        this.mResContext = context2;
        this.mCancel = false;
        this.mTemplateID = null;
        this.mTemplateFilePath = null;
        this.mInputStream = null;
        this.mTemplateID = str;
        release();
        this.mTemplateTypeCountList.append(0, Integer.valueOf(0));
        this.mTemplateTypeCountList.append(1, Integer.valueOf(0));
        this.mTemplateTypeCountList.append(2, Integer.valueOf(0));
    }

    void addTemplateOverlay(int i, String str) {
        String[] split = str.split(",");
        String str2 = split[0];
        String str3 = split[1];
        String str4 = split[2];
        String str5 = split[3];
        String str6 = split[4];
        String str7 = split[5];
        String str8 = split[6];
        String str9 = split[7];
        Log.d(TAG, "clipID=" + i + " /type=" + str2 + " /duration=" + str3 + " /variation=" + str4 + " /activeAnimation=" + str5 + " /inAnimationStartTime=" + str6 + " /inAnimationTime=" + str7 + " /outAnimationStartTime=" + str8 + " /outAnimationTime=" + str9);
        if (str2.equals("overlay")) {
            this.mOverlayList.add(new a(i, Integer.parseInt(str3), Integer.parseInt(str4), Boolean.parseBoolean(str5), Integer.parseInt(str6), Integer.parseInt(str7), Integer.parseInt(str8), Integer.parseInt(str9)));
        }
    }

    nexOverlayItem vignetteOverlayViaRatioMode(final String str, final int i, final int i2, int i3, int i4) {
        return new nexOverlayItem(new nexOverlayImage("template_overlay", i, i2, new runTimeMakeBitMap() {
            public boolean isAniMate() {
                return false;
            }

            public int getBitmapID() {
                return 100;
            }

            public Bitmap makeBitmap() {
                Bitmap bitmap = null;
                try {
                    return Bitmap.createScaledBitmap(BitmapFactory.decodeStream(nexTemplateComposer.this.mResContext.getResources().getAssets().open(str), null, null), i, i2, true);
                } catch (IOException e) {
                    e.printStackTrace();
                    return bitmap;
                }
            }
        }), i / 2, i2 / 2, i3, i3 + i4);
    }

    void setOverlay2Project() {
        Iterator it = this.mOverlayList.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            nexOverlayItem vignetteOverlayViaRatioMode = vignetteOverlayViaRatioMode("vignette.png", nexApplicationConfig.getAspectProfile().getWidth(), nexApplicationConfig.getAspectProfile().getHeight(), this.mProject.getClip(aVar.a(), true).mStartTime + aVar.c(), aVar.b());
            this.mProject.addOverlay(vignetteOverlayViaRatioMode);
            if (aVar.d()) {
                vignetteOverlayViaRatioMode.clearAnimate();
                vignetteOverlayViaRatioMode.addAnimate(nexAnimate.getAlpha(aVar.e(), aVar.f(), 0.0f, 1.0f).setInterpolator(new AccelerateDecelerateInterpolator()));
                vignetteOverlayViaRatioMode.addAnimate(nexAnimate.getAlpha(aVar.g(), aVar.h(), 1.0f, 0.0f).setInterpolator(new AccelerateDecelerateInterpolator()));
            }
        }
    }

    String setTemplateEffect() {
        String parsingJSONFile = parsingJSONFile(this.mProject);
        if (parsingJSONFile != null) {
            return parsingJSONFile;
        }
        if (this.mTemplateVersion.equals("template 1.0")) {
            consistProjectViaVer1(this.mProject);
            if (this.mCancel) {
                return cancelMassage;
            }
            parsingJSONFile = setProperty2Clips(this.mProject, this.mTemplateVersion);
        } else if (this.mTemplateVersion.equals("template 1.x")) {
            consistProjectViaVer2(this.mProject);
            if (this.mCancel) {
                return cancelMassage;
            }
            parsingJSONFile = setProperty2Clips(this.mProject, this.mTemplateVersion);
        } else {
            parsingJSONFile = applyTemplateOnProject(this.mProject);
        }
        if (parsingJSONFile != null) {
            return parsingJSONFile;
        }
        setOverlay2Project();
        return null;
    }

    String getValue(JSONObject jSONObject, String str) {
        try {
            return jSONObject.getString(str);
        } catch (JSONException e) {
            if (str.equals(TAG_EFFECTS)) {
                return "none";
            }
            if (str.equals(TAG_ID) || str.equals(TAG_VOLUME)) {
                return "0";
            }
            if (str.equals(TAG_SOURCE_TYPE)) {
                return "ALL";
            }
            if (str.equals(TAG_EXTERNAL_VIDEO_PATH) || str.equals(TAG_EXTERNAL_IMAGE_PATH) || str.equals(TAG_SOLID_COLOR) || str.equals(TAG_LUT)) {
                return null;
            }
            if (str.equals(TAG_VIGNETTE)) {
                return "clip,no";
            }
            if (str.equals(TAG_CROP_MODE)) {
                return "";
            }
            if (str.equals(TAG_CROP_SPEED)) {
                return "0";
            }
            return "default";
        }
    }

    HashMap<String, String> setParameter2List(JSONObject jSONObject) {
        HashMap<String, String> hashMap = new HashMap();
        String value = getValue(jSONObject, "type");
        String value2;
        String value3;
        if (value.equals("scene")) {
            value2 = getValue(jSONObject, TAG_ID);
            value3 = getValue(jSONObject, TAG_SOURCE_TYPE);
            String value4 = getValue(jSONObject, TAG_DURATION);
            String value5 = getValue(jSONObject, TAG_VOLUME);
            String value6 = getValue(jSONObject, TAG_EFFECTS);
            String value7 = getValue(jSONObject, TAG_BRIGHTNESS);
            String value8 = getValue(jSONObject, TAG_CONTRAST);
            String value9 = getValue(jSONObject, TAG_SATURATION);
            String value10 = getValue(jSONObject, TAG_COLOR_FILTER);
            String value11 = getValue(jSONObject, TAG_SPEED_CONTROL);
            String value12 = getValue(jSONObject, TAG_VIGNETTE);
            String value13 = getValue(jSONObject, TAG_LUT);
            String value14 = getValue(jSONObject, TAG_EXTERNAL_VIDEO_PATH);
            String value15 = getValue(jSONObject, TAG_EXTERNAL_IMAGE_PATH);
            String value16 = getValue(jSONObject, TAG_SOLID_COLOR);
            String value17 = getValue(jSONObject, TAG_CROP_MODE);
            String value18 = getValue(jSONObject, TAG_CROP_SPEED);
            String value19 = getValue(jSONObject, TAG_VIDEO_CROP_MODE);
            String value20 = getValue(jSONObject, TAG_IMAGE_CROP_MODE);
            hashMap.put("type", value);
            hashMap.put(TAG_ID, value2);
            hashMap.put(TAG_SOURCE_TYPE, value3);
            hashMap.put(TAG_DURATION, value4);
            hashMap.put(TAG_VOLUME, value5);
            hashMap.put(TAG_EFFECTS, value6);
            hashMap.put(TAG_BRIGHTNESS, value7);
            hashMap.put(TAG_CONTRAST, value8);
            hashMap.put(TAG_SATURATION, value9);
            hashMap.put(TAG_COLOR_FILTER, value10);
            hashMap.put(TAG_SPEED_CONTROL, value11);
            hashMap.put(TAG_LUT, value13);
            hashMap.put(TAG_CROP_MODE, value17);
            hashMap.put(TAG_CROP_SPEED, value18);
            hashMap.put(TAG_VIDEO_CROP_MODE, value19);
            hashMap.put(TAG_IMAGE_CROP_MODE, value20);
            hashMap.put(TAG_EXTERNAL_VIDEO_PATH, value14);
            hashMap.put(TAG_EXTERNAL_IMAGE_PATH, value15);
            hashMap.put(TAG_SOLID_COLOR, value16);
            hashMap.put(TAG_VIGNETTE, value12);
        } else if (value.equals("transition")) {
            value2 = getValue(jSONObject, TAG_EFFECTS);
            value3 = getValue(jSONObject, TAG_DURATION);
            hashMap.put("type", value);
            hashMap.put(TAG_EFFECTS, value2);
            hashMap.put(TAG_DURATION, value3);
        }
        return hashMap;
    }

    static boolean checkEffectId(nexEffectLibrary nexeffectlibrary, String str) {
        if (str == null || str.compareToIgnoreCase("none") == 0 || str.compareToIgnoreCase("null") == 0 || nexeffectlibrary.checkEffectID(str)) {
            return true;
        }
        Log.d(TAG, "missing effect: (" + str + "))");
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:50:0x014a A:{ExcHandler: java.lang.Exception (e java.lang.Exception), Splitter: B:2:0x000c} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:40:?, code:
            android.util.Log.d(TAG, "Info(name: (" + r5 + "))");
            r1 = "template 1.0";
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static String[] checkMissEffects(nexEffectLibrary nexeffectlibrary, InputStream inputStream) {
        int i;
        int i2 = 0;
        String readFromFile = readFromFile(inputStream);
        ArrayList arrayList = new ArrayList();
        if (readFromFile != null) {
            try {
                int i3;
                String string;
                JSONObject jSONObject = new JSONObject(readFromFile);
                String string2 = jSONObject.getString(TAG_TEMPLATE_NAME);
                readFromFile = jSONObject.getString(TAG_TEMPLATE_VERSION);
                nexApplicationConfig.getDefaultLetterboxEffect();
                if (jSONObject.has(TAG_TEMPLATE_LETTERBOX)) {
                    jSONObject.getString(TAG_TEMPLATE_LETTERBOX);
                }
                String string3 = jSONObject.getString(TAG_TEMPLATE_DESCRIPTION);
                if (readFromFile.equals("v1.x") || readFromFile.equals("v2.0.0")) {
                    readFromFile = "template 1.x";
                } else if (readFromFile.equals("2.0.0")) {
                    readFromFile = "template 2.0";
                } else {
                    readFromFile = "template 1.0";
                }
                Log.d(TAG, "Info(name, version, description): (" + string2 + " ," + readFromFile + " ," + string3 + "))");
                JSONArray jSONArray = jSONObject.getJSONArray(TAG_TEMPLATE_INTRO);
                for (i3 = 0; i3 < jSONArray.length(); i3++) {
                    string = jSONArray.getJSONObject(i3).getString(TAG_EFFECTS);
                    if (!checkEffectId(nexeffectlibrary, string)) {
                        arrayList.add(string);
                    }
                }
                jSONArray = jSONObject.getJSONArray(TAG_TEMPLATE_LOOP);
                for (i3 = 0; i3 < jSONArray.length(); i3++) {
                    string = jSONArray.getJSONObject(i3).getString(TAG_EFFECTS);
                    if (!checkEffectId(nexeffectlibrary, string)) {
                        arrayList.add(string);
                    }
                }
                jSONArray = jSONObject.getJSONArray(TAG_TEMPLATE_OUTRO);
                for (i3 = 0; i3 < jSONArray.length(); i3++) {
                    string = jSONArray.getJSONObject(i3).getString(TAG_EFFECTS);
                    if (!checkEffectId(nexeffectlibrary, string)) {
                        arrayList.add(string);
                    }
                }
                if (readFromFile.equals("template 1.0")) {
                    JSONArray jSONArray2 = jSONObject.getJSONArray(TAG_TEMPLATE);
                    for (i = 0; i < jSONArray2.length(); i++) {
                        String string4 = jSONArray2.getJSONObject(i).getString(TAG_EFFECTS);
                        if (!checkEffectId(nexeffectlibrary, string4)) {
                            arrayList.add(string4);
                        }
                    }
                }
            } catch (JSONException e) {
            } catch (Exception e2) {
            }
        }
        if (arrayList.size() <= 0) {
            return null;
        }
        String[] strArr = new String[arrayList.size()];
        while (true) {
            i = i2;
            if (i >= arrayList.size()) {
                return strArr;
            }
            strArr[i] = ((String) arrayList.get(i)).toString();
            i2 = i + 1;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:41:0x017b A:{Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }} */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x01b1 A:{ExcHandler: java.lang.Exception (r0_57 'e' java.lang.Exception), Splitter: B:4:0x000e} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:38:?, code:
            android.util.Log.d(TAG, "Info(name: (" + r4 + "))");
            r8.mIntroTemplateList.clear();
            r8.mLoopTemplateList.clear();
            r8.mOutroTemplateList.clear();
            r8.mTemplateVersion = "template 1.0";
     */
    /* JADX WARNING: Missing block: B:49:0x01b1, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:59:?, code:
            return r0.getMessage();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    String parsingJSONFile(nexProject nexproject) {
        String AssetPackageTemplateJsonToString;
        if (this.mTemplateID != null) {
            AssetPackageTemplateJsonToString = AssetPackageTemplateJsonToString(this.mTemplateID);
        } else if (this.mTemplateFilePath != null) {
            AssetPackageTemplateJsonToString = readFromFile(this.mTemplateFilePath);
        } else if (this.mInputStream != null) {
            AssetPackageTemplateJsonToString = readFromFile(this.mInputStream);
        } else {
            AssetPackageTemplateJsonToString = null;
        }
        if (AssetPackageTemplateJsonToString == null) {
            return "template parsing fail!";
        }
        try {
            JSONObject jSONObject = new JSONObject(AssetPackageTemplateJsonToString);
            String string = jSONObject.getString(TAG_TEMPLATE_NAME);
            String string2 = jSONObject.getString(TAG_TEMPLATE_VERSION);
            AssetPackageTemplateJsonToString = nexApplicationConfig.getDefaultLetterboxEffect();
            if (jSONObject.has(TAG_TEMPLATE_LETTERBOX)) {
                AssetPackageTemplateJsonToString = jSONObject.getString(TAG_TEMPLATE_LETTERBOX);
            }
            nexproject.setLetterboxEffect(AssetPackageTemplateJsonToString);
            AssetPackageTemplateJsonToString = jSONObject.getString(TAG_TEMPLATE_DESCRIPTION);
            if (string2.equals("v1.x") || string2.equals("v2.0.0")) {
                int i;
                this.mTemplateVersion = "template 1.x";
                Log.d(TAG, "Info(name, version, description): (" + string + " ," + this.mTemplateVersion + " ," + AssetPackageTemplateJsonToString + "))");
                applyBGM2Project(nexproject, jSONObject.getString(TAG_TEMPLATE_BGM));
                nexproject.setBGMMasterVolumeScale(Float.parseFloat(jSONObject.getString(TAG_TEMPLATE_BGM_VOLUME)));
                this.mIntroTemplateArray = jSONObject.getJSONArray(TAG_TEMPLATE_INTRO);
                for (i = 0; i < this.mIntroTemplateArray.length(); i++) {
                    this.mIntroTemplateList.add(setParameter2List(this.mIntroTemplateArray.getJSONObject(i)));
                }
                this.mLoopTemplateArray = jSONObject.getJSONArray(TAG_TEMPLATE_LOOP);
                for (i = 0; i < this.mLoopTemplateArray.length(); i++) {
                    this.mLoopTemplateList.add(setParameter2List(this.mLoopTemplateArray.getJSONObject(i)));
                }
                this.mOutroTemplateArray = jSONObject.getJSONArray(TAG_TEMPLATE_OUTRO);
                for (i = 0; i < this.mOutroTemplateArray.length(); i++) {
                    this.mOutroTemplateList.add(setParameter2List(this.mOutroTemplateArray.getJSONObject(i)));
                }
                if (this.mTemplateVersion.equals("template 1.0")) {
                    this.mTemplateArray = jSONObject.getJSONArray(TAG_TEMPLATE);
                    for (i = 0; i < this.mTemplateArray.length(); i++) {
                        this.mTemplateList.add(setParameter2List(this.mTemplateArray.getJSONObject(i)));
                    }
                    applyBGM2Project(nexproject, jSONObject.getString(TAG_TEMPLATE_BGM));
                }
                return null;
            }
            this.mTemplateVersion = "template 2.0";
            this.mTemplate = new c();
            AssetPackageTemplateJsonToString = this.mTemplate.a(this.mTemplateFilePath, jSONObject);
            if (AssetPackageTemplateJsonToString != null) {
                return AssetPackageTemplateJsonToString;
            }
            if (this.mTemplateVersion.equals("template 1.0")) {
            }
            return null;
        } catch (JSONException e) {
            return e.getMessage();
        } catch (Exception e2) {
        }
    }

    void applyBGM2Project(nexProject nexproject, String str) {
        if (str != null) {
            Log.d(TAG, "bgm path1=" + str);
            if (this.mTemplateID != null) {
                if (str.equalsIgnoreCase("null")) {
                    nexproject.setBackgroundMusicPath(null);
                } else {
                    nexproject.setBackgroundMusicPath(nexAssetPackageManager.getAssetPackageMediaPath(this.mAppContext, str));
                }
            } else if (str.equalsIgnoreCase("null")) {
                nexproject.setBackgroundMusicPath(null);
            } else {
                if (str.regionMatches(true, 0, TAG_TEMPLATE, 0, 8)) {
                    try {
                        nexproject.setBackgroundMusicPath(raw2file(this.mAppContext, this.mResContext, str));
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                if (str.contains("/storage/")) {
                    CharSequence absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
                    if (str.contains("/storage/emulated/0")) {
                        str = str.replace("/storage/emulated/0", absolutePath);
                    } else {
                        str = str.replace("/storage", absolutePath);
                    }
                }
                nexproject.setBackgroundMusicPath(str);
            }
        }
    }

    void setUseProjectSpeed(boolean z) {
        this.mUseProjectSpeed = z;
    }

    void setOverlappedTransitionFlag(boolean z) {
        this.mOverlappedTransition = z;
    }

    void consistProjectViaVer1(nexProject nexproject) {
        this.templateList = this.mTemplateList;
        nexProject clone = nexProject.clone(nexproject);
        nexproject.allClear(true);
        this.templateListID = 0;
        int i = 0;
        int i2 = 100;
        while (true) {
            int totalTime;
            int startTrimTime;
            Rect rect;
            if (clone.getClip(i, true).getClipType() == 4) {
                int rotateDegree = clone.getClip(i, true).getRotateDegree();
                if (this.mUseProjectSpeed) {
                    i2 = clone.getClip(i, true).getVideoClipEdit().getSpeedControl();
                }
                startTrimTime = clone.getClip(i, true).getVideoClipEdit().getStartTrimTime();
                totalTime = clone.getClip(i, true).getVideoClipEdit().getEndTrimTime() == 0 ? clone.getClip(i, true).getTotalTime() : clone.getClip(i, true).getVideoClipEdit().getEndTrimTime();
                if (this.mUseProjectSpeed) {
                    totalTime = clone.getClip(i, true).getVideoClipEdit().getDuration();
                } else {
                    totalTime -= startTrimTime;
                }
                nexClip dup = nexClip.dup(clone.getClip(i, true));
                int i3 = totalTime;
                int i4 = startTrimTime;
                boolean z = true;
                while (!this.mCancel) {
                    int i5;
                    totalTime = Integer.parseInt((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_DURATION));
                    if (totalTime < 0) {
                        totalTime = 0;
                    }
                    Log.d(TAG, "remainTime2Project=" + i3 + ", defined_duration=" + totalTime + ", templateListID=" + this.templateListID);
                    i3 -= totalTime;
                    if (i3 <= 500) {
                        totalTime += i3;
                        z = false;
                    }
                    Log.d(TAG, "index=" + 0 + ", defined_duration=" + totalTime + ", loop=" + z);
                    if (this.mUseProjectSpeed) {
                        i5 = (int) (((float) totalTime) * (((float) i2) / 100.0f));
                    } else {
                        i5 = totalTime;
                    }
                    nexproject.add(nexClip.dup(dup));
                    if (((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("ALL") || ((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("VIDEO")) {
                        nexproject.getLastPrimaryClip().setRotateDegree(rotateDegree);
                        if (this.mUseProjectSpeed) {
                            nexproject.getLastPrimaryClip().getVideoClipEdit().setSpeedControl(i2);
                        }
                        nexproject.getLastPrimaryClip().getVideoClipEdit().setTrim(i4, i4 + i5);
                    }
                    rect = new Rect();
                    clone.getClip(i, true).getCrop().getStartPositionRaw(rect);
                    nexproject.getLastPrimaryClip().getCrop().setStartPositionRaw(rect);
                    clone.getClip(i, true).getCrop().getEndPositionRaw(rect);
                    nexproject.getLastPrimaryClip().getCrop().setEndPositionRaw(rect);
                    totalTime = i4 + i5;
                    this.templateListID += 2;
                    Log.d(TAG, "templateListID=" + this.templateListID + ", templateList.size()=" + this.templateList.size());
                    if (this.templateListID >= this.templateList.size()) {
                        this.templateListID = 0;
                    }
                    if (z) {
                        i4 = totalTime;
                    }
                }
                return;
            } else if (clone.getClip(i, true).getClipType() == 1) {
                totalTime = Integer.parseInt((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_DURATION));
                startTrimTime = clone.getClip(i, true).getRotateDegree();
                nexClip dup2 = nexClip.dup(clone.getClip(i, true));
                nexproject.add(dup2);
                dup2.setRotateDegree(startTrimTime);
                dup2.setImageClipDuration(totalTime);
                rect = new Rect();
                clone.getClip(i, true).getCrop().getStartPositionRaw(rect);
                dup2.getCrop().setStartPositionRaw(rect);
                clone.getClip(i, true).getCrop().getEndPositionRaw(rect);
                dup2.getCrop().setEndPositionRaw(rect);
                this.templateListID += 2;
                if (this.templateListID >= this.templateList.size()) {
                    this.templateListID = 0;
                }
            } else {
                Log.d(TAG, "not support_type in template:" + clone.getClip(i, true).getClipType());
            }
            totalTime = i + 1;
            if (totalTime >= clone.getTotalClipCount(true)) {
                nexproject.updateProject();
                return;
            }
            i = totalTime;
        }
    }

    boolean addSpecialClip2Project(nexProject nexproject) {
        if (!((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("EXTERNAL_VIDEO") && !((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("EXTERNAL_IMAGE") && !((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("SOLID")) {
            return false;
        }
        nexClip supportedClip;
        if (((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("EXTERNAL_VIDEO")) {
            supportedClip = nexClip.getSupportedClip((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_EXTERNAL_VIDEO_PATH));
            if (supportedClip != null) {
                nexproject.add(supportedClip);
                if (this.templateList == this.mIntroTemplateList) {
                    this.introCount++;
                } else if (this.templateList == this.mLoopTemplateList) {
                    this.loopCount++;
                }
                this.tempClipID++;
            }
        } else {
            int parseInt = Integer.parseInt((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_DURATION));
            if (((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("EXTERNAL_IMAGE")) {
                supportedClip = nexClip.getSupportedClip((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_EXTERNAL_IMAGE_PATH));
                if (supportedClip != null) {
                    supportedClip.setImageClipDuration(parseInt);
                    nexproject.add(supportedClip);
                    if (this.templateList == this.mIntroTemplateList) {
                        this.introCount++;
                    } else if (this.templateList == this.mLoopTemplateList) {
                        this.loopCount++;
                    }
                    this.tempClipID++;
                }
            } else {
                supportedClip = nexClip.getSolidClip(Color.parseColor((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOLID_COLOR)));
                if (supportedClip != null) {
                    supportedClip.setImageClipDuration(parseInt);
                    nexproject.add(supportedClip);
                    if (this.templateList == this.mIntroTemplateList) {
                        this.introCount++;
                    } else if (this.templateList == this.mLoopTemplateList) {
                        this.loopCount++;
                    }
                    this.tempClipID++;
                }
            }
        }
        manageTemplateList(true);
        return true;
    }

    void manageTemplateList(boolean z) {
        if (this.templateList == this.mIntroTemplateList) {
            this.mTemplateTypeCountList.append(0, Integer.valueOf(this.introCount));
        } else if (this.templateList == this.mLoopTemplateList) {
            this.mTemplateTypeCountList.append(1, Integer.valueOf(this.loopCount));
        }
        this.templateListID += 2;
        Log.d(TAG, "templateListID/templateList.size:" + this.templateListID + "/" + this.templateList.size());
        if (z) {
            if (this.templateListID < this.templateList.size()) {
                return;
            }
            if (this.templateList == this.mIntroTemplateList) {
                this.templateListID = 0;
                this.templateList = this.mLoopTemplateList;
                Log.d(TAG, "intro -> loop");
            } else if (this.templateList == this.mLoopTemplateList) {
                this.templateListID = 0;
                Log.d(TAG, "loop -> loop");
            }
        } else if (this.templateList == this.mIntroTemplateList) {
            this.templateListID = 0;
            this.templateList = this.mOutroTemplateList;
            this.mTemplateTypeCountList.append(2, Integer.valueOf(1));
            Log.d(TAG, "intro -> outro");
        } else if (this.templateList == this.mLoopTemplateList) {
            this.templateListID = 0;
            this.templateList = this.mOutroTemplateList;
            this.mTemplateTypeCountList.append(2, Integer.valueOf(1));
            Log.d(TAG, "loop -> outro");
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x014b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void consistProjectViaVer2(nexProject nexproject) {
        int i;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i3;
            if (i >= this.mIntroTemplateList.size()) {
                break;
            }
            i4 += Integer.parseInt((String) ((HashMap) this.mIntroTemplateList.get(i)).get(TAG_DURATION));
            i3 = i + 2;
        }
        i3 = 0;
        while (true) {
            i = i3;
            if (i >= this.mOutroTemplateList.size()) {
                break;
            }
            i2 += Integer.parseInt((String) ((HashMap) this.mOutroTemplateList.get(i)).get(TAG_DURATION));
            i3 = i + 2;
        }
        this.templateList = this.mIntroTemplateList;
        nexProject clone = nexProject.clone(nexproject);
        nexproject.allClear(true);
        i = 0;
        Object obj = null;
        int i5 = 0;
        while (true) {
            Object obj2;
            int totalTime;
            if (clone.getClip(i5, true).getClipType() == 4) {
                int i6;
                int rotateDegree = clone.getClip(i5, true).getRotateDegree();
                int speedControl = clone.getClip(i5, true).getVideoClipEdit().getSpeedControl();
                int startTrimTime = clone.getClip(i5, true).getVideoClipEdit().getStartTrimTime();
                if (clone.getClip(i5, true).getVideoClipEdit().getEndTrimTime() == 0) {
                    totalTime = clone.getClip(i5, true).getTotalTime();
                } else {
                    totalTime = clone.getClip(i5, true).getVideoClipEdit().getEndTrimTime();
                }
                nexClip dup = nexClip.dup(clone.getClip(i5, true));
                this.tempClipID = nexproject.getTotalClipCount(true);
                if (this.tempClipID < 0) {
                    this.tempClipID = 0;
                }
                int i7 = totalTime - startTrimTime;
                if (i4 + i2 >= i7) {
                    Log.d(TAG, "OVER durationOfSourceClip/ introDuration:" + i4 + " outroDuration:" + i2 + " sourceDuration:" + i7);
                    i6 = startTrimTime;
                    startTrimTime = i7;
                } else {
                    i3 = i7 - i2;
                    Log.d(TAG, "UNDER durationOfSourceClip/ introDuration:" + i4 + " outroDuration:" + i2 + " remainTime2Project:" + i3);
                    i6 = startTrimTime;
                    startTrimTime = i3;
                }
                if (this.mCancel) {
                    int i8;
                    int i9;
                    addSpecialClip2Project(nexproject);
                    if (Integer.parseInt((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_DURATION)) < 0) {
                        i8 = 0;
                    } else {
                        i8 = Integer.parseInt((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_DURATION));
                    }
                    int i10 = startTrimTime - i8;
                    i3 = this.templateListID;
                    while (true) {
                        i9 = i3 + 2;
                        if (i9 >= this.templateList.size()) {
                            i9 = 0;
                        }
                        if (((String) ((HashMap) this.templateList.get(i9)).get(TAG_SOURCE_TYPE)).equals("EXTERNAL_VIDEO") || ((String) ((HashMap) this.templateList.get(i9)).get(TAG_SOURCE_TYPE)).equals("EXTERNAL_IMAGE")) {
                            i3 = i9;
                        } else {
                            if (!((String) ((HashMap) this.templateList.get(i9)).get(TAG_SOURCE_TYPE)).equals("SOLID")) {
                                break;
                            }
                            i3 = i9;
                            i3 = i9;
                        }
                    }
                    i9 = Integer.parseInt((String) ((HashMap) this.templateList.get(i9)).get(TAG_DURATION));
                    nexClip clip;
                    if (this.templateList == this.mOutroTemplateList || obj != null) {
                        nexproject.add(nexClip.dup(dup));
                        clip = nexproject.getClip(this.tempClipID, true);
                        if ((((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("ALL") || ((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("VIDEO")) && clip.getClipType() == 4) {
                            clip.setRotateDegree(rotateDegree);
                            clip.getVideoClipEdit().setSpeedControl(speedControl);
                            clip.getVideoClipEdit().setTrim(i6, totalTime);
                        }
                        i6 += totalTime;
                        if (obj != null) {
                            obj = null;
                            if (this.templateList == this.mIntroTemplateList) {
                                this.introCount++;
                            } else if (this.templateList == this.mLoopTemplateList) {
                                this.loopCount++;
                            }
                            manageTemplateList(true);
                        }
                        i3 = startTrimTime;
                        startTrimTime = i6;
                    } else {
                        String str = TAG;
                        String str2 = str;
                        Log.d(str2, "id:" + Integer.parseInt((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_ID)) + "/ current defined duration:" + i8 + "/ next defined duration:" + i9 + "/ remain duration(based on source_duration - outro_duration)):" + i10);
                        nexClip clip2;
                        if (i4 + i2 >= i7) {
                            nexproject.add(nexClip.dup(dup));
                            i3 = this.tempClipID;
                            this.tempClipID = i3 + 1;
                            clip = nexproject.getClip(i3, true);
                            if ((((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("ALL") || ((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("VIDEO")) && clip.getClipType() == 4) {
                                clip.setRotateDegree(rotateDegree);
                                clip.getVideoClipEdit().setSpeedControl(speedControl);
                                clip.getVideoClipEdit().setTrim(i6, (startTrimTime / 2) + i6);
                            }
                            i6 += startTrimTime / 2;
                            if (this.templateList == this.mIntroTemplateList) {
                                this.introCount++;
                            } else {
                                this.loopCount++;
                            }
                            i++;
                            if (i < clone.getTotalClipCount(true)) {
                                Log.d(TAG, "video,case 1] some clips exist in the source project.");
                                obj = 1;
                                manageTemplateList(true);
                            } else {
                                this.introCount++;
                                manageTemplateList(false);
                            }
                            i3 = startTrimTime;
                            startTrimTime = i6;
                        } else if (i10 <= i9) {
                            nexproject.add(nexClip.dup(dup));
                            i3 = this.tempClipID;
                            this.tempClipID = i3 + 1;
                            clip2 = nexproject.getClip(i3, true);
                            if ((((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("ALL") || ((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("VIDEO")) && clip2.getClipType() == 4) {
                                clip2.setRotateDegree(rotateDegree);
                                clip2.getVideoClipEdit().setSpeedControl(speedControl);
                                clip2.getVideoClipEdit().setTrim(i6, ((i10 / 2) + i8) + i6);
                            }
                            i6 += (i10 / 2) + i8;
                            if (this.templateList == this.mIntroTemplateList) {
                                this.introCount++;
                            } else {
                                this.loopCount++;
                            }
                            i++;
                            if (i < clone.getTotalClipCount(true)) {
                                Log.d(TAG, "video,case 3] the certain clip exist in the source project.");
                                obj = 1;
                                manageTemplateList(true);
                                i3 = startTrimTime;
                                startTrimTime = i6;
                            } else {
                                manageTemplateList(false);
                                i3 = startTrimTime;
                                startTrimTime = i6;
                            }
                        } else if (i10 < 0) {
                            i3 = startTrimTime;
                            startTrimTime = i6;
                        } else {
                            startTrimTime -= i8;
                            nexproject.add(nexClip.dup(dup));
                            i3 = this.tempClipID;
                            this.tempClipID = i3 + 1;
                            clip2 = nexproject.getClip(i3, true);
                            if ((((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("ALL") || ((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("VIDEO")) && clip2.getClipType() == 4) {
                                clip2.setRotateDegree(rotateDegree);
                                clip2.getVideoClipEdit().setSpeedControl(speedControl);
                                clip2.getVideoClipEdit().setTrim(i6, i6 + i8);
                            }
                            i6 += i8;
                            if (this.templateList == this.mIntroTemplateList) {
                                this.introCount++;
                            } else {
                                this.loopCount++;
                            }
                            manageTemplateList(true);
                            i3 = startTrimTime;
                            startTrimTime = i6;
                        }
                    }
                    if (startTrimTime >= totalTime) {
                        i3 = i;
                        obj2 = obj;
                    }
                    i6 = startTrimTime;
                    startTrimTime = i3;
                    if (this.mCancel) {
                    }
                }
                return;
            } else if (clone.getClip(i5, true).getClipType() == 1) {
                addSpecialClip2Project(nexproject);
                i3 = Integer.parseInt((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_DURATION));
                totalTime = clone.getClip(i5, true).getRotateDegree();
                nexClip dup2 = nexClip.dup(clone.getClip(i5, true));
                dup2.setRotateDegree(totalTime);
                dup2.setImageClipDuration(i3);
                nexproject.add(dup2);
                i++;
                if (i < clone.getTotalClipCount(true)) {
                    if (this.templateList == this.mIntroTemplateList) {
                        this.introCount++;
                    } else {
                        this.loopCount++;
                    }
                    if (i != clone.getTotalClipCount(true) - 1) {
                        Log.d(TAG, "image] some clips exist in the source project.");
                        manageTemplateList(true);
                    } else if (clone.getClip(i, true).getClipType() == 4) {
                        Log.d(TAG, "image] the clipType of last clip is video, and go continually");
                        manageTemplateList(true);
                    } else {
                        Log.d(TAG, "image] the clipType of last clip is image, and goto OutTroTemplate");
                        manageTemplateList(false);
                    }
                } else {
                    Log.d(TAG, "image] No more any clip after this image clip.");
                    this.mTemplateTypeCountList.append(2, Integer.valueOf(1));
                }
                i3 = i;
                obj2 = obj;
            } else {
                Log.d(TAG, "not support_type in template:" + clone.getClip(i5, true).getClipType());
                i3 = i;
                obj2 = obj;
            }
            int i11 = i5 + 1;
            if (i11 >= clone.getTotalClipCount(true)) {
                Log.d(TAG, "intro:" + this.mTemplateTypeCountList.get(0) + " loop:" + this.mTemplateTypeCountList.get(1) + " out-ro:" + this.mTemplateTypeCountList.get(2));
                nexproject.updateProject();
                return;
            }
            i5 = i11;
            obj = obj2;
            i = i3;
        }
    }

    String setProperty2VideoClip(nexProject nexproject, nexClip nexclip, int i) {
        String str;
        String str2;
        int parseInt = Integer.parseInt(((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_VOLUME)).equals("default") ? "-1" : (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_VOLUME));
        int parseInt2 = Integer.parseInt(((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_CONTRAST)).equals("default") ? "-1" : (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_CONTRAST));
        int parseInt3 = Integer.parseInt(((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_BRIGHTNESS)).equals("default") ? "-1" : (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_BRIGHTNESS));
        int parseInt4 = Integer.parseInt(((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SATURATION)).equals("default") ? "-1" : (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SATURATION));
        int parseInt5 = Integer.parseInt(((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_COLOR_FILTER)).equals("default") ? "-1" : (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_COLOR_FILTER));
        if (((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SPEED_CONTROL)).equals("default")) {
            str = "-1";
        } else {
            str = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SPEED_CONTROL);
        }
        int parseInt6 = Integer.parseInt(str);
        str = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_EFFECTS);
        String str3 = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_LUT);
        String str4 = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_VIGNETTE);
        String str5 = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_CROP_MODE);
        if (str5.equals("")) {
            str2 = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_VIDEO_CROP_MODE);
        } else {
            str2 = str5;
        }
        try {
            int i2;
            if (str.equals("none")) {
                nexclip.getClipEffect(true).setEffectNone();
                i2 = parseInt6;
            } else {
                int i3;
                nexclip.getClipEffect(true).setEffect(str);
                if (!this.mUseProjectSpeed || nexclip.getVideoClipEdit().getSpeedControl() == 100) {
                    i3 = parseInt6;
                } else {
                    i3 = nexclip.getVideoClipEdit().getSpeedControl();
                }
                nexclip.getClipEffect(true).setEffectShowTime(0, 0);
                str = str.substring(str.lastIndexOf("."));
                if (str.equals(".opening") || str.equals(".middle") || str.equals(".ending")) {
                    nexclip.getClipEffect(true).setTitle(0, " ");
                    nexclip.getClipEffect(true).setTitle(1, " ");
                }
                i2 = i3;
            }
            if (parseInt != -1) {
                nexclip.setClipVolume(parseInt);
            }
            if (parseInt3 != -1) {
                nexclip.setBrightness(parseInt3);
            }
            if (parseInt2 != -1) {
                nexclip.setContrast(parseInt2);
            }
            if (parseInt4 != -1) {
                nexclip.setSaturation(parseInt4);
            }
            if (parseInt5 != -1) {
                nexclip.setColorEffect(getColorEffect(parseInt5 - 1));
            }
            if (i2 != -1) {
                nexclip.getVideoClipEdit().setSpeedControl(i2);
            }
            Object obj = -1;
            switch (str2.hashCode()) {
                case 101393:
                    if (str2.equals("fit")) {
                        obj = 3;
                        break;
                    }
                    break;
                case 3143043:
                    if (str2.equals("fill")) {
                        obj = null;
                        break;
                    }
                    break;
                case 1054849215:
                    if (str2.equals("pan_face")) {
                        obj = 2;
                        break;
                    }
                    break;
                case 1055207047:
                    if (str2.equals("pan_rand")) {
                        obj = 1;
                        break;
                    }
                    break;
            }
            switch (obj) {
                case null:
                    nexclip.getCrop().randomizeStartEndPosition(false, CropMode.FILL);
                    break;
                case 1:
                    nexclip.getCrop().randomizeStartEndPosition(false, CropMode.PAN_RAND);
                    break;
                case 2:
                    nexclip.getCrop().randomizeStartEndPosition(false, CropMode.PAN_FACE);
                    break;
                case 3:
                    nexclip.getCrop().randomizeStartEndPosition(false, CropMode.FIT);
                    break;
            }
            if (!(str3 == null || str3.equals("null"))) {
                nexColorEffect lutColorEffect;
                if (this.mTemplateID != null) {
                    lutColorEffect = nexColorEffect.getLutColorEffect(str3);
                    if (lutColorEffect != null) {
                        Log.d(TAG, "lut color effect set =" + lutColorEffect.getPresetName());
                        nexclip.setColorEffect(lutColorEffect);
                    }
                } else {
                    for (nexColorEffect lutColorEffect2 : nexColorEffect.getPresetList()) {
                        if (lutColorEffect2.getPresetName().equals(str3)) {
                            nexclip.setColorEffect(lutColorEffect2);
                        }
                    }
                }
            }
            String[] split = str4.split(",");
            if (split[0].equals("clip")) {
                if (split[1].equals("yes")) {
                    nexclip.setVignetteEffect(true);
                } else {
                    nexclip.setVignetteEffect(false);
                }
            } else if (split[0].equals("overlay")) {
                addTemplateOverlay(i, str4);
            }
            this.templateListID++;
            if (((String) ((HashMap) this.templateList.get(this.templateListID)).get("type")).equals("transition")) {
                str = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_EFFECTS);
                int parseInt7 = Integer.parseInt(((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_DURATION)).equals("default") ? "-1" : (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_DURATION));
                if (this.mOverlappedTransition) {
                    int[] transitionDurationTimeGuideLine = nexproject.getTransitionDurationTimeGuideLine(i, parseInt7);
                    if (transitionDurationTimeGuideLine[0] == 0 && transitionDurationTimeGuideLine[1] == 0) {
                        nexclip.getTransitionEffect(true).setEffectNone();
                        nexclip.getTransitionEffect(true).setDuration(0);
                    } else if (str.equals("none")) {
                        nexclip.getTransitionEffect(true).setEffectNone();
                        nexclip.getTransitionEffect(true).setDuration(0);
                    } else {
                        nexclip.getTransitionEffect(true).setTransitionEffect(str);
                        if (parseInt7 != -1) {
                            nexclip.getTransitionEffect(true).setDuration(parseInt7);
                        }
                    }
                } else {
                    nexclip.getTransitionEffect(true).setEffectNone();
                    nexclip.getTransitionEffect(true).setDuration(0);
                }
            }
            return null;
        } catch (nexSDKException e) {
            return e.getMessage();
        }
    }

    String setProperty2ImageClip(nexClip nexclip, int i) {
        if (((String) ((HashMap) this.templateList.get(this.templateListID)).get("type")).equals("scene")) {
            String str;
            int parseInt = Integer.parseInt(((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_CONTRAST)).equals("default") ? "-1" : (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_CONTRAST));
            int parseInt2 = Integer.parseInt(((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_BRIGHTNESS)).equals("default") ? "-1" : (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_BRIGHTNESS));
            int parseInt3 = Integer.parseInt(((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SATURATION)).equals("default") ? "-1" : (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SATURATION));
            if (((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_COLOR_FILTER)).equals("default")) {
                str = "-1";
            } else {
                str = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_COLOR_FILTER);
            }
            int parseInt4 = Integer.parseInt(str);
            str = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_EFFECTS);
            String str2 = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_LUT);
            String str3 = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_VIGNETTE);
            String str4 = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_CROP_MODE);
            if (str4.equals("")) {
                str4 = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_IMAGE_CROP_MODE);
            }
            try {
                nexclip.setClipVolume(0);
                if (str.equals("none")) {
                    nexclip.getClipEffect(true).setEffectNone();
                } else {
                    nexclip.getClipEffect(true).setEffect(str);
                    nexclip.getClipEffect(true).setEffectShowTime(0, nexclip.getProjectEndTime() - nexclip.getProjectStartTime());
                }
                if (parseInt2 != -1) {
                    nexclip.setBrightness(parseInt2);
                }
                if (parseInt != -1) {
                    nexclip.setContrast(parseInt);
                }
                if (parseInt3 != -1) {
                    nexclip.setSaturation(parseInt3);
                }
                if (parseInt4 != -1) {
                    nexclip.setColorEffect(getColorEffect(parseInt4 - 1));
                }
                Object obj = -1;
                switch (str4.hashCode()) {
                    case 101393:
                        if (str4.equals("fit")) {
                            obj = 3;
                            break;
                        }
                        break;
                    case 3143043:
                        if (str4.equals("fill")) {
                            obj = null;
                            break;
                        }
                        break;
                    case 1054849215:
                        if (str4.equals("pan_face")) {
                            obj = 2;
                            break;
                        }
                        break;
                    case 1055207047:
                        if (str4.equals("pan_rand")) {
                            obj = 1;
                            break;
                        }
                        break;
                }
                switch (obj) {
                    case null:
                        nexclip.getCrop().randomizeStartEndPosition(false, CropMode.FILL);
                        break;
                    case 1:
                        nexclip.getCrop().randomizeStartEndPosition(false, CropMode.PAN_RAND);
                        break;
                    case 2:
                        nexclip.getCrop().randomizeStartEndPosition(false, CropMode.PAN_FACE);
                        break;
                    case 3:
                        nexclip.getCrop().randomizeStartEndPosition(false, CropMode.FIT);
                        break;
                }
                if (!(str2 == null || str2.equals("null"))) {
                    for (nexColorEffect nexcoloreffect : nexColorEffect.getPresetList()) {
                        if (nexcoloreffect.getPresetName().equals(str2)) {
                            nexclip.setColorEffect(nexcoloreffect);
                        }
                    }
                }
                String[] split = str3.split(",");
                if (split[0].equals("clip")) {
                    if (split[1].equals("yes")) {
                        nexclip.setVignetteEffect(true);
                    } else {
                        nexclip.setVignetteEffect(false);
                    }
                } else if (split[0].equals("overlay")) {
                    addTemplateOverlay(i, str3);
                }
                this.templateListID++;
                if (((String) ((HashMap) this.templateList.get(this.templateListID)).get("type")).equals("transition")) {
                    str = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_EFFECTS);
                    int parseInt5 = Integer.parseInt(((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_DURATION)).equals("default") ? "-1" : (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_DURATION));
                    if (!this.mOverlappedTransition) {
                        nexclip.getTransitionEffect(true).setEffectNone();
                        nexclip.getTransitionEffect(true).setDuration(0);
                    } else if (str.equals("none")) {
                        nexclip.getTransitionEffect(true).setEffectNone();
                        nexclip.getTransitionEffect(true).setDuration(0);
                    } else {
                        nexclip.getTransitionEffect(true).setTransitionEffect(str);
                        if (parseInt5 != -1) {
                            nexclip.getTransitionEffect(true).setDuration(parseInt5);
                        }
                    }
                }
            } catch (nexSDKException e) {
                return e.getMessage();
            }
        }
        return null;
    }

    String setProperty2Clips(nexProject nexproject, String str) {
        if (nexproject.getTotalClipCount(true) == 0) {
            return "no clip in the project";
        }
        if (str.equals("template 1.0")) {
            this.templateList = this.mTemplateList;
        } else {
            this.templateList = this.mIntroTemplateList;
        }
        this.templateListID = 0;
        int i = 0;
        while (!this.mCancel) {
            nexClip clip = nexproject.getClip(i, true);
            String property2VideoClip;
            if (clip.getClipType() == 4) {
                property2VideoClip = setProperty2VideoClip(nexproject, clip, i);
                if (property2VideoClip != null) {
                    return property2VideoClip;
                }
            } else if (clip.getClipType() == 1) {
                property2VideoClip = setProperty2ImageClip(clip, i);
                if (property2VideoClip != null) {
                    return property2VideoClip;
                }
            }
            this.templateListID++;
            if (this.templateListID == this.templateList.size()) {
                this.templateListID = 0;
            }
            int i2 = i + 1;
            if (!str.equals("template 1.0")) {
                if (i2 == ((Integer) this.mTemplateTypeCountList.get(0)).intValue()) {
                    if (((Integer) this.mTemplateTypeCountList.get(1)).intValue() == 0) {
                        this.templateList = this.mOutroTemplateList;
                    } else {
                        this.templateList = this.mLoopTemplateList;
                    }
                    this.templateListID = 0;
                }
                if (this.templateList == this.mLoopTemplateList) {
                    if (i2 == ((Integer) this.mTemplateTypeCountList.get(1)).intValue() + ((Integer) this.mTemplateTypeCountList.get(0)).intValue()) {
                        this.templateList = this.mOutroTemplateList;
                        this.templateListID = 0;
                    }
                }
            }
            if (i2 == nexproject.getTotalClipCount(true)) {
                clip.getTransitionEffect(true).setEffectNone();
                clip.getTransitionEffect(true).setDuration(0);
            }
            if (i2 >= nexproject.getTotalClipCount(true)) {
                nexproject.updateProject();
                return null;
            }
            i = i2;
        }
        this.mCancel = false;
        return cancelMassage;
    }

    String applyTemplateOnProject(nexProject nexproject) {
        if (this.mTemplate == null) {
            return "Template did not exist while apply template 2.0";
        }
        int g = this.mTemplate.g();
        for (int i = 0; i < nexproject.getTotalClipCount(true); i++) {
            nexClip clip = nexproject.getClip(i, true);
            if (clip.getClipType() == 1) {
                clip.setImageClipDuration(g);
            }
        }
        nexproject.updateProject();
        nexproject.setTemplageOverlappedTransitionMode(this.mOverlappedTransition);
        String a = this.mTemplate.a(nexproject, this.mAppContext, this.mResContext, this.mUseProjectSpeed, this.mOverlappedTransition);
        return a == null ? null : a;
    }

    nexColorEffect getColorEffect(int i) {
        return (nexColorEffect) nexColorEffect.getPresetList().get(i);
    }

    static String readFromFile(String str) {
        Throwable th;
        try {
            InputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(new File(str)));
            Throwable th2 = null;
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(bufferedInputStream));
                StringBuilder stringBuilder = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    stringBuilder.append(readLine);
                    stringBuilder.append("\n");
                }
                bufferedInputStream.close();
                if (bufferedInputStream != null) {
                    if (th2 != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                    } else {
                        bufferedInputStream.close();
                    }
                }
                return stringBuilder.toString();
            } catch (Throwable th22) {
                Throwable th4 = th22;
                th22 = th;
                th = th4;
            }
            if (bufferedInputStream != null) {
                if (th22 != null) {
                    try {
                        bufferedInputStream.close();
                    } catch (Throwable th32) {
                        th22.addSuppressed(th32);
                    }
                } else {
                    bufferedInputStream.close();
                }
            }
            throw th;
            throw th;
        } catch (FileNotFoundException e) {
            return e.getMessage();
        } catch (IOException e2) {
            return e2.getMessage();
        }
    }

    static String readFromFile(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            StringBuilder stringBuilder = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    stringBuilder.append(readLine);
                    stringBuilder.append("\n");
                } else {
                    inputStream.close();
                    return stringBuilder.toString();
                }
            }
        } catch (IOException e) {
            return e.getMessage();
        }
    }

    String raw2file(Context context, Context context2, String str) throws Exception {
        int lastIndexOf = str.lastIndexOf("/");
        String str2 = EditorGlobal.f().getAbsolutePath() + File.separator + TAG_TEMPLATE + File.separator + str.substring(lastIndexOf + 1, str.length());
        File file = new File(str2);
        AssetManager assets = context2.getAssets();
        if (file.isFile()) {
            try {
                AssetFileDescriptor openFd = assets.openFd(str);
                if (file.length() == openFd.getLength()) {
                    openFd.close();
                    Log.d(TAG, "bgm file found in sdcard.");
                    this.mBGMPath = str2;
                    return this.mBGMPath;
                }
                openFd.close();
            } catch (IOException e) {
                Log.d(TAG, "bgm file found in sdcard.");
                this.mBGMPath = str2;
                return this.mBGMPath;
            }
        }
        InputStream open = assets.open(str);
        if (open != null) {
            try {
                File file2 = new File(EditorGlobal.f().getAbsolutePath() + File.separator + TAG_TEMPLATE);
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                in2sdcard(open, file);
                Log.d(TAG, "bgm file copy assete to sdcard.");
                open.close();
                this.mBGMPath = str2;
                return this.mBGMPath;
            } catch (Exception e2) {
                String substring = str.substring(lastIndexOf + 1, str.length());
                try {
                    in2file(context, open, substring);
                    Log.d(TAG, "bgm file copy assete to temp data.");
                    this.mBGMTempFile = true;
                    this.mBGMPath = context.getFilesDir().getAbsolutePath() + File.separator + substring;
                    return this.mBGMPath;
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
        }
        return null;
    }

    static void in2sdcard(InputStream inputStream, File file) throws IOException {
        IOException e;
        Throwable th;
        byte[] bArr = new byte[1024];
        FileOutputStream fileOutputStream;
        try {
            fileOutputStream = new FileOutputStream(file);
            while (true) {
                try {
                    int read = inputStream.read(bArr);
                    if (read > 0) {
                        fileOutputStream.write(bArr, 0, read);
                    } else if (fileOutputStream != null) {
                        fileOutputStream.close();
                        return;
                    } else {
                        return;
                    }
                } catch (IOException e2) {
                    e = e2;
                }
            }
        } catch (IOException e3) {
            e = e3;
            fileOutputStream = null;
            try {
                throw e;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
            throw th;
        }
    }

    void in2file(Context context, InputStream inputStream, String str) throws Exception {
        byte[] bArr = new byte[1024];
        OutputStream outputStream = null;
        try {
            outputStream = context.openFileOutput(str, 1);
            while (true) {
                int read = inputStream.read(bArr);
                if (read <= 0) {
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    if (outputStream != null) {
                        outputStream.close();
                        return;
                    }
                    return;
                }
                outputStream.write(bArr, 0, read);
            }
        } catch (Exception e) {
            throw e;
        } catch (Throwable th) {
            if (inputStream != null) {
                inputStream.close();
            }
            if (outputStream != null) {
                outputStream.close();
            }
        }
    }

    static String AssetPackageTemplateJsonToString(String str) {
        String str2 = null;
        f c = c.a().c(str);
        if (c == null) {
            Log.e(TAG, "AssetPackageTemplateJsonToString info fail=" + str);
        } else if (c.a().a(c.getAssetPackage())) {
            Log.e(TAG, "AssetPackageTemplateJsonToString expire item id=" + str);
        } else {
            try {
                Closeable a = AssetPackageReader.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b(), c.getPackageURI(), c.getAssetPackage().getAssetId());
                Log.d(TAG, "Template(" + str + ") Asset(" + c.getAssetPackage().getAssetIdx() + ") version(In DB)=" + c.getAssetPackage().getPackageVersion() + ", version(In reader)=" + a.b());
                try {
                    InputStream a2 = a.a(c.getFilePath());
                    if (a2 != null) {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(a2));
                        StringBuilder stringBuilder = new StringBuilder();
                        while (true) {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            stringBuilder.append(readLine);
                            stringBuilder.append("\n");
                        }
                        a2.close();
                        str2 = stringBuilder.toString();
                    } else {
                        b.a(a);
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                } finally {
                    b.a(a);
                }
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        return str2;
    }

    void setCancel() {
        this.mCancel = true;
        if (this.mTemplate != null) {
            Log.d(TAG, "setCancel");
            this.mTemplate.h();
            return;
        }
        Log.d(TAG, "setCancel mTemplate is null");
    }
}
