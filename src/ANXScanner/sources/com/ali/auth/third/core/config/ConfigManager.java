package com.ali.auth.third.core.config;

import java.util.Map;

public class ConfigManager {
    public static int APP_KEY_INDEX = 0;
    public static boolean DEBUG = false;
    public static String LOGIN_HOST = "http://login.m.taobao.com/minisdk/login.htm";
    public static String LOGIN_URLS = "((https|http)://)login.m.taobao.com/login.htm(.*),((https|http)://)login.tmall.com(.*),((https|http)://)login.taobao.com/member/login.jhtml(.*)";
    public static String LOGOUT_URLS;
    public static String POSTFIX_OF_SECURITY_JPG = "";
    public static String POSTFIX_OF_SECURITY_JPG_USER_SET;
    public static final Version SDK_VERSION = new Version(1, 5, 1);
    private static final ConfigManager b = new ConfigManager();
    public static String bindUrl = "http://login.m.taobao.com/cooperation/bindLogin.htm?code=%s&IBB=%s&appkey=%s";
    public static String qrCodeLoginUrl = "http://login.m.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin";
    public static String qrCodeLoginUrl_daily = "http://login.waptest.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin";
    public static String qrLoginConfirmUrl = "https://login.m.taobao.com/qrcodeLogin.htm?shortURL=%s&from=bcqrlogin";
    public static String unbindUrl = "https://accountlink.taobao.com/sdkUnbind.htm";
    Map<String, Object> a;
    private Environment c;
    private int d = 3;
    private boolean e = true;
    private String f;
    private String g;
    private Class<?> h;
    private int i = 0;

    private ConfigManager() {
    }

    public static int getAppKeyIndex() {
        return APP_KEY_INDEX;
    }

    public static ConfigManager getInstance() {
        return b;
    }

    public static void setAppKeyIndex(int i) {
        APP_KEY_INDEX = i;
    }

    public Environment getEnvironment() {
        return this.c;
    }

    public Class<?> getFullyCustomizedLoginFragment() {
        return this.h;
    }

    public int getMaxHistoryAccount() {
        return this.d;
    }

    public String getOfflineDeviceID() {
        return this.f;
    }

    public int getOrientation() {
        return this.i;
    }

    public String getQrCodeLoginUrl() {
        return (getEnvironment() == null || !getEnvironment().equals(Environment.TEST)) ? qrCodeLoginUrl : qrCodeLoginUrl_daily;
    }

    public Map<String, Object> getScanParams() {
        return this.a;
    }

    public String getSsoToken() {
        return this.g;
    }

    public void init(int i) {
        this.c = Environment.values()[i];
        LOGIN_HOST = new String[]{"http://login.waptest.tbsandbox.com/minisdk/login.htm", "http://login.waptest.taobao.com/minisdk/login.htm", "http://login.wapa.taobao.com/minisdk/login.htm", "http://login.m.taobao.com/minisdk/login.htm"}[i];
        LOGIN_URLS = new String[]{"((https|http)://)login.waptest.tbsandbox.com/login.htm(.*)", "((https|http)://)login.waptest.taobao.com/login.htm(.*)", "((https|http)://)login.wapa.taobao.com/login.htm(.*)", "((https|http)://)login.m.taobao.com/login.htm(.*),((https|http)://)login.tmall.com(.*),((https|http)://)login.taobao.com/member/login.jhtml(.*)"}[i];
        LOGOUT_URLS = new String[]{"((https|http)://)login.waptest.tbsandbox.com/logout.htm(.*)", "((https|http)://)login.waptest.taobao.com/logout.htm(.*)", "((https|http)://)login.wapa.taobao.com/logout.htm(.*)", "((https|http)://)login.m.taobao.com/logout.htm(.*)"}[i];
        bindUrl = new String[]{"http://login.waptest.tbsandbox.com/cooperation/bindLogin.htm?code=%s&IBB=%s&appkey=%s", "http://login.waptest.taobao.com/cooperation/bindLogin.htm?code=%s&IBB=%s&appkey=%s", "http://login.wapa.taobao.com/cooperation/bindLogin.htm?code=%s&IBB=%s&appkey=%s", "http://login.m.taobao.com/cooperation/bindLogin.htm?code=%s&IBB=%s&appkey=%s"}[i];
        unbindUrl = new String[]{"https://accountlink.daily.taobao.net/sdkUnbind.htm", "https://accountlink.daily.taobao.net/sdkUnbind.htm", "https://accountlink.taobao.com/sdkUnbind.htm", "https://accountlink.taobao.com/sdkUnbind.htm"}[i];
        qrCodeLoginUrl = new String[]{"http://login.waptest.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin", "http://login.waptest.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin", "http://login.wapa.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin", "http://login.m.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin"}[i];
        if (POSTFIX_OF_SECURITY_JPG_USER_SET == null) {
            POSTFIX_OF_SECURITY_JPG = new String[]{"", "", "", ""}[i];
            return;
        }
        POSTFIX_OF_SECURITY_JPG = POSTFIX_OF_SECURITY_JPG_USER_SET;
    }

    public boolean isSaveHistoryWithSalt() {
        return this.e;
    }

    public void setFullyCustomizedLoginFragment(Class<?> cls) {
        this.h = cls;
    }

    public void setMaxHistoryAccount(int i) {
        this.d = i;
    }

    public void setOfflineDeviceID(String str) {
        this.f = str;
    }

    public void setOrientation(int i) {
        this.i = i;
    }

    public void setSaveHistoryWithSalt(boolean z) {
        this.e = z;
    }

    public void setScanParams(Map<String, Object> map) {
        this.a = map;
    }

    public void setSsoToken(String str) {
        this.g = str;
    }
}
