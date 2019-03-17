package mtopsdk.mtop.common;

import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;
import mtopsdk.mtop.common.MtopCallback.MtopCacheListener;

public class DefaultMtopListener extends DefaultMtopCallback implements MtopCacheListener {
    private static final String TAG = "mtopsdk.DefaultMtopListener";

    public void onCached(MtopCacheEvent mtopCacheEvent, Object obj) {
        if (mtopCacheEvent != null && mtopCacheEvent.getMtopResponse() != null && TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
            TBSdkLog.d(TAG, "[onCached]" + mtopCacheEvent.getMtopResponse().toString());
        }
    }
}
