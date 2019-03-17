package mtopsdk.mtop.util;

import java.util.Arrays;
import java.util.List;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.mtop.MtopProxy;
import mtopsdk.mtop.common.MtopCallback.MtopFinishListener;
import mtopsdk.mtop.common.MtopCallback.MtopHeaderListener;
import mtopsdk.mtop.common.MtopListener;
import mtopsdk.mtop.common.a;

public class MtopProxyUtils {
    private static final String TAG = "mtopsdk.MtopProxyUtils";
    private static final List<String> apiWhiteList = Arrays.asList(new String[]{"mtop.common.gettimestamp$*"});

    public static a convertCallbackListener(MtopProxy mtopProxy) {
        Throwable th;
        a aVar = null;
        if (mtopProxy == null || mtopProxy.getCallback() == null) {
            return null;
        }
        try {
            a aVar2 = new a(mtopProxy);
            try {
                MtopListener callback = mtopProxy.getCallback();
                if (callback instanceof MtopFinishListener) {
                    aVar2.a = (MtopFinishListener) callback;
                }
                if (callback instanceof MtopHeaderListener) {
                    aVar2.b = (MtopHeaderListener) callback;
                }
                return aVar2;
            } catch (Throwable th2) {
                th = th2;
                aVar = aVar2;
                TBSdkLog.w(TAG, "[convertCallbackListener] convert NetworkListenerAdapter error. apiKey=" + mtopProxy.getMtopRequest().getKey(), th);
                return aVar;
            }
        } catch (Throwable th3) {
            th = th3;
            TBSdkLog.w(TAG, "[convertCallbackListener] convert NetworkListenerAdapter error. apiKey=" + mtopProxy.getMtopRequest().getKey(), th);
            return aVar;
        }
    }

    public static List<String> getApiWhiteList() {
        return apiWhiteList;
    }
}
