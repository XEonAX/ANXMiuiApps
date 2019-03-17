package mtopsdk.mtop.a;

import java.util.concurrent.ConcurrentHashMap;
import mtopsdk.common.util.StringUtils;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;
import mtopsdk.mtop.global.SwitchConfig;

/* compiled from: ApiLockHelper */
public final class a {
    private static ConcurrentHashMap<String, b> a = new ConcurrentHashMap();

    public static boolean a(String str, long j) {
        boolean z = false;
        if (!StringUtils.isBlank(str)) {
            b bVar = (b) a.get(str);
            if (bVar != null) {
                if (Math.abs(j - bVar.a) < bVar.b) {
                    z = true;
                } else {
                    a.remove(str);
                    if (TBSdkLog.isLogEnable(LogEnable.WarnEnable)) {
                        TBSdkLog.w("mtopsdk.ApiLockHelper", "[unLock]apiKey=" + str);
                    }
                }
                if (TBSdkLog.isLogEnable(LogEnable.WarnEnable)) {
                    TBSdkLog.w("mtopsdk.ApiLockHelper", "[iSApiLocked] isLocked=" + z + ", " + a(j, bVar));
                }
            }
        }
        return z;
    }

    public static void b(String str, long j) {
        if (!StringUtils.isBlank(str)) {
            b bVar = (b) a.get(str);
            if (bVar == null) {
                bVar = new b(str, j, a(str));
            } else {
                bVar.a = j;
                bVar.b = a(str);
            }
            a.put(str, bVar);
            if (TBSdkLog.isLogEnable(LogEnable.WarnEnable)) {
                TBSdkLog.w("mtopsdk.ApiLockHelper", "[lock]" + a(j, bVar));
            }
        }
    }

    private static long a(String str) {
        long individualApiLockInterval = SwitchConfig.getInstance().getIndividualApiLockInterval(str);
        if (individualApiLockInterval > 0) {
            return individualApiLockInterval;
        }
        individualApiLockInterval = SwitchConfig.getInstance().getGlobalApiLockInterval();
        return individualApiLockInterval <= 0 ? 10 : individualApiLockInterval;
    }

    private static String a(long j, b bVar) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(", currentTime=").append(j);
        stringBuilder.append(", lockentity=" + bVar.toString());
        return stringBuilder.toString();
    }
}
