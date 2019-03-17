package mtopsdk.mtop.common;

import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;
import mtopsdk.mtop.common.MtopCallback.MtopFinishListener;
import mtopsdk.mtop.common.MtopCallback.MtopHeaderListener;
import mtopsdk.mtop.common.MtopCallback.MtopProgressListener;

public class DefaultMtopCallback implements MtopFinishListener, MtopHeaderListener, MtopProgressListener {
    private static final String TAG = "mtopsdk.DefaultMtopCallback";

    public void onFinished(MtopFinishEvent mtopFinishEvent, Object obj) {
        if (mtopFinishEvent != null && mtopFinishEvent.getMtopResponse() != null && TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
            TBSdkLog.d(TAG, "[onFinished]" + mtopFinishEvent.getMtopResponse().toString());
        }
    }

    public void onDataReceived(MtopProgressEvent mtopProgressEvent, Object obj) {
        if (mtopProgressEvent != null && TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
            TBSdkLog.d(TAG, "[onDataReceived]" + mtopProgressEvent.toString());
        }
    }

    public void onHeader(MtopHeaderEvent mtopHeaderEvent, Object obj) {
        if (mtopHeaderEvent != null && TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
            TBSdkLog.d(TAG, "[onHeader]" + mtopHeaderEvent.toString());
        }
    }
}
