package com.miui.internal.graphics.gif;

import android.content.res.MiuiConfiguration;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import miui.io.ResettableInputStream;

public class DecodeGifImageHelper {
    public static final int MESSAGE_WHAT_DECODE_FRAMES = 1;
    private int eu;
    private a ev;
    public Handler mDecodeFrameHandler;
    public boolean mDecodedAllFrames;
    public List<GifFrame> mFrames = new ArrayList();
    public ResettableInputStream mGifSource;
    public long mMaxDecodeSize = MiuiConfiguration.THEME_FLAG_ALARMSTYLE;
    public int mRealFrameCount;

    public static class GifDecodeResult {
        public GifDecoder mGifDecoder;
        public boolean mIsDecodeOk;
    }

    public static class GifFrame {
        public int mDuration;
        public Bitmap mImage;
        public int mIndex;

        public GifFrame(Bitmap bitmap, int i, int i2) {
            this.mImage = bitmap;
            this.mDuration = i;
            this.mIndex = i2;
        }
    }

    private int H() {
        return ((GifFrame) this.mFrames.get(this.mFrames.size() - 1)).mIndex;
    }

    private int f(int i) {
        if (this.mRealFrameCount == 0) {
            return i;
        }
        return i % this.mRealFrameCount;
    }

    public void decodeNextFrames() {
        int size = this.mFrames.size();
        int i = 0;
        if (this.eu > 3 ? size > this.eu / 2 : size > 2) {
            i = 1;
        }
        if (i != 0) {
            this.ev.e(f(H() + 1));
        }
    }

    public boolean handleDecodeFramesResult(GifDecodeResult gifDecodeResult) {
        int i = 0;
        if (!gifDecodeResult.mIsDecodeOk || gifDecodeResult.mGifDecoder == null) {
            return false;
        }
        GifDecoder gifDecoder = gifDecodeResult.mGifDecoder;
        Log.d("dumpFrameIndex", String.format("Thread#%d: decoded %d frames [%s] [%d]", new Object[]{Long.valueOf(Thread.currentThread().getId()), Integer.valueOf(gifDecodeResult.mGifDecoder.getFrameCount()), Boolean.valueOf(gifDecodeResult.mIsDecodeOk), Integer.valueOf(this.mRealFrameCount)}));
        if (gifDecoder.isDecodeToTheEnd()) {
            this.mRealFrameCount = gifDecoder.getRealFrameCount();
        }
        int frameCount = gifDecoder.getFrameCount();
        if (frameCount > 0) {
            int H = H();
            while (i < frameCount) {
                this.mFrames.add(new GifFrame(gifDecoder.getFrame(i), gifDecoder.getDelay(i), f((H + 1) + i)));
                i++;
            }
        }
        return true;
    }

    public GifDecodeResult decodeFrom(int i) {
        return decode(this.mGifSource, this.mMaxDecodeSize, i);
    }

    public static GifDecodeResult decode(ResettableInputStream resettableInputStream, long j, int i) {
        GifDecodeResult gifDecodeResult = new GifDecodeResult();
        gifDecodeResult.mGifDecoder = null;
        boolean z = false;
        gifDecodeResult.mIsDecodeOk = false;
        try {
            resettableInputStream.reset();
            gifDecodeResult.mGifDecoder = new GifDecoder();
            GifDecoder gifDecoder = gifDecodeResult.mGifDecoder;
            gifDecoder.setStartFrame(i);
            gifDecoder.setMaxDecodeSize(j);
            if (gifDecoder.read(resettableInputStream) == 0) {
                z = true;
            }
            gifDecodeResult.mIsDecodeOk = z;
            try {
                resettableInputStream.close();
            } catch (IOException e) {
            }
            return gifDecodeResult;
        } catch (IOException e2) {
            return gifDecodeResult;
        }
    }

    public void firstDecodeNextFrames() {
        this.mDecodeFrameHandler = new Handler(Looper.getMainLooper()) {
            public void handleMessage(Message message) {
                if (message.what == 1 && DecodeGifImageHelper.this.handleDecodeFramesResult(DecodeGifImageHelper.this.ev.G())) {
                    DecodeGifImageHelper.this.decodeNextFrames();
                }
            }
        };
        this.ev = a.a(this.mGifSource, this.mMaxDecodeSize, this.mDecodeFrameHandler);
        this.eu = this.mFrames.size();
        decodeNextFrames();
    }

    public void destroy() {
        if (this.ev != null) {
            this.ev.destroy();
        }
    }
}
