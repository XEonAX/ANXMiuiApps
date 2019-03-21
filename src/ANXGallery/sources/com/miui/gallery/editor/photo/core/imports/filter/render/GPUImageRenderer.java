package com.miui.gallery.editor.photo.core.imports.filter.render;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView.Renderer;
import com.miui.filtersdk.filter.base.GPUImageFilter;
import com.miui.filtersdk.utils.Rotation;
import com.miui.filtersdk.utils.TextureRotationUtil;
import com.miui.gallery.editor.photo.core.imports.filter.render.GPUImage.ScaleType;
import com.miui.gallery.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.LinkedList;
import java.util.Queue;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

@TargetApi(11)
public class GPUImageRenderer implements Renderer {
    static final float[] CUBE = new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};
    private float mBackgroundBlue = 0.0f;
    private float mBackgroundGreen = 0.0f;
    private float mBackgroundRed = 0.0f;
    private BoundLinesFilter mBoundLinesFilter;
    private boolean mDrawBoundLines;
    private GPUImageFilter mDrawFilter;
    private boolean mDrawForSmallPic;
    private GPUImageFilter mFilter;
    private boolean mFlipHorizontal;
    private boolean mFlipVertical;
    private final FloatBuffer mGLCubeBuffer;
    private final FloatBuffer mGLTextureBuffer;
    private int mGLTextureId = -1;
    private int mImageHeight;
    private int mImageWidth;
    private int mOutputHeight;
    private int mOutputWidth;
    private Rotation mRotation;
    private final Queue<Runnable> mRunOnDraw;
    private final Queue<Runnable> mRunOnDrawEnd;
    private ScaleType mScaleType = ScaleType.CENTER_INSIDE;
    public final Object mSurfaceChangedWaiter = new Object();
    private SurfaceTexture mSurfaceTexture = null;

    public GPUImageRenderer(GPUImageFilter filter) {
        this.mFilter = filter;
        this.mRunOnDraw = new LinkedList();
        this.mRunOnDrawEnd = new LinkedList();
        this.mGLCubeBuffer = ByteBuffer.allocateDirect(CUBE.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.mGLCubeBuffer.put(CUBE).position(0);
        this.mGLTextureBuffer = ByteBuffer.allocateDirect(TextureRotationUtil.TEXTURE_NO_ROTATION.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        setRotation(Rotation.NORMAL, false, false);
        this.mBoundLinesFilter = new BoundLinesFilter();
        this.mDrawFilter = new GPUImageFilter();
    }

    public void onSurfaceCreated(GL10 unused, EGLConfig config) {
        GLES20.glClearColor(this.mBackgroundRed, this.mBackgroundGreen, this.mBackgroundBlue, 1.0f);
        GLES20.glDisable(2929);
        this.mFilter.init();
        this.mBoundLinesFilter.init();
        this.mDrawFilter.init();
    }

    public void onSurfaceChanged(GL10 gl, int width, int height) {
        if (!(this.mOutputWidth == width && this.mOutputHeight == height)) {
            this.mOutputWidth = width;
            this.mOutputHeight = height;
            adjustImageScaling();
        }
        GLES20.glViewport(0, 0, width, height);
        initForFilter();
        this.mDrawFilter.onInputSizeChanged(width, height);
        this.mBoundLinesFilter.onInputSizeChanged(width, height);
        this.mBoundLinesFilter.onDisplaySizeChanged(width, height);
        synchronized (this.mSurfaceChangedWaiter) {
            this.mSurfaceChangedWaiter.notifyAll();
        }
    }

    private void initForFilter() {
        this.mFilter.onInputSizeChanged(this.mOutputWidth, this.mOutputHeight);
        this.mFilter.onDisplaySizeChanged(this.mOutputWidth, this.mOutputHeight);
        if (this.mImageWidth >= this.mOutputWidth || this.mImageHeight >= this.mOutputHeight) {
            this.mDrawForSmallPic = false;
        } else {
            this.mDrawForSmallPic = true;
            this.mFilter.initFrameBuffers(this.mImageWidth, this.mImageHeight);
        }
        Log.d("GPUImageRenderer", "initForFilter draw for small:%b", Boolean.valueOf(this.mDrawForSmallPic));
    }

    public void onDrawFrame(GL10 gl) {
        GLES20.glClear(16640);
        runAll(this.mRunOnDraw);
        if (this.mDrawForSmallPic) {
            this.mDrawFilter.onDrawFrame(this.mFilter.onDrawToTexture(this.mGLTextureId), this.mGLCubeBuffer, this.mGLTextureBuffer);
        } else {
            this.mFilter.onDrawFrame(this.mGLTextureId, this.mGLCubeBuffer, this.mGLTextureBuffer);
        }
        if (this.mDrawBoundLines) {
            GLES20.glEnable(3042);
            GLES20.glBlendFunc(1, 771);
            this.mBoundLinesFilter.onDrawFrame(this.mGLTextureId, this.mGLCubeBuffer, this.mGLTextureBuffer);
            GLES20.glDisable(3042);
        }
        runAll(this.mRunOnDrawEnd);
        if (this.mSurfaceTexture != null) {
            this.mSurfaceTexture.updateTexImage();
        }
    }

    public void setBackgroundColor(float red, float green, float blue) {
        this.mBackgroundRed = red;
        this.mBackgroundGreen = green;
        this.mBackgroundBlue = blue;
    }

    private void runAll(Queue<Runnable> queue) {
        if (queue != null) {
            synchronized (queue) {
                while (!queue.isEmpty()) {
                    ((Runnable) queue.poll()).run();
                }
            }
        }
    }

    public void setFilter(final GPUImageFilter filter) {
        runOnDraw(new Runnable() {
            public void run() {
                GPUImageFilter oldFilter = GPUImageRenderer.this.mFilter;
                GPUImageRenderer.this.mFilter = filter;
                if (oldFilter != null) {
                    oldFilter.destroy();
                }
                GPUImageRenderer.this.mFilter.init();
                GPUImageRenderer.this.initForFilter();
            }
        });
    }

    public void deleteImage() {
        runOnDraw(new Runnable() {
            public void run() {
                GLES20.glDeleteTextures(1, new int[]{GPUImageRenderer.this.mGLTextureId}, 0);
                GPUImageRenderer.this.mGLTextureId = -1;
            }
        });
    }

    public void setImageBitmap(final Bitmap bitmap, final boolean recycle) {
        if (bitmap != null && !bitmap.isRecycled()) {
            this.mImageWidth = bitmap.getWidth();
            this.mImageHeight = bitmap.getHeight();
            runOnDraw(new Runnable() {
                public void run() {
                    GPUImageRenderer.this.mGLTextureId = OpenGlUtils.loadTexture(bitmap, GPUImageRenderer.this.mGLTextureId, recycle);
                    GPUImageRenderer.this.mBoundLinesFilter.setImageSize(GPUImageRenderer.this.mImageWidth, GPUImageRenderer.this.mImageHeight);
                }
            });
        }
    }

    public void setScaleType(ScaleType scaleType) {
        this.mScaleType = scaleType;
    }

    private void adjustImageScaling() {
        if (this.mImageWidth != 0 && this.mImageHeight != 0) {
            float outputWidth = (float) this.mOutputWidth;
            float outputHeight = (float) this.mOutputHeight;
            if (this.mRotation == Rotation.ROTATION_270 || this.mRotation == Rotation.ROTATION_90) {
                outputWidth = (float) this.mOutputHeight;
                outputHeight = (float) this.mOutputWidth;
            }
            float ratioMax = Math.max(outputWidth / ((float) this.mImageWidth), outputHeight / ((float) this.mImageHeight));
            int imageWidthNew = Math.round(((float) this.mImageWidth) * ratioMax);
            float ratioWidth = ((float) imageWidthNew) / outputWidth;
            float ratioHeight = ((float) Math.round(((float) this.mImageHeight) * ratioMax)) / outputHeight;
            float[] cube = CUBE;
            float[] textureCords = TextureRotationUtil.getRotation(this.mRotation, this.mFlipHorizontal, this.mFlipVertical);
            if (this.mScaleType == ScaleType.CENTER_CROP) {
                float distHorizontal = (1.0f - (1.0f / ratioWidth)) / 2.0f;
                float distVertical = (1.0f - (1.0f / ratioHeight)) / 2.0f;
                textureCords = new float[]{addDistance(textureCords[0], distHorizontal), addDistance(textureCords[1], distVertical), addDistance(textureCords[2], distHorizontal), addDistance(textureCords[3], distVertical), addDistance(textureCords[4], distHorizontal), addDistance(textureCords[5], distVertical), addDistance(textureCords[6], distHorizontal), addDistance(textureCords[7], distVertical)};
            } else {
                cube = new float[]{CUBE[0] / ratioHeight, CUBE[1] / ratioWidth, CUBE[2] / ratioHeight, CUBE[3] / ratioWidth, CUBE[4] / ratioHeight, CUBE[5] / ratioWidth, CUBE[6] / ratioHeight, CUBE[7] / ratioWidth};
            }
            this.mGLCubeBuffer.clear();
            this.mGLCubeBuffer.put(cube).position(0);
            this.mGLTextureBuffer.clear();
            this.mGLTextureBuffer.put(textureCords).position(0);
        }
    }

    private float addDistance(float coordinate, float distance) {
        return coordinate == 0.0f ? distance : 1.0f - distance;
    }

    public void setRotation(Rotation rotation) {
        this.mRotation = rotation;
    }

    public void setRotation(Rotation rotation, boolean flipHorizontal, boolean flipVertical) {
        this.mFlipHorizontal = flipHorizontal;
        this.mFlipVertical = flipVertical;
        setRotation(rotation);
    }

    public boolean isFlippedHorizontally() {
        return this.mFlipHorizontal;
    }

    public boolean isFlippedVertically() {
        return this.mFlipVertical;
    }

    protected void runOnDraw(Runnable runnable) {
        synchronized (this.mRunOnDraw) {
            this.mRunOnDraw.add(runnable);
        }
    }

    public void setDrawBoundLines(boolean drawBoundLines) {
        this.mDrawBoundLines = drawBoundLines;
    }
}
