package mtopsdk.xstate;

import android.content.Context;
import com.ali.auth.third.core.model.Constants;
import com.ali.auth.third.login.LoginConstants;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.ut.device.UTDevice;
import java.util.HashMap;
import mtopsdk.common.util.AsyncServiceBinder;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;
import mtopsdk.xstate.a.a;
import mtopsdk.xstate.util.PhoneInfo;

public class XState {
    private static final String TAG = "mtopsdk.XState";
    private static AsyncServiceBinder<a> asyncServiceBinder;
    private static final HashMap<String, String> localTable = new HashMap();

    public static void init(Context context) {
        if (context == null) {
            TBSdkLog.e(TAG, "[init]init() error,context is null");
            return;
        }
        initPhoneInfo(context);
        if (asyncServiceBinder == null) {
            AsyncServiceBinder aVar = new a(a.class, c.class);
            asyncServiceBinder = aVar;
            aVar.asyncBind(context);
            return;
        }
        syncToRemote();
    }

    private static void initPhoneInfo(Context context) {
        try {
            synchronized (localTable) {
                localTable.put(Constants.UA, PhoneInfo.getPhoneBaseInfo(context));
                localTable.put("pv", "1.0");
                localTable.put("t_offset", "0");
                localTable.put("utdid", UTDevice.getUtdid(context));
            }
        } catch (Throwable th) {
            TBSdkLog.e(TAG, "[initPhoneInfo]initPhoneInfo error", th);
        }
    }

    public static void unInit() {
        if (!(asyncServiceBinder == null || asyncServiceBinder.getService() == null)) {
            try {
                ((a) asyncServiceBinder.getService()).b();
            } catch (Throwable e) {
                TBSdkLog.e(TAG, "[unInit] unInit error", e);
            }
        }
        synchronized (localTable) {
            localTable.clear();
        }
    }

    public static String getAppkey() {
        return getValue(LoginConstants.KEY_APPKEY);
    }

    public static String getDeviceId() {
        return getValue("deviceId");
    }

    public static String getSid() {
        return getValue(LoginConstants.SID);
    }

    @Deprecated
    public static String getEcode() {
        return null;
    }

    public static String getUserId() {
        return getValue("uid");
    }

    public static String getTtid() {
        return getValue(AlibcConstants.TTID);
    }

    public static String getTimeOffset() {
        return getValue("t_offset");
    }

    public static String getLat() {
        return getValue("lat");
    }

    public static String getLng() {
        return getValue("lng");
    }

    public static String getNetworkQuality() {
        return getValue("nq");
    }

    public static String getNetworkType() {
        return getValue("netType");
    }

    public static String getProtocolVersion() {
        return getValue("pv");
    }

    public static boolean isAppBackground() {
        String value = getValue("AppBackground");
        boolean z = false;
        if (value == null) {
            return z;
        }
        try {
            return Boolean.valueOf(value).booleanValue();
        } catch (Exception e) {
            TBSdkLog.e(TAG, "[isAppBackground] parse KEY_APP_BACKGROUND error");
            return z;
        }
    }

    public static void setAppBackground(boolean z) {
        setValue("AppBackground", String.valueOf(z));
    }

    public static String getValue(String str) {
        if (asyncServiceBinder == null || asyncServiceBinder.getService() == null) {
            String str2;
            if (TBSdkLog.isLogEnable(LogEnable.WarnEnable)) {
                TBSdkLog.w(TAG, "[getValue]Attention :User XState Local Mode : key=" + str);
            }
            synchronized (localTable) {
                str2 = (String) localTable.get(str);
            }
            return str2;
        }
        try {
            return ((a) asyncServiceBinder.getService()).b(str);
        } catch (Exception e) {
            if (TBSdkLog.isLogEnable(LogEnable.WarnEnable)) {
                TBSdkLog.e(TAG, "[getValue] getValue by key=" + str + " error ---" + e.toString());
                TBSdkLog.w(TAG, "[getValue]Attention :User XState Local Mode : key=" + str);
            }
            synchronized (localTable) {
                return (String) localTable.get(str);
            }
        }
    }

    public static String removeKey(String str) {
        if (asyncServiceBinder == null || asyncServiceBinder.getService() == null) {
            if (TBSdkLog.isLogEnable(LogEnable.WarnEnable)) {
                TBSdkLog.w(TAG, "[removeKey]Attention :User XState Local Mode : key=" + str);
            }
            synchronized (localTable) {
                localTable.remove(str);
            }
        } else {
            try {
                return ((a) asyncServiceBinder.getService()).a(str);
            } catch (Exception e) {
                if (TBSdkLog.isLogEnable(LogEnable.WarnEnable)) {
                    TBSdkLog.e(TAG, "[removeKey] removeKey by key=" + str + " error ---" + e.toString());
                    TBSdkLog.w(TAG, "[removeKey]Attention :User XState Local Mode : key=" + str);
                }
                synchronized (localTable) {
                    localTable.remove(str);
                }
            }
        }
        return null;
    }

    public static void setValue(String str, String str2) {
        if (asyncServiceBinder == null || asyncServiceBinder.getService() == null) {
            if (TBSdkLog.isLogEnable(LogEnable.WarnEnable)) {
                TBSdkLog.i(TAG, "[setValue]Attention :User XState Local Mode: key:" + str + " value:" + str2);
            }
            synchronized (localTable) {
                localTable.put(str, str2);
            }
            return;
        }
        try {
            ((a) asyncServiceBinder.getService()).a(str, str2);
        } catch (Exception e) {
            if (TBSdkLog.isLogEnable(LogEnable.WarnEnable)) {
                TBSdkLog.e(TAG, "[setValue] setValue failed ,key=" + str + ",value=" + str2 + "; ---" + e.toString());
                TBSdkLog.w(TAG, "[setValue]Attention :User XState Local Mode: key:" + str + " value:" + str2);
            }
            synchronized (localTable) {
                localTable.put(str, str2);
            }
        }
    }

    protected static void syncToRemote() {
        if (asyncServiceBinder != null && asyncServiceBinder.getService() != null) {
            try {
                ((a) asyncServiceBinder.getService()).a();
                synchronized (localTable) {
                    for (String str : localTable.keySet()) {
                        setValue(str, (String) localTable.get(str));
                    }
                    localTable.clear();
                }
            } catch (Throwable th) {
                TBSdkLog.e(TAG, "[syncToRemote]service.init() error", th);
            }
        }
    }
}
