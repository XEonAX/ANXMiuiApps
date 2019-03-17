package com.xiaomi.scanner.config;

import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.xiaomi.scanner.app.ScannerApp;
import com.xiaomi.scanner.config.bean.ScanRuleListResult;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.util.DeviceUtil;
import com.xiaomi.scanner.util.HttpUtils;
import com.xiaomi.scanner.util.HttpUtils.ResponseCallback;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

public class ConfigModel {
    private static final String CACHE_NAME = "configCache";
    private static final String KEY_CACHE = "Config_Scan";
    public static ConfigModel instance = new ConfigModel();
    private List<Pattern> mAlipayRulePatternList;
    private List<Pattern> mAllCanPayList;
    private List<Pattern> mMiBiPayList;
    private List<Pattern> mMipayList;
    private List<Pattern> mWechatRuleList;
    private ScanRuleListResult scanRuleListResult;

    private ConfigModel() {
    }

    public void initCacheData() {
        this.scanRuleListResult = (ScanRuleListResult) getDataFromCache(KEY_CACHE, ScanRuleListResult.class);
    }

    public void clearAllCacheData() {
        this.scanRuleListResult = null;
        clearData(this.mAlipayRulePatternList);
        clearData(this.mWechatRuleList);
        clearData(this.mMiBiPayList);
        clearData(this.mMipayList);
        clearData(this.mAllCanPayList);
    }

    private void clearData(List<Pattern> data) {
        if (data != null) {
            data.clear();
        }
    }

    public void queryScanRuleConfig() {
        if (!DeviceUtil.isInternationalBuild()) {
            HttpUtils.queryScanRuleConfig(new ResponseCallback<ScanRuleListResult>() {
                public void onSuccess(ScanRuleListResult obj) {
                    ConfigModel.this.scanRuleListResult = obj;
                    ConfigModel.this.saveDataToLocal(obj, ConfigModel.KEY_CACHE);
                }
            });
        }
    }

    public List<Pattern> getPaymentRuleList() {
        if (this.scanRuleListResult == null || this.scanRuleListResult.scanAlipayRules == null || this.scanRuleListResult.scanAlipayRules.size() == 0) {
            return null;
        }
        if (this.mAlipayRulePatternList != null && !this.mAlipayRulePatternList.isEmpty() && this.mAlipayRulePatternList.size() == this.scanRuleListResult.scanAlipayRules.size()) {
            return this.mAlipayRulePatternList;
        }
        this.mAlipayRulePatternList = new ArrayList();
        for (String rule : this.scanRuleListResult.scanAlipayRules) {
            this.mAlipayRulePatternList.add(Pattern.compile(rule));
        }
        return this.mAlipayRulePatternList;
    }

    public boolean isWechatRule(String text) {
        if (this.scanRuleListResult == null || this.scanRuleListResult.wechatJumpRules == null || this.scanRuleListResult.wechatJumpRules.size() == 0) {
            return false;
        }
        if (this.mWechatRuleList == null || this.mWechatRuleList.isEmpty() || this.mWechatRuleList.size() != this.scanRuleListResult.wechatJumpRules.size()) {
            this.mWechatRuleList = new ArrayList();
            for (String rule : this.scanRuleListResult.wechatJumpRules) {
                this.mWechatRuleList.add(Pattern.compile(rule));
            }
        }
        for (Pattern pattern : this.mWechatRuleList) {
            if (pattern.matcher(text).matches()) {
                return true;
            }
        }
        return false;
    }

    public String getQrScanTip() {
        String lang = DeviceUtil.getLanguage();
        if ("zh".equalsIgnoreCase(lang) && !DeviceUtil.isSimpleChinese()) {
            lang = "zh_tw";
        }
        if (this.scanRuleListResult == null || this.scanRuleListResult.scanTipMap == null || TextUtils.isEmpty((CharSequence) this.scanRuleListResult.scanTipMap.get(lang))) {
            return null;
        }
        return (String) this.scanRuleListResult.scanTipMap.get(lang);
    }

    public boolean isAllCanPayRule(String text) {
        if (this.scanRuleListResult == null || this.scanRuleListResult.allCanPayRules == null || this.scanRuleListResult.allCanPayRules.size() == 0) {
            return false;
        }
        if (this.mAllCanPayList == null || this.mAllCanPayList.isEmpty() || this.mAllCanPayList.size() != this.scanRuleListResult.allCanPayRules.size()) {
            this.mAllCanPayList = new ArrayList();
            for (String rule : this.scanRuleListResult.allCanPayRules) {
                this.mAllCanPayList.add(Pattern.compile(rule));
            }
        }
        for (Pattern pattern : this.mAllCanPayList) {
            if (pattern.matcher(text).matches()) {
                return true;
            }
        }
        return false;
    }

    public boolean isMipayRule(String text) {
        if (this.scanRuleListResult == null || this.scanRuleListResult.scanMipayRules == null || this.scanRuleListResult.scanMipayRules.size() == 0) {
            return false;
        }
        if (this.mMipayList == null || this.mMipayList.isEmpty() || this.mMipayList.size() != this.scanRuleListResult.scanMipayRules.size()) {
            this.mMipayList = new ArrayList();
            for (String rule : this.scanRuleListResult.scanMipayRules) {
                this.mMipayList.add(Pattern.compile(rule));
            }
        }
        for (Pattern pattern : this.mMipayList) {
            if (pattern.matcher(text).matches()) {
                return true;
            }
        }
        return false;
    }

    public boolean isMiBiPayRule(String text) {
        if (this.scanRuleListResult == null || this.scanRuleListResult.scanMiBiPayRules == null || this.scanRuleListResult.scanMiBiPayRules.size() == 0) {
            return false;
        }
        if (this.mMiBiPayList == null || this.mMiBiPayList.isEmpty() || this.mMiBiPayList.size() != this.scanRuleListResult.scanMiBiPayRules.size()) {
            this.mMiBiPayList = new ArrayList();
            for (String rule : this.scanRuleListResult.scanMiBiPayRules) {
                this.mMiBiPayList.add(Pattern.compile(rule));
            }
        }
        for (Pattern pattern : this.mMiBiPayList) {
            if (pattern.matcher(text).matches()) {
                return true;
            }
        }
        return false;
    }

    private void saveDataToLocal(Object data, String key) {
        try {
            Editor editor = ScannerApp.getAndroidContext().getSharedPreferences(CACHE_NAME, 0).edit();
            editor.putString(key, new Gson().toJson(data));
            editor.apply();
        } catch (Exception e) {
            Log.e(new Tag("config"), "saveDataToLocal", e);
        }
    }

    private <T> T getDataFromCache(String key, Class<T> tClass) {
        try {
            return new Gson().fromJson(ScannerApp.getAndroidContext().getSharedPreferences(CACHE_NAME, 0).getString(key, ""), (Class) tClass);
        } catch (Exception e) {
            Log.e(new Tag("config"), "saveDataToLocal", e);
            return null;
        }
    }
}
