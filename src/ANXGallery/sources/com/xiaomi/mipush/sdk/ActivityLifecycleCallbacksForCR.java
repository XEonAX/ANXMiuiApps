package com.xiaomi.mipush.sdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.xiaomi.push.service.clientReport.PushClientReportHelper;
import com.xiaomi.push.service.clientReport.PushClientReportManager;
import java.util.HashSet;
import java.util.Set;

@TargetApi(14)
public class ActivityLifecycleCallbacksForCR implements ActivityLifecycleCallbacks {
    private Set<String> mMsgIdSet = new HashSet();

    public static void forceAttachApplication(Context context) {
        if (context instanceof Application) {
            attachApplication((Application) context);
        }
    }

    private static void attachApplication(Application context) {
        context.registerActivityLifecycleCallbacks(new ActivityLifecycleCallbacksForCR());
    }

    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
    }

    public void onActivityStarted(Activity activity) {
    }

    public void onActivityResumed(Activity activity) {
        Intent intent = activity.getIntent();
        if (intent != null) {
            String msgId = intent.getStringExtra("messageId");
            int eventType = intent.getIntExtra("eventMessageType", -1);
            if (!TextUtils.isEmpty(msgId) && eventType > 0 && !this.mMsgIdSet.contains(msgId)) {
                this.mMsgIdSet.add(msgId);
                if (eventType == 3000) {
                    PushClientReportManager.getInstance(activity.getApplicationContext()).reportEvent(activity.getPackageName(), PushClientReportHelper.getInterfaceIdByType(eventType), msgId, 3008, "App calls by business message is visiable");
                } else if (eventType == 1000) {
                    PushClientReportManager.getInstance(activity.getApplicationContext()).reportEvent(activity.getPackageName(), PushClientReportHelper.getInterfaceIdByType(eventType), msgId, 1008, "app calls by notification message is visiable");
                }
            }
        }
    }

    public void onActivityPaused(Activity activity) {
    }

    public void onActivityStopped(Activity activity) {
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
    }

    public void onActivityDestroyed(Activity activity) {
    }
}
