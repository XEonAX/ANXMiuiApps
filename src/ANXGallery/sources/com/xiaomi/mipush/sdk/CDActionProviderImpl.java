package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.push.mpcd.CDActionProvider;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.PushMetaInfo;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;

public class CDActionProviderImpl implements CDActionProvider {
    private Context mContext;

    public CDActionProviderImpl(Context context) {
        this.mContext = context;
    }

    public String getRegSecret() {
        return AppInfoHolder.getInstance(this.mContext).getRegSecret();
    }

    public void uploadNotification(XmPushActionNotification notification, ActionType actionType, PushMetaInfo metaInfo) {
        PushServiceClient.getInstance(this.mContext).sendMessage(notification, actionType, metaInfo);
    }
}
