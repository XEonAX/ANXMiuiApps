package com.miui.gallery.util.gifdecoder;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Handler;
import android.os.HandlerThread;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.uil.CryptUtil;
import com.nostra13.universalimageloader.utils.ImageSizeUtils;
import java.io.ByteArrayOutputStream;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

public class NSGifDecode implements Runnable {
    private DecodeRunnable mDecodeRunnable;
    private Bitmap mFrame = null;
    private Handler mHandler;
    private volatile GifFrameUpdateListener mListener = null;
    private final Object mLock = new Object();
    private NSGifGen mNSGif = null;
    private volatile boolean mQuit = false;

    public interface GifFrameUpdateListener {
        void onUpdateGifFrame(Bitmap bitmap);
    }

    private interface NSGifGen {
        NSGif gen();
    }

    private class DecodeRunnable implements Runnable {
        private int mIndex;
        private NSGif mNSGif;

        public DecodeRunnable(NSGif nsgif, int index) {
            this.mNSGif = nsgif;
            this.mIndex = index;
        }

        public void run() {
            if (!NSGifDecode.this.mQuit) {
                long end = System.currentTimeMillis() + ((long) Math.max(20, this.mNSGif.getFrameDelay(this.mIndex)));
                if (NSGifDecode.this.mQuit || !this.mNSGif.writeTo(NSGifDecode.this.mFrame)) {
                    Log.e("NSGifDecode", "write frame " + this.mIndex + " failed");
                    return;
                }
                GifFrameUpdateListener listener = NSGifDecode.this.mListener;
                if (listener != null) {
                    listener.onUpdateGifFrame(NSGifDecode.this.mFrame);
                }
                this.mIndex++;
                if (this.mIndex >= this.mNSGif.getFrameCount()) {
                    this.mIndex = 0;
                }
                if (!NSGifDecode.this.mQuit && this.mNSGif.decodeFrame(this.mIndex) && !NSGifDecode.this.mQuit) {
                    synchronized (NSGifDecode.this.mLock) {
                        if (NSGifDecode.this.mHandler != null) {
                            long now = System.currentTimeMillis();
                            if (now < end) {
                                NSGifDecode.this.mHandler.postDelayed(this, end - now);
                            } else {
                                NSGifDecode.this.mHandler.post(this);
                            }
                        }
                    }
                }
            }
        }
    }

    private static int convertShort(byte[] data, int offset) {
        return (data[offset] & 255) | ((data[offset + 1] & 255) << 8);
    }

    private static boolean checkGif(InputStream is, byte[] buffer, int[] wh) throws IOException {
        if (is.read(buffer, 0, 10) != 10) {
            return false;
        }
        String tag = new String(buffer, 0, 6);
        if ("GIF87a".equals(tag) || "GIF89a".equals(tag)) {
            int width = convertShort(buffer, 6);
            if (wh != null && wh.length > 0) {
                wh[0] = width;
            }
            if (width <= 0 || width > ImageSizeUtils.getMaxTextureSize()) {
                Log.d("NSGifDecode", "invalid width: " + width);
                return false;
            }
            int height = convertShort(buffer, 8);
            if (wh != null && wh.length > 1) {
                wh[1] = height;
            }
            if (height > 0 && height <= ImageSizeUtils.getMaxTextureSize()) {
                return true;
            }
            Log.d("NSGifDecode", "invalid height: " + height);
            return false;
        }
        Log.d("NSGifDecode", "is not gif, tag: " + tag);
        return false;
    }

    public static NSGifDecode create(final String path) {
        Object e;
        Throwable th;
        NSGifDecode nsgif = null;
        int[] wh = new int[2];
        FileInputStream fis = null;
        try {
            FileInputStream fis2 = new FileInputStream(path);
            try {
                if (checkGif(fis2, new byte[10], wh)) {
                    BaseMiscUtil.closeSilently(fis2);
                    nsgif = create(new NSGifGen() {
                        public NSGif gen() {
                            return NSGif.create(path);
                        }
                    });
                    if (nsgif != null) {
                        try {
                            nsgif.mFrame = Bitmap.createBitmap(wh[0], wh[1], Config.ARGB_8888);
                        } catch (OutOfMemoryError e2) {
                        }
                    }
                    fis = fis2;
                } else {
                    BaseMiscUtil.closeSilently(fis2);
                    fis = fis2;
                }
            } catch (IOException e3) {
                e = e3;
                fis = fis2;
            } catch (Throwable th2) {
                th = th2;
                fis = fis2;
                BaseMiscUtil.closeSilently(fis);
                throw th;
            }
        } catch (IOException e4) {
            e = e4;
            try {
                Log.d("NSGifDecode", "read gif file", e);
                BaseMiscUtil.closeSilently(fis);
                return nsgif;
            } catch (Throwable th3) {
                th = th3;
                BaseMiscUtil.closeSilently(fis);
                throw th;
            }
        }
        return nsgif;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x003c  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0037  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static NSGifDecode create(FileDescriptor fd, byte[] secretKey) {
        Object e;
        Throwable th;
        InputStream inputStream = null;
        int[] wh = new int[2];
        try {
            InputStream inputStream2 = new FileInputStream(fd);
            try {
                if (inputStream2.available() > 5242880) {
                    Log.d("NSGifDecode", "file is too large");
                    BaseMiscUtil.closeSilently(inputStream2);
                    inputStream = inputStream2;
                    return null;
                }
                ByteArrayOutputStream bos;
                byte[] buffer;
                if (secretKey != null) {
                    if (secretKey.length > 0) {
                        inputStream = CryptUtil.getDecryptCipherInputStream(inputStream2, secretKey);
                        bos = new ByteArrayOutputStream();
                        buffer = new byte[4096];
                        if (checkGif(inputStream, buffer, wh)) {
                            BaseMiscUtil.closeSilently(inputStream);
                            return null;
                        }
                        bos.write(buffer, 0, 10);
                        while (true) {
                            int ret = inputStream.read(buffer);
                            if (ret < 0) {
                                break;
                            }
                            bos.write(buffer, 0, ret);
                        }
                        byte[] data = bos.toByteArray();
                        NSGifDecode nsgif = create(data, 0, data.length);
                        if (nsgif != null) {
                            try {
                                nsgif.mFrame = Bitmap.createBitmap(wh[0], wh[1], Config.ARGB_8888);
                            } catch (OutOfMemoryError e2) {
                            }
                        }
                        BaseMiscUtil.closeSilently(inputStream);
                        return nsgif;
                    }
                }
                inputStream = inputStream2;
                bos = new ByteArrayOutputStream();
                buffer = new byte[4096];
                if (checkGif(inputStream, buffer, wh)) {
                }
            } catch (Exception e3) {
                e = e3;
                inputStream = inputStream2;
                try {
                    Log.d("NSGifDecode", "load gif data", e);
                    BaseMiscUtil.closeSilently(inputStream);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    BaseMiscUtil.closeSilently(inputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                inputStream = inputStream2;
                BaseMiscUtil.closeSilently(inputStream);
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
        }
    }

    private static NSGifDecode create(final byte[] data, final int offset, final int length) {
        return create(new NSGifGen() {
            public NSGif gen() {
                return NSGif.create(data, offset, length);
            }
        });
    }

    private static NSGifDecode create(NSGifGen nsGifgen) {
        if (nsGifgen != null) {
            try {
                NSGifDecode decode = new NSGifDecode();
                decode.mNSGif = nsGifgen;
                return decode;
            } catch (OutOfMemoryError e) {
            }
        }
        return null;
    }

    public void cancel() {
        this.mQuit = true;
        synchronized (this.mLock) {
            if (this.mHandler != null) {
                this.mHandler.removeCallbacks(this.mDecodeRunnable);
                this.mHandler.getLooper().quitSafely();
                this.mDecodeRunnable = null;
                this.mHandler = null;
            }
        }
    }

    public void run() {
        try {
            if (this.mNSGif != null) {
                NSGif nsgif = this.mNSGif.gen();
                this.mNSGif = null;
                if (nsgif != null) {
                    if (this.mFrame == null) {
                        try {
                            this.mFrame = Bitmap.createBitmap(nsgif.getWidth(), nsgif.getHeight(), Config.ARGB_8888);
                        } catch (Object e) {
                            Log.e("NSGifDecode", "OOM on create bitmap", e);
                            return;
                        }
                    }
                    if (nsgif.getFrameCount() == 1) {
                        GifFrameUpdateListener listener = this.mListener;
                        if (nsgif.decodeFrame(0) && nsgif.writeTo(this.mFrame) && listener != null) {
                            listener.onUpdateGifFrame(this.mFrame);
                            return;
                        }
                        return;
                    }
                    if (!nsgif.decodeFrame(0)) {
                        this.mQuit = true;
                    }
                    if (!this.mQuit) {
                        synchronized (this.mLock) {
                            HandlerThread handlerThread = new HandlerThread("NSGifDecode");
                            handlerThread.start();
                            this.mHandler = new Handler(handlerThread.getLooper());
                            this.mDecodeRunnable = new DecodeRunnable(nsgif, 0);
                            this.mHandler.post(this.mDecodeRunnable);
                        }
                    }
                }
            }
        } catch (Throwable e2) {
            Log.w("NSGifDecode", e2);
        }
    }

    public void setListener(GifFrameUpdateListener listener) {
        this.mListener = listener;
    }
}
