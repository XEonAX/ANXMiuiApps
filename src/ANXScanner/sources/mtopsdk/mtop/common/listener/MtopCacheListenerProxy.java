package mtopsdk.mtop.common.listener;

import mtopsdk.mtop.common.MtopCacheEvent;
import mtopsdk.mtop.common.MtopCallback.MtopCacheListener;
import mtopsdk.mtop.common.MtopListener;

public class MtopCacheListenerProxy extends MtopBaseListenerProxy implements MtopCacheListener {
    private static final String TAG = "MtopCacheListenerProxy";

    public MtopCacheListenerProxy(MtopListener mtopListener) {
        super(mtopListener);
    }

    public void onCached(MtopCacheEvent mtopCacheEvent, Object obj) {
        if (this.listener instanceof MtopCacheListener) {
            ((MtopCacheListener) this.listener).onCached(mtopCacheEvent, obj);
            this.isCached = true;
        }
    }
}
