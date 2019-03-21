package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.AsyncTask;
import android.util.Log;
import com.google.gson_nex.Gson;
import com.nexstreaming.app.common.util.l;
import com.nexstreaming.kminternal.json.TemplateMetaData.EffectEntry;
import com.nexstreaming.kminternal.json.TemplateMetaData.Music;
import com.nexstreaming.kminternal.kinemaster.config.EditorGlobal;
import com.nexstreaming.nexeditorsdk.exception.ExpiredTimeException;
import com.nexstreaming.nexeditorsdk.nexAssetPackageManager.Category;
import com.nexstreaming.nexeditorsdk.nexAssetPackageManager.Item;
import com.nexstreaming.nexeditorsdk.nexAssetPackageManager.OnInstallPackageListener;
import com.nexstreaming.nexeditorsdk.nexEngine.nexUndetectedFaceCrop;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;
import org.json.JSONObject;

public class nexTemplateManager {
    private static final String TAG = "nexTemplateManager";
    private static boolean isApplyTemplate;
    private static boolean sAutoAspectSelect = true;
    private static final ExecutorService sInstallThreadExcutor = Executors.newSingleThreadExecutor();
    private static nexTemplateManager sSingleton = null;
    private static Category[] supportCategory = new Category[]{Category.template, Category.beattemplate};
    private nexTemplateComposer composer;
    private String errorMsg = "";
    private List<Template> externalView_templateEntries = null;
    private int lastError = 0;
    private Context mAppContext;
    private boolean mCancel;
    private Context mResContext;
    private boolean mUseClipSpeed = false;
    private boolean mUseVideoTrim = true;
    private int mVideoMemorySize = 0;
    private Object m_templateEntryLock = new Object();
    private List<Template> templateEntries = new ArrayList();

    public static class Template extends c {
        private float[] aspect;
        private String bgmId;
        private String[] ids;
        private int internalSourceCount = -1;
        private int maxAspect;
        private int maxExtendCount = -1;
        private int maxRecommendCount;
        private int maxSourceCount;
        private boolean parsed = false;
        private int selectAspect;

        Template() {
        }

        private Template(Item item) {
            super(item);
        }

        public static Template promote(Item item) {
            for (Category category : nexTemplateManager.supportCategory) {
                if (item.category() == category) {
                    return new Template(item);
                }
            }
            return null;
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

        public String id() {
            if (nexTemplateManager.sAutoAspectSelect) {
                selectAspect();
            }
            return this.ids[this.selectAspect];
        }

        public String name(String str) {
            String assetName = packageInfo().assetName(str);
            return assetName != null ? assetName : super.name(str);
        }

        public float aspect() {
            if (nexTemplateManager.sAutoAspectSelect) {
                selectAspect();
            }
            return this.aspect[this.selectAspect];
        }

        public float[] getSupportedAspects() {
            float[] fArr = new float[this.maxAspect];
            for (int i = 0; i < fArr.length; i++) {
                fArr[i] = this.aspect[i];
            }
            return fArr;
        }

        public void selectAspect(int i) {
            if (this.maxAspect > i) {
                this.selectAspect = i;
            }
        }

        public String getVersion() {
            if (this.id.contains(".ver_")) {
                return this.id.substring(this.id.indexOf(".ver_") + 5, this.id.indexOf(".ver_") + 8);
            }
            return "200";
        }

        private void selectAspect() {
            float aspectRatio = nexApplicationConfig.getAspectRatio();
            float f = 3.0f;
            for (int i = 0; i < this.maxAspect; i++) {
                float f2 = aspectRatio - this.aspect[i];
                if (f2 < 0.0f) {
                    f2 *= -1.0f;
                }
                if (f > f2) {
                    this.selectAspect = i;
                    f = f2;
                }
            }
        }

        void setAspect(String str) {
            if (this.maxAspect < 5) {
                if (this.aspect == null) {
                    this.aspect = new float[5];
                    this.ids = new String[5];
                }
                if (str.contains("9v16")) {
                    this.aspect[this.maxAspect] = 0.5625f;
                } else if (str.contains("2v1")) {
                    this.aspect[this.maxAspect] = 2.0f;
                } else if (str.contains("1v2")) {
                    this.aspect[this.maxAspect] = 0.5f;
                } else if (str.contains("1v1")) {
                    this.aspect[this.maxAspect] = 1.0f;
                } else {
                    this.aspect[this.maxAspect] = 1.7777778f;
                }
                this.ids[this.maxAspect] = str;
                this.maxAspect++;
                selectAspect();
            }
        }

        public String defaultBGMId() {
            if (category() == Category.beattemplate) {
                parseTemplate();
                return this.bgmId;
            }
            if (this.bgmId == null) {
                String AssetPackageTemplateJsonToString = nexTemplateComposer.AssetPackageTemplateJsonToString(id());
                if (AssetPackageTemplateJsonToString != null) {
                    try {
                        this.bgmId = new JSONObject(AssetPackageTemplateJsonToString).getString("template_bgm");
                    } catch (JSONException e) {
                    }
                }
            }
            return this.bgmId;
        }

        public String[] getSupportedLocales() {
            if (packageInfo() == null) {
                return new String[0];
            }
            return packageInfo().getSupportedLocales();
        }
    }

    private final class a extends AsyncTask<Void, Integer, Void> {
        nexProject a;
        String b;
        Runnable c;
        boolean d;
        private boolean f;

        a(nexProject nexproject, String str, boolean z, Runnable runnable) {
            this.a = nexproject;
            this.b = str;
            this.c = runnable;
            this.d = z;
        }

        /* renamed from: a */
        protected Void doInBackground(Void... voidArr) {
            try {
                this.f = nexTemplateManager.this.internalApplyTemplateToProjectById(this.a, this.b, this.d, nexUndetectedFaceCrop.NONE.getValue());
            } catch (ExpiredTimeException e) {
                e.printStackTrace();
            }
            return null;
        }

        /* renamed from: a */
        protected void onPostExecute(Void voidR) {
            if (!(nexTemplateManager.this.mCancel || this.c == null)) {
                this.c.run();
            }
            nexTemplateManager.isApplyTemplate = false;
        }
    }

    public List<Template> getTemplates() {
        if (this.externalView_templateEntries == null) {
            this.externalView_templateEntries = Collections.unmodifiableList(this.templateEntries);
        }
        return this.externalView_templateEntries;
    }

    public int[] getTemplateAssetIdxs() {
        int[] iArr;
        synchronized (this.m_templateEntryLock) {
            List<Integer> arrayList = new ArrayList();
            for (Template template : this.templateEntries) {
                if (arrayList.size() == 0) {
                    arrayList.add(Integer.valueOf(template.packageInfo().assetIdx()));
                } else {
                    for (Integer intValue : arrayList) {
                        if (intValue.intValue() == template.packageInfo().assetIdx()) {
                        }
                    }
                    arrayList.add(Integer.valueOf(template.packageInfo().assetIdx()));
                }
            }
            iArr = new int[arrayList.size()];
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < iArr.length) {
                    iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
                    i = i2 + 1;
                }
            }
        }
        return iArr;
    }

    public String[] getTemplateAssetIds() {
        String[] strArr;
        synchronized (this.m_templateEntryLock) {
            List<String> arrayList = new ArrayList();
            for (Template template : this.templateEntries) {
                if (arrayList.size() == 0) {
                    arrayList.add(template.packageInfo().assetId());
                } else {
                    for (String compareTo : arrayList) {
                        if (compareTo.compareTo(template.packageInfo().assetId()) == 0) {
                        }
                    }
                    arrayList.add(template.packageInfo().assetId());
                }
            }
            strArr = new String[arrayList.size()];
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < strArr.length) {
                    strArr[i2] = (String) arrayList.get(i2);
                    i = i2 + 1;
                }
            }
        }
        return strArr;
    }

    public Template getTemplateById(String str) {
        Template template;
        synchronized (this.m_templateEntryLock) {
            for (Template template2 : this.templateEntries) {
                if (template2.id().compareTo(str) == 0) {
                    break;
                }
            }
            template2 = null;
        }
        return template2;
    }

    private nexTemplateManager(Context context, Context context2) {
        this.mAppContext = context;
        this.mResContext = context2;
    }

    public static nexTemplateManager getTemplateManager(Context context, Context context2) {
        if (!(sSingleton == null || sSingleton.mAppContext.getPackageName().equals(context.getPackageName()))) {
            sSingleton = null;
        }
        if (sSingleton == null) {
            sSingleton = new nexTemplateManager(context, context2);
        }
        return sSingleton;
    }

    public static nexTemplateManager getTemplateManager() {
        return sSingleton;
    }

    private Template getAssetTemplate(String str) {
        for (Template template : this.templateEntries) {
            if (template.packageInfo().assetId().compareTo(str) == 0) {
                return template;
            }
        }
        return null;
    }

    private void resolveTemplate(boolean z) {
        synchronized (this.m_templateEntryLock) {
            this.templateEntries.clear();
            for (Category installedAssetItems : supportCategory) {
                for (Item item : nexAssetPackageManager.getAssetPackageManager(this.mAppContext).getInstalledAssetItems(installedAssetItems)) {
                    if (!item.hidden()) {
                        if (z) {
                            nexAssetPackageManager.getAssetPackageManager(this.mAppContext);
                            if (nexAssetPackageManager.checkExpireAsset(item.packageInfo())) {
                            }
                        }
                        Template assetTemplate = getAssetTemplate(item.packageInfo().assetId());
                        if (assetTemplate == null) {
                            assetTemplate = Template.promote(item);
                            this.templateEntries.add(assetTemplate);
                        }
                        assetTemplate.setAspect(item.id());
                    }
                }
            }
        }
    }

    public void loadTemplate(final Runnable runnable) {
        new Thread(new Runnable() {
            public void run() {
                nexTemplateManager.this.resolveTemplate(false);
                runnable.run();
            }
        }).start();
    }

    public void loadTemplate() {
        resolveTemplate(false);
    }

    public void loadTemplate(boolean z) {
        resolveTemplate(z);
    }

    private String getNameById(String str) {
        synchronized (this.m_templateEntryLock) {
            for (Template template : this.templateEntries) {
                if (template.id() != null && template.id().compareTo(str) == 0) {
                    String name = template.name(null);
                    return name;
                }
            }
            return null;
        }
    }

    public boolean applyTemplateToProjectById(nexProject nexproject, String str) throws ExpiredTimeException {
        if (isApplyTemplate) {
            Log.d(TAG, "applyTemplateToProjectById errorMsg= already run applyTemplate");
            this.lastError = -3;
            return false;
        }
        isApplyTemplate = true;
        try {
            boolean internalApplyTemplateToProjectById = internalApplyTemplateToProjectById(nexproject, str, true, nexUndetectedFaceCrop.NONE.getValue());
            isApplyTemplate = false;
            return internalApplyTemplateToProjectById;
        } catch (ExpiredTimeException e) {
            isApplyTemplate = false;
            throw e;
        }
    }

    public boolean applyTemplateToProjectById(nexProject nexproject, String str, boolean z) throws ExpiredTimeException {
        if (isApplyTemplate) {
            Log.d(TAG, "applyTemplateToProjectById errorMsg= already run applyTemplate");
            this.lastError = -3;
            return false;
        }
        isApplyTemplate = true;
        try {
            boolean internalApplyTemplateToProjectById = internalApplyTemplateToProjectById(nexproject, str, z, nexUndetectedFaceCrop.NONE.getValue());
            isApplyTemplate = false;
            return internalApplyTemplateToProjectById;
        } catch (ExpiredTimeException e) {
            isApplyTemplate = false;
            throw e;
        }
    }

    public boolean applyTemplateToProjectById(nexProject nexproject, String str, boolean z, int i) throws ExpiredTimeException {
        if (isApplyTemplate) {
            Log.d(TAG, "applyTemplateToProjectById errorMsg= already run applyTemplate");
            this.lastError = -3;
            return false;
        }
        isApplyTemplate = true;
        try {
            boolean internalApplyTemplateToProjectById = internalApplyTemplateToProjectById(nexproject, str, z, i);
            isApplyTemplate = false;
            return internalApplyTemplateToProjectById;
        } catch (ExpiredTimeException e) {
            isApplyTemplate = false;
            throw e;
        }
    }

    private boolean internalApplyTemplateToProjectById(nexProject nexproject, String str, boolean z, final int i) throws ExpiredTimeException {
        l lVar = new l();
        lVar.a();
        this.lastError = 0;
        if (getNameById(str) == null) {
            this.lastError = -1;
            return false;
        }
        Template templateById = getTemplateById(str);
        if (templateById == null) {
            this.lastError = -1;
            return false;
        } else if (nexAssetPackageManager.checkExpireAsset(templateById.packageInfo())) {
            this.lastError = -2;
            throw new ExpiredTimeException(str);
        } else if (templateById.category() == Category.beattemplate) {
            return nexBeatTemplateManager.internalApplyTemplateToProjectById(nexproject, str);
        } else {
            if (this.composer == null) {
                this.composer = new nexTemplateComposer();
            }
            EditorGlobal.a().a(null);
            if (i != 0) {
                final nexClip clip = nexproject.getClip(0, true);
                if (clip.getClipType() == 1) {
                    EditorGlobal.a().e();
                    Thread thread = new Thread(new Runnable() {
                        public void run() {
                            nexTemplateManager.this.getFirstFace(clip, i);
                        }
                    });
                    thread.start();
                    EditorGlobal.a().a(thread);
                }
            }
            this.composer.setUseProjectSpeed(this.mUseClipSpeed);
            if (nexConfig.getProperty(2) == 1) {
                this.composer.setOverlappedTransitionFlag(false);
            } else {
                this.composer.setOverlappedTransitionFlag(z);
            }
            this.errorMsg = this.composer.setTemplateEffects2Project(nexproject, this.mAppContext, this.mResContext, str, false);
            if (this.errorMsg != null) {
                Log.d(TAG, "internalApplyTemplateToProjectById errorMsg=" + this.errorMsg);
                this.composer.release();
                lVar.b();
                Log.d(TAG, "internalApplyTemplateToProjectById error elapsed=" + lVar.toString());
                this.lastError = -2;
                return false;
            }
            this.composer.release();
            lVar.b();
            Log.d(TAG, "internalApplyTemplateToProjectById elapsed=" + lVar.toString());
            return true;
        }
    }

    public boolean applyTemplateAsyncToProjectById(nexProject nexproject, String str, Runnable runnable) throws ExpiredTimeException {
        if (isApplyTemplate) {
            this.lastError = -3;
            return false;
        }
        Template templateById = getTemplateById(str);
        if (templateById == null) {
            this.lastError = -1;
            return false;
        } else if (nexAssetPackageManager.checkExpireAsset(templateById.packageInfo())) {
            this.lastError = -2;
            throw new ExpiredTimeException(str);
        } else {
            isApplyTemplate = true;
            this.mCancel = false;
            new a(nexproject, str, true, runnable).executeOnExecutor(sInstallThreadExcutor, new Void[0]);
            return true;
        }
    }

    public boolean applyTemplateAsyncToProjectById(nexProject nexproject, String str, boolean z, Runnable runnable) throws ExpiredTimeException {
        if (isApplyTemplate) {
            this.lastError = -3;
            return false;
        }
        Template templateById = getTemplateById(str);
        if (templateById == null) {
            this.lastError = -1;
            return false;
        } else if (nexAssetPackageManager.checkExpireAsset(templateById.packageInfo())) {
            this.lastError = -2;
            throw new ExpiredTimeException(str);
        } else {
            isApplyTemplate = true;
            this.mCancel = false;
            new a(nexproject, str, z, runnable).executeOnExecutor(sInstallThreadExcutor, new Void[0]);
            return true;
        }
    }

    public String getLastErrorMessage() {
        return this.errorMsg;
    }

    public String[] getTemplateIds() {
        String[] strArr = new String[this.templateEntries.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= strArr.length) {
                return strArr;
            }
            strArr[i2] = ((Template) this.templateEntries.get(i2)).id();
            i = i2 + 1;
        }
    }

    public void uninstallPackageById(String str) {
        nexAssetPackageManager.getAssetPackageManager(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).uninstallPackageById(str);
    }

    public int findNewPackages() {
        return nexAssetPackageManager.getAssetPackageManager(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).findNewPackages();
    }

    public boolean isInstallingPackages() {
        return nexAssetPackageManager.getAssetPackageManager(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).isInstallingPackages();
    }

    public void installPackagesAsync(OnInstallPackageListener onInstallPackageListener) {
        nexAssetPackageManager.getAssetPackageManager(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).installPackagesAsync(onInstallPackageListener);
    }

    public void installPackagesAsync(int i, OnInstallPackageListener onInstallPackageListener) {
        nexAssetPackageManager.getAssetPackageManager(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).installPackagesAsync(i, onInstallPackageListener);
    }

    public void cancel() {
        this.mCancel = true;
        if (isApplyTemplate && this.composer != null) {
            this.composer.setCancel();
        }
    }

    public int getLastError() {
        return this.lastError;
    }

    public String getTemplateItemId(boolean z, int i) {
        if (z) {
            loadTemplate();
        }
        if (i < 2) {
            return null;
        }
        String id;
        synchronized (this.m_templateEntryLock) {
            for (Template template : this.templateEntries) {
                if (template.packageInfo().assetIdx() == i) {
                    id = template.id();
                    break;
                }
            }
            id = null;
        }
        return id;
    }

    @Deprecated
    public void getFirstFace(nexClip nexclip, int i) {
        Log.d(TAG, "getFirstFace In");
        String path = nexclip.getPath();
        if (com.nexstreaming.kminternal.kinemaster.utils.facedetect.a.a(path) == null) {
            Log.d(TAG, "getFirstFace Proc");
            com.nexstreaming.kminternal.kinemaster.utils.facedetect.a.a(path, new com.nexstreaming.kminternal.kinemaster.utils.facedetect.a(new File(path), true, this.mAppContext));
        }
        Log.d(TAG, "getFirstFace Out");
    }

    void onFirstFaceDone(nexClip nexclip, com.nexstreaming.kminternal.kinemaster.utils.facedetect.a aVar, int i) {
        boolean z;
        int width = nexclip.getCrop().getWidth();
        int height = nexclip.getCrop().getHeight();
        RectF rectF = new RectF();
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        Rect rect3 = new Rect(0, 0, width, height);
        aVar.a(rectF);
        rect.set((int) (rectF.left * ((float) width)), (int) (rectF.top * ((float) height)), (int) (rectF.right * ((float) width)), (int) (rectF.bottom * ((float) height)));
        rect2.set((int) (rectF.left * ((float) width)), (int) (rectF.top * ((float) height)), (int) (rectF.right * ((float) width)), (int) (rectF.bottom * ((float) height)));
        if (rect.isEmpty()) {
            rect.set(0, 0, (width * 3) / 4, (height * 3) / 4);
            rect.offset((int) ((((double) width) * Math.random()) / 4.0d), (int) ((((double) height) * Math.random()) / 4.0d));
            Log.d(TAG, "Face Detection Empty ");
            z = false;
        } else {
            int width2 = (width / 4) - rect.width();
            if (width2 >= 2) {
                rect.left -= width2 / 2;
                rect.right = (width2 / 2) + rect.right;
                Log.d(TAG, "Face Detection width addSpace>0 ");
            }
            width2 = (height / 4) - rect.height();
            if (width2 >= 2) {
                rect.top -= width2 / 2;
                rect.bottom = (width2 / 2) + rect.bottom;
                Log.d(TAG, "Face Detection height addSpace>0 ");
            }
            nexclip.getCrop().growToAspect(rect, nexApplicationConfig.getAspectRatio());
            if (!rect.intersect(0, 0, width, height)) {
                rect.set(0, 0, (width * 2) / 3, (height * 2) / 3);
                Log.d(TAG, "Face Detection insect not ");
                rect.offset((int) ((((double) width) * Math.random()) / 3.0d), (int) ((((double) height) * Math.random()) / 3.0d));
            }
            rect3.set(0, 0, (width * 3) / 4, (height * 3) / 4);
            rect3.offset((int) ((((double) width) * Math.random()) / 4.0d), (int) ((((double) height) * Math.random()) / 4.0d));
            z = true;
        }
        if (z) {
            nexclip.getCrop().shrinkToAspect(rect, nexApplicationConfig.getAspectRatio());
            nexclip.getCrop().shrinkToAspect(rect3, nexApplicationConfig.getAspectRatio());
            Log.d(TAG, "Face Detection aync true  ");
            int i2 = rect.right - rect.left;
            rect.left -= i2 / 4;
            rect.right = (i2 / 4) + rect.right;
            i2 = rect.bottom - rect.top;
            rect.top -= i2 / 4;
            rect.bottom = (i2 / 4) + rect.bottom;
            nexclip.getCrop().growToAspect(rect, nexApplicationConfig.getAspectRatio());
            nexclip.getCrop().setStartPosition(rect3);
            nexclip.getCrop().setEndPosition(rect);
            nexclip.getCrop().setFacePosition(rect2);
            nexclip.getCrop().getStartPositionRaw(rect3);
            nexclip.getCrop().getEndPositionRaw(rect);
            nexclip.getCrop().getFacePositionRaw(rect2);
            EditorGlobal.a().a(1, 1, rect3, rect, rect2);
        } else {
            nexclip.getCrop().shrinkToAspect(rect, nexApplicationConfig.getAspectRatio());
            if (i == 1) {
                nexclip.getCrop().shrinkToAspect(rect3, nexApplicationConfig.getAspectRatio());
            } else {
                nexclip.getCrop().growToAspect(rect3, nexApplicationConfig.getAspectRatio());
            }
            nexclip.getCrop().setStartPosition(rect);
            nexclip.getCrop().setEndPosition(rect3);
            nexclip.getCrop().setFacePosition(rect2);
            nexclip.getCrop().getStartPositionRaw(rect);
            nexclip.getCrop().getEndPositionRaw(rect3);
            nexclip.getCrop().getFacePositionRaw(rect2);
            Log.d(TAG, "Face Detection aync false  ");
            EditorGlobal.a().a(1, 0, rect3, rect, rect2);
        }
        nexclip.setFaceDetectProcessed(z, rect2);
        Log.d(TAG, "Face Detection aync thread end =" + nexclip.getPath());
    }

    public void setUseClipSpeed(boolean z) {
        this.mUseClipSpeed = z;
    }

    public void setVideoClipTrimMode(boolean z) {
        this.mUseVideoTrim = z;
    }

    public void setVideoMemorySize(int i) {
        this.mVideoMemorySize = i;
    }

    public static void setAutoSelectFromAspect(boolean z) {
        sAutoAspectSelect = z;
    }

    /* JADX WARNING: Missing block: B:29:?, code:
            return r0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    boolean updateTemplate(boolean z, Item item) {
        synchronized (this.m_templateEntryLock) {
            Template assetTemplate;
            boolean z2;
            if (!z) {
                for (Template assetTemplate2 : this.templateEntries) {
                    if (assetTemplate2.packageInfo().assetIdx() == item.packageInfo().assetIdx()) {
                        this.templateEntries.remove(assetTemplate2);
                        z2 = true;
                        break;
                    }
                }
                z2 = false;
            } else if (item.hidden()) {
                return false;
            } else {
                assetTemplate2 = getAssetTemplate(item.packageInfo().assetId());
                if (assetTemplate2 == null) {
                    assetTemplate2 = Template.promote(item);
                    this.templateEntries.add(assetTemplate2);
                }
                assetTemplate2.setAspect(item.id());
                z2 = true;
            }
        }
    }
}
