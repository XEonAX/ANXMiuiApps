package uk.co.senab.photoview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.View.OnLongClickListener;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.photoview.BitmapRecycleCallback;
import com.miui.gallery.util.photoview.ItemViewInfo;
import com.miui.gallery.util.photoview.TileBitProvider;
import com.miui.gallery.util.photoview.TrimMemoryCallback;
import com.miui.os.Rom;
import java.util.HashMap;
import java.util.Locale;
import uk.co.senab.photoview.PhotoViewAttacher.OnBackgroundAlphaChangedListener;
import uk.co.senab.photoview.PhotoViewAttacher.OnExitListener;
import uk.co.senab.photoview.PhotoViewAttacher.OnMatrixChangedListener;
import uk.co.senab.photoview.PhotoViewAttacher.OnPhotoTapListener;
import uk.co.senab.photoview.PhotoViewAttacher.OnRotateListener;
import uk.co.senab.photoview.PhotoViewAttacher.OnScaleChangeListener;
import uk.co.senab.photoview.PhotoViewAttacher.OnScaleStageChangedListener;
import uk.co.senab.photoview.PhotoViewAttacher.OnViewTapListener;
import uk.co.senab.photoview.PhotoViewAttacher.TransitionListener;
import uk.co.senab.photoview.log.LogManager;

public class PhotoView extends ImageView implements IPhotoView {
    private PhotoViewAttacher mAttacher;
    private ScaleType mPendingScaleType;

    public PhotoView(Context context) {
        this(context, null);
    }

    public PhotoView(Context context, AttributeSet attr) {
        this(context, attr, 0);
    }

    public PhotoView(Context context, AttributeSet attr, int defStyle) {
        super(context, attr, defStyle);
        super.setScaleType(ScaleType.MATRIX);
        init();
    }

    protected void init() {
        if (this.mAttacher == null || this.mAttacher.getImageView() == null) {
            this.mAttacher = new PhotoViewAttacher(this);
        }
        if (this.mPendingScaleType != null) {
            setScaleType(this.mPendingScaleType);
            this.mPendingScaleType = null;
        }
    }

    public void setPhotoViewRotation(float rotationDegree) {
        this.mAttacher.setRotationTo(rotationDegree);
    }

    public void setRotationTo(float rotationDegree) {
        this.mAttacher.setRotationTo(rotationDegree);
    }

    public void setRotationBy(float rotationDegree) {
        this.mAttacher.setRotationBy(rotationDegree);
    }

    public RectF getDisplayRect() {
        return this.mAttacher.getDisplayRect();
    }

    public RectF getBaseDisplayRect() {
        return this.mAttacher.getBaseDisplayRect();
    }

    public boolean getAbsoluteRect(RectF rect) {
        return this.mAttacher.getAbsoluteRect(rect);
    }

    public RectF getDrawableSize() {
        return this.mAttacher.getDrawableSize();
    }

    public Matrix getDisplayMatrix() {
        return this.mAttacher.getDisplayMatrix();
    }

    public Matrix getSuppMatrix() {
        return this.mAttacher.getSuppMatrix();
    }

    public Matrix getBaseMatrix() {
        return this.mAttacher.getBaseMatrix();
    }

    public boolean setDisplayMatrix(Matrix finalRectangle) {
        return this.mAttacher.setDisplayMatrix(finalRectangle);
    }

    @Deprecated
    public float getMinScale() {
        return getMinimumScale();
    }

    public float getMinimumScale() {
        return this.mAttacher.getMinimumScale();
    }

    @Deprecated
    public float getMidScale() {
        return getMediumScale();
    }

    public float getMediumScale() {
        return this.mAttacher.getMediumScale();
    }

    @Deprecated
    public float getMaxScale() {
        return getMaximumScale();
    }

    public float getMaximumScale() {
        return this.mAttacher.getMaximumScale();
    }

    public float getScale() {
        return this.mAttacher.getScale();
    }

    public float getRotate() {
        return this.mAttacher.getRotate();
    }

    public ScaleType getScaleType() {
        return this.mAttacher.getScaleType();
    }

    public void setAllowParentInterceptOnEdge(boolean allow) {
        this.mAttacher.setAllowParentInterceptOnEdge(allow);
    }

    @Deprecated
    public void setMinScale(float minScale) {
        setMinimumScale(minScale);
    }

    public void setMinimumScale(float minimumScale) {
        this.mAttacher.setMinimumScale(minimumScale);
    }

    @Deprecated
    public void setMidScale(float midScale) {
        setMediumScale(midScale);
    }

    public void setMediumScale(float mediumScale) {
        this.mAttacher.setMediumScale(mediumScale);
    }

    @Deprecated
    public void setMaxScale(float maxScale) {
        setMaximumScale(maxScale);
    }

    public void setMaximumScale(float maximumScale) {
        this.mAttacher.setMaximumScale(maximumScale);
    }

    public void setImageBitmap(Bitmap bitmap, boolean keepDisplayRect) {
        super.setImageDrawable(new BitmapDrawable(getResources(), bitmap));
        if (this.mAttacher != null) {
            this.mAttacher.update(keepDisplayRect);
        }
    }

    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        if (this.mAttacher != null) {
            this.mAttacher.update(false);
        }
    }

    public void setImageResource(int resId) {
        super.setImageResource(resId);
        if (this.mAttacher != null) {
            this.mAttacher.update(false);
        }
    }

    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        if (this.mAttacher != null) {
            this.mAttacher.update(false);
        }
    }

    public void addOnMatrixChangeListener(OnMatrixChangedListener listener) {
        this.mAttacher.addOnMatrixChangeListener(listener);
    }

    public void removeOnMatrixChangeListener(OnMatrixChangedListener listener) {
        this.mAttacher.removeOnMatrixChangeListener(listener);
    }

    public void setOnLongClickListener(OnLongClickListener l) {
        this.mAttacher.setOnLongClickListener(l);
    }

    public void setOnPhotoTapListener(OnPhotoTapListener listener) {
        this.mAttacher.setOnPhotoTapListener(listener);
    }

    public OnPhotoTapListener getOnPhotoTapListener() {
        return this.mAttacher.getOnPhotoTapListener();
    }

    public void setOnViewTapListener(OnViewTapListener listener) {
        this.mAttacher.setOnViewTapListener(listener);
    }

    public OnViewTapListener getOnViewTapListener() {
        return this.mAttacher.getOnViewTapListener();
    }

    public void setScale(float scale) {
        this.mAttacher.setScale(scale);
    }

    public void setScaleType(ScaleType scaleType) {
        if (this.mAttacher != null) {
            this.mAttacher.setScaleType(scaleType);
        } else {
            this.mPendingScaleType = scaleType;
        }
    }

    public void setZoomable(boolean zoomable) {
        this.mAttacher.setZoomable(zoomable);
    }

    public void setRotatable(boolean rotatable) {
        this.mAttacher.setRotatable(rotatable);
    }

    public Bitmap getVisibleRectangleBitmap() {
        return this.mAttacher.getVisibleRectangleBitmap();
    }

    public void setZoomTransitionDuration(int milliseconds) {
        this.mAttacher.setZoomTransitionDuration(milliseconds);
    }

    public IPhotoView getIPhotoViewImplementation() {
        return this.mAttacher;
    }

    public void setOnDoubleTapListener(OnDoubleTapListener newOnDoubleTapListener) {
        this.mAttacher.setOnDoubleTapListener(newOnDoubleTapListener);
    }

    public void setOnScaleChangeListener(OnScaleChangeListener onScaleChangeListener) {
        this.mAttacher.setOnScaleChangeListener(onScaleChangeListener);
    }

    public void setOnExitListener(OnExitListener onExitListener) {
        this.mAttacher.setOnExitListener(onExitListener);
    }

    public void setOnBackgroundAlphaChangedListener(OnBackgroundAlphaChangedListener alphaChangedListener) {
        this.mAttacher.setOnBackgroundAlphaChangedListener(alphaChangedListener);
    }

    public void setOnScaleStageChangedListener(OnScaleStageChangedListener onScaleStageChangedListener) {
        this.mAttacher.setOnScaleStageChangedListener(onScaleStageChangedListener);
    }

    public boolean isGestureOperating() {
        return this.mAttacher.isGestureOperating();
    }

    public void setInterceptTouch(boolean intercept) {
        this.mAttacher.setInterceptTouch(intercept);
    }

    protected void onDetachedFromWindow() {
        this.mAttacher.cleanup();
        super.onDetachedFromWindow();
    }

    protected void onAttachedToWindow() {
        init();
        super.onAttachedToWindow();
    }

    public void animEnter(ItemViewInfo enterInfo, TransitionListener listener) {
        this.mAttacher.animEnter(enterInfo, listener);
    }

    public void animExit(ItemViewInfo exitInfo, TransitionListener listener) {
        this.mAttacher.animExit(exitInfo, listener);
    }

    public void draw(Canvas canvas) {
        if (this.mAttacher.beforeDraw(canvas)) {
            super.draw(canvas);
            this.mAttacher.afterDraw(canvas);
        }
    }

    private boolean isDrawableValid() {
        Drawable d = getDrawable();
        if (d != null && (d instanceof BitmapDrawable)) {
            Bitmap bitmap = ((BitmapDrawable) d).getBitmap();
            if (bitmap == null || bitmap.isRecycled()) {
                int width;
                int height;
                if (bitmap != null) {
                    width = bitmap.getWidth();
                } else {
                    width = 0;
                }
                if (bitmap != null) {
                    height = bitmap.getHeight();
                } else {
                    height = 0;
                }
                LogManager.getLogger().e("PhotoView", String.format("bitmap illegal [%d, %d]", new Object[]{Integer.valueOf(width), Integer.valueOf(height)}));
                HashMap<String, String> params = new HashMap();
                params.put("size", String.format(Locale.US, "%d_%d", new Object[]{Integer.valueOf(width), Integer.valueOf(height)}));
                BaseSamplingStatHelper.recordErrorEvent("photo", "photo_bitmap_recycled", params);
                return false;
            }
        }
        return true;
    }

    protected void onDraw(Canvas canvas) {
        if ((!Rom.IS_ALPHA && !Rom.IS_DEV) || isDrawableValid()) {
            super.onDraw(canvas);
        }
    }

    public void setupTile(TileBitProvider provider, BitmapRecycleCallback callback, TrimMemoryCallback trimMemoryCallback) {
        this.mAttacher.setupTile(provider, callback, trimMemoryCallback);
    }

    public void releaseTile() {
        this.mAttacher.releaseTile();
    }

    public void setRegionDecodeEnable(boolean enable) {
        this.mAttacher.setRegionDecodeEnable(enable);
    }

    public void setBackgroundAlpha(float alpha) {
        this.mAttacher.setBackgroundAlpha(alpha);
    }

    public void setAlphaBackground(Drawable drawable) {
        this.mAttacher.setAlphaBackground(drawable);
    }

    public void setHDState(int originWidth, int originHeight, boolean isHd) {
        this.mAttacher.setHDState(originWidth, originHeight, isHd);
    }

    public void setOnRotateListener(OnRotateListener listener) {
        this.mAttacher.setOnRotateListener(listener);
    }

    public void setStroke(int color, int width) {
        this.mAttacher.setStroke(color, width);
    }
}
