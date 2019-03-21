package cn.kuaipan.android.kss.download;

import java.io.IOException;

public class LoadRecorder {
    private LoadMap map;
    private final Space space;

    LoadRecorder(LoadMap map, Space space) {
        this.map = map;
        this.space = space;
    }

    public void add(int size) throws IOException {
        if (this.map == null) {
            throw new IOException("The recoder has been recycled");
        }
        this.space.remove(size);
        this.map.onSpaceRemoved(size);
    }

    public void recycle() {
        if (this.map != null) {
            this.map.recycleRecorder(this);
            this.map = null;
        }
    }

    long getStart() {
        return this.space.getStart();
    }

    public long size() {
        return this.space.size();
    }

    Space getSpace() {
        return this.space;
    }

    protected void finalize() throws Throwable {
        recycle();
        super.finalize();
    }
}
