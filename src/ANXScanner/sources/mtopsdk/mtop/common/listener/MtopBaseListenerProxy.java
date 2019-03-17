package mtopsdk.mtop.common.listener;

import mtopsdk.common.util.TBSdkLog;
import mtopsdk.mtop.common.DefaultMtopCallback;
import mtopsdk.mtop.common.MtopCallback.MtopFinishListener;
import mtopsdk.mtop.common.MtopCallback.MtopHeaderListener;
import mtopsdk.mtop.common.MtopCallback.MtopProgressListener;
import mtopsdk.mtop.common.MtopFinishEvent;
import mtopsdk.mtop.common.MtopHeaderEvent;
import mtopsdk.mtop.common.MtopListener;
import mtopsdk.mtop.common.MtopProgressEvent;
import mtopsdk.mtop.domain.MtopResponse;

public class MtopBaseListenerProxy extends DefaultMtopCallback {
    private static final String TAG = "mtopsdk.MtopListenerProxy";
    public Object context = null;
    protected boolean isCached = false;
    protected MtopListener listener = null;
    public MtopResponse response = null;

    public MtopBaseListenerProxy(MtopListener mtopListener) {
        this.listener = mtopListener;
    }

    public void onFinished(MtopFinishEvent mtopFinishEvent, Object obj) {
        if (!(mtopFinishEvent == null || mtopFinishEvent.getMtopResponse() == null)) {
            this.response = mtopFinishEvent.getMtopResponse();
            this.context = obj;
        }
        synchronized (this) {
            try {
                notifyAll();
            } catch (Exception e) {
                TBSdkLog.e(TAG, "[onFinished] notify error");
            }
        }
        if (!(this.listener instanceof MtopFinishListener)) {
            return;
        }
        if (!this.isCached || (this.response != null && this.response.isApiSuccess())) {
            ((MtopFinishListener) this.listener).onFinished(mtopFinishEvent, obj);
            return;
        }
        return;
    }

    public void onDataReceived(MtopProgressEvent mtopProgressEvent, Object obj) {
        if (this.listener instanceof MtopProgressListener) {
            ((MtopProgressListener) this.listener).onDataReceived(mtopProgressEvent, obj);
        }
    }

    public void onHeader(MtopHeaderEvent mtopHeaderEvent, Object obj) {
        if (this.listener instanceof MtopHeaderListener) {
            ((MtopHeaderListener) this.listener).onHeader(mtopHeaderEvent, obj);
        }
    }
}
