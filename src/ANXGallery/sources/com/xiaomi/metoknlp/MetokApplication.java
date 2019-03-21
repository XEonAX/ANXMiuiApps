package com.xiaomi.metoknlp;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.HandlerThread;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.xiaomi.metoknlp.a.d;
import com.xiaomi.metoknlp.b.a;
import com.xiaomi.metoknlp.b.c;
import com.xiaomi.metoknlp.devicediscover.DataListener;
import java.util.ArrayList;
import java.util.List;

public class MetokApplication extends ContextWrapper {
    private static MetokApplication sApp;
    List mDataListeners = new ArrayList();
    private int mFetchDeviceWay = 0;
    private Handler mHandler;
    private HandlerThread mHandlerThread = new HandlerThread("metoknlp_app");
    private boolean mInited = false;
    private a mListener = new h(this);
    private boolean mReady = false;

    public static MetokApplication get() {
        if (sApp == null) {
            return null;
        }
        return sApp;
    }

    public static MetokApplication create(Context context) {
        if (sApp == null) {
            sApp = new MetokApplication(context);
        }
        return sApp;
    }

    private MetokApplication(Context context) {
        super(context);
        this.mHandlerThread.start();
        this.mHandler = new g(this, this.mHandlerThread.getLooper());
        d.f(context);
        this.mHandler.sendEmptyMessageDelayed(BaiduSceneResult.SHOOTING, 1000);
    }

    public void notifyDataChange(String str) {
        for (DataListener dataListener : this.mDataListeners) {
            if (dataListener != null) {
                dataListener.onDataCollect(str);
            }
        }
    }

    public void registerDataListener(DataListener dataListener, int i) {
        for (DataListener dataListener2 : this.mDataListeners) {
            if (dataListener2 == dataListener) {
                return;
            }
        }
        this.mFetchDeviceWay = i;
        this.mDataListeners.add(dataListener);
    }

    public int getFetchDeviceWay() {
        return this.mFetchDeviceWay;
    }

    public void fecthDeviceImmediately() {
        c.G().fecthDeviceImmediately();
    }

    public Handler getAppHandler() {
        return this.mHandler;
    }

    public boolean isReady() {
        return this.mReady;
    }

    public void init() {
        a.init(sApp);
        c.init(sApp);
        c.M().a(this.mListener);
    }

    private void run() {
        if (!this.mReady) {
            this.mReady = true;
        }
        c.G().a((Context) this);
    }

    private void updateConfig() {
        this.mHandler.sendEmptyMessageDelayed(BaiduSceneResult.TAEKWONDO, 10000);
    }
}
