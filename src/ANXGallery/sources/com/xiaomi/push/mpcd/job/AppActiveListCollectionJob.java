package com.xiaomi.push.mpcd.job;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.xmpush.thrift.ClientCollectionType;

public class AppActiveListCollectionJob extends CollectionJob {
    public AppActiveListCollectionJob(Context context, int period) {
        super(context, period);
    }

    public String collectInfo() {
        StringBuilder builder = new StringBuilder();
        try {
            for (RunningTaskInfo taskInfo : ((ActivityManager) this.context.getSystemService("activity")).getRunningTasks(10)) {
                if (!(taskInfo == null || taskInfo.topActivity == null)) {
                    if (builder.length() > 0) {
                        builder.append(";");
                    }
                    builder.append(taskInfo.topActivity.getPackageName());
                }
            }
        } catch (Throwable th) {
        }
        if (TextUtils.isEmpty(builder)) {
            return null;
        }
        return builder.toString();
    }

    public ClientCollectionType getCollectionType() {
        return ClientCollectionType.AppActiveList;
    }

    public int getJobId() {
        return 5;
    }
}
