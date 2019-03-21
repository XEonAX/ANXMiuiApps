package com.xiaomi.push.mpcd;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.xiaomi.push.mpcd.job.CollectionJob;
import com.xiaomi.xmpush.thrift.ClientCollectionType;
import com.xiaomi.xmpush.thrift.DataCollectionItem;

public class ActivityLifecycleCallbacksImpl implements ActivityLifecycleCallbacks {
    private String mActiveStartTS = "";
    private Context mContext;
    private String mCurrentActiveActivity;

    public ActivityLifecycleCallbacksImpl(Context context, String startTS) {
        this.mContext = context;
        this.mActiveStartTS = startTS;
    }

    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
    }

    public void onActivityStarted(Activity activity) {
    }

    public void onActivityResumed(Activity activity) {
        if (TextUtils.isEmpty(this.mCurrentActiveActivity)) {
            this.mCurrentActiveActivity = activity.getLocalClassName();
        }
        this.mActiveStartTS = String.valueOf(System.currentTimeMillis() / 1000);
    }

    public void onActivityPaused(Activity activity) {
        String activityName = activity.getLocalClassName();
        if (!TextUtils.isEmpty(this.mActiveStartTS) && !TextUtils.isEmpty(activityName)) {
            this.mCurrentActiveActivity = "";
            if (TextUtils.isEmpty(this.mCurrentActiveActivity) || TextUtils.equals(this.mCurrentActiveActivity, activityName)) {
                writeData(this.mContext.getPackageName() + "|" + activityName + ":" + this.mActiveStartTS + "," + String.valueOf(System.currentTimeMillis() / 1000));
                this.mActiveStartTS = "";
                this.mCurrentActiveActivity = "";
                return;
            }
            this.mActiveStartTS = "";
        }
    }

    public void onActivityStopped(Activity activity) {
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
    }

    public void onActivityDestroyed(Activity activity) {
    }

    private void writeData(String content) {
        DataCollectionItem collectionItem = new DataCollectionItem();
        collectionItem.setContent(content);
        collectionItem.setCollectedAt(System.currentTimeMillis());
        collectionItem.setCollectionType(ClientCollectionType.ActivityActiveTimeStamp);
        CollectionJob.writeItemToFile(this.mContext, collectionItem);
    }
}
