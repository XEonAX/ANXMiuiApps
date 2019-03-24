package miui.notification;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.RectF;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.view.ViewConfiguration;
import android.view.animation.LinearInterpolator;
import com.nexstreaming.nexeditorsdk.nexProject;
import miui.hybrid.Response;

public class SwipeHelper implements Gefingerpoken {
    static final float ALPHA_FADE_END = 0.5f;
    public static float ALPHA_FADE_START = 0.0f;
    private static final boolean CONSTRAIN_SWIPE = true;
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_INVALIDATE = false;
    private static final boolean DISMISS_IF_SWIPED_FAR_ENOUGH = true;
    private static final boolean FADE_OUT_DURING_SWIPE = true;
    private static final boolean SLOW_ANIMATIONS = false;
    private static final int SNAP_ANIM_LEN = 150;
    static final String TAG = "com.android.systemui.SwipeHelper";
    public static final int X = 0;
    public static final int Y = 1;
    private static LinearInterpolator sLinearInterpolator = new LinearInterpolator();
    private int DEFAULT_ESCAPE_ANIMATION_DURATION = Response.CODE_GENERIC_ERROR;
    private int MAX_DISMISS_VELOCITY = nexProject.kAutoThemeTransitionDuration;
    private int MAX_ESCAPE_ANIMATION_DURATION = 400;
    private float SWIPE_ESCAPE_VELOCITY = 100.0f;
    private Callback mCallback;
    private boolean mCanCurrViewBeDimissed;
    private View mCurrAnimView;
    private View mCurrView;
    private float mDensityScale;
    private boolean mDragging;
    private Handler mHandler;
    private float mInitialTouchPos;
    private OnLongClickListener mLongPressListener;
    private boolean mLongPressSent;
    private long mLongPressTimeout;
    private float mMinAlpha = 0.0f;
    private float mPagingTouchSlop;
    private int mSwipeDirection;
    private VelocityTracker mVelocityTracker;
    private Runnable mWatchLongPress;

    public interface Callback {
        boolean canChildBeDismissed(View view);

        View getChildAtPosition(MotionEvent motionEvent);

        View getChildContentView(View view);

        void onBeginDrag(View view);

        void onChildDismissed(View view);

        void onDragCancelled(View view);
    }

    public SwipeHelper(int swipeDirection, Callback callback, float densityScale, float pagingTouchSlop) {
        this.mCallback = callback;
        this.mHandler = new Handler();
        this.mSwipeDirection = swipeDirection;
        this.mVelocityTracker = VelocityTracker.obtain();
        this.mDensityScale = densityScale;
        this.mPagingTouchSlop = pagingTouchSlop;
        this.mLongPressTimeout = (long) (((float) ViewConfiguration.getLongPressTimeout()) * 1.5f);
    }

    public void setLongPressListener(OnLongClickListener listener) {
        this.mLongPressListener = listener;
    }

    public void setDensityScale(float densityScale) {
        this.mDensityScale = densityScale;
    }

    public void setPagingTouchSlop(float pagingTouchSlop) {
        this.mPagingTouchSlop = pagingTouchSlop;
    }

    private float getPos(MotionEvent ev) {
        return this.mSwipeDirection == 0 ? ev.getX() : ev.getY();
    }

    private float getTranslation(View v) {
        return this.mSwipeDirection == 0 ? v.getTranslationX() : v.getTranslationY();
    }

    private float getVelocity(VelocityTracker vt) {
        if (this.mSwipeDirection == 0) {
            return vt.getXVelocity();
        }
        return vt.getYVelocity();
    }

    private ObjectAnimator createTranslationAnimation(View v, float newPos) {
        return ObjectAnimator.ofFloat(v, this.mSwipeDirection == 0 ? "translationX" : "translationY", new float[]{newPos});
    }

    private float getPerpendicularVelocity(VelocityTracker vt) {
        if (this.mSwipeDirection == 0) {
            return vt.getYVelocity();
        }
        return vt.getXVelocity();
    }

    private void setTranslation(View v, float translate) {
        if (this.mSwipeDirection == 0) {
            v.setTranslationX(translate);
        } else {
            v.setTranslationY(translate);
        }
    }

    private float getSize(View v) {
        if (this.mSwipeDirection == 0) {
            return (float) v.getMeasuredWidth();
        }
        return (float) v.getMeasuredHeight();
    }

    public void setMinAlpha(float minAlpha) {
        this.mMinAlpha = minAlpha;
    }

    private float getAlphaForOffset(View view) {
        float viewSize = getSize(view);
        float fadeSize = ALPHA_FADE_END * viewSize;
        float result = 1.0f;
        float pos = getTranslation(view);
        if (pos >= ALPHA_FADE_START * viewSize) {
            result = 1.0f - ((pos - (ALPHA_FADE_START * viewSize)) / fadeSize);
        } else if (pos < (1.0f - ALPHA_FADE_START) * viewSize) {
            result = 1.0f + (((ALPHA_FADE_START * viewSize) + pos) / fadeSize);
        }
        return Math.max(this.mMinAlpha, result);
    }

    public static void invalidateGlobalRegion(View view) {
        invalidateGlobalRegion(view, new RectF((float) view.getLeft(), (float) view.getTop(), (float) view.getRight(), (float) view.getBottom()));
    }

    public static void invalidateGlobalRegion(View view, RectF childBounds) {
        while (view.getParent() != null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
            view.getMatrix().mapRect(childBounds);
            view.invalidate((int) Math.floor((double) childBounds.left), (int) Math.floor((double) childBounds.top), (int) Math.ceil((double) childBounds.right), (int) Math.ceil((double) childBounds.bottom));
        }
    }

    public void removeLongPressCallback() {
        if (this.mWatchLongPress != null) {
            this.mHandler.removeCallbacks(this.mWatchLongPress);
            this.mWatchLongPress = null;
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent ev) {
        switch (ev.getAction()) {
            case 0:
                this.mDragging = false;
                this.mLongPressSent = false;
                this.mCurrView = this.mCallback.getChildAtPosition(ev);
                this.mVelocityTracker.clear();
                if (this.mCurrView != null) {
                    this.mCurrAnimView = this.mCallback.getChildContentView(this.mCurrView);
                    this.mCanCurrViewBeDimissed = this.mCallback.canChildBeDismissed(this.mCurrView);
                    this.mVelocityTracker.addMovement(ev);
                    this.mInitialTouchPos = getPos(ev);
                    if (this.mLongPressListener != null) {
                        if (this.mWatchLongPress == null) {
                            this.mWatchLongPress = new Runnable() {
                                public void run() {
                                    if (SwipeHelper.this.mCurrView != null && !SwipeHelper.this.mLongPressSent) {
                                        SwipeHelper.this.mLongPressSent = true;
                                        SwipeHelper.this.mCurrView.sendAccessibilityEvent(2);
                                        SwipeHelper.this.mLongPressListener.onLongClick(SwipeHelper.this.mCurrView);
                                    }
                                }
                            };
                        }
                        this.mHandler.postDelayed(this.mWatchLongPress, this.mLongPressTimeout);
                        break;
                    }
                }
                break;
            case 1:
            case 3:
                this.mDragging = false;
                this.mCurrView = null;
                this.mCurrAnimView = null;
                this.mLongPressSent = false;
                removeLongPressCallback();
                break;
            case 2:
                if (!(this.mCurrView == null || this.mLongPressSent)) {
                    this.mVelocityTracker.addMovement(ev);
                    if (Math.abs(getPos(ev) - this.mInitialTouchPos) > this.mPagingTouchSlop) {
                        this.mCallback.onBeginDrag(this.mCurrView);
                        this.mDragging = true;
                        this.mInitialTouchPos = getPos(ev) - getTranslation(this.mCurrAnimView);
                        removeLongPressCallback();
                        break;
                    }
                }
                break;
        }
        return this.mDragging;
    }

    public void dismissChild(final View view, float velocity) {
        float newPos;
        int duration;
        final View animView = this.mCallback.getChildContentView(view);
        final boolean canAnimViewBeDismissed = this.mCallback.canChildBeDismissed(view);
        if (velocity < 0.0f || ((velocity == 0.0f && getTranslation(animView) < 0.0f) || (velocity == 0.0f && getTranslation(animView) == 0.0f && this.mSwipeDirection == 1))) {
            newPos = -getSize(animView);
        } else {
            newPos = getSize(animView);
        }
        int duration2 = this.MAX_ESCAPE_ANIMATION_DURATION;
        if (velocity != 0.0f) {
            duration = Math.min(duration2, (int) ((Math.abs(newPos - getTranslation(animView)) * 1000.0f) / Math.abs(velocity)));
        } else {
            duration = this.DEFAULT_ESCAPE_ANIMATION_DURATION;
        }
        animView.setLayerType(2, null);
        ObjectAnimator anim = createTranslationAnimation(animView, newPos);
        anim.setInterpolator(sLinearInterpolator);
        anim.setDuration((long) duration);
        anim.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animation) {
                SwipeHelper.this.mCallback.onChildDismissed(view);
                animView.setLayerType(0, null);
            }
        });
        anim.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator animation) {
                if (canAnimViewBeDismissed) {
                    animView.setAlpha(SwipeHelper.this.getAlphaForOffset(animView));
                }
                SwipeHelper.invalidateGlobalRegion(animView);
            }
        });
        anim.start();
    }

    public void snapChild(View view, float velocity) {
        final View animView = this.mCallback.getChildContentView(view);
        final boolean canAnimViewBeDismissed = this.mCallback.canChildBeDismissed(animView);
        ObjectAnimator anim = createTranslationAnimation(animView, null);
        anim.setDuration((long) SNAP_ANIM_LEN);
        anim.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator animation) {
                if (canAnimViewBeDismissed) {
                    animView.setAlpha(SwipeHelper.this.getAlphaForOffset(animView));
                }
                SwipeHelper.invalidateGlobalRegion(animView);
            }
        });
        anim.start();
    }

    /* JADX WARNING: Removed duplicated region for block: B:56:0x0103  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00f9  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(MotionEvent ev) {
        if (this.mLongPressSent) {
            return true;
        }
        boolean dismissChild = false;
        if (this.mDragging) {
            this.mVelocityTracker.addMovement(ev);
            float f = 0.0f;
            float escapeVelocity;
            switch (ev.getAction()) {
                case 1:
                case 3:
                    if (this.mCurrView != null) {
                        boolean childSwipedFastEnough;
                        this.mVelocityTracker.computeCurrentVelocity(1000, ((float) this.MAX_DISMISS_VELOCITY) * this.mDensityScale);
                        escapeVelocity = this.SWIPE_ESCAPE_VELOCITY * this.mDensityScale;
                        float velocity = getVelocity(this.mVelocityTracker);
                        float perpendicularVelocity = getPerpendicularVelocity(this.mVelocityTracker);
                        boolean childSwipedFarEnough = ((double) Math.abs(getTranslation(this.mCurrAnimView))) > 0.4d * ((double) getSize(this.mCurrAnimView));
                        if (Math.abs(velocity) > escapeVelocity && Math.abs(velocity) > Math.abs(perpendicularVelocity)) {
                            if ((velocity > 0.0f) == (getTranslation(this.mCurrAnimView) > 0.0f)) {
                                childSwipedFastEnough = true;
                                if (this.mCallback.canChildBeDismissed(this.mCurrView) && (childSwipedFastEnough || childSwipedFarEnough)) {
                                    dismissChild = true;
                                }
                                if (!dismissChild) {
                                    View view = this.mCurrView;
                                    if (childSwipedFastEnough) {
                                        f = velocity;
                                    }
                                    dismissChild(view, f);
                                    break;
                                }
                                this.mCallback.onDragCancelled(this.mCurrView);
                                snapChild(this.mCurrView, velocity);
                                break;
                            }
                        }
                        childSwipedFastEnough = false;
                        dismissChild = true;
                        if (!dismissChild) {
                        }
                    }
                    break;
                case 2:
                case 4:
                    if (this.mCurrView != null) {
                        float delta = getPos(ev) - this.mInitialTouchPos;
                        if (!this.mCallback.canChildBeDismissed(this.mCurrView)) {
                            float size = getSize(this.mCurrAnimView);
                            escapeVelocity = 0.15f * size;
                            if (Math.abs(delta) >= size) {
                                delta = delta > 0.0f ? escapeVelocity : -escapeVelocity;
                            } else {
                                delta = escapeVelocity * ((float) Math.sin(((double) (delta / size)) * 1.5707963267948966d));
                            }
                        }
                        setTranslation(this.mCurrAnimView, delta);
                        if (this.mCanCurrViewBeDimissed) {
                            this.mCurrAnimView.setAlpha(getAlphaForOffset(this.mCurrAnimView));
                        }
                        invalidateGlobalRegion(this.mCurrView);
                        break;
                    }
                    break;
            }
            return true;
        }
        removeLongPressCallback();
        return false;
    }
}
