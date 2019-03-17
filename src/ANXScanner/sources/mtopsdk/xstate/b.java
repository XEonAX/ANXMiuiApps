package mtopsdk.xstate;

import android.content.Context;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;

/* compiled from: XStateDelegate */
public final class b {
    private static ConcurrentHashMap<String, String> a = null;
    private static Context b;
    private static volatile boolean c = false;
    private static Lock d = new ReentrantLock();

    public static void a(Context context) {
        if (!c) {
            d.lock();
            try {
                if (!c) {
                    if (context == null) {
                        TBSdkLog.e("mtopsdk.XStateDelegate", "[checkInit]parameter context for init(Context context) is null.");
                        return;
                    }
                    if (a == null) {
                        a = new ConcurrentHashMap();
                    }
                    b = context;
                    c = true;
                    if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
                        TBSdkLog.i("mtopsdk.XStateDelegate", "[checkInit] init XState OK,isInit=" + c);
                    }
                }
                d.unlock();
            } catch (Throwable th) {
                TBSdkLog.e("mtopsdk.XStateDelegate", "[checkInit] checkInit error --" + th.toString());
            } finally {
                d.unlock();
            }
        }
    }

    public static void a() {
        if (c) {
            d.lock();
            try {
                if (c) {
                    if (a != null) {
                        a.clear();
                        a = null;
                    }
                    if (b == null) {
                        TBSdkLog.e("mtopsdk.XStateDelegate", "[unInit]static field context in Class XState is null.");
                        return;
                    }
                    c = false;
                    if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
                        TBSdkLog.i("mtopsdk.XStateDelegate", "[unInit] uninit XState OK,isInit=" + c);
                    }
                }
                d.unlock();
            } catch (Exception e) {
                TBSdkLog.e("mtopsdk.XStateDelegate", "[unInit] unInit error --" + e.toString());
            } finally {
                d.unlock();
            }
        }
    }

    public static String a(String str) {
        if (a == null || str == null) {
            return null;
        }
        return (String) a.get(str);
    }

    public static void a(String str, String str2) {
        if (a != null && str != null && str2 != null) {
            a.put(str, str2);
            if (TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
                TBSdkLog.d("mtopsdk.XStateDelegate", "[setValue]set  XstateID succeed," + str + "=" + str2);
            }
        } else if (TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
            TBSdkLog.d("mtopsdk.XStateDelegate", "[setValue]set  XstateID failed,key=" + str + ",value=" + str2);
        }
    }

    public static String b(String str) {
        if (a == null || str == null) {
            return null;
        }
        if (TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
            TBSdkLog.d("mtopsdk.XStateDelegate", "remove Xstate key=" + str);
        }
        return (String) a.remove(str);
    }
}
