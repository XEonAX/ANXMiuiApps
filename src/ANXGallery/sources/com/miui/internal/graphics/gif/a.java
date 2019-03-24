package com.miui.internal.graphics.gif;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.miui.internal.graphics.gif.DecodeGifImageHelper.GifDecodeResult;
import miui.io.ResettableInputStream;

class a extends Handler {
    protected static final String TAG = "DecodeGifFrames";
    private static final int eq = 1;
    private Handler er;
    GifDecodeResult es;
    HandlerThread et;
    private ResettableInputStream mGifSource;
    private long mMaxDecodeSize;

    public static a a(ResettableInputStream resettableInputStream, long j, Handler handler) {
        HandlerThread handlerThread = new HandlerThread("handler thread to decode GIF frames");
        handlerThread.start();
        return new a(handlerThread, resettableInputStream, j, handler);
    }

    public a(HandlerThread handlerThread, ResettableInputStream resettableInputStream, long j, Handler handler) {
        super(handlerThread.getLooper());
        this.et = handlerThread;
        this.mMaxDecodeSize = j;
        this.mGifSource = resettableInputStream;
        this.er = handler;
    }

    public void destroy() {
        this.et.quit();
    }

    protected void finalize() throws Throwable {
        this.et.quit();
        super.finalize();
    }

    public void e(int i) {
        if (this.es == null) {
            this.es = new GifDecodeResult();
            sendMessage(obtainMessage(1, i, 0));
        }
    }

    public GifDecodeResult G() {
        GifDecodeResult gifDecodeResult = this.es;
        this.es = null;
        return gifDecodeResult;
    }

    public void handleMessage(Message message) {
        if (message.what == 1) {
            GifDecodeResult decode = DecodeGifImageHelper.decode(this.mGifSource, this.mMaxDecodeSize, message.arg1);
            this.es.mGifDecoder = decode.mGifDecoder;
            this.es.mIsDecodeOk = decode.mIsDecodeOk;
            this.er.sendEmptyMessage(1);
        }
    }
}
