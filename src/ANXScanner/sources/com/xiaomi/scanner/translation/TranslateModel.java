package com.xiaomi.scanner.translation;

import android.content.SharedPreferences.Editor;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.ScannerApp;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.translation.bean.TranslateResult;
import com.xiaomi.scanner.util.HttpUtils;
import com.xiaomi.scanner.util.HttpUtils.ResponseCallback;
import com.xiaomi.scanner.util.PictureDecoder;
import com.xiaomi.scanner.util.ScannerThreadPool;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class TranslateModel extends ResponseCallback<TranslateResult> {
    public static final String KEY_TIME_SRC_LANG = "keyRealTimeSrcLang2";
    public static final String KEY_TIME_TRANSLATE_DES_LANG = "keyRealTimeDesLang";
    public static final int SERVER_MAX = 1200;
    private static TranslateModel instance = null;
    private ResponseCallback<TranslateResult> callback;
    private String desLangCode;
    private List<String> desLangList;
    private Map<String, String> langMap = new HashMap();
    private float mTranslateImageRealHeight;
    private int mTranslateWorkType;
    private float scaleX = 1.0f;
    private float scaleY = 1.0f;
    private String srcLangCode;
    private List<String> srcLangList;

    public static TranslateModel getInstance() {
        if (instance == null) {
            synchronized (TranslateModel.class) {
                if (instance == null) {
                    instance = new TranslateModel();
                }
            }
        }
        return instance;
    }

    private TranslateModel() {
        String[] defaultCodes = ScannerApp.getAndroidContext().getResources().getStringArray(R.array.ArrayLangCodes);
        String[] defaultLangs = ScannerApp.getAndroidContext().getResources().getStringArray(R.array.WheelArrayLang);
        if (defaultCodes.length == defaultLangs.length) {
            for (int i = 0; i < defaultCodes.length; i++) {
                this.langMap.put(defaultCodes[i], defaultLangs[i]);
            }
        }
        this.desLangList = new ArrayList(Arrays.asList(defaultLangs));
        this.srcLangList = new ArrayList(Arrays.asList(ScannerApp.getAndroidContext().getResources().getStringArray(R.array.WheelSrcLang)));
        initLang(defaultCodes);
    }

    public String getChineseLangCode() {
        return ScannerApp.getAndroidContext().getResources().getStringArray(R.array.ArrayLangCodes)[0];
    }

    public List<String> getSrcLangList() {
        return this.srcLangList;
    }

    public List<String> getDesLangList() {
        return this.desLangList;
    }

    private void initLang(String[] defaultCodes) {
        String saveLang = getFromLocal(KEY_TIME_TRANSLATE_DES_LANG, "");
        if (TextUtils.isEmpty(saveLang)) {
            this.desLangCode = defaultCodes[0];
        } else {
            this.desLangCode = saveLang;
        }
        String saveSrc = getFromLocal(KEY_TIME_SRC_LANG, "");
        if (TextUtils.isEmpty(saveSrc)) {
            this.srcLangCode = defaultCodes[1];
        } else {
            this.srcLangCode = saveSrc;
        }
    }

    private void saveToLocal(String key, String value) {
        Editor editor = ScannerApp.getAndroidContext().getSharedPreferences("TranslateModel", 0).edit();
        editor.putString(key, value);
        editor.apply();
    }

    private String getFromLocal(String key, String defaultValue) {
        return ScannerApp.getAndroidContext().getSharedPreferences("TranslateModel", 0).getString(key, defaultValue);
    }

    public void updateLangs(String srcLang, String desLang) {
        this.srcLangCode = getCodeFromLang(srcLang);
        this.desLangCode = getCodeFromLang(desLang);
        ScannerThreadPool.poolExecute(new Runnable() {
            public void run() {
                TranslateModel.this.saveToLocal(TranslateModel.KEY_TIME_SRC_LANG, TranslateModel.this.srcLangCode);
                TranslateModel.this.saveToLocal(TranslateModel.KEY_TIME_TRANSLATE_DES_LANG, TranslateModel.this.desLangCode);
            }
        });
    }

    private String getLangFromCode(String code) {
        String lang = (String) this.langMap.get(code);
        if (lang == null) {
            return (String) this.desLangList.get(0);
        }
        return lang;
    }

    public void setCallback(ResponseCallback<TranslateResult> callback) {
        this.callback = callback;
    }

    public void sendTranslate(Bitmap bitmap, int workType, int degree) {
        if (workType != -1) {
            this.mTranslateWorkType = workType;
        }
        if (useLocalRotate() && degree != 0) {
            bitmap = PictureDecoder.rotateBitmap(bitmap, degree);
        }
        UsageStatistics.trackEvent(UsageStatistics.KEY_TRANSLATE_SERVER_REQ);
        HttpUtils.asyncRealTimeTranslate(bitmap, this, this.srcLangCode, this.desLangCode, useLocalRotate());
    }

    public boolean useLocalRotate() {
        return this.mTranslateWorkType != 3;
    }

    public void onSuccess(TranslateResult obj) {
        if (obj.resultCode != 1 || obj.getLineInfos().size() == 0) {
            onFail(obj.resultCode);
        } else if (this.callback != null) {
            this.callback.onSuccess(obj);
        }
    }

    public void onFail(int code) {
        super.onFail(code);
        if (this.callback != null) {
            this.callback.onFail(code);
        }
    }

    public String getCodeFromLang(String desLang) {
        for (Entry<String, String> entry : this.langMap.entrySet()) {
            if (entry.getValue() != null && ((String) entry.getValue()).equals(desLang)) {
                return (String) entry.getKey();
            }
        }
        return ScannerApp.getAndroidContext().getResources().getStringArray(R.array.ArrayLangCodes)[1];
    }

    public String getSrcLang() {
        return getLangFromCode(this.srcLangCode);
    }

    public String getDesLang() {
        return getLangFromCode(this.desLangCode);
    }

    public float getScaleX() {
        return this.scaleX;
    }

    public void setScaleX(float scaleX) {
        this.scaleX = scaleX;
    }

    public void setScaleY(float scaleY) {
        this.scaleY = scaleY;
    }

    public float getScaleY() {
        return this.scaleY;
    }

    public void setTranslateImageRealHeight(float mTranslateImageRealHeight) {
        this.mTranslateImageRealHeight = mTranslateImageRealHeight;
    }

    public float getTranslateImageRealHeight() {
        return this.mTranslateImageRealHeight;
    }
}
