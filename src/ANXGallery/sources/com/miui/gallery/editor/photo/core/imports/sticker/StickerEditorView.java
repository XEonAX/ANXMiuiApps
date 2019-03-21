package com.miui.gallery.editor.photo.core.imports.sticker;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.utils.Bitmaps;
import com.miui.gallery.editor.photo.widgets.imageview.BitmapGestureView;
import java.util.ArrayList;
import java.util.List;

public class StickerEditorView extends BitmapGestureView {
    private Matrix mBitmapToCanvas = new Matrix();
    private Cache mCache;
    private Matrix mCanvasToBitmap = new Matrix();
    private float mInitialSize;
    private float[] mMatrixValue = new float[9];
    private float mMaxRadius;
    private float mMinRadius;
    private Mutator mMutator;
    private PointF mPrePoint = new PointF();
    private RectF mRectTemp = new RectF();
    private PointF mReusePoint = new PointF();
    private State mState = State.IDLE;

    private class CustomGestureListener implements FeatureGesListener {
        private float mDownX;
        private float mDownY;
        private float mFirstSpan;
        private float[] mPoint;
        private float mPreScale;

        private CustomGestureListener() {
            this.mPoint = new float[2];
        }

        public boolean onDown(MotionEvent e) {
            this.mDownX = e.getX();
            this.mDownY = e.getY();
            StickerEditorView.this.convertPointToViewPortCoordinate(e, this.mPoint);
            if (StickerEditorView.this.mMutator.isIdle()) {
                StickerEditorView.this.mState = State.IDLE;
            } else if (StickerEditorView.this.mMutator.isScale(this.mDownX, this.mDownY)) {
                StickerEditorView.this.mState = State.SCALE;
            } else if (StickerEditorView.this.mMutator.isDelete(this.mDownX, this.mDownY)) {
                StickerEditorView.this.mState = State.DELETE;
            } else if (StickerEditorView.this.mMutator.isMirror(this.mDownX, this.mDownY)) {
                StickerEditorView.this.mState = State.MIRROR;
            } else if (StickerEditorView.this.mMutator.contains(this.mDownX, this.mDownY)) {
                StickerEditorView.this.mPrePoint.set(this.mDownX, this.mDownY);
                StickerEditorView.this.mState = State.PENDING;
            } else {
                StickerEditorView.this.mState = State.IDLE;
            }
            StickerEditorView.this.invalidate();
            return true;
        }

        public void onSingleTapUp(MotionEvent e) {
            int index;
            if (!StickerEditorView.this.mMutator.isIdle() && StickerEditorView.this.mState == State.IDLE) {
                index = StickerEditorView.this.mCache.find(e.getX(), e.getY());
                if (index == -1) {
                    StickerEditorView.this.mCache.append(StickerEditorView.this.mMutator.unbind());
                    StickerEditorView.this.disableChildHandleMode();
                    StickerEditorView.this.invalidate();
                    return;
                }
                bindItem(index);
            } else if (StickerEditorView.this.mState == State.MIRROR && StickerEditorView.this.mMutator.isMirror(e.getX(), e.getY())) {
                StickerEditorView.this.mMutator.mirror();
                StickerEditorView.this.mState = State.IDLE;
                StickerEditorView.this.invalidate();
            } else if (StickerEditorView.this.mState == State.DELETE && StickerEditorView.this.mMutator.isDelete(e.getX(), e.getY())) {
                StickerEditorView.this.mMutator.unbind();
                StickerEditorView.this.disableChildHandleMode();
                StickerEditorView.this.mState = State.IDLE;
                StickerEditorView.this.invalidate();
            } else {
                index = StickerEditorView.this.mCache.find(e.getX(), e.getY());
                if (index != -1) {
                    bindItem(index);
                }
            }
        }

        public void onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
            float x = e2.getX();
            float y = e2.getY();
            int index;
            if (StickerEditorView.this.mState != State.IDLE || StickerEditorView.this.mMutator.isIdle()) {
                if (StickerEditorView.this.mState == State.MOVE) {
                    moveItem(e1, e2, distanceX, distanceY);
                    return;
                }
                if (StickerEditorView.this.mState == State.PENDING) {
                    StickerEditorView.this.mState = State.MOVE;
                    return;
                }
                if (StickerEditorView.this.mState == State.SCALE) {
                    float delta;
                    PointF pt = StickerEditorView.this.mReusePoint;
                    pt.set(StickerEditorView.this.mMutator.getVertex(3)[0], StickerEditorView.this.mMutator.getVertex(3)[1]);
                    float centerX = (float) StickerEditorView.this.mMutator.getDrawBounds().centerX();
                    float centerY = (float) StickerEditorView.this.mMutator.getDrawBounds().centerY();
                    double postRadius = Math.hypot((double) (x - centerX), (double) (y - centerY));
                    double preRadius = Math.hypot((double) (pt.x - centerX), (double) (pt.y - centerY));
                    float canvasScale = StickerEditorView.this.getCurrentCanvasScale();
                    float minRadius = StickerEditorView.this.mMinRadius * canvasScale;
                    float maxRadius = StickerEditorView.this.mMaxRadius * canvasScale;
                    if (postRadius < ((double) minRadius)) {
                        delta = (float) (((double) minRadius) / postRadius);
                        postRadius = (double) minRadius;
                        x = ((x - centerX) * delta) + centerX;
                        y = ((y - centerY) * delta) + centerY;
                    }
                    if (postRadius > ((double) maxRadius)) {
                        delta = (float) (((double) maxRadius) / postRadius);
                        postRadius = (double) maxRadius;
                        x = ((x - centerX) * delta) + centerX;
                        y = ((y - centerY) * delta) + centerY;
                    }
                    StickerEditorView.this.mMutator.scale((float) (postRadius / preRadius));
                    pt.set(StickerEditorView.this.mMutator.getVertex(3)[0], StickerEditorView.this.mMutator.getVertex(3)[1]);
                    double offset = Math.hypot((double) (x - pt.x), (double) (y - pt.y));
                    double cos = (((postRadius * postRadius) * 2.0d) - (offset * offset)) / ((2.0d * postRadius) * postRadius);
                    StickerEditorView.this.mMutator.rotate((float) (((((double) (pt.x - centerX)) * cos) - ((double) (x - centerX))) / ((double) (pt.y - centerY))), (float) cos);
                    StickerEditorView.this.invalidate();
                    return;
                } else if (StickerEditorView.this.mMutator.isIdle()) {
                    index = StickerEditorView.this.mCache.find(e1.getX(), e1.getY());
                    if (index != -1) {
                        bindItem(index);
                    }
                    StickerEditorView.this.invalidate();
                    return;
                } else {
                    return;
                }
            }
            index = StickerEditorView.this.mCache.find(e1.getX(), e1.getY());
            if (index != -1) {
                bindItem(index);
            }
            StickerEditorView.this.mState = State.MOVE;
        }

        public void onActionUp(float x, float y) {
            StickerEditorView.this.mState = State.IDLE;
            StickerEditorView.this.invalidate();
        }

        public boolean onScale(ScaleGestureDetector detector) {
            float scaleFactor = (detector.getCurrentSpan() / this.mFirstSpan) / this.mPreScale;
            this.mPreScale *= scaleFactor;
            if (!StickerEditorView.this.mMutator.isIdle()) {
                float radius = StickerEditorView.this.mMutator.getRadius();
                float canvasScale = StickerEditorView.this.getCurrentCanvasScale();
                float minRadius = StickerEditorView.this.mMinRadius * canvasScale;
                float maxRadius = StickerEditorView.this.mMaxRadius * canvasScale;
                if ((scaleFactor > 1.0f || radius >= minRadius) && (scaleFactor <= 1.0f || radius <= maxRadius)) {
                    StickerEditorView.this.mMutator.scale(scaleFactor);
                    StickerEditorView.this.mState = State.MOVE;
                    StickerEditorView.this.invalidate();
                }
            }
            return false;
        }

        public boolean onScaleBegin(ScaleGestureDetector detector) {
            this.mFirstSpan = detector.getCurrentSpan();
            this.mPreScale = 1.0f;
            return false;
        }

        public void onScaleEnd(ScaleGestureDetector detector) {
        }

        private void moveItem(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
            StickerEditorView.this.mRectTemp.set(StickerEditorView.this.mMutator.getDrawBounds());
            int flag = StickerEditorView.this.getRectOverScrollStatus(StickerEditorView.this.mRectTemp);
            if ((flag & 8) != 0) {
                if (distanceX > 0.0f) {
                    distanceX = 0.0f;
                }
            } else if ((flag & 4) != 0 && distanceX < 0.0f) {
                distanceX = 0.0f;
            }
            if ((flag & 2) != 0) {
                if (distanceY > 0.0f) {
                    distanceY = 0.0f;
                }
            } else if ((flag & 1) != 0 && distanceY < 0.0f) {
                distanceY = 0.0f;
            }
            PointF pt = StickerEditorView.this.mReusePoint;
            pt.set(-distanceX, -distanceY);
            StickerEditorView.this.resetTransByBounds(pt);
            StickerEditorView.this.mMutator.translate(pt.x, pt.y);
            StickerEditorView.this.mPrePoint.set(e2.getX(), e2.getY());
            StickerEditorView.this.invalidate();
        }

        private void bindItem(int index) {
            StickerEditorView.this.mState = State.PENDING;
            StickerNode node = StickerEditorView.this.mCache.remove(index);
            StickerEditorView.this.mCache.append(StickerEditorView.this.mMutator.unbind());
            StickerEditorView.this.mMutator.bind(node);
            StickerEditorView.this.enableChildHandleMode();
            StickerEditorView.this.invalidate();
        }
    }

    private enum State {
        IDLE,
        PENDING,
        MOVE,
        MIRROR,
        SCALE,
        DELETE
    }

    public static class StickerEntry implements Parcelable {
        public static final Creator<StickerEntry> CREATOR = new Creator<StickerEntry>() {
            public StickerEntry createFromParcel(Parcel source) {
                return new StickerEntry(source);
            }

            public StickerEntry[] newArray(int size) {
                return new StickerEntry[size];
            }
        };
        private List<StickerNode> mItems;
        private RectF mPreviewBounds;

        StickerEntry(RectF previewBounds, List<StickerNode> items) {
            this.mPreviewBounds = new RectF(previewBounds);
            this.mItems = items;
        }

        public Bitmap apply(Bitmap bitmap) {
            Bitmap out;
            if (bitmap.isMutable()) {
                out = bitmap;
            } else {
                out = Bitmaps.copyBitmap(bitmap);
            }
            if (out == null) {
                return null;
            }
            RectF rect = new RectF(0.0f, 0.0f, (float) out.getWidth(), (float) out.getHeight());
            Matrix matrix = new Matrix();
            matrix.setRectToRect(this.mPreviewBounds, rect, ScaleToFit.FILL);
            Canvas canvas = new Canvas(out);
            canvas.concat(matrix);
            for (StickerNode item : this.mItems) {
                item.draw(canvas);
            }
            return out;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel dest, int flags) {
            dest.writeParcelable(this.mPreviewBounds, flags);
            dest.writeList(this.mItems);
        }

        protected StickerEntry(Parcel in) {
            this.mPreviewBounds = (RectF) in.readParcelable(RectF.class.getClassLoader());
            this.mItems = new ArrayList();
            in.readList(this.mItems, StickerNode.class.getClassLoader());
        }
    }

    public StickerEntry export() {
        return new StickerEntry(this.mBitmapGestureParamsHolder.mBitmapRect, getCacheNode());
    }

    public List<StickerNode> getCacheNode() {
        if (!this.mMutator.isIdle()) {
            this.mCache.append(this.mMutator.unbind());
        }
        return this.mCache.getNodes();
    }

    public StickerEditorView(Context context) {
        super(context);
        init();
    }

    private void init() {
        setFeatureGestureListener(new CustomGestureListener());
    }

    private float getCurrentCanvasScale() {
        this.mBitmapGestureParamsHolder.mCanvasMatrix.getValues(this.mMatrixValue);
        return this.mMatrixValue[0];
    }

    private void resetTransByBounds(PointF trans) {
        RectF displayRect = this.mBitmapGestureParamsHolder.mDisplayRect;
        if (trans.x > 0.0f && (trans.x + ((float) this.mMutator.getDrawBounds().right)) - (((float) this.mMutator.getDrawBounds().width()) * 0.8f) > displayRect.right) {
            trans.x = (displayRect.right - ((float) this.mMutator.getDrawBounds().right)) + (((float) this.mMutator.getDrawBounds().width()) * 0.8f);
        }
        if (trans.x < 0.0f && (trans.x + ((float) this.mMutator.getDrawBounds().left)) + (((float) this.mMutator.getDrawBounds().width()) * 0.8f) < displayRect.left) {
            trans.x = (displayRect.left - ((float) this.mMutator.getDrawBounds().left)) - (((float) this.mMutator.getDrawBounds().width()) * 0.8f);
        }
        if (trans.y > 0.0f && (trans.y + ((float) this.mMutator.getDrawBounds().bottom)) - (((float) this.mMutator.getDrawBounds().height()) * 0.8f) > displayRect.bottom) {
            trans.y = (displayRect.bottom - ((float) this.mMutator.getDrawBounds().bottom)) + (((float) this.mMutator.getDrawBounds().height()) * 0.8f);
        }
        if (trans.y < 0.0f && (trans.y + ((float) this.mMutator.getDrawBounds().top)) + (((float) this.mMutator.getDrawBounds().height()) * 0.8f) < displayRect.top) {
            trans.y = (displayRect.top - ((float) this.mMutator.getDrawBounds().top)) - (((float) this.mMutator.getDrawBounds().height()) * 0.8f);
        }
    }

    public void add(Bitmap sticker, String pathName, long stickerId, String stickerCateName) {
        if (this.mMutator != null) {
            StickerNode item = new StickerNode(sticker, pathName, stickerId, stickerCateName);
            if (!this.mMutator.isIdle()) {
                this.mCache.append(this.mMutator.unbind());
            }
            item.init(this.mBitmapGestureParamsHolder.mCanvasMatrixInvert);
            this.mMutator.bind(item);
            float minRadius = this.mMinRadius * getCurrentCanvasScale();
            float radius = this.mMutator.getRadius();
            float scale = minRadius / radius;
            this.mMutator.translate((-this.mMutator.getBorderBounds().width()) / 2.0f, (-this.mMutator.getBorderBounds().height()) / 2.0f);
            if (radius < minRadius) {
                this.mMutator.scale(scale);
            }
            if (this.mCache.isEmpty()) {
                this.mMutator.translate(this.mBitmapGestureParamsHolder.mBitmapDisplayInsideRect.centerX() - this.mBitmapGestureParamsHolder.mBitmapDisplayRect.left, this.mBitmapGestureParamsHolder.mBitmapDisplayInsideRect.centerY() - this.mBitmapGestureParamsHolder.mBitmapDisplayRect.top);
            } else {
                float offsetX = this.mBitmapGestureParamsHolder.mBitmapDisplayInsideRect.left - this.mBitmapGestureParamsHolder.mBitmapDisplayRect.left;
                float offsetY = this.mBitmapGestureParamsHolder.mBitmapDisplayInsideRect.top - this.mBitmapGestureParamsHolder.mBitmapDisplayRect.top;
                float maxX = this.mBitmapGestureParamsHolder.mBitmapDisplayInsideRect.width();
                this.mMutator.translate(offsetX + ((float) (Math.random() * ((double) maxX))), offsetY + ((float) (Math.random() * ((double) this.mBitmapGestureParamsHolder.mBitmapDisplayInsideRect.height()))));
            }
            enableChildHandleMode();
            invalidate();
        }
    }

    protected void onStart() {
        this.mInitialSize = this.mBitmapToCanvas.mapRadius((float) getContext().getResources().getDimensionPixelSize(R.dimen.sticker_initial_size));
        this.mMinRadius = (float) getContext().getResources().getDimensionPixelSize(R.dimen.sticker_min_radius);
        this.mMaxRadius = (float) getContext().getResources().getDimensionPixelSize(R.dimen.sticker_max_radius);
        this.mMutator = new Mutator(getContext(), this.mBitmapToCanvas, this.mCanvasToBitmap);
        this.mCache = new Cache(this.mDisplayBitmap, this.mCanvasToBitmap, this.mBitmapToCanvas);
    }

    protected void onBitmapMatrixChanged() {
        refreshMatrix();
        onStart();
    }

    protected void onCanvasMatrixChange() {
        if (!(this.mMutator == null || this.mMutator.isIdle())) {
            this.mMutator.updateDisplayInfo();
        }
        refreshMatrix();
    }

    private void refreshMatrix() {
        this.mBitmapToCanvas.reset();
        this.mBitmapToCanvas.set(this.mBitmapGestureParamsHolder.mBitmapToDisplayMatrix);
        this.mBitmapToCanvas.postConcat(this.mBitmapGestureParamsHolder.mCanvasMatrix);
        this.mBitmapToCanvas.invert(this.mCanvasToBitmap);
    }

    protected void drawChild(Canvas canvas) {
        if (this.mCache != null && this.mMutator != null) {
            canvas.save();
            canvas.clipRect(this.mBitmapGestureParamsHolder.mBitmapDisplayRect);
            this.mCache.draw(canvas);
            Mutator mutator = this.mMutator;
            boolean z = this.mState == State.MOVE || this.mState == State.SCALE;
            mutator.draw(canvas, z);
            canvas.restore();
        }
    }

    public void onDestroy() {
        if (!(this.mMutator == null || this.mMutator.isIdle())) {
            this.mCache.append(this.mMutator.unbind());
        }
        this.mMutator = null;
        this.mCache = null;
        this.mState = State.IDLE;
    }
}
