package com.miui.gallery.editor.photo.core.imports.filter.render;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.opengl.GLSurfaceView.Renderer;
import android.os.Build;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.Log;
import java.nio.ByteBuffer;
import java.util.HashMap;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL10;

public class PixelBuffer {
    Bitmap mBitmap;
    EGL10 mEGL = ((EGL10) EGLContext.getEGL());
    EGLConfig mEGLConfig;
    EGLConfig[] mEGLConfigs;
    EGLContext mEGLContext;
    EGLDisplay mEGLDisplay = this.mEGL.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
    EGLSurface mEGLSurface;
    GL10 mGL;
    int mHeight;
    Renderer mRenderer;
    String mThreadOwner;
    int mWidth;

    public PixelBuffer(int width, int height) {
        this.mWidth = width;
        this.mHeight = height;
        version = new int[2];
        int[] attribList = new int[]{12375, this.mWidth, 12374, this.mHeight, 12344};
        this.mEGL.eglInitialize(this.mEGLDisplay, version);
        this.mEGLConfig = chooseConfig();
        this.mEGLContext = this.mEGL.eglCreateContext(this.mEGLDisplay, this.mEGLConfig, EGL10.EGL_NO_CONTEXT, new int[]{12440, 2, 12344});
        this.mEGLSurface = this.mEGL.eglCreatePbufferSurface(this.mEGLDisplay, this.mEGLConfig, attribList);
        this.mEGL.eglMakeCurrent(this.mEGLDisplay, this.mEGLSurface, this.mEGLSurface, this.mEGLContext);
        this.mGL = (GL10) this.mEGLContext.getGL();
        this.mThreadOwner = Thread.currentThread().getName();
    }

    public void setRenderer(Renderer renderer) {
        this.mRenderer = renderer;
        if (Thread.currentThread().getName().equals(this.mThreadOwner)) {
            this.mRenderer.onSurfaceCreated(this.mGL, this.mEGLConfig);
            this.mRenderer.onSurfaceChanged(this.mGL, this.mWidth, this.mHeight);
            return;
        }
        Log.e("PixelBuffer", "setRenderer: This thread does not own the OpenGL context.");
    }

    public Bitmap getBitmap(Bitmap bitmap) {
        if (this.mRenderer == null) {
            Log.e("PixelBuffer", "getBitmap: Renderer was not set.");
            return null;
        } else if (Thread.currentThread().getName().equals(this.mThreadOwner)) {
            this.mEGL.eglSwapBuffers(this.mEGLDisplay, this.mEGLSurface);
            this.mRenderer.onDrawFrame(this.mGL);
            try {
                convertToBitmap(bitmap);
            } catch (OutOfMemoryError e) {
                Log.e("PixelBuffer", "convertToBitmap error:" + e.toString());
                HashMap<String, String> params = new HashMap();
                params.put("type", "pixelBuffer");
                params.put("model", Build.MODEL);
                BaseSamplingStatHelper.recordCountEvent("photo_editor", "memory_error", params);
                return null;
            } catch (Exception e2) {
                Log.e("PixelBuffer", "convertToBitmap error:" + e2.toString());
            }
            return this.mBitmap;
        } else {
            Log.e("PixelBuffer", "getBitmap: This thread does not own the OpenGL context.");
            return null;
        }
    }

    public void destroy() {
        this.mRenderer.onDrawFrame(this.mGL);
        this.mEGL.eglMakeCurrent(this.mEGLDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
        this.mEGL.eglDestroySurface(this.mEGLDisplay, this.mEGLSurface);
        this.mEGL.eglDestroyContext(this.mEGLDisplay, this.mEGLContext);
        this.mEGL.eglTerminate(this.mEGLDisplay);
    }

    private EGLConfig chooseConfig() {
        int[] attribList = new int[]{12325, 0, 12326, 0, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, 4, 12344};
        int[] numConfig = new int[1];
        this.mEGL.eglChooseConfig(this.mEGLDisplay, attribList, null, 0, numConfig);
        int configSize = numConfig[0];
        this.mEGLConfigs = new EGLConfig[configSize];
        this.mEGL.eglChooseConfig(this.mEGLDisplay, attribList, this.mEGLConfigs, configSize, numConfig);
        return this.mEGLConfigs[0];
    }

    private void convertToBitmap(Bitmap recyclerBitmap) {
        if (recyclerBitmap == null || recyclerBitmap.isRecycled() || recyclerBitmap.getConfig() != Config.ARGB_8888) {
            this.mBitmap = Bitmap.createBitmap(this.mWidth, this.mHeight, Config.ARGB_8888);
        } else {
            this.mBitmap = recyclerBitmap;
        }
        ByteBuffer ib = ByteBuffer.allocate(this.mBitmap.getByteCount());
        this.mGL.glReadPixels(0, 0, this.mWidth, this.mHeight, 6408, 5121, ib);
        ib.rewind();
        Log.d("PixelBuffer", "convertToBitmap width:%d,height:%d,byteCount:%d,capacity:%d", Integer.valueOf(this.mWidth), Integer.valueOf(this.mHeight), Integer.valueOf(this.mBitmap.getByteCount()), Integer.valueOf(ib.capacity()));
        this.mBitmap.copyPixelsFromBuffer(ib);
    }
}
