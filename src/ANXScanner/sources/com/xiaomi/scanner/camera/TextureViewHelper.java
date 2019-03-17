package com.xiaomi.scanner.camera;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View;
import android.view.View.OnLayoutChangeListener;
import com.alibaba.fastjson.asm.Opcodes;
import com.android.ex.camera2.portability.CameraAgent.CameraProxy;
import com.android.ex.camera2.portability.CameraDeviceInfo.Characteristics;
import com.android.ex.camera2.portability.Size;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.ui.PreviewStatusListener.PreviewAreaChangedListener;
import com.xiaomi.scanner.ui.PreviewStatusListener.PreviewAspectRatioChangedListener;
import com.xiaomi.scanner.util.CameraUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class TextureViewHelper implements SurfaceTextureListener, OnLayoutChangeListener {
    public static final float MATCH_SCREEN = 0.0f;
    private static final Tag TAG = new Tag("TextureView");
    private static final int UNSET = -1;
    private float mAspectRatio = 0.0f;
    private final ArrayList<PreviewAspectRatioChangedListener> mAspectRatioChangedListeners = new ArrayList();
    private boolean mAutoAdjustTransform = true;
    private final CameraProvider mCameraProvider;
    private int mHeight = 0;
    private Matrix mMatrixPreview;
    private OnLayoutChangeListener mOnLayoutChangeListener = null;
    private int mOrientation = -1;
    private TextureView mPreview;
    private RectF mPreviewArea = new RectF();
    private int mPreviewDisplayHeight;
    private int mPreviewDisplayWidth;
    private final ArrayList<PreviewAreaChangedListener> mPreviewSizeChangedListeners = new ArrayList();
    private SurfaceTextureListener mSurfaceTextureListener;
    private int mWidth = 0;

    public TextureViewHelper(TextureView preview, CameraProvider cameraProvider) {
        this.mPreview = preview;
        this.mCameraProvider = cameraProvider;
        this.mPreview.addOnLayoutChangeListener(this);
        this.mPreview.setSurfaceTextureListener(this);
    }

    public void setAutoAdjustTransform(boolean enable) {
        this.mAutoAdjustTransform = enable;
    }

    public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        int width = right - left;
        int height = bottom - top;
        int rotation = CameraUtil.getDisplayRotation();
        Log.v(TAG, String.format(Locale.ENGLISH, "onLayoutChange: [%d %d %d %d]->[%d %d %d %d], orientation=%d", new Object[]{Integer.valueOf(oldLeft), Integer.valueOf(oldTop), Integer.valueOf(oldRight), Integer.valueOf(oldBottom), Integer.valueOf(left), Integer.valueOf(top), Integer.valueOf(right), Integer.valueOf(bottom), Integer.valueOf(rotation)}));
        if (!(this.mWidth == width && this.mHeight == height && this.mOrientation == rotation)) {
            this.mWidth = width;
            this.mHeight = height;
            this.mOrientation = rotation;
            if (!updateTransform()) {
                clearTransform();
            }
        }
        if (this.mOnLayoutChangeListener != null) {
            this.mOnLayoutChangeListener.onLayoutChange(v, left, top, right, bottom, oldLeft, oldTop, oldRight, oldBottom);
        }
    }

    public void clearTransform() {
        this.mPreview.setTransform(new Matrix());
        this.mPreviewArea.set(0.0f, 0.0f, (float) this.mWidth, (float) this.mHeight);
        onPreviewAreaChanged(this.mPreviewArea);
        setAspectRatio(0.0f);
    }

    public void updateAspectRatio(float aspectRatio) {
        Log.v(TAG, "updateAspectRatio: " + aspectRatio);
        if (aspectRatio <= 0.0f) {
            Log.e(TAG, "Invalid aspect ratio: " + aspectRatio);
            return;
        }
        if (aspectRatio < 1.0f) {
            aspectRatio = 1.0f / aspectRatio;
        }
        setAspectRatio(aspectRatio);
        updateTransform();
    }

    private void setAspectRatio(float aspectRatio) {
        if (this.mAspectRatio != aspectRatio) {
            Log.v(TAG, String.format(Locale.ENGLISH, "aspectRatio: [%.2f -> %.2f] ", new Object[]{Float.valueOf(this.mAspectRatio), Float.valueOf(aspectRatio)}));
            this.mAspectRatio = aspectRatio;
            onAspectRatioChanged();
        }
    }

    private void onAspectRatioChanged() {
        Iterator it = this.mAspectRatioChangedListeners.iterator();
        while (it.hasNext()) {
            ((PreviewAspectRatioChangedListener) it.next()).onPreviewAspectRatioChanged(this.mAspectRatio);
        }
    }

    public void addAspectRatioChangedListener(PreviewAspectRatioChangedListener listener) {
        if (listener != null && !this.mAspectRatioChangedListeners.contains(listener)) {
            this.mAspectRatioChangedListeners.add(listener);
        }
    }

    public void updateTransform(Matrix matrix) {
        RectF previewRect = new RectF(0.0f, 0.0f, (float) this.mWidth, (float) this.mHeight);
        matrix.mapRect(previewRect);
        float previewWidth = previewRect.width();
        float previewHeight = previewRect.height();
        if (previewHeight == 0.0f || previewWidth == 0.0f) {
            Log.e(TAG, "Invalid preview size: " + previewWidth + " x " + previewHeight);
            return;
        }
        float aspectRatio = previewWidth / previewHeight;
        if (aspectRatio < 1.0f) {
            aspectRatio = 1.0f / aspectRatio;
        }
        if (aspectRatio != this.mAspectRatio) {
            setAspectRatio(aspectRatio);
        }
        RectF previewAreaBasedOnAspectRatio = new RectF(0.0f, 0.0f, (float) this.mWidth, (float) this.mHeight);
        Matrix additionalTransform = new Matrix();
        additionalTransform.setRectToRect(previewRect, previewAreaBasedOnAspectRatio, ScaleToFit.CENTER);
        matrix.postConcat(additionalTransform);
        this.mPreview.setTransform(matrix);
        updatePreviewArea(matrix);
    }

    private void updatePreviewArea(Matrix matrix) {
        this.mPreviewArea.set(0.0f, 0.0f, (float) this.mWidth, (float) this.mHeight);
        matrix.mapRect(this.mPreviewArea);
        onPreviewAreaChanged(this.mPreviewArea);
    }

    public void setOnLayoutChangeListener(OnLayoutChangeListener listener) {
        this.mOnLayoutChangeListener = listener;
    }

    public void setSurfaceTextureListener(SurfaceTextureListener listener) {
        this.mSurfaceTextureListener = listener;
    }

    private boolean updateTransform() {
        Log.v(TAG, "updateTransform: autoAdjust=" + this.mAutoAdjustTransform + " orientation=" + this.mOrientation);
        if (!this.mAutoAdjustTransform) {
            return false;
        }
        if (this.mAspectRatio == 0.0f || this.mAspectRatio < 0.0f || this.mWidth == 0 || this.mHeight == 0) {
            return true;
        }
        this.mMatrixPreview = new Matrix();
        int cameraId = this.mCameraProvider.getCurrentCameraId();
        if (cameraId >= 0) {
            Characteristics info = this.mCameraProvider.getCharacteristics(cameraId);
            PointF scale = new PointF();
            CameraProxy cameraProxy = this.mCameraProvider.getCameraDevice();
            if (cameraProxy != null) {
                getPreviewScale(scale, getPreviewSize(cameraProxy.getSettings().getCurrentPreviewSize(), info != null ? info.getPreviewOrientation(CameraUtil.getDisplayRotation()) : 90));
                this.mPreviewDisplayWidth = (int) (((float) this.mWidth) / scale.x);
                this.mPreviewDisplayHeight = (int) (((float) this.mHeight) / scale.y);
            }
            if (info != null) {
                this.mMatrixPreview = info.getPreviewTransform(this.mOrientation, new RectF(0.0f, 0.0f, 1.0f, 1.0f), new RectF(0.0f, 0.0f, scale.x, scale.y));
            } else {
                this.mMatrixPreview = new Matrix();
                this.mMatrixPreview.setRectToRect(new RectF(0.0f, 0.0f, 1.0f, 1.0f), new RectF(0.0f, 0.0f, scale.x, scale.y), ScaleToFit.FILL);
            }
            Log.v(TAG, "updateTransform: matrix=" + this.mMatrixPreview);
        }
        this.mPreview.setTransform(this.mMatrixPreview);
        updatePreviewArea(this.mMatrixPreview);
        return true;
    }

    private Size getPreviewSize(Size size, int orientation) {
        return (orientation == 0 || orientation == Opcodes.GETFIELD) ? size : new Size(size.height(), size.width());
    }

    private void getPreviewScale(PointF scalePoint, Size previewSize) {
        float scaleX = 1.0f;
        float scaleY = 1.0f;
        if (previewSize != null) {
            if (previewSize.width() != this.mWidth) {
                scaleX = (((float) this.mWidth) * 1.0f) / ((float) previewSize.width());
            }
            if (previewSize.height() != this.mHeight) {
                scaleY = (((float) this.mHeight) * 1.0f) / ((float) previewSize.height());
            }
        }
        if (scaleX == scaleY) {
            scaleY = 1.0f;
            scaleX = 1.0f;
        } else if (scaleX >= 1.0f || scaleY >= 1.0f) {
            if (scaleX > scaleY) {
                scaleY = (1.0f / scaleY) * scaleX;
                scaleX = 1.0f;
            } else if (scaleX < scaleY) {
                scaleX = (1.0f / scaleX) * scaleY;
                scaleY = 1.0f;
            }
        } else if (scaleX > scaleY) {
            scaleX *= 1.0f / scaleY;
            scaleY = 1.0f;
        } else if (scaleX < scaleY) {
            scaleY *= 1.0f / scaleX;
            scaleX = 1.0f;
        }
        scalePoint.set(scaleX, scaleY);
    }

    private void onPreviewAreaChanged(final RectF previewArea) {
        final List<PreviewAreaChangedListener> listeners = new ArrayList(this.mPreviewSizeChangedListeners);
        this.mPreview.post(new Runnable() {
            public void run() {
                for (PreviewAreaChangedListener listener : listeners) {
                    listener.onPreviewAreaChanged(previewArea);
                }
            }
        });
    }

    public RectF getPreviewArea() {
        return new RectF(this.mPreviewArea);
    }

    public RectF getTextureArea() {
        if (this.mPreview == null) {
            return new RectF();
        }
        Matrix matrix = new Matrix();
        RectF area = new RectF(0.0f, 0.0f, (float) this.mWidth, (float) this.mHeight);
        this.mPreview.getTransform(matrix).mapRect(area);
        return area;
    }

    public Bitmap getPreviewBitmap(int downSample) {
        RectF textureArea = getTextureArea();
        int width = ((int) textureArea.width()) / downSample;
        int height = ((int) textureArea.height()) / downSample;
        return Bitmap.createBitmap(this.mPreview.getBitmap(width, height), 0, 0, width, height, this.mPreview.getTransform(null), true);
    }

    public void addPreviewAreaSizeChangedListener(PreviewAreaChangedListener listener) {
        if (listener != null && !this.mPreviewSizeChangedListeners.contains(listener)) {
            this.mPreviewSizeChangedListeners.add(listener);
            if (this.mPreviewArea.width() == 0.0f || this.mPreviewArea.height() == 0.0f) {
                listener.onPreviewAreaChanged(new RectF(0.0f, 0.0f, (float) this.mWidth, (float) this.mHeight));
            } else {
                listener.onPreviewAreaChanged(new RectF(this.mPreviewArea));
            }
        }
    }

    public void removePreviewAreaSizeChangedListener(PreviewAreaChangedListener listener) {
        if (listener != null && this.mPreviewSizeChangedListeners.contains(listener)) {
            this.mPreviewSizeChangedListeners.remove(listener);
        }
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surface, int width, int height) {
        if (!(this.mWidth == 0 || this.mHeight == 0)) {
            updateTransform();
        }
        if (this.mSurfaceTextureListener != null) {
            this.mSurfaceTextureListener.onSurfaceTextureAvailable(surface, width, height);
        }
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surface, int width, int height) {
        if (this.mSurfaceTextureListener != null) {
            this.mSurfaceTextureListener.onSurfaceTextureSizeChanged(surface, width, height);
        }
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surface) {
        if (this.mSurfaceTextureListener != null) {
            this.mSurfaceTextureListener.onSurfaceTextureDestroyed(surface);
        }
        return false;
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surface) {
        if (this.mSurfaceTextureListener != null) {
            this.mSurfaceTextureListener.onSurfaceTextureUpdated(surface);
        }
    }

    public int getPreviewHeight() {
        return this.mHeight;
    }

    public int getPreviewWidth() {
        return this.mWidth;
    }

    public Bitmap getPreviewBitmap() {
        Bitmap bitmap = this.mPreview.getBitmap();
        if (this.mPreviewDisplayWidth == this.mWidth && this.mPreviewDisplayHeight == this.mHeight) {
            return bitmap;
        }
        return Bitmap.createBitmap(bitmap, 0, 0, this.mPreviewDisplayWidth, this.mPreviewDisplayHeight, this.mMatrixPreview, true);
    }
}
