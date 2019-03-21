package com.xiaomi.metoknlp;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.xiaomi.metoknlp.devicediscover.m;

/* compiled from: MetokService */
public class c {
    private static c Q;
    private f O;
    private boolean P;
    private Context mContext;
    private Handler mHandler;
    private HandlerThread mHandlerThread;
    private boolean mStarted;

    public static c G() {
        if (Q == null) {
            Q = new c();
        }
        return Q;
    }

    public void a(Context context) {
        this.mContext = context;
        a.init(this.mContext);
        if (!this.mStarted) {
            this.mStarted = true;
            this.mHandlerThread = new HandlerThread("metoknlp_cl");
            this.mHandlerThread.start();
            this.mHandler = new Handler(this.mHandlerThread.getLooper());
            this.O = new e(this, null);
            a.g().a(this.O);
            if (MetokApplication.get().isReady()) {
                J();
            }
        }
    }

    private void H() {
        m.O().a(this.mContext);
        this.P = true;
    }

    private void I() {
        m.O().onDestroy();
        this.P = false;
    }

    public void fecthDeviceImmediately() {
        m.O().fecthDeviceImmediately();
    }

    public void J() {
        if (this.mHandler != null) {
            this.mHandler.post(new d(this));
        }
    }
}
