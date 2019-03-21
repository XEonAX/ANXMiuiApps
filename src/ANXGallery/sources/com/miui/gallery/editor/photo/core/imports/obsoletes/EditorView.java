package com.miui.gallery.editor.photo.core.imports.obsoletes;

import android.animation.Animator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import com.miui.gallery.editor.photo.widgets.StrokeImageHelper;

public class EditorView extends View {
    private Bitmap mBitmap;
    private RectF mBitmapBounds;
    private RectF mBitmapDisplayBounds;
    private Matrix mBitmapToCanvas;
    private RectF mCanvasBounds;
    private boolean mDrawBoundLine;
    private EventHandler mEventHandler;
    private Paint mPaint;
    private Plugin mPlugin;
    private Rect mRect;
    private StrokeImageHelper mStrokeImageHelper;

    public static abstract class Plugin {
        private EditorView mEditorView;
        private EventHandler mEventHandler;
        protected ValueAnimator mImageAnimator;
        private PropertyValuesHolder mTransValues;
        private AnimatorUpdateListener mTranslateUpdateListener = new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator animation) {
                Plugin.this.getImageMatrix().set((Matrix) Plugin.this.mImageAnimator.getAnimatedValue());
                Plugin.this.invalidate();
            }
        };

        protected interface BoundsFixCallback {
            void onDone();
        }

        private class BoundsFixListener extends OneShotAnimateListener {
            private BoundsFixCallback mCallback;

            public BoundsFixListener(BoundsFixCallback callback) {
                this.mCallback = callback;
            }

            public void onAnimationEnd(Animator animation) {
                super.onAnimationEnd(animation);
                this.mCallback.onDone();
            }
        }

        protected abstract void onStart();

        protected abstract boolean onTouchEvent(MotionEvent motionEvent);

        public void start() {
            onStart();
            invalidate();
        }

        protected void onMatrixChanged() {
        }

        protected void config(Canvas canvas) {
        }

        protected boolean draw(Canvas canvas) {
            return false;
        }

        protected void drawOverlay(Canvas canvas) {
        }

        protected final EventHandler getEventHandler() {
            ensureStarted();
            return this.mEventHandler;
        }

        protected final void invalidate() {
            ensureStarted();
            this.mEditorView.invalidate();
        }

        protected final Matrix getImageMatrix() {
            ensureStarted();
            return this.mEditorView.mBitmapToCanvas;
        }

        protected final RectF getBounds() {
            ensureStarted();
            return this.mEditorView.mCanvasBounds;
        }

        protected final RectF getImageBounds() {
            ensureStarted();
            return this.mEditorView.mBitmapBounds;
        }

        protected final RectF getImageDisplayBounds() {
            ensureStarted();
            return this.mEditorView.mBitmapDisplayBounds;
        }

        protected final Context getContext() {
            return this.mEditorView.getContext();
        }

        protected final Bitmap getImage() {
            return this.mEditorView.mBitmap;
        }

        private void ensureStarted() {
            if (this.mEditorView == null) {
                throw new IllegalStateException("Current plugin is not installed.");
            }
        }

        protected void setupImageAnimator(Matrix start, Matrix end, OneShotAnimateListener listener) {
            if (this.mImageAnimator == null) {
                this.mImageAnimator = new ValueAnimator();
                this.mTransValues = PropertyValuesHolder.ofObject("matrix", new TranslateEvaluator(), new Object[]{start, end});
                this.mImageAnimator.setObjectValues(new Object[]{this.mTransValues});
                this.mImageAnimator.addUpdateListener(this.mTranslateUpdateListener);
            }
            this.mTransValues.setObjectValues(new Object[]{start, end});
            this.mImageAnimator.setDuration(300);
            this.mImageAnimator.setValues(new PropertyValuesHolder[]{this.mTransValues});
            if (listener != null) {
                this.mImageAnimator.addListener(listener);
            }
        }

        protected static void resolveTranslate(RectF bitmap, RectF cropArea, PointF result) {
            if (bitmap.contains(cropArea)) {
                result.x = 0.0f;
                result.y = 0.0f;
                return;
            }
            float offsetX = 0.0f;
            float offsetY = 0.0f;
            if (cropArea.top < bitmap.top) {
                offsetY = cropArea.top - bitmap.top;
            } else if (cropArea.bottom > bitmap.bottom) {
                offsetY = cropArea.bottom - bitmap.bottom;
            }
            if (cropArea.left < bitmap.left) {
                offsetX = cropArea.left - bitmap.left;
            } else if (cropArea.right > bitmap.right) {
                offsetX = cropArea.right - bitmap.right;
            }
            result.x = offsetX;
            result.y = offsetY;
        }

        protected static float resolveScale(RectF bitmap, RectF cropArea) {
            float scale = 1.0f;
            if (cropArea.width() > bitmap.width()) {
                scale = cropArea.width() / bitmap.width();
            }
            if (cropArea.height() > bitmap.height()) {
                return Math.max(scale, cropArea.height() / bitmap.height());
            }
            return scale;
        }

        protected void fixImageBounds(RectF displayArea, BoundsFixCallback callback) {
            Matrix imageMatrix = getImageMatrix();
            RectF image = getImageBounds();
            Matrix invertMatrix = new Matrix();
            imageMatrix.invert(invertMatrix);
            RectF invertRect = new RectF();
            invertMatrix.mapRect(invertRect, displayArea);
            if (!image.contains(invertRect)) {
                Matrix start = new Matrix(imageMatrix);
                Matrix end = new Matrix(imageMatrix);
                if (invertRect.width() > image.width() || invertRect.height() > image.height()) {
                    float scale = resolveScale(image, invertRect);
                    end.preScale(scale, scale, invertRect.centerX(), invertRect.centerY());
                }
                end.invert(invertMatrix);
                invertMatrix.mapRect(invertRect, displayArea);
                if (!image.contains(invertRect)) {
                    PointF offset = new PointF();
                    resolveTranslate(getImageBounds(), invertRect, offset);
                    end.preTranslate(offset.x, offset.y);
                }
                setupImageAnimator(start, end, callback == null ? null : new BoundsFixListener(callback));
                this.mImageAnimator.start();
            } else if (callback != null) {
                callback.onDone();
            }
        }
    }

    public EditorView(Context context) {
        super(context);
        this.mCanvasBounds = new RectF();
        this.mBitmapBounds = new RectF();
        this.mBitmapDisplayBounds = new RectF();
        this.mBitmapToCanvas = new Matrix();
        this.mPlugin = null;
        this.mRect = new Rect();
        this.mPaint = new Paint(7);
        this.mDrawBoundLine = true;
        initialize();
        setBackground(null);
    }

    public EditorView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public EditorView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mCanvasBounds = new RectF();
        this.mBitmapBounds = new RectF();
        this.mBitmapDisplayBounds = new RectF();
        this.mBitmapToCanvas = new Matrix();
        this.mPlugin = null;
        this.mRect = new Rect();
        this.mPaint = new Paint(7);
        this.mDrawBoundLine = true;
        initialize();
        setBackground(null);
    }

    private void initialize() {
        this.mEventHandler = new EventHandler();
        this.mStrokeImageHelper = new StrokeImageHelper(getContext());
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if (MeasureSpec.getMode(widthMeasureSpec) == Integer.MIN_VALUE && MeasureSpec.getMode(heightMeasureSpec) == Integer.MIN_VALUE) {
            int width = MeasureSpec.getSize(widthMeasureSpec);
            int height = MeasureSpec.getSize(heightMeasureSpec);
            if (this.mBitmap != null) {
                float pW = ((float) width) / ((float) this.mBitmap.getWidth());
                float pH = ((float) height) / ((float) this.mBitmap.getHeight());
                if (pW > pH) {
                    width = (int) ((((float) width) * pH) / pW);
                } else {
                    height = (int) ((((float) height) * pW) / pH);
                }
            }
            setMeasuredDimension(width, height);
            return;
        }
        int pLeft = getPaddingLeft();
        int pRight = getPaddingRight();
        int pTop = getPaddingTop();
        int pBottom = getPaddingBottom();
        int w = pLeft + pRight;
        if (this.mBitmap != null) {
            w += this.mBitmap.getWidth();
        }
        int h = pTop + pBottom;
        if (this.mBitmap != null) {
            h += this.mBitmap.getHeight();
        }
        setMeasuredDimension(resolveSizeAndState(Math.max(w, getSuggestedMinimumWidth()), widthMeasureSpec, 0), resolveSizeAndState(Math.max(h, getSuggestedMinimumHeight()), heightMeasureSpec, 0));
    }

    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        if (this.mCanvasBounds.isEmpty()) {
            this.mCanvasBounds.left = (float) getPaddingLeft();
            this.mCanvasBounds.top = (float) getPaddingTop();
            this.mCanvasBounds.right = (float) (w - getPaddingRight());
            this.mCanvasBounds.bottom = (float) (h - getPaddingBottom());
            resetMatrix();
        }
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int count = canvas.getSaveCount();
        if (this.mPlugin != null) {
            this.mPlugin.config(canvas);
        }
        if ((this.mPlugin == null || !this.mPlugin.draw(canvas)) && this.mBitmap != null) {
            canvas.drawBitmap(this.mBitmap, this.mBitmapToCanvas, this.mPaint);
        }
        this.mPlugin.drawOverlay(canvas);
        if (this.mDrawBoundLine) {
            this.mStrokeImageHelper.draw(canvas, this.mBitmapBounds, this.mBitmapToCanvas);
        }
        canvas.restoreToCount(count);
    }

    public boolean onTouchEvent(MotionEvent event) {
        return this.mPlugin != null && this.mPlugin.onTouchEvent(event);
    }

    public void setBitmap(Bitmap bitmap) {
        this.mBitmap = bitmap;
        if (bitmap == null) {
            this.mBitmapBounds.right = 0.0f;
            this.mBitmapBounds.bottom = 0.0f;
        } else {
            this.mBitmapBounds.right = (float) bitmap.getWidth();
            this.mBitmapBounds.bottom = (float) bitmap.getHeight();
        }
        resetMatrix();
        invalidate();
    }

    public void setCanvasBounds(RectF rect) {
        this.mCanvasBounds.set(rect);
        resetMatrix();
        invalidate();
    }

    public void install(Plugin plugin) {
        plugin.mEditorView = this;
        plugin.mEventHandler = this.mEventHandler;
        this.mPlugin = plugin;
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
    }

    private void resetMatrix() {
        this.mBitmapToCanvas.setRectToRect(this.mBitmapBounds, this.mCanvasBounds, ScaleToFit.CENTER);
        this.mBitmapDisplayBounds.set(this.mBitmapBounds);
        this.mBitmapToCanvas.mapRect(this.mBitmapDisplayBounds, this.mBitmapBounds);
        notifyMatrixChanged();
    }

    private void notifyMatrixChanged() {
        if (this.mPlugin != null) {
            this.mPlugin.onMatrixChanged();
        }
    }

    public void setDrawBoundLine(boolean drawBoundLine) {
        this.mDrawBoundLine = drawBoundLine;
    }
}
