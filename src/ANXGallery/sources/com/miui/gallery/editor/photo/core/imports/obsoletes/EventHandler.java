package com.miui.gallery.editor.photo.core.imports.obsoletes;

import android.os.Handler;
import android.os.Message;
import android.util.SparseArray;
import java.util.BitSet;

public class EventHandler extends Handler {
    private BitSet mBitSet = new BitSet();
    private SparseArray<Runnable> mCallbacks = new SparseArray();

    public int register(Runnable callback) {
        int index = this.mBitSet.nextClearBit(0);
        this.mCallbacks.put(index, callback);
        this.mBitSet.set(index);
        return index;
    }

    public void handleMessage(Message msg) {
        Runnable callback = (Runnable) this.mCallbacks.get(msg.what);
        if (callback != null) {
            callback.run();
        }
    }
}
