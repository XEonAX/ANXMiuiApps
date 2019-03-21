package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.os.SystemClock;
import com.xiaomi.channel.commonutils.logger.MyLog;

public class COSPushHelper {
    private static long mLastTime = 0;
    private static volatile boolean mNeedRegister = false;

    public static boolean getNeedRegister() {
        return mNeedRegister;
    }

    public static void registerCOSAssemblePush(Context context) {
        AbstractPushManager manager = AssemblePushCollectionsManager.getInstance(context).getManager(AssemblePush.ASSEMBLE_PUSH_COS);
        if (manager != null) {
            MyLog.w("ASSEMBLE_PUSH :  register cos when network change!");
            manager.register();
        }
    }

    public static void doInNetworkChange(Context context) {
        long now = SystemClock.elapsedRealtime();
        if (!getNeedRegister()) {
            return;
        }
        if (mLastTime <= 0 || mLastTime + 300000 <= now) {
            mLastTime = now;
            registerCOSAssemblePush(context);
        }
    }
}
