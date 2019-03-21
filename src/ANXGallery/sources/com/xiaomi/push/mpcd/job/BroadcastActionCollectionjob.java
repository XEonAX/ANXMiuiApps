package com.xiaomi.push.mpcd.job;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.push.mpcd.Constants;
import com.xiaomi.xmpush.thrift.ClientCollectionType;

public class BroadcastActionCollectionjob extends CollectionJob {
    public static String mChangedActions = "";
    public static String mRestartedActions = "";

    public BroadcastActionCollectionjob(Context context, int period) {
        super(context, period);
    }

    public String collectInfo() {
        String info = "";
        if (!TextUtils.isEmpty(mRestartedActions)) {
            info = info + shrinkActionInfo(Constants.ACTION_PACKAGE_RESTARTED, mRestartedActions);
            mRestartedActions = "";
        }
        if (TextUtils.isEmpty(mChangedActions)) {
            return info;
        }
        info = info + shrinkActionInfo(Constants.ACTION_PACKAGE_CHANGED, mChangedActions);
        mChangedActions = "";
        return info;
    }

    private String shrinkActionInfo(String actionInfoType, String actionStr) {
        if (TextUtils.isEmpty(actionInfoType) || TextUtils.isEmpty(actionStr)) {
            return "";
        }
        String[] actions = actionStr.split(",");
        if (actions.length <= 10) {
            return actionStr;
        }
        for (int i = actions.length - 1; i >= actions.length - 10; i--) {
            actionInfoType = actionInfoType + actions[i];
        }
        return actionInfoType;
    }

    public ClientCollectionType getCollectionType() {
        return ClientCollectionType.BroadcastAction;
    }

    public int getJobId() {
        return 12;
    }
}
