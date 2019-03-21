package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.reflect.JavaCalls;

public class PushManagerFactory {
    public static AbstractPushManager getManager(Context context, AssemblePush type) {
        return getManagerByType(context, type);
    }

    private static AbstractPushManager getManagerByType(Context context, AssemblePush type) {
        ManageClassInfo classInfo = AssemblePushInfoHelper.getManageClassInfoByType(type);
        if (classInfo == null || TextUtils.isEmpty(classInfo.className) || TextUtils.isEmpty(classInfo.methodName)) {
            return null;
        }
        return (AbstractPushManager) JavaCalls.callStaticMethod(classInfo.className, classInfo.methodName, context);
    }
}
