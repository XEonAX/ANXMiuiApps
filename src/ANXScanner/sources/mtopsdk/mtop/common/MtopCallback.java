package mtopsdk.mtop.common;

public interface MtopCallback {

    public interface MtopFinishListener extends MtopListener {
        void onFinished(MtopFinishEvent mtopFinishEvent, Object obj);
    }

    public interface MtopHeaderListener extends MtopListener {
        void onHeader(MtopHeaderEvent mtopHeaderEvent, Object obj);
    }

    public interface MtopProgressListener extends MtopListener {
        void onDataReceived(MtopProgressEvent mtopProgressEvent, Object obj);
    }

    public interface MtopCacheListener extends MtopListener {
        void onCached(MtopCacheEvent mtopCacheEvent, Object obj);
    }
}
