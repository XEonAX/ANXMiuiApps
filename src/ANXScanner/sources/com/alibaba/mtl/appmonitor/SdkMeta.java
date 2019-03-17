package com.alibaba.mtl.appmonitor;

import android.content.Context;
import com.alibaba.mtl.log.a;
import com.alibaba.mtl.log.d.i;
import java.util.HashMap;
import java.util.Map;

public class SdkMeta {
    public static final String SDK_VERSION = "2.6.4.2_for_bc";
    private static final Map<String, String> d = new HashMap();

    public static Map<String, String> getSDKMetaData() {
        if (a.getContext() != null) {
        }
        if (!d.containsKey("sdk-version")) {
            d.put("sdk-version", SDK_VERSION);
        }
        return d;
    }

    static {
        d.put("sdk-version", SDK_VERSION);
    }

    public static void setExtra(Map<String, String> extra) {
        if (extra != null) {
            d.putAll(extra);
        }
    }

    public static String getString(Context context, String paramString) {
        if (context == null) {
            return null;
        }
        int identifier;
        try {
            identifier = context.getResources().getIdentifier(paramString, "string", context.getPackageName());
        } catch (Throwable th) {
            i.a("SdkMeta", "getString Id error", th);
            identifier = 0;
        }
        if (identifier != 0) {
            return context.getString(identifier);
        }
        return null;
    }
}
