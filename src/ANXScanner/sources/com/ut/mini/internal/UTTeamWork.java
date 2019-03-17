package com.ut.mini.internal;

import android.text.TextUtils;
import com.ali.auth.third.login.LoginConstants;
import com.alibaba.mtl.appmonitor.AppMonitor;
import com.alibaba.mtl.log.a;
import com.alibaba.mtl.log.b;
import com.alibaba.mtl.log.c.c;
import com.ut.device.UTDevice;
import com.ut.mini.base.UTMIVariables;
import java.util.Map;

public class UTTeamWork {
    private static UTTeamWork a = null;

    public static synchronized UTTeamWork getInstance() {
        UTTeamWork uTTeamWork;
        synchronized (UTTeamWork.class) {
            if (a == null) {
                a = new UTTeamWork();
            }
            uTTeamWork = a;
        }
        return uTTeamWork;
    }

    public void initialized() {
    }

    public void turnOnRealTimeDebug(Map<String, String> aMap) {
        AppMonitor.turnOnRealTimeDebug(aMap);
    }

    public void turnOffRealTimeDebug() {
        AppMonitor.turnOffRealTimeDebug();
    }

    public void dispatchLocalHits() {
    }

    public void saveCacheDataToLocal() {
        c.a().store();
    }

    public void setToAliyunOsPlatform() {
        UTMIVariables.getInstance().setToAliyunOSPlatform();
    }

    public String getUtsid() {
        try {
            Object appkey;
            if (a.a() != null) {
                appkey = a.a().getAppkey();
            } else {
                appkey = null;
            }
            Object utdid = UTDevice.getUtdid(b.a().getContext());
            long longValue = Long.valueOf(a.B).longValue();
            if (TextUtils.isEmpty(appkey) || TextUtils.isEmpty(utdid)) {
                return null;
            }
            return utdid + LoginConstants.UNDER_LINE + appkey + LoginConstants.UNDER_LINE + longValue;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void closeAuto1010Track() {
        com.alibaba.mtl.log.c.a().o();
    }

    public void disableNetworkStatusChecker() {
    }

    public void enableUpload(boolean enable) {
        a.s = enable;
    }
}
