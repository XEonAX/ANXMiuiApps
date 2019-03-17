package com.ut.device;

import android.content.Context;
import com.ta.utdid2.a.a;

public class UTDevice {
    public static String getUtdid(Context context) {
        return com.ta.utdid2.device.UTDevice.getUtdid(context);
    }

    public static String getAid(String appName, String token, Context context) {
        return a.a(context).a(appName, token, getUtdid(context));
    }

    public static void getAidAsync(String appName, String token, Context context, a callback) {
        a.a(context).a(appName, token, getUtdid(context), callback);
    }
}
