package com.miui.gallery.editor.photo.core.imports.mosaic;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import com.miui.filtersdk.utils.OpenGlUtils;
import com.miui.gallery.editor.photo.core.imports.mosaic.shader.GLTransparentShader;
import com.miui.gallery.editor.photo.widgets.glview.AbstractRender;
import com.miui.gallery.editor.photo.widgets.glview.GLFBOManager;
import com.miui.gallery.editor.photo.widgets.glview.shader.GLTextureShader;
import com.miui.gallery.util.Log;
import java.util.Iterator;
import java.util.LinkedList;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

class MosaicRender extends AbstractRender {
    private MosaicGLEntity mCurrentEntity;
    private GLFBOManager mEffectFBOManager;
    float[] mGLPosition = new float[8];
    private GLTextureShader mGLTextureShader;
    private GLTransparentShader mGLTransparentDrawable;
    private Iterator mIterator;
    private GLRectF mLastRect = new GLRectF();
    private GLFBOManager mMaskFBOManager;
    private float[] mMaskPosition = new float[8];
    private MosaicEffectProcessor mMosaicEffectProcessor;
    private Bitmap mOriginBitmap;
    private GLFBOManager mOriginFBOManager;
    private int mOriginTextureId;
    private Bitmap mPenMask;
    private int mPenTexture;
    private int mViewHeight;
    private int mViewWidth;

    private class CaptureTask implements Runnable {
        private final MosaicUndoManager mMosaicUndoManager;

        CaptureTask(MosaicUndoManager mosaicUndoManager) {
            this.mMosaicUndoManager = mosaicUndoManager;
        }

        public void run() {
            this.mMosaicUndoManager.capture(MosaicRender.this.mOriginFBOManager, MosaicRender.this.mGLTextureShader);
        }
    }

    private class DrawMaskTask implements Runnable {
        private final GLRectF mGLRectF;
        private final boolean mIsFirst;

        DrawMaskTask(GLRectF glRectF, boolean isFirst) {
            this.mGLRectF = glRectF;
            this.mIsFirst = isFirst;
        }

        public void run() {
            if (this.mIsFirst) {
                MosaicRender.this.mLastRect.set(this.mGLRectF);
                this.mGLRectF.getVertex(MosaicRender.this.mMaskPosition);
                MosaicRender.this.drawMask(MosaicRender.this.mMaskPosition);
                return;
            }
            MosaicRender.this.drawMaskBetween(MosaicRender.this.mLastRect, this.mGLRectF);
            MosaicRender.this.mLastRect.set(this.mGLRectF);
        }
    }

    private class EnableCaptureTask implements Runnable {
        private final GLFBOManager mCapture;

        EnableCaptureTask(GLFBOManager capture) {
            this.mCapture = capture;
        }

        public void run() {
            MosaicRender.this.mOriginFBOManager.bind();
            if (this.mCapture != null) {
                MosaicRender.this.mGLTextureShader.drawFBO(this.mCapture.getTextureId());
            } else {
                MosaicRender.this.mGLTextureShader.draw(MosaicRender.this.mOriginTextureId);
            }
            MosaicRender.this.mOriginFBOManager.unBind();
            MosaicRender.this.mMosaicEffectProcessor.draw(MosaicRender.this.mEffectFBOManager, MosaicRender.this.mCurrentEntity, MosaicRender.this.mOriginFBOManager.getTextureId(), MosaicRender.this.mOriginTextureId, MosaicRender.this.mGLTextureShader);
        }
    }

    class EnableEntityTask implements Runnable {
        private final MosaicGLEntity mMosaicGLEntity;
        private final float mScale;

        EnableEntityTask(MosaicGLEntity mosaicGLEntity) {
            this.mMosaicGLEntity = mosaicGLEntity;
            this.mScale = 1.0f;
        }

        EnableEntityTask(MosaicGLEntity mosaicGLEntity, float scale) {
            this.mMosaicGLEntity = mosaicGLEntity;
            this.mScale = scale;
        }

        public void run() {
            MosaicRender.this.mMosaicEffectProcessor.draw(MosaicRender.this.mEffectFBOManager, this.mMosaicGLEntity, MosaicRender.this.mOriginFBOManager.getTextureId(), MosaicRender.this.mOriginTextureId, MosaicRender.this.mGLTextureShader, this.mScale);
            MosaicRender.this.mCurrentEntity = this.mMosaicGLEntity;
        }
    }

    class InitTask implements Runnable {
        InitTask() {
        }

        public void run() {
            try {
                MosaicRender.this.mOriginTextureId = OpenGlUtils.loadTexture(MosaicRender.this.mOriginBitmap, -1);
            } catch (IllegalArgumentException e) {
                Log.e("MosaicRender", "bitmap : isRecycled : %s config : %s", Boolean.valueOf(MosaicRender.this.mOriginBitmap.isRecycled()), MosaicRender.this.mOriginBitmap.getConfig(), e);
                MosaicRender.this.mOriginTextureId = -1;
            }
            MosaicRender.this.mPenTexture = OpenGlUtils.loadTexture(MosaicRender.this.mPenMask, -1, true);
            MosaicRender.this.mGLTextureShader = new GLTextureShader();
            MosaicRender.this.mGLTransparentDrawable = new GLTransparentShader();
            MosaicRender.this.mMaskFBOManager = new GLFBOManager(MosaicRender.this.mOriginBitmap.getWidth(), MosaicRender.this.mOriginBitmap.getHeight(), MosaicRender.this.mViewWidth, MosaicRender.this.mViewHeight);
            MosaicRender.this.mMaskFBOManager.bind();
            GLES20.glClear(16640);
            MosaicRender.this.mMaskFBOManager.unBind();
            MosaicRender.this.mEffectFBOManager = new GLFBOManager(MosaicRender.this.mOriginBitmap.getWidth(), MosaicRender.this.mOriginBitmap.getHeight(), MosaicRender.this.mViewWidth, MosaicRender.this.mViewHeight);
            MosaicRender.this.mEffectFBOManager.bind();
            GLES20.glClear(16640);
            MosaicRender.this.mEffectFBOManager.unBind();
            MosaicRender.this.mOriginFBOManager = new GLFBOManager(MosaicRender.this.mOriginBitmap.getWidth(), MosaicRender.this.mOriginBitmap.getHeight(), MosaicRender.this.mViewWidth, MosaicRender.this.mViewHeight);
            MosaicRender.this.mOriginFBOManager.bind();
            GLES20.glClear(16640);
            MosaicRender.this.mGLTextureShader.draw(MosaicRender.this.mOriginTextureId);
            MosaicRender.this.mOriginFBOManager.unBind();
            MosaicRender.this.mMosaicEffectProcessor = new MosaicEffectProcessor(MosaicRender.this.mOriginBitmap.getWidth(), MosaicRender.this.mOriginBitmap.getHeight(), MosaicRender.this.mViewWidth, MosaicRender.this.mViewHeight);
            if (MosaicRender.this.mCurrentEntity != null) {
                MosaicRender.this.mMosaicEffectProcessor.draw(MosaicRender.this.mEffectFBOManager, MosaicRender.this.mCurrentEntity, MosaicRender.this.mOriginFBOManager.getTextureId(), MosaicRender.this.mOriginTextureId, MosaicRender.this.mGLTextureShader);
            }
            MosaicRender.this.mIterator = new Iterator((float) MosaicRender.this.mOriginBitmap.getWidth(), (float) MosaicRender.this.mOriginBitmap.getHeight());
        }
    }

    MosaicRender(Bitmap originBitmap, Bitmap penMask) {
        this.mOriginBitmap = originBitmap;
        this.mPenMask = penMask;
    }

    public void onSurfaceCreated(GL10 gl, EGLConfig config) {
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        GLES20.glDisable(2929);
    }

    public void onSurfaceChanged(GL10 gl, int width, int height) {
        GLES20.glViewport(0, 0, width, height);
        this.mViewWidth = width;
        this.mViewHeight = height;
    }

    public void onDrawFrame(GL10 gl) {
        super.onDrawFrame(gl);
        GLES20.glClear(16640);
        this.mGLTextureShader.draw(this.mOriginFBOManager.getTextureId(), this.mGLPosition);
    }

    void init(MosaicGLEntity mosaicGLEntity) {
        runOnDraw(new InitTask());
        if (mosaicGLEntity != null) {
            runOnDraw(new EnableEntityTask(mosaicGLEntity));
        }
    }

    void enableEntity(MosaicGLEntity mosaicGLEntity) {
        runOnDraw(new EnableEntityTask(mosaicGLEntity));
    }

    private void drawMaskPre() {
        this.mMaskFBOManager.bind();
        this.mGLTransparentDrawable.draw();
        GLES20.glEnable(3042);
        GLES20.glBlendFuncSeparate(1, 771, 1, 771);
    }

    private void drawMaskAfter() {
        GLES20.glBlendFunc(772, 0);
        this.mGLTextureShader.drawFBO(this.mEffectFBOManager.getTextureId());
        GLES20.glDisable(3042);
        this.mMaskFBOManager.unBind();
        this.mOriginFBOManager.bind();
        GLES20.glEnable(3042);
        GLES20.glBlendFuncSeparate(1, 771, 0, 1);
        this.mGLTextureShader.draw(this.mMaskFBOManager.getTextureId(), GLTextureShader.CUBE_REVERSE);
        GLES20.glDisable(3042);
        this.mOriginFBOManager.unBind();
    }

    private void drawMask(float[] position) {
        drawMaskPre();
        this.mGLTextureShader.draw(this.mPenTexture, position);
        drawMaskAfter();
    }

    private void drawMaskBetween(GLRectF preRect, GLRectF mCurrentRect) {
        this.mIterator.countMiddleRect(preRect, mCurrentRect);
        drawMaskPre();
        while (this.mIterator.hasNext()) {
            this.mIterator.next(this.mMaskPosition);
            this.mGLTextureShader.draw(this.mPenTexture, this.mMaskPosition);
        }
        drawMaskAfter();
    }

    void drawMaskPaintingItems(LinkedList<PaintingItem> paintingItems) {
        drawMaskPre();
        Iterator it = paintingItems.iterator();
        while (it.hasNext()) {
            boolean first = true;
            GLRectF last = null;
            Iterator it2 = ((PaintingItem) it.next()).points.iterator();
            while (it2.hasNext()) {
                GLRectF glRectF = (GLRectF) it2.next();
                if (first) {
                    glRectF.getVertex(this.mMaskPosition);
                    this.mGLTextureShader.draw(this.mPenTexture, this.mMaskPosition);
                    last = glRectF;
                    first = false;
                } else {
                    this.mIterator.countMiddleRect(last, glRectF);
                    while (this.mIterator.hasNext()) {
                        this.mIterator.next(this.mMaskPosition);
                        this.mGLTextureShader.draw(this.mPenTexture, this.mMaskPosition);
                    }
                    last = glRectF;
                }
            }
        }
        drawMaskAfter();
    }

    void drawRect(GLRectF glRectF, boolean isFirst) {
        runOnDraw(new DrawMaskTask(glRectF, isFirst));
    }

    void capture(MosaicUndoManager mosaicUndoManager) {
        runOnDraw(new CaptureTask(mosaicUndoManager));
    }

    void enableCapture(GLFBOManager capture) {
        runOnDraw(new EnableCaptureTask(capture));
    }
}
