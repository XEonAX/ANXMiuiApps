package com.alimama.tunion.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import com.alimama.tunion.trade.TUnionTradeSDK;
import com.alimama.tunion.trade.base.ITUnionCommon;
import com.alimama.tunion.trade.base.ITUnionCookie;
import com.taobao.applink.util.TBAppLinkUtil;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public final class TUnionPhoneInfoUtils {
    public static final String TUNION_KEY_COOKIE_CNA = "cna";
    private static TUnionPhoneInfoUtils j;
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private long h = System.currentTimeMillis();
    private final Map<String, String> i = new HashMap<String, String>() {
        {
            put(TBAppLinkUtil.TAOPACKAGENAME, "tb");
            put(TBAppLinkUtil.TMALLPACKAGENAME, "tm");
            put("com.taobao.ju.android", "ju");
        }
    };
    public String utdid;

    private static class SystemField {
        public static String MOBILE_NETWORK = "cell";
        public static String SEPARATOR = "x";
        public static String UNKNOWN = "unknown";
        public static String WIFI = "wifi";

        private SystemField() {
        }
    }

    public static TUnionPhoneInfoUtils getInstance() {
        if (j == null) {
            synchronized (TUnionPhoneInfoUtils.class) {
                if (j == null) {
                    j = new TUnionPhoneInfoUtils();
                }
            }
        }
        return j;
    }

    public String getMcid() {
        return String.format("tunion4android@%s", new Object[]{getDeviceID()});
    }

    public static String getSDKVersion() {
        return VERSION.RELEASE;
    }

    public static String getBuildModel() {
        return Build.MODEL;
    }

    public String getPackageName() {
        return this.a;
    }

    public String getAppVersion() {
        return this.d;
    }

    public void initCid() {
        this.h = System.currentTimeMillis();
    }

    public String getCid() {
        if (this.h <= 0) {
            this.h = System.currentTimeMillis();
        }
        return String.format("%s_%s", new Object[]{getMcid(), Long.valueOf(this.h)});
    }

    public String getCnaCookie() {
        Object cookie;
        ITUnionCookie tUnionCookie = TUnionTradeSDK.getInstance().getTUnionCookie();
        if (tUnionCookie != null) {
            cookie = tUnionCookie.getCookie(TUnionTradeSDKConstants.TUNION_KEY_COOKIE_TAOBAO_DOMAIN);
        } else {
            cookie = null;
        }
        if (TextUtils.isEmpty(cookie)) {
            return null;
        }
        for (Object obj : cookie.split(";")) {
            if (!TextUtils.isEmpty(obj)) {
                String[] split = obj.split("=");
                if (split.length > 1 && TextUtils.equals(split[0].toLowerCase().trim(), TUNION_KEY_COOKIE_CNA)) {
                    this.c = split[1];
                    break;
                }
            }
        }
        return this.c;
    }

    public String getDeviceID() {
        String str = this.utdid;
        Context context = TUnionTradeSDK.getContext();
        if (context == null && !TextUtils.isEmpty(str)) {
            return str;
        }
        if (!TextUtils.isEmpty(str) && str.length() >= 6) {
            return str;
        }
        if (!TextUtils.isEmpty(this.f) && !SystemField.UNKNOWN.equals(this.f) && this.f.length() >= 6) {
            return this.f;
        }
        if (TextUtils.isEmpty(this.g) || SystemField.UNKNOWN.equals(this.g) || this.g.length() < 6) {
            return Secure.getString(context.getContentResolver(), "android_id");
        }
        return this.g;
    }

    private TUnionPhoneInfoUtils() {
        Context context = TUnionTradeSDK.getContext();
        if (context != null) {
            this.a = a(context.getPackageName());
            ITUnionCommon tUnionCommon = TUnionTradeSDK.getInstance().getTUnionCommon();
            if (tUnionCommon != null) {
                this.utdid = tUnionCommon.getUtdid();
            }
            PackageManager packageManager = context.getPackageManager();
            try {
                this.b = packageManager.getApplicationLabel(packageManager.getApplicationInfo(this.a, 0)).toString();
            } catch (NameNotFoundException e) {
                e.printStackTrace();
            }
            if (TextUtils.isEmpty(this.b)) {
                this.b = this.a;
            }
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                this.d = a(packageInfo.versionName);
                this.e = a(String.valueOf(packageInfo.versionCode));
            } catch (NameNotFoundException e2) {
                e2.printStackTrace();
            }
        }
    }

    private String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return SystemField.UNKNOWN;
        }
        return str.replaceAll(" ", "");
    }

    public String getAliApp() {
        StringBuffer stringBuffer = new StringBuffer("");
        for (Entry entry : this.i.entrySet()) {
            if (b((String) entry.getKey())) {
                stringBuffer.append((String) entry.getValue());
                stringBuffer.append(",");
            }
        }
        String stringBuffer2 = stringBuffer.toString();
        if (TextUtils.isEmpty(stringBuffer2)) {
            return stringBuffer2;
        }
        return stringBuffer2.substring(0, stringBuffer2.length() - 1);
    }

    private boolean b(String str) {
        Context context = TUnionTradeSDK.getContext();
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            if (context.getPackageManager().getApplicationInfo(str, 0) != null) {
                return true;
            }
            return false;
        } catch (NameNotFoundException e) {
            return false;
        }
    }
}
