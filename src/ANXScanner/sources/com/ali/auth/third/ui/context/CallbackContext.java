package com.ali.auth.third.ui.context;

import android.app.Activity;
import android.content.Intent;
import com.ali.auth.third.core.callback.LoginCallback;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.ui.support.ActivityResultHandler;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public class CallbackContext {
    private static final String a = CallbackContext.class.getSimpleName();
    public static volatile WeakReference<Activity> activity;
    public static volatile Object loginCallback;
    public static LoginCallback mGlobalLoginCallback;

    public static boolean onActivityResult(int i, int i2, Intent intent) {
        return onActivityResult(activity != null ? (Activity) activity.get() : null, i, i2, intent);
    }

    public static boolean onActivityResult(Activity activity, int i, int i2, Intent intent) {
        SDKLogger.d(a, "onActivityResult requestCode=" + i + " resultCode = " + i2 + " authCode = " + (intent == null ? "" : intent.getStringExtra("result")));
        Map hashMap = new HashMap();
        hashMap.put(ActivityResultHandler.REQUEST_CODE_KEY, String.valueOf(i));
        ActivityResultHandler activityResultHandler = (ActivityResultHandler) KernelContext.getService(ActivityResultHandler.class, hashMap);
        if (activityResultHandler == null) {
            SDKLogger.i(a, "No ActivityResultHandler handler to support the request code " + i);
            return false;
        } else if (activity == null) {
            SDKLogger.e(a, "No active activity is set, ignore invoke " + activityResultHandler);
            return false;
        } else {
            activityResultHandler.onActivityResult(1, i, i2, intent, activity, null, null);
            return true;
        }
    }

    public static void setActivity(Activity activity) {
        activity = new WeakReference(activity);
    }
}
