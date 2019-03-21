package com.nostra13.universalimageloader.utils;

import android.graphics.Bitmap.Config;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES10;
import android.opengl.GLES20;
import android.os.Build.VERSION;
import android.os.Looper;
import com.miui.gallery.Config.ScreenConfig;
import com.miui.gallery.util.Log;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;

public final class ImageSizeUtils {
    private static ImageSize maxBitmapSize;
    private static Object sLock = new Object();

    public static int getMaxTextureSize() {
        return getMaxBitmapSize().getWidth();
    }

    private static int getMaxTextureSizeInternal() {
        int[] maxSize = new int[1];
        GLES10.glGetIntegerv(3379, maxSize, 0);
        if (maxSize[0] > 0) {
            Log.d("ImageSizeUtils", "got GL_MAX_TEXTURE_SIZE without GLContext %d", Integer.valueOf(maxSize[0]));
            return maxSize[0];
        } else if (Looper.myLooper() == Looper.getMainLooper()) {
            Log.e("ImageSizeUtils", "call in main thread, skip");
            return 0;
        } else {
            long start = System.currentTimeMillis();
            EGLDisplay dpy = EGL14.eglGetDisplay(0);
            int[] vers = new int[2];
            EGL14.eglInitialize(dpy, vers, 0, vers, 1);
            EGLConfig[] configs = new EGLConfig[1];
            int[] numConfig = new int[1];
            EGL14.eglChooseConfig(dpy, new int[]{12351, 12430, 12329, 0, 12352, 4, 12339, 1, 12344}, 0, configs, 0, 1, numConfig, 0);
            if (numConfig[0] == 0) {
                Log.e("ImageSizeUtils", "no config found");
                return 0;
            }
            EGLConfig config = configs[0];
            int[] iArr = new int[5];
            EGLSurface surf = EGL14.eglCreatePbufferSurface(dpy, config, new int[]{12375, 64, 12374, 64, 12344}, 0);
            EGLContext ctx = EGL14.eglCreateContext(dpy, config, EGL14.EGL_NO_CONTEXT, new int[]{12440, 2, 12344}, 0);
            EGL14.eglMakeCurrent(dpy, surf, surf, ctx);
            GLES20.glGetIntegerv(3379, maxSize, 0);
            EGL14.eglMakeCurrent(dpy, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
            EGL14.eglDestroySurface(dpy, surf);
            EGL14.eglDestroyContext(dpy, ctx);
            EGL14.eglTerminate(dpy);
            Log.d("ImageSizeUtils", "get GL_MAX_TEXTURE_SIZE cost %s", Long.valueOf(System.currentTimeMillis() - start));
            return maxSize[0];
        }
    }

    private static ImageSize getMaxBitmapSize() {
        if (maxBitmapSize == null) {
            synchronized (sLock) {
                if (maxBitmapSize == null) {
                    int maxTextureSize = getMaxTextureSizeInternal();
                    Log.d("ImageSizeUtils", "maxTextureSize: %d", Integer.valueOf(maxTextureSize));
                    int maxBitmapDimension = Math.max(Math.max(maxTextureSize, 2048), Math.max(ScreenConfig.getScreenWidth(), ScreenConfig.getScreenHeight()));
                    maxBitmapSize = new ImageSize(maxBitmapDimension, maxBitmapDimension);
                }
            }
        }
        return maxBitmapSize;
    }

    private static int getMaxCanvasBitmapSize() {
        if (VERSION.SDK_INT <= 26) {
            return 104857600;
        }
        return 104857600;
    }

    public static ImageSize defineTargetSizeForView(ImageAware imageAware, ImageSize maxImageSize) {
        int width = imageAware.getWidth();
        if (width <= 0) {
            width = maxImageSize.getWidth();
        }
        int height = imageAware.getHeight();
        if (height <= 0) {
            height = maxImageSize.getHeight();
        }
        return new ImageSize(width, height);
    }

    public static int computeImageSampleSize(ImageSize srcSize, ImageSize targetSize, ViewScaleType viewScaleType, boolean powerOf2Scale) {
        int srcWidth = srcSize.getWidth();
        int srcHeight = srcSize.getHeight();
        int targetWidth = targetSize.getWidth();
        int targetHeight = targetSize.getHeight();
        int scale = 1;
        int halfWidth;
        int halfHeight;
        switch (viewScaleType) {
            case FIT_INSIDE:
                if (!powerOf2Scale) {
                    scale = Math.max(srcWidth / targetWidth, srcHeight / targetHeight);
                    break;
                }
                halfWidth = srcWidth / 2;
                halfHeight = srcHeight / 2;
                while (true) {
                    if (halfWidth / scale <= targetWidth && halfHeight / scale <= targetHeight) {
                        break;
                    }
                    scale *= 2;
                }
                break;
            case CROP:
                if (!powerOf2Scale) {
                    scale = Math.min(srcWidth / targetWidth, srcHeight / targetHeight);
                    break;
                }
                halfWidth = srcWidth / 2;
                halfHeight = srcHeight / 2;
                while (halfWidth / scale > targetWidth && halfHeight / scale > targetHeight) {
                    scale *= 2;
                }
                break;
        }
        if (scale < 1) {
            scale = 1;
        }
        return considerMaxTextureSize(srcWidth, srcHeight, scale, powerOf2Scale);
    }

    private static int considerMaxTextureSize(int srcWidth, int srcHeight, int scale, boolean powerOf2) {
        ImageSize maxSize = getMaxBitmapSize();
        int maxWidth = maxSize.getWidth();
        int maxHeight = maxSize.getHeight();
        while (true) {
            if (srcWidth / scale <= maxWidth && srcHeight / scale <= maxHeight) {
                return scale;
            }
            if (powerOf2) {
                scale *= 2;
            } else {
                scale++;
            }
        }
    }

    private static int considerCanvasMaxBitmapSize(ImageSize imageSize, int scale, Config config) {
        int maxBitmapSize = getMaxCanvasBitmapSize();
        if (maxBitmapSize > 0) {
            if (config == null) {
                config = Config.ARGB_8888;
            }
            while (((imageSize.getWidth() / scale) * (imageSize.getHeight() / scale)) * getBytesPerPixel(config) > maxBitmapSize) {
                scale++;
            }
        }
        return scale;
    }

    public static int computeMinImageSampleSize(ImageSize srcSize, Config config) {
        int srcWidth = srcSize.getWidth();
        int srcHeight = srcSize.getHeight();
        ImageSize maxSize = getMaxBitmapSize();
        return considerCanvasMaxBitmapSize(srcSize, Math.max((int) Math.ceil((double) (((float) srcWidth) / ((float) maxSize.getWidth()))), (int) Math.ceil((double) (((float) srcHeight) / ((float) maxSize.getHeight())))), config);
    }

    public static float computeImageScale(ImageSize srcSize, ImageSize targetSize, ViewScaleType viewScaleType, boolean stretch) {
        int destLongEdge;
        int srcLongEdge = Math.max(srcSize.getWidth(), srcSize.getHeight());
        int srcShortEdge = Math.min(srcSize.getWidth(), srcSize.getHeight());
        int targetLongEdge = Math.max(targetSize.getWidth(), targetSize.getHeight());
        int targetShortEdge = Math.min(targetSize.getWidth(), targetSize.getHeight());
        float longEdgeScale = ((float) srcLongEdge) / ((float) targetLongEdge);
        float shortEdgeScale = ((float) srcShortEdge) / ((float) targetShortEdge);
        int destShortEdge;
        if ((viewScaleType != ViewScaleType.FIT_INSIDE || longEdgeScale < shortEdgeScale) && (viewScaleType != ViewScaleType.CROP || longEdgeScale >= shortEdgeScale)) {
            destLongEdge = (int) (((float) srcLongEdge) / shortEdgeScale);
            destShortEdge = targetShortEdge;
        } else {
            destLongEdge = targetLongEdge;
            destShortEdge = (int) (((float) srcShortEdge) / longEdgeScale);
        }
        if ((stretch || destLongEdge >= srcLongEdge || destShortEdge >= srcShortEdge) && (!stretch || destLongEdge == srcLongEdge || destShortEdge == srcShortEdge)) {
            return 1.0f;
        }
        return ((float) destLongEdge) / ((float) srcLongEdge);
    }

    private static int getBytesPerPixel(Config config) {
        if (config == Config.ARGB_8888) {
            return 4;
        }
        if (config == Config.RGB_565 || config == Config.ARGB_4444) {
            return 2;
        }
        if (config == Config.ALPHA_8) {
            return 1;
        }
        return 1;
    }
}
