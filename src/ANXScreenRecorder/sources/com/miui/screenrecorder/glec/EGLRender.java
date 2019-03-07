package com.miui.screenrecorder.glec;

import android.graphics.SurfaceTexture;
import android.graphics.SurfaceTexture.OnFrameAvailableListener;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import com.miui.screenrecorder.tools.LogUtil;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

public class EGLRender implements OnFrameAvailableListener {
    private static final String TAG = "EncodeDecodeSurface";
    private static final int UNDERRUN_CHECK_INTERVAL = 200;
    private static final int UNDERRUN_CHECK_PERCENT = 10;
    private static final boolean VERBOSE = false;
    private Surface decodeSurface;
    private onFrameCallBack mCallBack;
    private long mCurrentTimeMs = 0;
    private EGLContext mEGLContext = EGL14.EGL_NO_CONTEXT;
    private EGLContext mEGLContextEncoder = EGL14.EGL_NO_CONTEXT;
    private EGLDisplay mEGLDisplay = EGL14.EGL_NO_DISPLAY;
    private EGLSurface mEGLSurface = EGL14.EGL_NO_SURFACE;
    private EGLSurface mEGLSurfaceEncoder = EGL14.EGL_NO_SURFACE;
    private int mEncodedCount = 0;
    private int mFps;
    private boolean mFrameAvailable = false;
    private int mFrameIntervalMs;
    private RenderHandler mHandler;
    private HandlerThread mHandlerThread;
    private int mHeight;
    private ReentrantLock mLock = new ReentrantLock();
    private int mNextCheckCount = 0;
    private boolean mNotifyError = true;
    private volatile AtomicBoolean mStart = new AtomicBoolean(false);
    private long mStartTimeMs = 0;
    private SurfaceTexture mSurfaceTexture;
    private STextureRender mTextureRender;
    private long mTimeBaseNs = 0;
    private long mTimeOffset;
    private int mWidth;

    public interface onFrameCallBack {
        void onError();

        void onStop();
    }

    private class RenderHandler extends Handler {
        static final int MSG_DRAW_IMAGE = 1;

        public RenderHandler(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message msg) {
            if (msg.what == 1) {
                EGLRender.this.mLock.lock();
                try {
                    if (!EGLRender.this.mFrameAvailable) {
                        sendEmptyMessageDelayed(1, 10);
                    } else if (EGLRender.this.mStart.get()) {
                        sendEmptyMessageDelayed(1, (long) EGLRender.this.mFrameIntervalMs);
                        EGLRender.this.mCurrentTimeMs = SystemClock.elapsedRealtime();
                        if (EGLRender.this.mStartTimeMs <= 0) {
                            EGLRender.this.mNextCheckCount = EGLRender.this.mNextCheckCount + EGLRender.UNDERRUN_CHECK_INTERVAL;
                            EGLRender.this.mStartTimeMs = EGLRender.this.mCurrentTimeMs;
                            EGLRender.this.makeCurrent(1);
                        }
                        EGLRender.this.mSurfaceTexture.updateTexImage();
                        EGLRender.this.drawImage();
                        EGLRender.this.setPresentationTime(((EGLRender.this.mCurrentTimeMs - EGLRender.this.mStartTimeMs) + EGLRender.this.mTimeOffset) * 1000000);
                        EGLRender.this.swapBuffers();
                        EGLRender.this.mEncodedCount = EGLRender.this.mEncodedCount + 1;
                        if (EGLRender.this.mEncodedCount > EGLRender.this.mNextCheckCount) {
                            EGLRender.this.mNextCheckCount = EGLRender.this.mNextCheckCount + EGLRender.UNDERRUN_CHECK_INTERVAL;
                            EGLRender.this.checkPerformanceError((long) EGLRender.this.mEncodedCount, EGLRender.this.mCurrentTimeMs);
                        }
                        EGLRender.this.mLock.unlock();
                    } else {
                        EGLRender.this.mLock.unlock();
                    }
                } catch (Exception e) {
                    LogUtil.e("EncodeDecodeSurface", "error in draw image ", e);
                } finally {
                    EGLRender.this.mLock.unlock();
                }
            }
        }
    }

    public void setStartTimeNs(long startTimeNs) {
        this.mTimeBaseNs = startTimeNs;
    }

    public void setCallBack(onFrameCallBack callBack) {
        this.mCallBack = callBack;
    }

    public EGLRender(Surface surface, int mWidth, int mHeight, int fps, long timeOffset) {
        this.mWidth = mWidth;
        this.mHeight = mHeight;
        this.mTimeOffset = timeOffset;
        initFPs(fps);
        eglSetup(surface);
        makeCurrent();
        setup();
    }

    private void initFPs(int fps) {
        Log.d("EncodeDecodeSurface", "initFPs :" + fps);
        this.mFps = fps;
        this.mFrameIntervalMs = 1000 / fps;
    }

    private void eglSetup(Surface surface) {
        this.mEGLDisplay = EGL14.eglGetDisplay(0);
        if (this.mEGLDisplay == EGL14.EGL_NO_DISPLAY) {
            throw new RuntimeException("unable to get EGL14 display");
        }
        int[] version = new int[2];
        if (EGL14.eglInitialize(this.mEGLDisplay, version, 0, version, 1)) {
            EGLConfig[] configs = new EGLConfig[1];
            if (EGL14.eglChooseConfig(this.mEGLDisplay, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, 4, 12339, 1, 12344}, 0, configs, 0, configs.length, new int[1], 0)) {
                EGLConfig configEncoder = getConfig(2);
                int[] attrib_list = new int[]{12440, 2, 12344};
                this.mEGLContext = EGL14.eglCreateContext(this.mEGLDisplay, configs[0], EGL14.EGL_NO_CONTEXT, attrib_list, 0);
                checkEglError("eglCreateContext");
                if (this.mEGLContext == null) {
                    throw new RuntimeException("null context");
                }
                this.mEGLContextEncoder = EGL14.eglCreateContext(this.mEGLDisplay, configEncoder, this.mEGLContext, attrib_list, 0);
                checkEglError("eglCreateContext");
                if (this.mEGLContextEncoder == null) {
                    throw new RuntimeException("null context2");
                }
                this.mEGLSurface = EGL14.eglCreatePbufferSurface(this.mEGLDisplay, configs[0], new int[]{12375, this.mWidth, 12374, this.mHeight, 12344}, 0);
                checkEglError("eglCreatePbufferSurface");
                if (this.mEGLSurface == null) {
                    throw new RuntimeException("surface was null");
                }
                this.mEGLSurfaceEncoder = EGL14.eglCreateWindowSurface(this.mEGLDisplay, configEncoder, surface, new int[]{12344}, 0);
                checkEglError("eglCreateWindowSurface");
                if (this.mEGLSurfaceEncoder == null) {
                    throw new RuntimeException("surface was null");
                }
                return;
            }
            throw new RuntimeException("unable to find RGB888+recordable ES2 EGL config");
        }
        this.mEGLDisplay = null;
        throw new RuntimeException("unable to initialize EGL14");
    }

    private void eglRelease() {
        EGL14.eglDestroyContext(this.mEGLDisplay, this.mEGLContext);
        EGL14.eglDestroyContext(this.mEGLDisplay, this.mEGLContextEncoder);
        EGL14.eglDestroySurface(this.mEGLDisplay, this.mEGLSurface);
        EGL14.eglDestroySurface(this.mEGLDisplay, this.mEGLSurfaceEncoder);
        EGL14.eglTerminate(this.mEGLDisplay);
        this.mEGLContext = EGL14.EGL_NO_CONTEXT;
        this.mEGLContextEncoder = EGL14.EGL_NO_CONTEXT;
        this.mEGLDisplay = EGL14.EGL_NO_DISPLAY;
        this.mEGLSurface = EGL14.EGL_NO_SURFACE;
        this.mEGLSurfaceEncoder = EGL14.EGL_NO_SURFACE;
    }

    public void makeCurrent() {
        if (!EGL14.eglMakeCurrent(this.mEGLDisplay, this.mEGLSurface, this.mEGLSurface, this.mEGLContext)) {
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    private void setup() {
        this.mTextureRender = new STextureRender(this.mWidth, this.mHeight);
        this.mTextureRender.surfaceCreated();
        this.mSurfaceTexture = new SurfaceTexture(this.mTextureRender.getTextureId());
        this.mSurfaceTexture.setDefaultBufferSize(this.mWidth, this.mHeight);
        this.mSurfaceTexture.setOnFrameAvailableListener(this);
        this.decodeSurface = new Surface(this.mSurfaceTexture);
    }

    public Surface getDecodeSurface() {
        return this.decodeSurface;
    }

    private EGLConfig getConfig(int version) {
        int renderableType = 4;
        if (version >= 3) {
            renderableType = 4 | 64;
        }
        EGLConfig[] configs = new EGLConfig[1];
        if (EGL14.eglChooseConfig(this.mEGLDisplay, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, renderableType, 12344, 0, 12344}, 0, configs, 0, configs.length, new int[1], 0)) {
            return configs[0];
        }
        Log.w("EncodeDecodeSurface", "unable to find RGB8888 / " + version + " EGLConfig");
        return null;
    }

    private void checkEglError(String msg) {
        int error = EGL14.eglGetError();
        if (error != 12288) {
            throw new RuntimeException(msg + ": EGL error: 0x" + Integer.toHexString(error));
        }
    }

    public void makeCurrent(int index) {
        if (index == 0) {
            if (!EGL14.eglMakeCurrent(this.mEGLDisplay, this.mEGLSurface, this.mEGLSurface, this.mEGLContext)) {
                throw new RuntimeException("eglMakeCurrent failed");
            }
        } else if (!EGL14.eglMakeCurrent(this.mEGLDisplay, this.mEGLSurfaceEncoder, this.mEGLSurfaceEncoder, this.mEGLContextEncoder)) {
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    public void setPresentationTime(long nsecs) {
        EGLExt.eglPresentationTimeANDROID(this.mEGLDisplay, this.mEGLSurfaceEncoder, this.mTimeBaseNs + nsecs);
        checkEglError("eglPresentationTimeANDROID");
    }

    public boolean swapBuffers() {
        boolean result = EGL14.eglSwapBuffers(this.mEGLDisplay, this.mEGLSurfaceEncoder);
        checkEglError("eglSwapBuffers");
        return result;
    }

    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.mFrameAvailable = true;
    }

    public void drawImage() {
        this.mTextureRender.drawFrame();
    }

    public void releaseResource() {
        eglRelease();
        this.mSurfaceTexture.release();
        this.mSurfaceTexture = null;
        this.mTextureRender = null;
        this.decodeSurface.release();
        this.decodeSurface = null;
    }

    private void checkPerformanceError(long count, long timeMs) {
        long frameCount = (timeMs - this.mStartTimeMs) / ((long) this.mFrameIntervalMs);
        if (((frameCount - count) * 100) / frameCount > 10) {
            Log.w("EncodeDecodeSurface", "frame underrun more than 10% !!!");
            if (this.mNotifyError) {
                this.mCallBack.onError();
                this.mNotifyError = false;
            }
        }
    }

    public void start() {
        this.mStart.set(true);
        this.mHandlerThread = new HandlerThread("RenderThread");
        this.mHandlerThread.start();
        this.mHandler = new RenderHandler(this.mHandlerThread.getLooper());
        this.mHandler.sendEmptyMessage(1);
    }

    public void stop() {
        this.mStart.set(false);
        this.mHandlerThread.quitSafely();
        this.mLock.lock();
        this.mLock.unlock();
        this.mCallBack.onStop();
    }
}
