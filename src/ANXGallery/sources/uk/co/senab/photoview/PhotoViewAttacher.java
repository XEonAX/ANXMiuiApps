package uk.co.senab.photoview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.Scroller;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.MatrixUtil;
import com.miui.gallery.util.photoview.BitmapRecycleCallback;
import com.miui.gallery.util.photoview.ItemViewInfo;
import com.miui.gallery.util.photoview.TileBitProvider;
import com.miui.gallery.util.photoview.TileView;
import com.miui.gallery.util.photoview.TrimMemoryCallback;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import miui.view.animation.CubicEaseOutInterpolator;
import uk.co.senab.photoview.gestures.OnGestureListener;
import uk.co.senab.photoview.gestures.RotateGestureDetector;
import uk.co.senab.photoview.gestures.RotateGestureDetector.OnRotationGestureListener;
import uk.co.senab.photoview.gestures.VersionedGestureDetector;
import uk.co.senab.photoview.log.LogManager;
import uk.co.senab.photoview.scrollerproxy.ScrollerProxy;

public class PhotoViewAttacher implements OnTouchListener, OnGlobalLayoutListener, IPhotoView, OnGestureListener {
    static final Interpolator sInterpolator = new AccelerateDecelerateInterpolator();
    private final float EXIT_SCALE_RATIO;
    int ZOOM_DURATION;
    private boolean mAllowParentInterceptOnEdge;
    private float mAlpha;
    private OnBackgroundAlphaChangedListener mAlphaChangedListener;
    private Drawable mAlphaDrawable;
    private int mAnim;
    private final Matrix mBaseMatrix;
    private FlingRunnable mCurrentFlingRunnable;
    private final RectF mDisplayRect;
    private float mDownScale;
    private float mDragDownOutThreshold;
    private float mDragDownOutY;
    private boolean mDragHandled;
    private final Matrix mDrawMatrix;
    private ItemViewInfo mEnterInfo;
    private OnExitListener mExitListener;
    private float mExitScale;
    private GestureDetector mGestureDetector;
    private int mHScrollEdge;
    private boolean mHasScale;
    private WeakReference<ImageView> mImageView;
    private boolean mIntercepted;
    private boolean mIsDragDownOut;
    private boolean mIsRegionDecodeEnable;
    private int mIvBottom;
    private int mIvLeft;
    private int mIvRight;
    private int mIvTop;
    private float mLastScaleFocusX;
    private float mLastScaleFocusY;
    private OnLongClickListener mLongClickListener;
    private Set<OnMatrixChangedListener> mMatrixChangeListeners;
    private final float[] mMatrixValues;
    private float mMaxDoubleTapScale;
    private float mMaxPointsScale;
    private float mMaxScale;
    private float mMidScale;
    private float mMinScale;
    private int mOriginHeight;
    private int mOriginWidth;
    private OnPhotoTapListener mPhotoTapListener;
    private RotateManager mRotateDetector;
    private boolean mRotateEnabled;
    private OnRotateListener mRotateListener;
    private OnScaleChangeListener mScaleChangeListener;
    private uk.co.senab.photoview.gestures.GestureDetector mScaleDragDetector;
    private OnScaleStageChangedListener mScaleStageChangedListener;
    private ScaleType mScaleType;
    private int mStrokeColor;
    private Paint mStrokePaint;
    private int mStrokeWidth;
    private final Matrix mSuppMatrix;
    private boolean mSupportHd;
    private TileView mTileView;
    private float mTouchDownY;
    private Transition mTransition;
    private TransitionListener mTransitionListener;
    private int mVScrollEdge;
    private OnViewTapListener mViewTapListener;
    private long mWantEnterTime;
    private boolean mZoomEnabled;

    /* renamed from: uk.co.senab.photoview.PhotoViewAttacher$2 */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$android$widget$ImageView$ScaleType = new int[ScaleType.values().length];

        static {
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ScaleType.MATRIX.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ScaleType.FIT_START.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ScaleType.FIT_XY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    private class AnimatedZoomRunnable implements Runnable {
        private final float mFocalX;
        private final float mFocalY;
        private final long mStartTime = System.currentTimeMillis();
        private final float mZoomEnd;
        private final float mZoomStart;

        public AnimatedZoomRunnable(float currentZoom, float targetZoom, float focalX, float focalY) {
            this.mFocalX = focalX;
            this.mFocalY = focalY;
            this.mZoomStart = currentZoom;
            this.mZoomEnd = targetZoom;
        }

        public void run() {
            ImageView imageView = PhotoViewAttacher.this.getImageView();
            if (imageView == null) {
                PhotoViewAttacher.this.clearAnim(1);
                return;
            }
            PhotoViewAttacher.this.appendAnim(1);
            float t = interpolate();
            PhotoViewAttacher.this.onScale((this.mZoomStart + ((this.mZoomEnd - this.mZoomStart) * t)) / PhotoViewAttacher.this.getScale(), this.mFocalX, this.mFocalY);
            if (t < 1.0f) {
                Compat.postOnAnimation(imageView, this);
            } else {
                PhotoViewAttacher.this.clearAnim(1);
            }
        }

        private float interpolate() {
            return PhotoViewAttacher.sInterpolator.getInterpolation(Math.min(1.0f, (((float) (System.currentTimeMillis() - this.mStartTime)) * 1.0f) / ((float) PhotoViewAttacher.this.ZOOM_DURATION)));
        }
    }

    private class FlingRunnable implements Runnable {
        private int mCurrentX;
        private int mCurrentY;
        private final ScrollerProxy mScroller;

        public FlingRunnable(Context context) {
            this.mScroller = ScrollerProxy.getScroller(context);
        }

        public void cancelFling() {
            this.mScroller.forceFinished(true);
        }

        public void fling(int viewWidth, int viewHeight, int velocityX, int velocityY) {
            RectF rect = PhotoViewAttacher.this.getDisplayRect();
            if (rect != null) {
                int minX;
                int maxX;
                int minY;
                int maxY;
                int startX = Math.round(-rect.left);
                if (((float) viewWidth) < rect.width()) {
                    minX = 0;
                    maxX = Math.round(rect.width() - ((float) viewWidth));
                } else {
                    maxX = startX;
                    minX = startX;
                }
                int startY = Math.round(-rect.top);
                if (((float) viewHeight) < rect.height()) {
                    minY = 0;
                    maxY = Math.round(rect.height() - ((float) viewHeight));
                } else {
                    maxY = startY;
                    minY = startY;
                }
                this.mCurrentX = startX;
                this.mCurrentY = startY;
                if (startX != maxX || startY != maxY) {
                    this.mScroller.fling(startX, startY, velocityX, velocityY, minX, maxX, minY, maxY, 0, 0);
                }
            }
        }

        public void run() {
            if (this.mScroller.isFinished()) {
                PhotoViewAttacher.this.clearAnim(2);
                return;
            }
            PhotoViewAttacher.this.appendAnim(2);
            ImageView imageView = PhotoViewAttacher.this.getImageView();
            if (imageView == null || !this.mScroller.computeScrollOffset()) {
                PhotoViewAttacher.this.clearAnim(2);
                return;
            }
            int newX = this.mScroller.getCurrX();
            int newY = this.mScroller.getCurrY();
            PhotoViewAttacher.this.postTranslate((float) (this.mCurrentX - newX), (float) (this.mCurrentY - newY));
            PhotoViewAttacher.this.setImageViewMatrix(PhotoViewAttacher.this.getDrawMatrix());
            this.mCurrentX = newX;
            this.mCurrentY = newY;
            Compat.postOnAnimation(imageView, this);
        }
    }

    public interface OnBackgroundAlphaChangedListener {
        void onAlphaChanged(float f);
    }

    public interface OnExitListener {
        void onExit();
    }

    public interface OnMatrixChangedListener {
        void onMatrixChanged(RectF rectF);
    }

    public interface OnPhotoTapListener {
        void onPhotoTap(View view, float f, float f2);
    }

    public interface OnRotateListener {
        void onRotate(float f, float f2, float f3, float f4);

        void onRotateBegin(float f);

        void onRotateEnd(float f);
    }

    public interface OnScaleChangeListener {
        void onScaleChange(float f, float f2, float f3, float f4, float f5);
    }

    public interface OnScaleStageChangedListener {
        void onMaxScaleStage(boolean z);

        void onMidScaleStage(boolean z);
    }

    public interface OnViewTapListener {
        void onViewTap(View view, float f, float f2);
    }

    private class RotateManager implements OnRotationGestureListener {
        private final float CRITICAL_VELOCITY;
        private AdjustAnimation mAjustAnim;
        private RotateGestureDetector mRotateDetector;
        private float mRotatedDegrees;

        class AdjustAnimation implements Runnable {
            private boolean isRunning;
            private Scroller mAlphaScroller;
            private float mRotateFocusX;
            private float mRotateFocusY;
            private Scroller mRotateScroller;
            private Scroller mScaleScroller;
            private Scroller mTranslateScroller;
            private int mTranslateX;
            private int mTraslateY;

            public AdjustAnimation(Context context) {
                Interpolator interpolator = new CubicEaseOutInterpolator();
                this.mRotateScroller = new Scroller(context, interpolator);
                this.mScaleScroller = new Scroller(context, interpolator);
                this.mTranslateScroller = new Scroller(context, interpolator);
                this.mAlphaScroller = new Scroller(context, interpolator);
            }

            public boolean isRunning() {
                return this.isRunning;
            }

            private int precise(float f) {
                return (int) (10000.0f * f);
            }

            private float unPrecise(int i) {
                return (1.0f * ((float) i)) / 10000.0f;
            }

            public void rotate(float from, float to, float focusX, float focusY, int duration) {
                this.mRotateScroller.forceFinished(true);
                this.mRotateFocusX = focusX;
                this.mRotateFocusY = focusY;
                this.mRotateScroller.startScroll(precise(from), 0, precise(to - from), 0, duration);
            }

            public void scale(float from, float to, int duration) {
                this.mScaleScroller.forceFinished(true);
                this.mScaleScroller.startScroll(precise(from), 0, precise(to - from), 0, duration);
            }

            public void translate(float startX, float startY, float deltaX, float deltaY, int duration) {
                this.mTranslateScroller.forceFinished(true);
                this.mTranslateX = precise(startX);
                this.mTraslateY = precise(startY);
                this.mTranslateScroller.startScroll(precise(startX), precise(startY), precise(deltaX), precise(deltaY), duration);
            }

            public void alpha(float from, float to, int duration) {
                this.mAlphaScroller.forceFinished(true);
                this.mAlphaScroller.startScroll(precise(from), 0, precise(to - from), 0, duration);
            }

            public void start() {
                ImageView imageView = PhotoViewAttacher.this.getImageView();
                if (imageView != null) {
                    this.isRunning = true;
                    Compat.postOnAnimation(imageView, this);
                }
            }

            public void stop() {
                this.mRotateScroller.forceFinished(true);
                this.mScaleScroller.forceFinished(true);
                this.mTranslateScroller.forceFinished(true);
                if (this.isRunning) {
                    this.isRunning = false;
                    PhotoViewAttacher.this.clearAnim(8);
                }
            }

            public void run() {
                if (isRunning()) {
                    ImageView imageView = PhotoViewAttacher.this.getImageView();
                    if (imageView != null) {
                        boolean more = false;
                        if (this.mRotateScroller.computeScrollOffset()) {
                            float degrees = unPrecise(this.mRotateScroller.getCurrX());
                            PhotoViewAttacher.this.postRotate(PhotoViewAttacher.this.getRotate() - degrees, this.mRotateFocusX, this.mRotateFocusY);
                            more = true;
                        }
                        if (this.mScaleScroller.computeScrollOffset()) {
                            float scaleFactor = unPrecise(this.mScaleScroller.getCurrX()) / MatrixUtil.getScale(PhotoViewAttacher.this.mSuppMatrix);
                            RectF display = PhotoViewAttacher.this.getDisplayRect(PhotoViewAttacher.this.getDrawMatrix());
                            if (display != null) {
                                PhotoViewAttacher.this.postScale(scaleFactor, scaleFactor, display.centerX(), display.centerY());
                            }
                            more = true;
                        }
                        if (this.mTranslateScroller.computeScrollOffset()) {
                            int newX = this.mTranslateScroller.getCurrX();
                            int newY = this.mTranslateScroller.getCurrY();
                            float deltaX = unPrecise(newX - this.mTranslateX);
                            float deltaY = unPrecise(newY - this.mTraslateY);
                            this.mRotateFocusX += deltaX;
                            this.mRotateFocusY += deltaY;
                            PhotoViewAttacher.this.postTranslate(deltaX, deltaY);
                            this.mTranslateX = newX;
                            this.mTraslateY = newY;
                            more = true;
                        }
                        if (this.mAlphaScroller.computeScrollOffset()) {
                            PhotoViewAttacher.this.updateAlpha(unPrecise(this.mAlphaScroller.getCurrX()));
                        }
                        PhotoViewAttacher.this.setImageViewMatrix(PhotoViewAttacher.this.getDrawMatrix());
                        if (more) {
                            Compat.postOnAnimation(imageView, this);
                            return;
                        }
                        checkBounds();
                        updateMatrix();
                        PhotoViewAttacher.this.updateAlpha(1.0f);
                        this.isRunning = false;
                        PhotoViewAttacher.this.setImageViewMatrix(PhotoViewAttacher.this.getDrawMatrix());
                        PhotoViewAttacher.this.clearAnim(8);
                        if (PhotoViewAttacher.this.mRotateListener != null) {
                            PhotoViewAttacher.this.mRotateListener.onRotateEnd(PhotoViewAttacher.this.getRotate());
                            return;
                        }
                        return;
                    }
                    return;
                }
                stop();
            }

            private void updateMatrix() {
                if (PhotoViewAttacher.this.getImageView() != null) {
                    float rotation = PhotoViewAttacher.this.getRotate();
                    RectF display = new RectF(PhotoViewAttacher.this.getDisplayRect(PhotoViewAttacher.this.getDrawMatrix()));
                    PhotoViewAttacher.this.updateBaseMatrix(PhotoViewAttacher.this.getImageView().getDrawable(), PhotoViewAttacher.this.trimRotation(rotation));
                    RectF baseDisplay = new RectF(PhotoViewAttacher.this.getDisplayRect(PhotoViewAttacher.this.mBaseMatrix));
                    float wScaleFactor = 1.0f;
                    float hScaleFactor = 1.0f;
                    PhotoViewAttacher.this.mSuppMatrix.reset();
                    if (!RotateManager.this.needTrimToBaseRect(display, baseDisplay)) {
                        wScaleFactor = display.width() / baseDisplay.width();
                        hScaleFactor = display.height() / baseDisplay.height();
                        Matrix suppMatrix = new Matrix();
                        suppMatrix.postScale(wScaleFactor, hScaleFactor, baseDisplay.centerX(), baseDisplay.centerY());
                        suppMatrix.postTranslate(display.centerX() - baseDisplay.centerX(), display.centerY() - baseDisplay.centerY());
                        PhotoViewAttacher.this.mSuppMatrix.set(suppMatrix);
                    }
                    PhotoViewAttacher.this.dispatchScaleChanged(wScaleFactor, hScaleFactor, baseDisplay.centerX(), baseDisplay.centerY(), PhotoViewAttacher.this.getScale());
                }
            }

            private void checkBounds() {
                ImageView imageView = PhotoViewAttacher.this.getImageView();
                if (imageView != null) {
                    RectF displayRect = PhotoViewAttacher.this.getDisplayRect(PhotoViewAttacher.this.getDrawMatrix());
                    float degrees = PhotoViewAttacher.this.getRotate();
                    int finalDegrees = PhotoViewAttacher.this.trimRotation(degrees);
                    if (!BaseMiscUtil.floatEquals(degrees, (float) finalDegrees)) {
                        PhotoViewAttacher.this.postRotate(degrees - ((float) finalDegrees), displayRect.centerX(), displayRect.centerY());
                    }
                    float[] deltas = RotateManager.this.calculateTranslate(PhotoViewAttacher.this.getDrawMatrix());
                    if (deltas != null) {
                        PhotoViewAttacher.this.postTranslate(deltas[0], deltas[1]);
                    }
                    RectF baseDisplay = PhotoViewAttacher.this.calculateBaseRect(imageView.getDrawable(), (int) PhotoViewAttacher.this.getRotate());
                    if (baseDisplay == null) {
                        LogManager.getLogger().e("PhotoViewAttacher", "calculate base display null");
                        return;
                    }
                    displayRect = PhotoViewAttacher.this.getDisplayRect(PhotoViewAttacher.this.getDrawMatrix());
                    float wscale = 1.0f;
                    if (displayRect.width() < baseDisplay.width()) {
                        wscale = baseDisplay.width() / displayRect.width();
                    }
                    float hscale = ((displayRect.width() * wscale) * (baseDisplay.height() / baseDisplay.width())) / displayRect.height();
                    if (!BaseMiscUtil.floatEquals(wscale, 1.0f) || !BaseMiscUtil.floatEquals(hscale, 1.0f)) {
                        PhotoViewAttacher.this.postScale(wscale, hscale, displayRect.centerX(), displayRect.centerY());
                    }
                }
            }
        }

        RotateManager() {
            Context context = PhotoViewAttacher.this.getImageView().getContext();
            this.mRotateDetector = new RotateGestureDetector(context, this);
            this.mAjustAnim = new AdjustAnimation(context);
            ViewConfiguration configuration = ViewConfiguration.get(context);
            this.CRITICAL_VELOCITY = Math.min(((float) configuration.getScaledMinimumFlingVelocity()) * 10.0f, ((float) configuration.getScaledMaximumFlingVelocity()) / 10.0f);
        }

        private void rotateBy(float degrees, float focusX, float focusY) {
            PhotoViewAttacher.this.postRotate(degrees, focusX, focusY);
            PhotoViewAttacher.this.setImageViewMatrix(PhotoViewAttacher.this.getDrawMatrix());
        }

        public boolean isRotating() {
            return isManualRotating() || isAutoRotating();
        }

        public boolean isManualRotating() {
            return this.mRotateDetector.isInProgress();
        }

        public boolean isAutoRotating() {
            return this.mAjustAnim.isRunning();
        }

        public void stop() {
            this.mAjustAnim.stop();
        }

        public boolean onTouchEvent(MotionEvent event) {
            return this.mRotateDetector.onTouchEvent(event);
        }

        public boolean onRotate(RotateGestureDetector detector) {
            float degrees = detector.getRotateDegrees();
            if (Float.isNaN(degrees) || Float.isInfinite(degrees)) {
                return false;
            }
            this.mRotatedDegrees += degrees;
            rotateBy(degrees, detector.getFocusX(), detector.getFocusY());
            if (PhotoViewAttacher.this.mRotateListener != null) {
                PhotoViewAttacher.this.mRotateListener.onRotate(degrees, PhotoViewAttacher.this.getRotate(), detector.getFocusX(), detector.getFocusY());
            }
            return true;
        }

        public boolean onRotateBegin(RotateGestureDetector detector) {
            PhotoViewAttacher.this.appendAnim(8);
            this.mRotatedDegrees = 0.0f;
            if (PhotoViewAttacher.this.mRotateListener != null) {
                PhotoViewAttacher.this.mRotateListener.onRotateBegin(PhotoViewAttacher.this.getRotate());
            }
            return true;
        }

        private int calculateFinalDegrees(boolean clockwise, float velocity) {
            float degrees = PhotoViewAttacher.this.getRotate();
            float remainderDegrees = this.mRotatedDegrees % 90.0f;
            if ((remainderDegrees <= 0.0f || clockwise) && (remainderDegrees >= 0.0f || !clockwise)) {
                remainderDegrees = Math.abs(remainderDegrees);
            } else {
                remainderDegrees = 90.0f - Math.abs(remainderDegrees);
            }
            if (Math.abs(velocity) > this.CRITICAL_VELOCITY) {
                if (remainderDegrees <= 20.0f) {
                    return (((int) degrees) / 90) * 90;
                }
                float delta;
                float remainder = degrees % 90.0f;
                if (remainder > 0.0f) {
                    if (clockwise) {
                        delta = -remainder;
                    } else {
                        delta = 90.0f - remainder;
                    }
                } else if (clockwise) {
                    delta = -90.0f - remainder;
                } else {
                    delta = -remainder;
                }
                return PhotoViewAttacher.this.trimRotation(degrees + delta);
            } else if (remainderDegrees > 45.0f) {
                return PhotoViewAttacher.this.trimRotation(degrees);
            } else {
                return (((int) degrees) / 90) * 90;
            }
        }

        private int calculateRotateDuration(float degreesDelta, float velocity) {
            return 300;
        }

        private int calculateScaleDuration(float scaleDelta, float velocity) {
            return 300;
        }

        public void onRotateEnd(RotateGestureDetector detector, boolean clockwise, float velocity) {
            adjustAfterRotate(detector, clockwise, velocity);
        }

        private void adjustAfterRotate(RotateGestureDetector detector, boolean clockwise, float velocity) {
            if (PhotoViewAttacher.this.getImageView() != null) {
                this.mAjustAnim.stop();
                float fromRotation = PhotoViewAttacher.this.getRotate();
                float toRotation = (float) calculateFinalDegrees(clockwise, velocity);
                Matrix matrix = new Matrix(PhotoViewAttacher.this.getDrawMatrix());
                matrix.postRotate(fromRotation - toRotation, detector.getFocusX(), detector.getFocusY());
                int rotateDuration = calculateRotateDuration(Math.abs(fromRotation - toRotation), velocity);
                this.mAjustAnim.rotate(fromRotation, toRotation, detector.getFocusX(), detector.getFocusY(), rotateDuration);
                float[] deltas = calculateTranslate(matrix);
                if (deltas != null) {
                    this.mAjustAnim.translate(0.0f, 0.0f, deltas[0], deltas[1], rotateDuration);
                }
                int scaleDuration = rotateDuration;
                float factor = calculateScale(matrix);
                if (!Float.isNaN(factor)) {
                    float fromScale = MatrixUtil.getScale(PhotoViewAttacher.this.mSuppMatrix);
                    float toScale = fromScale * factor;
                    scaleDuration = calculateScaleDuration(factor, velocity);
                    this.mAjustAnim.scale(fromScale, toScale, scaleDuration);
                }
                this.mAjustAnim.alpha(PhotoViewAttacher.this.mAlpha, 1.0f, Math.max(rotateDuration, scaleDuration));
                this.mAjustAnim.start();
            }
        }

        private boolean needTrimToBaseRect(RectF preRotatedRect, RectF preBaseRect) {
            return !PhotoViewAttacher.this.mZoomEnabled || preRotatedRect.width() < preBaseRect.width() * 1.2f || preRotatedRect.height() < preBaseRect.height() * 1.2f;
        }

        private float[] calculateTranslate(Matrix rotatedMatrix) {
            ImageView imageView = PhotoViewAttacher.this.getImageView();
            if (imageView == null) {
                return null;
            }
            float deltaX = 0.0f;
            float deltaY = 0.0f;
            RectF baseDisplay = PhotoViewAttacher.this.calculateBaseRect(imageView.getDrawable(), (int) MatrixUtil.getRotate(rotatedMatrix));
            if (baseDisplay == null) {
                return null;
            }
            RectF rotatedDisplay = new RectF(PhotoViewAttacher.this.getDisplayRect(rotatedMatrix));
            if (needTrimToBaseRect(rotatedDisplay, baseDisplay)) {
                deltaX = (float) ((int) (baseDisplay.centerX() - rotatedDisplay.centerX()));
                deltaY = (float) ((int) (baseDisplay.centerY() - rotatedDisplay.centerY()));
            } else {
                if (rotatedDisplay.width() > ((float) PhotoViewAttacher.this.getImageViewWidth(imageView))) {
                    if (rotatedDisplay.left > 0.0f) {
                        deltaX = (float) ((int) (0.0f - rotatedDisplay.left));
                    }
                    if (rotatedDisplay.right < ((float) PhotoViewAttacher.this.getImageViewWidth(imageView))) {
                        deltaX = (float) ((int) (((float) PhotoViewAttacher.this.getImageViewWidth(imageView)) - rotatedDisplay.right));
                    }
                } else {
                    deltaX = (float) ((int) (baseDisplay.centerX() - rotatedDisplay.centerX()));
                }
                if (rotatedDisplay.height() > ((float) PhotoViewAttacher.this.getImageViewHeight(imageView))) {
                    if (rotatedDisplay.top > 0.0f) {
                        deltaY = (float) ((int) (0.0f - rotatedDisplay.top));
                    }
                    if (rotatedDisplay.bottom < ((float) PhotoViewAttacher.this.getImageViewHeight(imageView))) {
                        deltaY = (float) ((int) (((float) PhotoViewAttacher.this.getImageViewHeight(imageView)) - rotatedDisplay.bottom));
                    }
                } else {
                    deltaY = (float) ((int) (baseDisplay.centerY() - rotatedDisplay.centerY()));
                }
            }
            return new float[]{deltaX, deltaY};
        }

        private float calculateScale(Matrix rotatedMatrix) {
            ImageView imageView = PhotoViewAttacher.this.getImageView();
            if (imageView == null) {
                return Float.NaN;
            }
            RectF baseDisplay = PhotoViewAttacher.this.calculateBaseRect(imageView.getDrawable(), (int) MatrixUtil.getRotate(rotatedMatrix));
            if (baseDisplay == null) {
                return Float.NaN;
            }
            RectF rotatedDisplay = new RectF(PhotoViewAttacher.this.getDisplayRect(rotatedMatrix));
            if (needTrimToBaseRect(rotatedDisplay, baseDisplay)) {
                return Math.max(baseDisplay.width() / rotatedDisplay.width(), baseDisplay.height() / rotatedDisplay.height());
            }
            return Float.NaN;
        }
    }

    private class Transition implements Runnable {
        private boolean isExitTransition;
        private boolean isExited;
        private boolean isRunning;
        private ScrollerProxy mAlphaScroller;
        private Matrix mClipMatrix = new Matrix();
        private RectF mClipRect;
        private ScrollerProxy mClipScroller;
        private int mCurrentX;
        private int mCurrentY;
        public TransitionListener mListener;
        private ScrollerProxy mScaleScroller;
        private ScrollerProxy mTranslateScroller;

        public Transition(Context context) {
            Interpolator i = new CubicEaseOutInterpolator();
            this.mAlphaScroller = ScrollerProxy.getScroller(context, new LinearInterpolator());
            this.mTranslateScroller = ScrollerProxy.getScroller(context, i);
            this.mScaleScroller = ScrollerProxy.getScroller(context, i);
            this.mClipScroller = ScrollerProxy.getScroller(context, i);
        }

        public void setTransitionListener(TransitionListener listener) {
            this.mListener = listener;
        }

        public void translate(int startX, int startY, int dx, int dy) {
            this.mCurrentX = startX;
            this.mCurrentY = startY;
            this.mTranslateScroller.startScroll(startX, startY, dx, dy, 150);
        }

        public void scale(float from, float to) {
            this.mScaleScroller.startScroll((int) (from * 10000.0f), 0, (int) ((to - from) * 10000.0f), 0, 150);
        }

        public void clip(float clipX, float clipY, float dx, float dy) {
            RectF displayRect = PhotoViewAttacher.this.getDisplayRect(PhotoViewAttacher.this.getDrawMatrix());
            if (displayRect != null) {
                float axis = (displayRect.left + displayRect.right) / 2.0f;
                this.mClipMatrix.setScale(clipX, clipY, axis, axis);
                this.mClipRect = new RectF();
                this.mClipMatrix.mapRect(this.mClipRect, displayRect);
                this.mClipScroller.startScroll((int) (clipX * 10000.0f), (int) (clipY * 10000.0f), (int) (dx * 10000.0f), (int) (10000.0f * dy), 150);
            }
        }

        public void alpha(float from, float to) {
            this.mAlphaScroller.startScroll((int) (from * 10000.0f), 0, (int) ((to - from) * 10000.0f), 0, 150);
        }

        public RectF getClipRect() {
            return this.mClipRect;
        }

        public boolean isRunning() {
            return this.isRunning;
        }

        public boolean isExited() {
            return this.isExited;
        }

        public void start(boolean isExit) {
            ImageView imageView = PhotoViewAttacher.this.getImageView();
            if (imageView != null) {
                this.isRunning = true;
                this.isExitTransition = isExit;
                Compat.postOnAnimation(imageView, this);
            }
        }

        public void stop() {
            ImageView imageView = PhotoViewAttacher.this.getImageView();
            if (imageView != null) {
                imageView.removeCallbacks(this);
            }
            this.mTranslateScroller.forceFinished(true);
            this.mScaleScroller.forceFinished(true);
            this.mClipScroller.forceFinished(true);
            this.isRunning = false;
        }

        public void ensureAlpha(boolean enter) {
            float alpha = enter ? BaseMiscUtil.floatEquals(PhotoViewAttacher.this.mAlpha, 1.0f) ? 0.0f : PhotoViewAttacher.this.mAlpha : BaseMiscUtil.floatEquals(PhotoViewAttacher.this.mAlpha, 0.0f) ? 1.0f : PhotoViewAttacher.this.mAlpha;
            PhotoViewAttacher.this.updateAlpha(alpha);
        }

        public void run() {
            if (this.isRunning) {
                ImageView imageView = PhotoViewAttacher.this.getImageView();
                if (imageView != null) {
                    RectF curRect;
                    boolean more = false;
                    if (this.mTranslateScroller.computeScrollOffset()) {
                        PhotoViewAttacher.this.postTranslate((float) (this.mTranslateScroller.getCurrX() - this.mCurrentX), (float) (this.mTranslateScroller.getCurrY() - this.mCurrentY));
                        this.mCurrentX = this.mTranslateScroller.getCurrX();
                        this.mCurrentY = this.mTranslateScroller.getCurrY();
                        more = true;
                    }
                    if (this.mScaleScroller.computeScrollOffset()) {
                        float dScale = ((float) this.mScaleScroller.getCurrX()) / (10000.0f * PhotoViewAttacher.this.getScale());
                        curRect = PhotoViewAttacher.this.getDisplayRect(PhotoViewAttacher.this.getDrawMatrix());
                        if (curRect != null) {
                            PhotoViewAttacher.this.postScale(dScale, dScale, curRect.left, curRect.top);
                        }
                        more = true;
                    }
                    if (this.mClipScroller.computeScrollOffset()) {
                        float clipX = (1.0f * ((float) this.mClipScroller.getCurrX())) / 10000.0f;
                        float clipY = (1.0f * ((float) this.mClipScroller.getCurrY())) / 10000.0f;
                        curRect = PhotoViewAttacher.this.getDisplayRect(PhotoViewAttacher.this.getDrawMatrix());
                        if (curRect != null) {
                            this.mClipMatrix.setScale(clipX, clipY, (curRect.left + curRect.right) / 2.0f, (curRect.top + curRect.bottom) / 2.0f);
                            this.mClipMatrix.mapRect(this.mClipRect, curRect);
                        }
                        if (BaseMiscUtil.floatEquals(clipX, 1.0f)) {
                            this.mClipRect.left = 0.0f;
                            this.mClipRect.right = (float) imageView.getWidth();
                        }
                        if (BaseMiscUtil.floatEquals(clipY, 1.0f)) {
                            this.mClipRect.top = 0.0f;
                            this.mClipRect.bottom = (float) imageView.getHeight();
                        }
                        more = true;
                    }
                    if (this.mAlphaScroller.computeScrollOffset()) {
                        PhotoViewAttacher.this.updateAlpha((1.0f * ((float) this.mAlphaScroller.getCurrX())) / 10000.0f);
                        more = true;
                    }
                    if (PhotoViewAttacher.this.getDisplayRect(PhotoViewAttacher.this.getDrawMatrix()) != null) {
                        PhotoViewAttacher.this.setImageViewMatrix(PhotoViewAttacher.this.getDrawMatrix());
                    } else {
                        imageView.invalidate();
                    }
                    if (more) {
                        PhotoViewAttacher.this.appendAnim(4);
                        Compat.postOnAnimation(imageView, this);
                        return;
                    }
                    PhotoViewAttacher.this.clearAnim(4);
                    if (this.isRunning) {
                        this.mClipRect = null;
                        this.isRunning = false;
                        if (this.isExitTransition) {
                            this.isExited = true;
                        } else {
                            this.isExited = false;
                            PhotoViewAttacher.this.resetMatrix();
                        }
                        if (this.mListener != null) {
                            imageView.postDelayed(new Runnable() {
                                public void run() {
                                    if (Transition.this.mListener != null) {
                                        Transition.this.mListener.onTransitEnd();
                                        Transition.this.mListener = null;
                                    }
                                }
                            }, 20);
                            return;
                        }
                        return;
                    }
                    return;
                }
                PhotoViewAttacher.this.clearAnim(4);
                return;
            }
            PhotoViewAttacher.this.clearAnim(4);
        }
    }

    public interface TransitionListener {
        void onTransitEnd();
    }

    private static void checkZoomLevels(float minZoom, float midZoom, float maxZoom) {
        if (minZoom >= midZoom) {
            throw new IllegalArgumentException("MinZoom has to be less than MidZoom");
        } else if (midZoom >= maxZoom) {
            throw new IllegalArgumentException("MidZoom has to be less than MaxZoom");
        }
    }

    private static boolean hasDrawable(ImageView imageView) {
        return (imageView == null || imageView.getDrawable() == null) ? false : true;
    }

    private static boolean isSupportedScaleType(ScaleType scaleType) {
        if (scaleType == null) {
            return false;
        }
        switch (AnonymousClass2.$SwitchMap$android$widget$ImageView$ScaleType[scaleType.ordinal()]) {
            case 1:
                throw new IllegalArgumentException(scaleType.name() + " is not supported in PhotoView");
            default:
                return true;
        }
    }

    private static void setImageViewScaleTypeMatrix(ImageView imageView) {
        if (imageView != null && !(imageView instanceof IPhotoView) && !ScaleType.MATRIX.equals(imageView.getScaleType())) {
            imageView.setScaleType(ScaleType.MATRIX);
        }
    }

    private void ensureStrokePaint() {
        if (this.mStrokePaint == null) {
            this.mStrokePaint = new Paint();
            this.mStrokePaint.setAntiAlias(false);
            this.mStrokePaint.setStyle(Style.STROKE);
        }
    }

    public void setStroke(int color, int width) {
        if (this.mStrokeColor != color || this.mStrokeWidth != width) {
            this.mStrokeColor = color;
            this.mStrokeWidth = width;
            if (width > 0) {
                ensureStrokePaint();
                this.mStrokePaint.setColor(this.mStrokeColor);
                this.mStrokePaint.setStrokeWidth((float) this.mStrokeWidth);
            }
            ImageView view = getImageView();
            if (view != null) {
                view.invalidate();
            }
        }
    }

    private void appendAnim(int anim) {
        this.mAnim |= anim;
    }

    private void clearAnim(int anim) {
        this.mAnim &= anim ^ -1;
    }

    public PhotoViewAttacher(ImageView imageView) {
        this(imageView, true);
    }

    public PhotoViewAttacher(ImageView imageView, boolean zoomable) {
        this.ZOOM_DURATION = 200;
        this.EXIT_SCALE_RATIO = 0.8f;
        this.mExitScale = 0.8f;
        this.mDownScale = 1.0f;
        this.mMinScale = 1.0f;
        this.mMidScale = 1.75f;
        this.mMaxScale = 2.0f;
        this.mAllowParentInterceptOnEdge = true;
        this.mBaseMatrix = new Matrix();
        this.mDrawMatrix = new Matrix();
        this.mSuppMatrix = new Matrix();
        this.mDisplayRect = new RectF();
        this.mMatrixValues = new float[9];
        this.mMatrixChangeListeners = new HashSet();
        this.mHScrollEdge = 4;
        this.mVScrollEdge = 4;
        this.mRotateEnabled = true;
        this.mScaleType = ScaleType.FIT_CENTER;
        this.mIsRegionDecodeEnable = true;
        this.mAnim = 0;
        this.mAlpha = 1.0f;
        this.mImageView = new WeakReference(imageView);
        imageView.setOnTouchListener(this);
        ViewTreeObserver observer = imageView.getViewTreeObserver();
        if (observer != null) {
            observer.addOnGlobalLayoutListener(this);
        }
        setImageViewScaleTypeMatrix(imageView);
        if (!imageView.isInEditMode()) {
            setZoomable(zoomable);
            this.mDragDownOutThreshold = imageView.getResources().getDisplayMetrics().density * 10.0f;
        }
    }

    public void setOnDoubleTapListener(OnDoubleTapListener newOnDoubleTapListener) {
        ensureTapDetector();
        if (newOnDoubleTapListener != null) {
            this.mGestureDetector.setOnDoubleTapListener(newOnDoubleTapListener);
        } else {
            this.mGestureDetector.setOnDoubleTapListener(new DefaultOnDoubleTapListener(this));
        }
    }

    public void setOnScaleChangeListener(OnScaleChangeListener onScaleChangeListener) {
        this.mScaleChangeListener = onScaleChangeListener;
    }

    public void setOnScaleStageChangedListener(OnScaleStageChangedListener onScaleStageChangedListener) {
        this.mScaleStageChangedListener = onScaleStageChangedListener;
    }

    public boolean canZoom() {
        return this.mZoomEnabled;
    }

    public void cleanup() {
        if (this.mImageView != null) {
            ImageView imageView = (ImageView) this.mImageView.get();
            if (imageView != null) {
                ViewTreeObserver observer = imageView.getViewTreeObserver();
                if (observer != null && observer.isAlive()) {
                    observer.removeGlobalOnLayoutListener(this);
                }
                imageView.setOnTouchListener(null);
                cancelFling();
            }
            if (this.mGestureDetector != null) {
                this.mGestureDetector.setOnDoubleTapListener(null);
            }
            this.mMatrixChangeListeners.clear();
            this.mPhotoTapListener = null;
            this.mViewTapListener = null;
            this.mLongClickListener = null;
            this.mScaleChangeListener = null;
            this.mExitListener = null;
            if (getTransition().isRunning()) {
                getTransition().stop();
                getTransition().setTransitionListener(null);
            }
            if (this.mRotateDetector != null && this.mRotateDetector.isRotating()) {
                this.mRotateDetector.stop();
            }
            releaseTile();
            this.mImageView = null;
        }
    }

    public RectF getDisplayRect() {
        checkMatrixBounds();
        RectF displayRect = getDisplayRect(getDrawMatrix());
        return displayRect != null ? new RectF(displayRect) : null;
    }

    public RectF getBaseDisplayRect() {
        RectF displayRect = getDisplayRect(this.mBaseMatrix);
        return displayRect != null ? new RectF(displayRect) : null;
    }

    public boolean getAbsoluteRect(RectF rect) {
        return getDrawMatrix().mapRect(rect);
    }

    public RectF getDrawableSize() {
        ImageView imageView = getImageView();
        if (imageView != null && getImageViewHeight(imageView) > 0 && getImageViewWidth(imageView) > 0) {
            Drawable d = imageView.getDrawable();
            if (d != null) {
                return new RectF(0.0f, 0.0f, (float) d.getIntrinsicWidth(), (float) d.getIntrinsicHeight());
            }
        }
        return new RectF(0.0f, 0.0f, 0.0f, 0.0f);
    }

    public boolean setDisplayMatrix(Matrix finalMatrix) {
        if (finalMatrix == null) {
            throw new IllegalArgumentException("Matrix cannot be null");
        }
        ImageView imageView = getImageView();
        if (imageView == null || imageView.getDrawable() == null) {
            return false;
        }
        this.mSuppMatrix.set(finalMatrix);
        setImageViewMatrix(getDrawMatrix());
        checkMatrixBounds();
        return true;
    }

    public void setRotationTo(float degrees) {
        setRotate(degrees % 360.0f, 0.0f, 0.0f);
        checkAndDisplayMatrix();
    }

    public void setRotationBy(float degrees) {
        postRotate(degrees % 360.0f, 0.0f, 0.0f);
        checkAndDisplayMatrix();
    }

    public ImageView getImageView() {
        ImageView imageView = null;
        if (this.mImageView != null) {
            imageView = (ImageView) this.mImageView.get();
        }
        if (imageView == null) {
            cleanup();
            LogManager.getLogger().i("PhotoViewAttacher", "ImageView no longer exists. You should not use this PhotoViewAttacher any more.");
        }
        return imageView;
    }

    public float getMinimumScale() {
        return this.mMinScale;
    }

    public float getMediumScale() {
        return this.mMidScale;
    }

    public float getMaximumScale() {
        return this.mMaxDoubleTapScale > 0.0f ? this.mMaxDoubleTapScale : this.mMaxScale;
    }

    private float getMaxPointsScale() {
        return this.mMaxPointsScale > 0.0f ? this.mMaxPointsScale : getMaximumScale();
    }

    private float getMaxPointsScalingScale() {
        return 1.5f * getMaxPointsScale();
    }

    public float getScale() {
        return MatrixUtil.getScale(this.mSuppMatrix);
    }

    public float getRotate() {
        return MatrixUtil.getRotate(this.mSuppMatrix) + MatrixUtil.getRotate(this.mBaseMatrix);
    }

    public ScaleType getScaleType() {
        return this.mScaleType;
    }

    public void onDrag(float dx, float dy) {
        if (!interceptDrag()) {
            if (getScale() >= this.mMinScale || this.mIsDragDownOut) {
                if (!this.mHasScale && (this.mIsDragDownOut || (this.mVScrollEdge == 5 && Math.abs(dy) > Math.abs(dx) && this.mTouchDownY > getImageView().getResources().getDisplayMetrics().density * 25.0f))) {
                    this.mDragDownOutY += dy;
                    if (!this.mIsDragDownOut && this.mDragDownOutY >= this.mDragDownOutThreshold) {
                        this.mIsDragDownOut = true;
                        this.mDragHandled = true;
                    }
                }
                ImageView imageView = getImageView();
                if (this.mIsDragDownOut) {
                    int width = getImageViewWidth(getImageView());
                    int height = getImageViewHeight(getImageView());
                    float transY = getValue(this.mSuppMatrix, 5);
                    float scale = 0.5f + ((1.0f - (dy / ((float) height))) * 0.5f);
                    postScale(scale, scale, (float) (width / 2), (((float) height) + transY) / 2.0f);
                    postTranslate(dx / 2.0f, dy);
                    updateAlpha(1.0f - (transY / ((float) height)));
                } else if (this.mZoomEnabled) {
                    postTranslate(dx, dy);
                }
                checkAndDisplayMatrix();
                ViewParent parent = imageView.getParent();
                if (this.mAllowParentInterceptOnEdge) {
                    if (Math.abs(dx) > Math.abs(dy)) {
                        if (this.mHScrollEdge == 4 || ((this.mHScrollEdge == 0 && dx >= 1.0f) || (this.mHScrollEdge == 1 && dx <= -1.0f))) {
                            if (parent != null && !this.mDragHandled) {
                                parent.requestDisallowInterceptTouchEvent(false);
                                return;
                            }
                            return;
                        }
                    } else if (this.mVScrollEdge == 5 || ((this.mVScrollEdge == 2 && dy >= 1.0f) || (this.mVScrollEdge == 3 && dy <= -1.0f))) {
                        if (parent != null && !this.mDragHandled) {
                            parent.requestDisallowInterceptTouchEvent(false);
                            return;
                        }
                        return;
                    }
                } else if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                this.mDragHandled = true;
            }
        }
    }

    public void onFling(float startX, float startY, float velocityX, float velocityY) {
        if (this.mZoomEnabled && !interceptDrag() && getScale() >= this.mMinScale) {
            ImageView imageView = getImageView();
            this.mCurrentFlingRunnable = new FlingRunnable(imageView.getContext());
            this.mCurrentFlingRunnable.fling(getImageViewWidth(imageView), getImageViewHeight(imageView), (int) velocityX, (int) velocityY);
            imageView.post(this.mCurrentFlingRunnable);
        }
    }

    public void onGlobalLayout() {
        ImageView imageView = getImageView();
        if (imageView != null) {
            int top = imageView.getTop();
            int right = imageView.getRight();
            int bottom = imageView.getBottom();
            int left = imageView.getLeft();
            if (top != this.mIvTop || bottom != this.mIvBottom || left != this.mIvLeft || right != this.mIvRight) {
                updateBaseMatrix(imageView.getDrawable(), trimRotation(getRotate()));
                resetMatrix();
                this.mIvTop = top;
                this.mIvRight = right;
                this.mIvBottom = bottom;
                this.mIvLeft = left;
            }
        }
    }

    private boolean interceptDrag() {
        return (this.mScaleDragDetector != null && this.mScaleDragDetector.isScaling()) || (this.mRotateDetector != null && this.mRotateDetector.isRotating());
    }

    private boolean interceptTouch() {
        return getTransition().isRunning() || (this.mRotateDetector != null && this.mRotateDetector.isAutoRotating());
    }

    private boolean interceptMotionEnd() {
        return this.mRotateDetector != null && this.mRotateDetector.isRotating();
    }

    private boolean interceptDrawTiles() {
        return !this.mIsRegionDecodeEnable || getTransition().isRunning() || isViewAnimationRunning() || (this.mRotateDetector != null && this.mRotateDetector.isRotating());
    }

    private boolean isViewAnimationRunning() {
        ImageView imageView = getImageView();
        if (imageView == null) {
            return false;
        }
        Animation anim = imageView.getAnimation();
        if (anim == null || !anim.hasStarted() || anim.hasEnded()) {
            return false;
        }
        return true;
    }

    private boolean interceptCheckBounds() {
        return this.mIsDragDownOut || getTransition().isRunning() || (this.mRotateDetector != null && this.mRotateDetector.isRotating());
    }

    private void ensureScaleDragDetector() {
        if (this.mScaleDragDetector == null) {
            ImageView imageView = getImageView();
            if (imageView != null) {
                this.mScaleDragDetector = VersionedGestureDetector.newInstance(imageView.getContext(), this);
            }
        }
    }

    private void ensureTapDetector() {
        if (this.mGestureDetector == null) {
            ImageView imageView = getImageView();
            if (imageView != null) {
                this.mGestureDetector = new GestureDetector(imageView.getContext(), new SimpleOnGestureListener() {
                    public void onLongPress(MotionEvent e) {
                        if (PhotoViewAttacher.this.mLongClickListener != null) {
                            PhotoViewAttacher.this.mLongClickListener.onLongClick(PhotoViewAttacher.this.getImageView());
                        }
                    }

                    public boolean onDown(MotionEvent e) {
                        return true;
                    }
                });
                this.mGestureDetector.setOnDoubleTapListener(new DefaultOnDoubleTapListener(this));
            }
        }
    }

    private void ensureRotateDetector() {
        if (this.mRotateDetector == null) {
            this.mRotateDetector = new RotateManager();
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View v, MotionEvent ev) {
        if (this.mIntercepted) {
            return false;
        }
        boolean handled = false;
        if (interceptTouch()) {
            if (v.getParent() != null) {
                v.getParent().requestDisallowInterceptTouchEvent(true);
            }
            return true;
        }
        if (hasDrawable((ImageView) v)) {
            ViewParent parent = v.getParent();
            switch (ev.getActionMasked()) {
                case 0:
                    this.mDownScale = getScale();
                    if (parent != null) {
                        parent.requestDisallowInterceptTouchEvent(true);
                    } else {
                        LogManager.getLogger().i("PhotoViewAttacher", "onTouch getParent() returned null");
                    }
                    this.mTouchDownY = ev.getY();
                    this.mDragHandled = false;
                    this.mHasScale = false;
                    cancelFling();
                    break;
                case 1:
                case 3:
                    if (!interceptMotionEnd()) {
                        float curScale = getScale();
                        if (this.mIsDragDownOut) {
                            if (this.mDragDownOutY < this.mDragDownOutThreshold) {
                                updateAlpha(1.0f);
                                resetMatrix();
                            } else if (this.mExitListener != null) {
                                this.mExitListener.onExit();
                            }
                            this.mIsDragDownOut = false;
                            this.mDragDownOutY = 0.0f;
                        } else if (this.mZoomEnabled) {
                            if (curScale < this.mExitScale && this.mExitListener != null && this.mDownScale <= 1.0f) {
                                this.mExitListener.onExit();
                            } else if (curScale < this.mMinScale) {
                                RectF rect = getDisplayRect();
                                if (rect != null) {
                                    v.post(new AnimatedZoomRunnable(curScale, this.mMinScale, rect.centerX(), rect.centerY()));
                                    handled = true;
                                }
                            } else if (curScale > getMaxPointsScale() && this.mLastScaleFocusX > 0.0f && this.mLastScaleFocusY > 0.0f) {
                                v.post(new AnimatedZoomRunnable(curScale, getMaxPointsScale(), this.mLastScaleFocusX, this.mLastScaleFocusY));
                                this.mLastScaleFocusX = 0.0f;
                                this.mLastScaleFocusY = 0.0f;
                            }
                        }
                        this.mDragHandled = false;
                        break;
                    }
                    return true;
            }
            if (canRotatable()) {
                ensureRotateDetector();
                handled = this.mRotateDetector.onTouchEvent(ev);
            }
            ensureScaleDragDetector();
            if (this.mScaleDragDetector.onTouchEvent(ev)) {
                handled = true;
            }
        }
        ensureTapDetector();
        if (this.mGestureDetector.onTouchEvent(ev)) {
            return true;
        }
        return handled;
    }

    public void onScale(float scaleFactor, float focusX, float focusY) {
        if (this.mZoomEnabled) {
            this.mHasScale = true;
            this.mIsDragDownOut = false;
            float preScale = getScale();
            if (preScale < getMaxPointsScalingScale() || scaleFactor < 1.0f) {
                this.mLastScaleFocusX = focusX;
                this.mLastScaleFocusY = focusY;
                postScale(scaleFactor, scaleFactor, focusX, focusY);
                checkAndDisplayMatrix();
                float curScale = getScale();
                if (this.mScaleStageChangedListener == null) {
                    return;
                }
                if (scaleFactor < 1.0f) {
                    if (curScale < this.mMaxDoubleTapScale && preScale >= this.mMaxDoubleTapScale) {
                        this.mScaleStageChangedListener.onMaxScaleStage(false);
                    } else if (curScale < this.mMidScale && preScale >= this.mMidScale) {
                        this.mScaleStageChangedListener.onMidScaleStage(false);
                    }
                } else if (curScale >= this.mMaxDoubleTapScale) {
                    this.mScaleStageChangedListener.onMaxScaleStage(true);
                }
            }
        }
    }

    public boolean isGestureOperating() {
        return (this.mScaleDragDetector != null && (this.mScaleDragDetector.isDragging() || this.mScaleDragDetector.isScaling())) || (this.mRotateDetector != null && this.mRotateDetector.isRotating());
    }

    public void setInterceptTouch(boolean intercept) {
        this.mIntercepted = intercept;
    }

    private void dispatchScaleChanged(float scaleFactorX, float scaleFactorY, float focusX, float focusY, float scale) {
        if (this.mScaleChangeListener != null) {
            this.mScaleChangeListener.onScaleChange(scaleFactorX, scaleFactorY, focusX, focusY, scale);
        }
    }

    public void setAllowParentInterceptOnEdge(boolean allow) {
        this.mAllowParentInterceptOnEdge = allow;
    }

    public void setMinimumScale(float minimumScale) {
        checkZoomLevels(minimumScale, this.mMidScale, this.mMaxScale);
        this.mMinScale = minimumScale;
        this.mExitScale = this.mMinScale * 0.8f;
    }

    public void setMediumScale(float mediumScale) {
        checkZoomLevels(this.mMinScale, mediumScale, this.mMaxScale);
        this.mMidScale = mediumScale;
    }

    public void setMaximumScale(float maximumScale) {
        checkZoomLevels(this.mMinScale, this.mMidScale, maximumScale);
        this.mMaxScale = maximumScale;
    }

    public void setOnLongClickListener(OnLongClickListener listener) {
        this.mLongClickListener = listener;
    }

    public void addOnMatrixChangeListener(OnMatrixChangedListener listener) {
        if (listener != null) {
            this.mMatrixChangeListeners.add(listener);
        }
    }

    public void removeOnMatrixChangeListener(OnMatrixChangedListener listener) {
        if (listener != null) {
            this.mMatrixChangeListeners.remove(listener);
        }
    }

    public void setOnPhotoTapListener(OnPhotoTapListener listener) {
        this.mPhotoTapListener = listener;
    }

    public OnPhotoTapListener getOnPhotoTapListener() {
        return this.mPhotoTapListener;
    }

    public void setOnViewTapListener(OnViewTapListener listener) {
        this.mViewTapListener = listener;
    }

    public OnViewTapListener getOnViewTapListener() {
        return this.mViewTapListener;
    }

    public void setOnExitListener(OnExitListener listener) {
        this.mExitListener = listener;
    }

    public void setOnBackgroundAlphaChangedListener(OnBackgroundAlphaChangedListener alphaChangedListener) {
        this.mAlphaChangedListener = alphaChangedListener;
    }

    public void setOnRotateListener(OnRotateListener listener) {
        this.mRotateListener = listener;
    }

    public void setScale(float scale) {
        setScale(scale, false);
    }

    public void setScale(float scale, boolean animate) {
        ImageView imageView = getImageView();
        if (imageView != null) {
            setScale(scale, (float) (imageView.getRight() / 2), (float) (imageView.getBottom() / 2), animate);
        }
    }

    public void setScale(float scale, float focalX, float focalY, boolean animate) {
        ImageView imageView = getImageView();
        if (imageView == null) {
            return;
        }
        if (scale < this.mMinScale || scale > getMaximumScale()) {
            LogManager.getLogger().i("PhotoViewAttacher", "Scale must be within the range of minScale and maxScale");
        } else if (animate) {
            imageView.post(new AnimatedZoomRunnable(getScale(), scale, focalX, focalY));
        } else {
            setScale(scale, scale, focalX, focalY);
            checkAndDisplayMatrix();
        }
    }

    public void setScaleType(ScaleType scaleType) {
        if (isSupportedScaleType(scaleType) && scaleType != this.mScaleType) {
            this.mScaleType = scaleType;
            update(true);
        }
    }

    public void setZoomable(boolean zoomable) {
        this.mZoomEnabled = zoomable;
        ImageView image = getImageView();
        if (image != null && image.getDrawable() != null) {
            update(true);
        }
    }

    public void setRotatable(boolean rotatable) {
        this.mRotateEnabled = rotatable;
        if (!this.mRotateEnabled) {
            update(false);
        }
    }

    public boolean canRotatable() {
        return this.mRotateEnabled;
    }

    public void update(boolean keepDisplayRect) {
        ImageView imageView = getImageView();
        if (imageView != null) {
            if (this.mZoomEnabled) {
                setImageViewScaleTypeMatrix(imageView);
            }
            updateBaseMatrix(imageView.getDrawable(), keepDisplayRect ? trimRotation(getRotate()) : 0);
            if (this.mZoomEnabled && keepDisplayRect) {
                setImageViewMatrix(getDrawMatrix());
            } else {
                resetMatrix();
            }
        }
    }

    public Matrix getDisplayMatrix() {
        return new Matrix(getDrawMatrix());
    }

    public Matrix getSuppMatrix() {
        return new Matrix(this.mSuppMatrix);
    }

    public Matrix getBaseMatrix() {
        return new Matrix(this.mBaseMatrix);
    }

    public Matrix getDrawMatrix() {
        this.mDrawMatrix.set(this.mBaseMatrix);
        this.mDrawMatrix.postConcat(this.mSuppMatrix);
        return this.mDrawMatrix;
    }

    private void cancelFling() {
        if (this.mCurrentFlingRunnable != null) {
            this.mCurrentFlingRunnable.cancelFling();
            this.mCurrentFlingRunnable = null;
        }
    }

    private void checkAndDisplayMatrix() {
        if (checkMatrixBounds()) {
            setImageViewMatrix(getDrawMatrix());
        }
    }

    private void checkImageViewScaleType() {
        ImageView imageView = getImageView();
        if (imageView != null && !(imageView instanceof IPhotoView) && !ScaleType.MATRIX.equals(imageView.getScaleType())) {
            throw new IllegalStateException("The ImageView's ScaleType has been changed since attaching a PhotoViewAttacher");
        }
    }

    private boolean checkMatrixBounds() {
        if (interceptCheckBounds()) {
            return true;
        }
        ImageView imageView = getImageView();
        if (imageView == null) {
            return false;
        }
        RectF rect = getDisplayRect(getDrawMatrix());
        if (rect == null) {
            return false;
        }
        float height = rect.height();
        float width = rect.width();
        float deltaX = 0.0f;
        float deltaY = 0.0f;
        int viewHeight = getImageViewHeight(imageView);
        if (Math.floor((double) height) <= ((double) viewHeight)) {
            switch (AnonymousClass2.$SwitchMap$android$widget$ImageView$ScaleType[this.mScaleType.ordinal()]) {
                case 2:
                    deltaY = -rect.top;
                    break;
                case 3:
                    deltaY = (((float) viewHeight) - height) - rect.top;
                    break;
                default:
                    deltaY = ((((float) viewHeight) - height) / 2.0f) - rect.top;
                    break;
            }
            this.mVScrollEdge = 5;
        } else if (Math.floor((double) rect.top) >= 0.0d) {
            this.mVScrollEdge = 2;
            deltaY = -rect.top;
        } else if (Math.floor((double) rect.bottom) <= ((double) viewHeight)) {
            deltaY = ((float) viewHeight) - rect.bottom;
            this.mVScrollEdge = 3;
        } else {
            this.mVScrollEdge = -1;
        }
        int viewWidth = getImageViewWidth(imageView);
        if (width <= ((float) viewWidth)) {
            switch (AnonymousClass2.$SwitchMap$android$widget$ImageView$ScaleType[this.mScaleType.ordinal()]) {
                case 2:
                    deltaX = -rect.left;
                    break;
                case 3:
                    deltaX = (((float) viewWidth) - width) - rect.left;
                    break;
                default:
                    deltaX = ((((float) viewWidth) - width) / 2.0f) - rect.left;
                    break;
            }
            this.mHScrollEdge = 4;
        } else if (Math.floor((double) rect.left) >= 0.0d) {
            this.mHScrollEdge = 0;
            deltaX = -rect.left;
        } else if (Math.floor((double) rect.right) <= ((double) viewWidth)) {
            deltaX = ((float) viewWidth) - rect.right;
            this.mHScrollEdge = 1;
        } else {
            this.mHScrollEdge = -1;
        }
        postTranslate(deltaX, deltaY);
        return true;
    }

    private RectF getDisplayRect(Matrix matrix) {
        ImageView imageView = getImageView();
        if (imageView != null && getImageViewHeight(imageView) > 0 && getImageViewWidth(imageView) > 0) {
            Drawable d = imageView.getDrawable();
            if (d != null) {
                this.mDisplayRect.set(0.0f, 0.0f, (float) d.getIntrinsicWidth(), (float) d.getIntrinsicHeight());
                matrix.mapRect(this.mDisplayRect);
                return this.mDisplayRect;
            }
        }
        return null;
    }

    public Bitmap getVisibleRectangleBitmap() {
        return null;
    }

    public void setZoomTransitionDuration(int milliseconds) {
        if (milliseconds < 0) {
            milliseconds = 200;
        }
        this.ZOOM_DURATION = milliseconds;
    }

    private float getValue(Matrix matrix, int whichValue) {
        matrix.getValues(this.mMatrixValues);
        return this.mMatrixValues[whichValue];
    }

    private void resetMatrix() {
        float preScale = getScale();
        if (!getTransition().isRunning()) {
            this.mSuppMatrix.reset();
        }
        setImageViewMatrix(getDrawMatrix());
        if (this.mScaleStageChangedListener != null) {
            if (preScale >= this.mMaxDoubleTapScale) {
                this.mScaleStageChangedListener.onMaxScaleStage(false);
            } else if (preScale >= this.mMidScale) {
                this.mScaleStageChangedListener.onMidScaleStage(false);
            }
        }
        checkMatrixBounds();
    }

    private void setImageViewMatrix(Matrix matrix) {
        ImageView imageView = getImageView();
        if (imageView != null) {
            checkImageViewScaleType();
            imageView.setImageMatrix(matrix);
            notifyTileViewInvalidate();
            if (this.mMatrixChangeListeners != null && this.mMatrixChangeListeners.size() > 0) {
                RectF displayRect = getDisplayRect(matrix);
                if (displayRect != null) {
                    RectF rect = new RectF(displayRect);
                    for (OnMatrixChangedListener listener : this.mMatrixChangeListeners) {
                        listener.onMatrixChanged(rect);
                    }
                }
            }
        }
    }

    private void updateBaseMatrix(Drawable d, int rotation) {
        RectF baseRect = calculateBaseRect(d, rotation);
        if (baseRect != null) {
            this.mBaseMatrix.reset();
            this.mBaseMatrix.postRotate((float) (0 - rotation), baseRect.centerX(), baseRect.centerY());
            RectF rotatedRect = getDisplayRect(this.mBaseMatrix);
            this.mBaseMatrix.postTranslate(baseRect.centerX() - rotatedRect.centerX(), baseRect.centerY() - rotatedRect.centerY());
            this.mBaseMatrix.postScale(baseRect.width() / rotatedRect.width(), baseRect.height() / rotatedRect.height(), baseRect.centerX(), baseRect.centerY());
            onBaseMatrixChanged();
        }
    }

    private void onBaseMatrixChanged() {
        tryAnimEnter();
        calculateScales();
        if (this.mTileView != null) {
            this.mTileView.setViewPort(new Rect(0, 0, getImageViewWidth(getImageView()), getImageViewHeight(getImageView())));
        }
    }

    private int getDrawableWidth(int rotation) {
        ImageView imageView = getImageView();
        if (imageView == null) {
            return 0;
        }
        Drawable d = imageView.getDrawable();
        if (d == null) {
            return 0;
        }
        return (((rotation > 0 ? rotation + 45 : rotation + -45) / 90) & 1) == 0 ? d.getIntrinsicWidth() : d.getIntrinsicHeight();
    }

    private int getDrawbleHeight(int rotation) {
        ImageView imageView = getImageView();
        if (imageView == null) {
            return 0;
        }
        Drawable d = imageView.getDrawable();
        if (d == null) {
            return 0;
        }
        return (((rotation > 0 ? rotation + 45 : rotation + -45) / 90) & 1) == 0 ? d.getIntrinsicHeight() : d.getIntrinsicWidth();
    }

    private RectF calculateBaseRect(Drawable d, int rotation) {
        ImageView imageView = getImageView();
        if (imageView == null || d == null) {
            return null;
        }
        float viewWidth = (float) getImageViewWidth(imageView);
        float viewHeight = (float) getImageViewHeight(imageView);
        int drawableWidth = getDrawableWidth(rotation);
        int drawableHeight = getDrawbleHeight(rotation);
        if (viewWidth == 0.0f || viewHeight == 0.0f || drawableWidth == 0 || drawableHeight == 0) {
            return null;
        }
        Matrix baseMatrix = new Matrix();
        float widthScale = viewWidth / ((float) drawableWidth);
        float heightScale = viewHeight / ((float) drawableHeight);
        if (this.mScaleType != ScaleType.CENTER) {
            float scale;
            if (this.mScaleType != ScaleType.CENTER_CROP) {
                if (this.mScaleType != ScaleType.CENTER_INSIDE) {
                    RectF mTempSrc = new RectF(0.0f, 0.0f, (float) drawableWidth, (float) drawableHeight);
                    RectF mTempDst = new RectF(0.0f, 0.0f, viewWidth, viewHeight);
                    switch (AnonymousClass2.$SwitchMap$android$widget$ImageView$ScaleType[this.mScaleType.ordinal()]) {
                        case 2:
                            baseMatrix.setRectToRect(mTempSrc, mTempDst, ScaleToFit.START);
                            break;
                        case 3:
                            baseMatrix.setRectToRect(mTempSrc, mTempDst, ScaleToFit.END);
                            break;
                        case 4:
                            baseMatrix.setRectToRect(mTempSrc, mTempDst, ScaleToFit.CENTER);
                            break;
                        case 5:
                            baseMatrix.setRectToRect(mTempSrc, mTempDst, ScaleToFit.FILL);
                            break;
                    }
                }
                scale = Math.min(1.0f, Math.min(widthScale, heightScale));
                baseMatrix.postScale(scale, scale);
                baseMatrix.postTranslate((viewWidth - (((float) drawableWidth) * scale)) / 2.0f, (viewHeight - (((float) drawableHeight) * scale)) / 2.0f);
            } else {
                scale = Math.max(widthScale, heightScale);
                baseMatrix.postScale(scale, scale);
                baseMatrix.postTranslate((viewWidth - (((float) drawableWidth) * scale)) / 2.0f, (viewHeight - (((float) drawableHeight) * scale)) / 2.0f);
            }
        } else {
            baseMatrix.postTranslate((viewWidth - ((float) drawableWidth)) / 2.0f, (viewHeight - ((float) drawableHeight)) / 2.0f);
        }
        RectF baseRect = new RectF();
        baseRect.set(0.0f, 0.0f, (float) drawableWidth, (float) drawableHeight);
        baseMatrix.mapRect(baseRect);
        return baseRect;
    }

    private int getCorrectWidth(int width, int height) {
        RectF baseRect = getDisplayRect(this.mBaseMatrix);
        return baseRect.width() > baseRect.height() ? Math.max(width, height) : Math.min(width, height);
    }

    private int getCorrectHeight(int width, int height) {
        RectF baseRect = getDisplayRect(this.mBaseMatrix);
        return baseRect.height() > baseRect.width() ? Math.max(width, height) : Math.min(width, height);
    }

    private void calculateScales() {
        if (getImageView() != null) {
            float viewWidth = (float) getImageViewWidth(getImageView());
            float viewHeight = (float) getImageViewHeight(getImageView());
            int rotation = (int) getRotate();
            int drawableWidth = getDrawableWidth(rotation);
            int drawableHeight = getDrawbleHeight(rotation);
            if (viewWidth != 0.0f && viewHeight != 0.0f && drawableWidth != 0 && drawableHeight != 0) {
                this.mMaxDoubleTapScale = 0.0f;
                this.mMaxPointsScale = 0.0f;
                RectF baseRect = getDisplayRect(this.mBaseMatrix);
                float rectWidth = baseRect.width();
                float widthScale = (rectWidth * getMaximumScale()) / viewWidth;
                float heightScale = (baseRect.height() * getMaximumScale()) / viewHeight;
                switch (getEnlargeMode(rectWidth, viewWidth)) {
                    case 0:
                        if (widthScale < heightScale) {
                            this.mMidScale = ((double) widthScale) < 1.0d ? viewWidth / baseRect.width() : 2.0f;
                            this.mMaxDoubleTapScale = ((float) getCorrectWidth(this.mOriginWidth, this.mOriginHeight)) / baseRect.width();
                        } else {
                            this.mMidScale = ((double) heightScale) < 1.0d ? viewHeight / baseRect.height() : 2.0f;
                            this.mMaxDoubleTapScale = ((float) getCorrectHeight(this.mOriginWidth, this.mOriginHeight)) / baseRect.height();
                        }
                        if (this.mMidScale > this.mMaxDoubleTapScale) {
                            this.mMaxDoubleTapScale = this.mMaxScale;
                            break;
                        }
                        break;
                    case 1:
                        this.mMidScale = viewWidth / baseRect.width();
                        this.mMaxDoubleTapScale = this.mMidScale;
                        break;
                    case 2:
                        if (((double) heightScale) < 1.0d) {
                            this.mMaxDoubleTapScale = viewHeight / baseRect.height();
                        } else {
                            this.mMaxDoubleTapScale = getMaximumScale();
                        }
                        this.mMidScale = this.mMaxDoubleTapScale;
                        break;
                }
                this.mMaxPointsScale = 1.5f * this.mMaxDoubleTapScale;
            }
        }
    }

    private int getEnlargeMode(float rectWidth, float viewWidth) {
        if (this.mSupportHd) {
            return 0;
        }
        if (Math.round(rectWidth) < Math.round(viewWidth)) {
            return 1;
        }
        return 2;
    }

    private int getImageViewWidth(ImageView imageView) {
        if (imageView == null) {
            return 0;
        }
        return (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight();
    }

    private int getImageViewHeight(ImageView imageView) {
        if (imageView == null) {
            return 0;
        }
        return (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom();
    }

    public boolean beforeDraw(Canvas canvas) {
        drawBackground(canvas);
        if (getTransition().isRunning()) {
            if (getTransition().getClipRect() == null) {
                return true;
            }
            canvas.clipRect(getTransition().getClipRect());
            return true;
        } else if (getTransition().isExited()) {
            return false;
        } else {
            return true;
        }
    }

    private void drawBackground(Canvas canvas) {
        ImageView view = getImageView();
        if (view != null && this.mAlphaDrawable != null) {
            this.mAlphaDrawable.setAlpha((int) (this.mAlpha * 255.0f));
            this.mAlphaDrawable.setBounds(0, 0, getImageViewWidth(view), getImageViewHeight(view));
            this.mAlphaDrawable.draw(canvas);
        }
    }

    private Paint tryGetViewPaint() {
        if (hasDrawable(getImageView())) {
            Drawable d = getImageView().getDrawable();
            if (d instanceof BitmapDrawable) {
                return ((BitmapDrawable) d).getPaint();
            }
        }
        return null;
    }

    public void afterDraw(Canvas canvas) {
        if (needDrawTile()) {
            this.mTileView.draw(canvas, tryGetViewPaint());
        }
        drawStroke(canvas);
    }

    private void drawStroke(Canvas canvas) {
        if (this.mStrokeWidth > 0) {
            RectF rectF = getDisplayRect();
            if (rectF != null && this.mStrokePaint != null) {
                rectF.inset((float) this.mStrokeWidth, (float) this.mStrokeWidth);
                canvas.drawRect(rectF, this.mStrokePaint);
            }
        }
    }

    private Transition getTransition() {
        if (this.mTransition == null) {
            ImageView imageView = getImageView();
            if (imageView != null) {
                this.mTransition = new Transition(imageView.getContext());
            }
        }
        return this.mTransition;
    }

    private void tryAnimEnter() {
        if (this.mEnterInfo == null) {
            return;
        }
        if (System.currentTimeMillis() - this.mWantEnterTime < 300) {
            animEnter(this.mEnterInfo, this.mTransitionListener);
        } else {
            this.mEnterInfo = null;
        }
    }

    public void animEnter(ItemViewInfo enterInfo, TransitionListener listener) {
        if (enterInfo != null && getTransition() != null && getImageView() != null) {
            getTransition().stop();
            RectF rect = getDisplayRect();
            if (rect != null) {
                float scale;
                ItemViewInfo selfInfo = ItemViewInfo.getImageInfo(getImageView(), 0);
                float widthScale = ((float) enterInfo.getWidth()) / rect.width();
                float heightScale = ((float) enterInfo.getHeight()) / rect.height();
                if (widthScale > heightScale) {
                    scale = widthScale;
                } else {
                    scale = heightScale;
                }
                float curScale = getScale();
                float ratioWidth = rect.width() * scale;
                float ratioHeight = rect.height() * scale;
                int dx = (int) ((((float) selfInfo.getX()) + rect.left) - ((float) ((int) (((((float) enterInfo.getWidth()) - ratioWidth) / 2.0f) + ((float) enterInfo.getX())))));
                int dy = (int) ((((float) selfInfo.getY()) + rect.top) - ((float) ((int) (((((float) enterInfo.getHeight()) - ratioHeight) / 2.0f) + ((float) enterInfo.getY())))));
                postScale(scale, scale, rect.left, rect.top);
                postTranslate((float) (-dx), (float) (-dy));
                setImageViewMatrix(getDrawMatrix());
                getTransition().scale(scale, curScale);
                getTransition().translate(0, 0, dx, dy);
                if (((float) enterInfo.getWidth()) < ratioWidth || ((float) enterInfo.getHeight()) < ratioHeight) {
                    float clipY = ((float) enterInfo.getHeight()) / ratioHeight;
                    float clipX = BaseMiscUtil.clamp(((float) enterInfo.getWidth()) / ratioWidth, 0.0f, 1.0f);
                    clipY = BaseMiscUtil.clamp(clipY, 0.0f, 1.0f);
                    getTransition().clip(clipX, clipY, 1.0f - clipX, 1.0f - clipY);
                }
                this.mEnterInfo = null;
            } else {
                this.mEnterInfo = enterInfo;
                this.mTransitionListener = listener;
                this.mWantEnterTime = System.currentTimeMillis();
            }
            getTransition().setTransitionListener(listener);
            if (System.currentTimeMillis() - this.mWantEnterTime < 150) {
                getTransition().ensureAlpha(true);
            }
            getTransition().alpha(this.mAlpha, 1.0f);
            getTransition().start(false);
        } else if (listener != null) {
            listener.onTransitEnd();
        }
    }

    public void animExit(ItemViewInfo exitInfo, TransitionListener listener) {
        if (exitInfo != null && exitInfo.isLocationValid() && getTransition() != null && getImageView() != null) {
            getTransition().stop();
            RectF rect = getDisplayRect(getDrawMatrix());
            if (rect != null) {
                float scale;
                RectF curDisplayRect = new RectF(rect);
                ItemViewInfo selfInfo = ItemViewInfo.getImageInfo(getImageView(), 0);
                RectF baseDisplayRect = getDisplayRect(this.mBaseMatrix);
                float widthScale = ((float) exitInfo.getWidth()) / baseDisplayRect.width();
                float heightScale = ((float) exitInfo.getHeight()) / baseDisplayRect.height();
                if (widthScale > heightScale) {
                    scale = widthScale;
                } else {
                    scale = heightScale;
                }
                float curScale = getScale();
                float ratioWidth = baseDisplayRect.width() * scale;
                float ratioHeight = baseDisplayRect.height() * scale;
                int dx = (int) ((((float) selfInfo.getX()) + curDisplayRect.left) - ((float) ((int) (((((float) exitInfo.getWidth()) - ratioWidth) / 2.0f) + ((float) exitInfo.getX())))));
                int dy = (int) ((((float) selfInfo.getY()) + curDisplayRect.top) - ((float) ((int) (((((float) exitInfo.getHeight()) - ratioHeight) / 2.0f) + ((float) exitInfo.getY())))));
                if (((float) exitInfo.getWidth()) < ratioWidth || ((float) exitInfo.getHeight()) < ratioHeight) {
                    getTransition().clip(1.0f, 1.0f, (((float) exitInfo.getWidth()) / ratioWidth) - 1.0f, BaseMiscUtil.clamp(((float) exitInfo.getHeight()) / ratioHeight, 0.0f, 1.0f) - 1.0f);
                }
                getTransition().scale(curScale, scale);
                getTransition().translate(0, 0, -dx, -dy);
            }
            getTransition().setTransitionListener(listener);
            getTransition().ensureAlpha(false);
            getTransition().alpha(this.mAlpha, 0.0f);
            getTransition().start(true);
        } else if (listener != null) {
            listener.onTransitEnd();
        }
    }

    private boolean needDrawTile() {
        if (interceptDrawTiles()) {
            return false;
        }
        ImageView imageView = getImageView();
        if (!(this.mTileView == null || imageView == null || imageView.getDrawable() == null)) {
            Drawable d = imageView.getDrawable();
            int drawableWidth = d.getIntrinsicWidth();
            int drawableHeight = d.getIntrinsicHeight();
            int tileWidth = this.mTileView.getTileProviderWidth();
            int tileHeight = this.mTileView.getTileProviderHeight();
            if (tileWidth <= 0 || tileHeight <= 0) {
                LogManager.getLogger().w("PhotoViewAttacher", String.format(Locale.US, "invalid tile size[%dx%d]", new Object[]{Integer.valueOf(tileWidth), Integer.valueOf(tileHeight)}));
                return false;
            }
            if (((this.mTileView.getTileProviderRotation() / 90) & 1) == 1) {
                tileWidth = this.mTileView.getTileProviderHeight();
                tileHeight = this.mTileView.getTileProviderWidth();
            }
            if (BaseMiscUtil.floatNear((1.0f * ((float) drawableWidth)) / ((float) drawableHeight), (1.0f * ((float) tileWidth)) / ((float) tileHeight), 0.5f)) {
                return getDisplayRect() != null && getScale() >= 1.0f;
            } else {
                LogManager.getLogger().w("PhotoViewAttacher", String.format("drawable w/h not equal to tile w/h: %.2f, %.2f", new Object[]{Float.valueOf((1.0f * ((float) drawableWidth)) / ((float) drawableHeight)), Float.valueOf((1.0f * ((float) tileWidth)) / ((float) tileHeight))}));
                if (BaseMiscUtil.floatEquals((float) (Math.min(drawableWidth, drawableHeight) / Math.max(drawableWidth, drawableHeight)), (float) (Math.min(tileWidth, tileHeight) / Math.max(tileWidth, tileHeight)))) {
                    LogManager.getLogger().e("PhotoViewAttacher", String.format("drawable w[%s], h[%s] not equal to tile w[%s], h[%s]; tile rotation[%s]", new Object[]{Integer.valueOf(drawableWidth), Integer.valueOf(drawableHeight), Integer.valueOf(tileWidth), Integer.valueOf(tileHeight), Integer.valueOf(this.mTileView.getTileProviderRotation())}));
                    HashMap<String, String> params = new HashMap();
                    params.put("tile_rotation", String.valueOf(this.mTileView.getTileProviderRotation()));
                    BaseSamplingStatHelper.recordErrorEvent("photo", "photo_tile_orientation_error", params);
                }
            }
        }
        return false;
    }

    private void notifyTileViewInvalidate() {
        if (needDrawTile()) {
            this.mTileView.notifyInvalidate(getDisplayRect(), getRotate());
        }
    }

    public void setupTile(TileBitProvider provider, BitmapRecycleCallback callback, TrimMemoryCallback trimMemoryCallback) {
        if (this.mTileView == null) {
            this.mTileView = new TileView(provider, getImageView(), callback, trimMemoryCallback);
        }
        this.mTileView.setViewPort(new Rect(0, 0, getImageViewWidth(getImageView()), getImageViewHeight(getImageView())));
        calculateScales();
        notifyTileViewInvalidate();
    }

    public void releaseTile() {
        if (this.mTileView != null) {
            this.mTileView.cleanup();
        }
        this.mTileView = null;
    }

    public void setRegionDecodeEnable(boolean enable) {
        if (this.mIsRegionDecodeEnable != enable) {
            this.mIsRegionDecodeEnable = enable;
            if (enable) {
                notifyTileViewInvalidate();
            } else if (getImageView() != null) {
                getImageView().invalidate();
            }
        }
    }

    public void setBackgroundAlpha(float alpha) {
        updateAlpha(alpha);
        View view = getImageView();
        if (view != null) {
            view.invalidate();
        }
    }

    public void setAlphaBackground(Drawable drawable) {
        this.mAlphaDrawable = drawable;
        View view = getImageView();
        if (view != null) {
            view.invalidate();
        }
    }

    public void setHDState(int originWidth, int originHeight, boolean isHd) {
        this.mOriginWidth = originWidth;
        this.mOriginHeight = originHeight;
        this.mSupportHd = isHd;
    }

    public void onDoubleTap(float x, float y) {
        if (hasDrawable(getImageView())) {
            float scale = getScale();
            if (scale < getMediumScale() - 0.001f) {
                setScale(getMediumScale(), x, y, true);
                if (this.mScaleStageChangedListener != null && getMediumScale() < getMaximumScale()) {
                    this.mScaleStageChangedListener.onMidScaleStage(true);
                }
            } else if (scale < getMediumScale() - 0.001f || scale >= getMaximumScale() - 0.001f) {
                setScale(getMinimumScale(), x, y, true);
            } else {
                setScale(getMaximumScale(), x, y, true);
                if (this.mScaleStageChangedListener != null) {
                    this.mScaleStageChangedListener.onMaxScaleStage(true);
                }
            }
        }
    }

    private void updateAlpha(float alpha) {
        if (alpha < 1.0f) {
            this.mAlpha = BaseMiscUtil.clamp(alpha, 0.0f, 1.0f);
        } else {
            this.mAlpha = 1.0f;
        }
        if (this.mAlphaChangedListener != null) {
            this.mAlphaChangedListener.onAlphaChanged(this.mAlpha);
        }
    }

    private void postScale(float sx, float sy, float px, float py) {
        this.mSuppMatrix.postScale(sx, sy, px, py);
        onScaleChanged(sx, sy, px, py);
    }

    private void postTranslate(float dx, float dy) {
        this.mSuppMatrix.postTranslate(dx, dy);
    }

    private void postRotate(float degrees, float px, float py) {
        this.mSuppMatrix.postRotate(degrees, px, py);
    }

    private void setScale(float sx, float sy, float px, float py) {
        this.mSuppMatrix.setScale(sx, sy, px, py);
        onScaleChanged(sx, sy, px, py);
    }

    private void onScaleChanged(float sx, float sy, float px, float py) {
        float curScale = getScale();
        updateAlpha(getScale());
        dispatchScaleChanged(sx, sy, px, py, curScale);
    }

    private void setRotate(float degrees, float px, float py) {
        this.mSuppMatrix.setRotate(degrees, px, py);
    }

    private int trimRotation(float degrees) {
        return ((((int) (degrees > 0.0f ? degrees + 45.0f : degrees - 45.0f)) / 90) * 90) % 360;
    }
}
