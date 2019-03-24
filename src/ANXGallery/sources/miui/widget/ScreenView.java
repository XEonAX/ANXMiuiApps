package miui.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.NinePatch;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.View.OnLongClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.Scroller;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.variable.Android_View_View_class;
import com.miui.internal.variable.Android_View_View_class.Factory;
import com.miui.internal.widget.ActionModeView;
import com.nexstreaming.nexeditorsdk.nexClip;
import java.security.InvalidParameterException;

public class ScreenView extends ViewGroup {
    public static final int FLING_ALIGN = 4;
    public static final int FLING_CANCEL = 3;
    public static final int FLING_LEFT = 1;
    public static final int FLING_RIGHT = 2;
    private static final int INVALID_POINTER = -1;
    public static final int SCREEN_ALIGN_CENTER = 2;
    public static final int SCREEN_ALIGN_CUSTOMIZED = 0;
    public static final int SCREEN_ALIGN_LEFT = 1;
    public static final int SCREEN_ALIGN_RIGHT = 3;
    public static final int SCREEN_TRANSITION_TYPE_CLASSIC = 0;
    public static final int SCREEN_TRANSITION_TYPE_CLASSIC_NO_OVER_SHOOT = 1;
    public static final int SCREEN_TRANSITION_TYPE_CROSSFADE = 2;
    public static final int SCREEN_TRANSITION_TYPE_CUBE = 4;
    public static final int SCREEN_TRANSITION_TYPE_CUSTOM = 9;
    public static final int SCREEN_TRANSITION_TYPE_FALLDOWN = 3;
    public static final int SCREEN_TRANSITION_TYPE_LEFTPAGE = 5;
    public static final int SCREEN_TRANSITION_TYPE_RIGHTPAGE = 6;
    public static final int SCREEN_TRANSITION_TYPE_ROTATE = 8;
    public static final int SCREEN_TRANSITION_TYPE_STACK = 7;
    private static final String TAG = "ScreenView";
    protected static final int TOUCH_STATE_PINCHING = 4;
    protected static final int TOUCH_STATE_REST = 0;
    protected static final int TOUCH_STATE_SCROLLING = 1;
    protected static final int TOUCH_STATE_SLIDING = 3;
    private static final int YA = 300;
    private static final float YB = 2500.0f;
    private static final float YC = 0.4f;
    private static final float YD = 1.3f;
    private static final int Yr = -1;
    private static final int Ys = 48;
    private static final LayoutParams Yt = new LayoutParams(-1, -1, 1.0f);
    private static final int Yu = 1000;
    private static final int Yv = 500;
    private static final int Yw = 300;
    private static final float Yx = 1.0E9f;
    private static final float Yy = 0.75f;
    private static final float Yz = ((float) (0.016d / Math.log(0.75d)));
    private static final Android_View_View_class jC = Factory.getInstance().get();
    private boolean NF;
    private final float YF;
    private int YG;
    private int YH;
    private int YI;
    private int YJ;
    private int YK;
    private int YL;
    private ArrowIndicator YM;
    private ArrowIndicator YN;
    private SeekBarIndicator YO;
    private SlideBar YP;
    private boolean YQ;
    private Runnable YR;
    private int YS;
    private int YT;
    private int YU;
    private int YV;
    private int YW;
    private int YX;
    private int YY;
    private int YZ;
    private int Za;
    private int Zb;
    private int Zc;
    private float Zd;
    private boolean Ze;
    private float Zf;
    private int Zg;
    private ScaleGestureDetector Zh;
    private int Zi;
    private boolean Zj;
    private boolean Zk;
    private boolean Zl;
    private float Zm;
    private float Zn;
    private float Zo;
    private int Zp;
    private ScreenViewOvershootInterpolator Zq;
    private int Zr;
    private float Zs;
    private SnapScreenOnceNotification Zt;
    private GestureVelocityTracker Zu;
    private int fO;
    protected int mChildScreenWidth;
    protected int mCurrentScreen;
    protected float mLastMotionX;
    protected float mLastMotionY;
    protected int mScreenOffset;
    protected int mVisibleRange;
    private int qO;
    private int qT;
    private Scroller wy;

    private interface Indicator {
        boolean aI(int i);
    }

    private class ArrowIndicator extends ImageView implements Indicator {
        public ArrowIndicator(Context context) {
            super(context);
        }

        public boolean aI(int i) {
            if (getLeft() == i) {
                return false;
            }
            ScreenView.jC.setRightDirectly(this, (getRight() + i) - getLeft());
            ScreenView.jC.setLeftDirectly(this, i);
            return true;
        }
    }

    private class GestureVelocityTracker {
        private static final float Zw = 3.0f;
        private int Zx;
        private float Zy;
        private float Zz;
        private VelocityTracker rc;

        private GestureVelocityTracker() {
            this.Zx = -1;
            this.Zy = -1.0f;
            this.Zz = -1.0f;
        }

        /* synthetic */ GestureVelocityTracker(ScreenView screenView, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void recycle() {
            if (this.rc != null) {
                this.rc.recycle();
                this.rc = null;
            }
            reset();
        }

        public void addMovement(MotionEvent motionEvent) {
            if (this.rc == null) {
                this.rc = VelocityTracker.obtain();
            }
            this.rc.addMovement(motionEvent);
            float x = motionEvent.getX();
            if (this.Zx != -1) {
                int findPointerIndex = motionEvent.findPointerIndex(this.Zx);
                if (findPointerIndex != -1) {
                    x = motionEvent.getX(findPointerIndex);
                } else {
                    this.Zx = -1;
                }
            }
            if (this.Zy < 0.0f) {
                this.Zy = x;
            } else if (this.Zz < 0.0f) {
                this.Zz = x;
            } else {
                this.Zz = x;
            }
        }

        private void reset() {
            this.Zx = -1;
            float f = (float) -1;
            this.Zy = f;
            this.Zz = f;
        }

        public void init(int i) {
            if (this.rc == null) {
                this.rc = VelocityTracker.obtain();
            } else {
                this.rc.clear();
            }
            reset();
            this.Zx = i;
        }

        public float j(int i, int i2, int i3) {
            this.rc.computeCurrentVelocity(i, (float) i2);
            return this.rc.getXVelocity(i3);
        }

        public int e(float f) {
            if (f <= 300.0f) {
                return 4;
            }
            int i = Math.abs(this.Zz - this.Zy) > ((float) ScreenView.this.fO) ? this.Zz > this.Zy ? 1 : 2 : 3;
            return i;
        }
    }

    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            /* renamed from: k */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: aJ */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int ZB;

        /* synthetic */ SavedState(Parcel parcel, AnonymousClass1 anonymousClass1) {
            this(parcel);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
            this.ZB = -1;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.ZB = -1;
            this.ZB = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.ZB);
        }
    }

    private class ScaleDetectorListener implements OnScaleGestureListener {
        private static final float ZC = 200.0f;
        private static final float ZD = 0.95f;
        private static final float ZE = 0.8f;
        private static final float ZF = 1.2f;

        private ScaleDetectorListener() {
        }

        /* synthetic */ ScaleDetectorListener(ScreenView screenView, AnonymousClass1 anonymousClass1) {
            this();
        }

        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            return ScreenView.this.Zi == 0;
        }

        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            ScreenView.this.finishCurrentGesture();
        }

        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float scaleFactor = scaleGestureDetector.getScaleFactor();
            if (ScreenView.this.Zi == 0 && (((float) scaleGestureDetector.getTimeDelta()) > ZC || scaleFactor < ZD || scaleFactor > 1.0526316f)) {
                ScreenView.this.a(null, 4);
            }
            if (scaleFactor < ZE) {
                ScreenView.this.onPinchIn(scaleGestureDetector);
                return true;
            } else if (scaleFactor <= ZF) {
                return false;
            } else {
                ScreenView.this.onPinchOut(scaleGestureDetector);
                return true;
            }
        }
    }

    private class ScreenViewOvershootInterpolator implements Interpolator {
        private float ZG;

        public ScreenViewOvershootInterpolator() {
            this.ZG = ScreenView.this.Zs;
        }

        public void q(int i, int i2) {
            float d;
            if (i > 0) {
                d = ScreenView.this.Zs / ((float) i);
            } else {
                d = ScreenView.this.Zs;
            }
            this.ZG = d;
        }

        public void fG() {
            this.ZG = 0.0f;
        }

        public float getInterpolation(float f) {
            f -= 1.0f;
            return ((f * f) * (((this.ZG + 1.0f) * f) + this.ZG)) + 1.0f;
        }
    }

    private class SeekBarIndicator extends LinearLayout implements Indicator {
        public SeekBarIndicator(Context context) {
            super(context);
        }

        public boolean aI(int i) {
            if (getLeft() == i) {
                return false;
            }
            ScreenView.jC.setRightDirectly(this, (getRight() + i) - getLeft());
            ScreenView.jC.setLeftDirectly(this, i);
            return true;
        }
    }

    private class SlideBar extends FrameLayout implements Indicator {
        private Bitmap ZH;
        private NinePatch ZI;
        private Rect ZJ = new Rect();
        private Rect ep = new Rect();

        public SlideBar(Context context, int i, int i2) {
            super(context);
            this.ZH = BitmapFactory.decodeResource(getResources(), i);
            if (this.ZH != null) {
                byte[] ninePatchChunk = this.ZH.getNinePatchChunk();
                if (ninePatchChunk != null) {
                    this.ZI = new NinePatch(this.ZH, ninePatchChunk, null);
                    View frameLayout = new FrameLayout(getContext());
                    frameLayout.setBackgroundResource(i2);
                    addView(frameLayout, new FrameLayout.LayoutParams(-1, -2, 80));
                    this.ep.left = frameLayout.getPaddingLeft();
                    this.ep.top = frameLayout.getPaddingTop();
                    this.ep.right = frameLayout.getPaddingRight();
                    this.ep.bottom = frameLayout.getPaddingBottom();
                    this.ZJ.top = this.ep.top;
                    this.ZJ.bottom = this.ZJ.top + this.ZH.getHeight();
                }
            }
        }

        protected int getSuggestedMinimumHeight() {
            return Math.max(this.ZH.getHeight(), super.getSuggestedMinimumHeight());
        }

        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            if (this.ZI != null) {
                this.ZI.draw(canvas, this.ZJ);
            }
        }

        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (this.ZI != null) {
                this.ZJ.bottom = (i4 - i2) - this.ep.bottom;
                this.ZJ.top = this.ZJ.bottom - this.ZI.getHeight();
            }
        }

        public void setPosition(int i, int i2) {
            this.ZJ.left = i + this.ep.left;
            this.ZJ.right = i2 + this.ep.left;
        }

        public int fH() {
            return (getMeasuredWidth() - this.ep.left) - this.ep.right;
        }

        public boolean aI(int i) {
            if (getLeft() == i) {
                return false;
            }
            ScreenView.jC.setRightDirectly(this, (getRight() + i) - getLeft());
            ScreenView.jC.setLeftDirectly(this, i);
            return true;
        }
    }

    private class SliderTouchListener implements OnTouchListener {
        private SliderTouchListener() {
        }

        /* synthetic */ SliderTouchListener(ScreenView screenView, AnonymousClass1 anonymousClass1) {
            this();
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            int width = view.getWidth();
            float max = Math.max(0.0f, Math.min(motionEvent.getX(), (float) (width - 1)));
            int screenCount = ScreenView.this.getScreenCount();
            float f = (float) width;
            int floor = (int) Math.floor((double) ((((float) screenCount) * max) / f));
            switch (motionEvent.getAction()) {
                case 0:
                    if (!ScreenView.this.wy.isFinished()) {
                        ScreenView.this.wy.abortAnimation();
                    }
                    ScreenView.this.a(motionEvent, 3);
                    break;
                case 1:
                case 3:
                    ScreenView.this.snapToScreen(floor);
                    ScreenView.this.p(ScreenView.this.mCurrentScreen, ScreenView.this.Za);
                    break;
                case 2:
                    ScreenView.this.aH(floor);
                    ScreenView.this.scrollTo((int) (((((float) (screenCount * ScreenView.this.mChildScreenWidth)) * max) / f) - ((float) (ScreenView.this.mChildScreenWidth / 2))), 0);
                    break;
            }
            return true;
        }
    }

    public interface SnapScreenOnceNotification {
        void onSnapCancelled(ScreenView screenView);

        void onSnapEnd(ScreenView screenView);
    }

    public ScreenView(Context context) {
        super(context);
        this.YF = Resources.getSystem().getDisplayMetrics().density * 1280.0f;
        this.NF = true;
        this.YH = R.drawable.screen_view_arrow_left;
        this.YI = R.drawable.screen_view_arrow_left_gray;
        this.YJ = R.drawable.screen_view_arrow_right;
        this.YK = R.drawable.screen_view_arrow_right_gray;
        this.YL = R.drawable.screen_view_seek_point_selector;
        this.YR = new Runnable() {
            public void run() {
                ScreenView.this.fB();
            }
        };
        this.mVisibleRange = 1;
        this.YW = 0;
        this.YX = 0;
        this.Za = -1;
        this.Zd = 0.33333334f;
        this.Zf = 0.5f;
        this.Zg = 0;
        this.Zi = 0;
        this.Zl = true;
        this.qO = -1;
        this.Zo = 0.5f;
        this.Zp = ActionModeView.ANIMATION_DURATION;
        this.Zr = 0;
        this.Zs = YD;
        this.Zu = new GestureVelocityTracker(this, null);
        fz();
    }

    public ScreenView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScreenView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.YF = Resources.getSystem().getDisplayMetrics().density * 1280.0f;
        this.NF = true;
        this.YH = R.drawable.screen_view_arrow_left;
        this.YI = R.drawable.screen_view_arrow_left_gray;
        this.YJ = R.drawable.screen_view_arrow_right;
        this.YK = R.drawable.screen_view_arrow_right_gray;
        this.YL = R.drawable.screen_view_seek_point_selector;
        this.YR = /* anonymous class already generated */;
        this.mVisibleRange = 1;
        this.YW = 0;
        this.YX = 0;
        this.Za = -1;
        this.Zd = 0.33333334f;
        this.Zf = 0.5f;
        this.Zg = 0;
        this.Zi = 0;
        this.Zl = true;
        this.qO = -1;
        this.Zo = 0.5f;
        this.Zp = ActionModeView.ANIMATION_DURATION;
        this.Zr = 0;
        this.Zs = YD;
        this.Zu = new GestureVelocityTracker(this, null);
        fz();
    }

    public void setOvershootTension(float f) {
        this.Zs = f;
        if (this.Zq != null) {
            this.Zq.ZG = f;
        }
    }

    public void setTouchSlop(int i) {
        this.fO = i;
    }

    public void setConfirmHorizontalScrollRatio(float f) {
        this.Zo = f;
    }

    public void setScreenSnapDuration(int i) {
        this.Zp = i;
    }

    public void setMaximumSnapVelocity(int i) {
        this.qT = i;
    }

    public void setScrollWholeScreen(boolean z) {
        this.Ze = z;
    }

    private void fz() {
        setAlwaysDrawnWithCacheEnabled(true);
        setClipToPadding(true);
        this.Zq = new ScreenViewOvershootInterpolator();
        this.wy = new Scroller(getContext(), this.Zq);
        aH(0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.fO = viewConfiguration.getScaledTouchSlop();
        setMaximumSnapVelocity(viewConfiguration.getScaledMaximumFlingVelocity());
        this.Zh = new ScaleGestureDetector(getContext(), new ScaleDetectorListener(this, null));
    }

    public void setArrowIndicatorMarginRect(Rect rect) {
        if (rect != null) {
            FrameLayout.LayoutParams layoutParams;
            FrameLayout.LayoutParams layoutParams2;
            if (this.YM == null) {
                layoutParams = new FrameLayout.LayoutParams(-2, -2, 19);
                this.YM = new ArrowIndicator(getContext());
                this.YM.setImageResource(this.YH);
                addIndicator(this.YM, layoutParams);
                layoutParams2 = new FrameLayout.LayoutParams(-2, -2, 21);
                this.YN = new ArrowIndicator(getContext());
                this.YN.setImageResource(this.YJ);
                addIndicator(this.YN, layoutParams2);
            } else {
                layoutParams = (FrameLayout.LayoutParams) this.YM.getLayoutParams();
                layoutParams2 = (FrameLayout.LayoutParams) this.YN.getLayoutParams();
            }
            layoutParams.setMargins(rect.left, rect.top, 0, rect.bottom);
            layoutParams2.setMargins(0, rect.top, rect.right, rect.bottom);
        } else if (this.YM != null) {
            removeIndicator(this.YM);
            removeIndicator(this.YN);
            this.YM = null;
            this.YN = null;
        }
    }

    private boolean A() {
        return getResources().getConfiguration().getLayoutDirection() == 1;
    }

    public void setArrowIndicatorResource(int i, int i2, int i3, int i4) {
        this.YH = i;
        this.YI = i2;
        this.YJ = i3;
        this.YK = i4;
    }

    public void setSeekPointResource(int i) {
        this.YL = i;
    }

    public void setSeekBarPosition(FrameLayout.LayoutParams layoutParams) {
        if (layoutParams != null) {
            if (this.YO == null) {
                this.YO = new SeekBarIndicator(getContext());
                int i = 0;
                this.YO.setLayoutDirection(0);
                this.YO.setGravity(16);
                this.YO.setAnimationCacheEnabled(false);
                while (i < getChildCount()) {
                    this.YO.addView(fE(), Yt);
                    i++;
                }
                addIndicator(this.YO, layoutParams);
            } else if (this.YO.getParent() != null) {
                this.YO.setLayoutParams(layoutParams);
            } else {
                addIndicator(this.YO, layoutParams);
            }
        } else if (this.YO != null) {
            removeIndicator(this.YO);
            this.YO = null;
        }
    }

    public void setSlideBarPosition(FrameLayout.LayoutParams layoutParams) {
        setSlideBarPosition(layoutParams, R.drawable.screen_view_slide_bar, R.drawable.screen_view_slide_bar_bg, false);
    }

    public void setSlideBarPosition(FrameLayout.LayoutParams layoutParams, int i, int i2, boolean z) {
        this.YQ = z;
        if (layoutParams != null) {
            if (this.YP == null) {
                this.YP = new SlideBar(getContext(), i, i2);
                this.YP.setOnTouchListener(new SliderTouchListener(this, null));
                this.YP.setAnimationCacheEnabled(false);
                addIndicator(this.YP, layoutParams);
                return;
            }
            this.YP.setLayoutParams(layoutParams);
        } else if (this.YP != null) {
            removeIndicator(this.YP);
            this.YP = null;
        }
    }

    private void fA() {
        if (this.YP != null && this.YQ) {
            removeCallbacks(this.YR);
            this.YP.animate().cancel();
            this.YP.setAlpha(1.0f);
            this.YP.setVisibility(0);
            if (this.Zi == 0) {
                postDelayed(this.YR, 1000);
            }
        }
    }

    private void fB() {
        if (this.YQ) {
            this.YP.animate().setDuration(DeviceHelper.FEATURE_WHOLE_ANIM ? 500 : 0).alpha(0.0f).setListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animator) {
                    ScreenView.this.YP.setVisibility(4);
                }
            });
        }
    }

    public void setIndicatorBarVisibility(int i) {
        setSeekBarVisibility(i);
        setSlideBarVisibility(i);
    }

    public void setSeekBarVisibility(int i) {
        if (this.YO != null) {
            this.YO.setVisibility(i);
        }
    }

    public void setSlideBarVisibility(int i) {
        if (this.YP != null) {
            this.YP.setVisibility(i);
        }
    }

    public void setScreenPadding(Rect rect) {
        if (rect != null) {
            this.YS = rect.top;
            this.YT = rect.bottom;
            setPadding(rect.left, 0, rect.right, 0);
            return;
        }
        throw new InvalidParameterException("The padding parameter can not be null.");
    }

    public void setScreenAlignment(int i) {
        this.YU = i;
    }

    public void setScreenOffset(int i) {
        this.mScreenOffset = i;
        this.YU = 0;
        requestLayout();
    }

    private void fC() {
        switch (this.YU) {
            case 0:
                this.YV = this.mScreenOffset;
                break;
            case 1:
                this.YV = 0;
                break;
            case 2:
                this.YV = (this.YX - this.mChildScreenWidth) / 2;
                break;
            case 3:
                this.YV = this.YX - this.mChildScreenWidth;
                break;
        }
        this.YV += getPaddingLeft();
    }

    private void j(int i, boolean z) {
        if (getWidth() > 0) {
            int screenCount = getScreenCount();
            int width = getWidth();
            int height = getHeight();
            for (int i2 = 0; i2 < this.YG; i2++) {
                int absoluteGravity;
                int i3;
                View childAt = getChildAt(i2 + screenCount);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i4 = layoutParams.gravity;
                if (i4 != -1) {
                    absoluteGravity = Gravity.getAbsoluteGravity(i4, getLayoutDirection()) & 7;
                    i4 &= BaiduSceneResult.STREET_VIEW;
                    if (absoluteGravity == 1) {
                        absoluteGravity = (((width - measuredWidth) / 2) + layoutParams.leftMargin) - layoutParams.rightMargin;
                    } else if (absoluteGravity == 3) {
                        absoluteGravity = layoutParams.leftMargin;
                    } else if (absoluteGravity != 5) {
                        absoluteGravity = layoutParams.leftMargin;
                    } else {
                        absoluteGravity = (width - measuredWidth) - layoutParams.rightMargin;
                    }
                    if (i4 == 16) {
                        i3 = (((height - measuredHeight) / 2) + layoutParams.topMargin) - layoutParams.bottomMargin;
                    } else if (i4 == 48) {
                        i3 = layoutParams.topMargin;
                    } else if (i4 != 80) {
                        i3 = layoutParams.topMargin;
                    } else {
                        i3 = (height - measuredHeight) - layoutParams.bottomMargin;
                    }
                } else {
                    i3 = 0;
                    absoluteGravity = i3;
                }
                if (z || childAt.getHeight() <= 0 || childAt.getWidth() <= 0) {
                    childAt.layout(absoluteGravity, i3, measuredWidth + absoluteGravity, measuredHeight + i3);
                } else {
                    childAt.setTranslationX((float) i);
                }
            }
        }
    }

    private void aC(int i) {
        int screenCount = getScreenCount();
        if (this.YP != null && screenCount > 0) {
            int fH = this.YP.fH();
            int max = Math.max((fH / screenCount) * this.mVisibleRange, 48);
            int i2 = this.mChildScreenWidth * screenCount;
            if (i2 <= fH) {
                i = 0;
            } else {
                i = ((fH - max) * i) / (i2 - fH);
            }
            this.YP.setPosition(i, max + i);
            if (isHardwareAccelerated()) {
                this.YP.invalidate();
            }
        }
    }

    private void aD(int i) {
        if (this.YM != null) {
            int i2;
            ArrowIndicator arrowIndicator = this.YM;
            if (i <= 0) {
                i2 = this.YI;
            } else {
                i2 = this.YH;
            }
            arrowIndicator.setImageResource(i2);
            arrowIndicator = this.YN;
            if (i >= ((getScreenCount() * this.mChildScreenWidth) - this.YX) - this.YV) {
                i = this.YK;
            } else {
                i = this.YJ;
            }
            arrowIndicator.setImageResource(i);
        }
    }

    public void setOverScrollRatio(float f) {
        this.Zd = f;
        fD();
    }

    public void setVisibleExtentionRatio(float f) {
        this.Zf = f;
    }

    private void fD() {
        this.Zc = ((int) (((float) (-this.mChildScreenWidth)) * this.Zd)) - this.YV;
        if (this.Ze) {
            this.Zb = (int) (((float) (((getScreenCount() - 1) / this.mVisibleRange) * this.YX)) + (((float) this.mChildScreenWidth) * this.Zd));
        } else {
            this.Zb = ((int) ((((float) this.mChildScreenWidth) * (((float) getScreenCount()) + this.Zd)) - ((float) this.YX))) + this.YV;
        }
    }

    public void scrollToScreen(int i) {
        k(i, false);
    }

    private void k(int i, boolean z) {
        i = l(i, z);
        if (this.Ze) {
            i -= i % this.mVisibleRange;
        }
        measure(this.YY, this.YZ);
        scrollTo((this.mChildScreenWidth * i) - this.YV, 0);
    }

    public void scrollTo(int i, int i2) {
        this.Zn = (float) Math.max(this.Zc, Math.min(i, this.Zb));
        this.Zm = ((float) System.nanoTime()) / Yx;
        super.scrollTo((int) this.Zn, i2);
    }

    public void computeScroll() {
        if (this.wy.computeScrollOffset()) {
            this.Zn = (float) this.wy.getCurrX();
            jC.setScrollXDirectly(this, (int) this.Zn);
            this.Zm = ((float) System.nanoTime()) / Yx;
            jC.setScrollYDirectly(this, this.wy.getCurrY());
            postInvalidateOnAnimation();
        } else if (this.Za != -1) {
            aH(Math.max(0, Math.min(this.Za, getScreenCount() - 1)));
            this.Za = -1;
            if (this.Zt != null) {
                this.Zt.onSnapEnd(this);
                this.Zt = null;
            }
        } else if (this.Zi == 1) {
            float nanoTime = ((float) System.nanoTime()) / Yx;
            float scrollX = this.Zn - ((float) getScrollX());
            jC.setScrollXDirectly(this, (int) (((float) getScrollX()) + (((float) Math.exp((double) ((nanoTime - this.Zm) / Yz))) * scrollX)));
            this.Zm = nanoTime;
            if (scrollX > 1.0f || scrollX < -1.0f) {
                postInvalidate();
            }
        }
        j(getScrollX(), false);
        aC(getScrollX());
        aD(getScrollX());
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        computeScroll();
        fA();
    }

    public void setVisibility(int i) {
        if (i == 0) {
            fA();
        }
        super.setVisibility(i);
    }

    protected void onMeasure(int i, int i2) {
        this.YY = i;
        this.YZ = i2;
        int screenCount = getScreenCount();
        int i3 = 0;
        int i4 = i3;
        int i5 = i4;
        while (i3 < this.YG) {
            View childAt = getChildAt(i3 + screenCount);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            childAt.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), layoutParams.width), getChildMeasureSpec(i2, ((getPaddingTop() + this.YS) + getPaddingBottom()) + this.YT, layoutParams.height));
            i4 = Math.max(i4, childAt.getMeasuredWidth());
            i5 = Math.max(i5, childAt.getMeasuredHeight());
            i3++;
        }
        i3 = 0;
        int i6 = i3;
        int i7 = i6;
        while (i3 < screenCount) {
            View childAt2 = getChildAt(i3);
            ViewGroup.LayoutParams layoutParams2 = childAt2.getLayoutParams();
            childAt2.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), layoutParams2.width), getChildMeasureSpec(i2, ((getPaddingTop() + this.YS) + getPaddingBottom()) + this.YT, layoutParams2.height));
            i6 = Math.max(i6, childAt2.getMeasuredWidth());
            i7 = Math.max(i7, childAt2.getMeasuredHeight());
            i3++;
        }
        i3 = Math.max(i6, i4);
        setMeasuredDimension(resolveSize(i3 + (getPaddingLeft() + getPaddingRight()), i), resolveSize(Math.max(i7, i5) + (((getPaddingTop() + this.YS) + getPaddingBottom()) + this.YT), i2));
        if (screenCount > 0) {
            this.mChildScreenWidth = i6;
            this.YX = (MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight();
            fC();
            if (this.mChildScreenWidth > 0) {
                this.mVisibleRange = Math.max(1, (this.YX + ((int) (((float) this.mChildScreenWidth) * this.Zf))) / this.mChildScreenWidth);
            }
            setOverScrollRatio(this.Zd);
        }
        if (this.NF && this.mVisibleRange > 0) {
            this.NF = false;
            setHorizontalScrollBarEnabled(false);
            setCurrentScreen(this.mCurrentScreen);
            setHorizontalScrollBarEnabled(true);
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        j(getScrollX(), true);
        int screenCount = getScreenCount();
        i2 = 0;
        i3 = 0;
        while (i2 < screenCount) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                childAt.layout(i3, getPaddingTop() + this.YS, childAt.getMeasuredWidth() + i3, (getPaddingTop() + this.YS) + childAt.getMeasuredHeight());
                i3 += childAt.getMeasuredWidth();
            }
            i2++;
        }
        if (this.Ze && this.mCurrentScreen % this.mVisibleRange > 0) {
            m(this.mCurrentScreen - (this.mCurrentScreen % this.mVisibleRange), true);
        } else if (this.YW > 0 && this.YW != this.YX) {
            m(this.mCurrentScreen, true);
        }
        this.YW = this.YX;
    }

    protected boolean drawChild(Canvas canvas, View view, long j) {
        r(view);
        return super.drawChild(canvas, view, j);
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= getScreenCount()) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        if (indexOfChild == this.mCurrentScreen && this.wy.isFinished()) {
            return false;
        }
        snapToScreen(indexOfChild);
        return true;
    }

    public boolean dispatchUnhandledMove(View view, int i) {
        if (i == 17) {
            if (this.mCurrentScreen > 0) {
                snapToScreen(this.mCurrentScreen - 1, 0, false);
                return true;
            }
        } else if (i == 66 && this.mCurrentScreen < getScreenCount() - 1) {
            snapToScreen(this.mCurrentScreen + 1, 0, false);
            return true;
        }
        return super.dispatchUnhandledMove(view, i);
    }

    protected int getTouchState() {
        return this.Zi;
    }

    private void a(MotionEvent motionEvent, int i) {
        this.Zi = i;
        getParent().requestDisallowInterceptTouchEvent(this.Zi != 0);
        if (this.Zi == 0) {
            this.qO = -1;
            this.Zl = false;
            this.Zu.recycle();
        } else {
            if (motionEvent != null) {
                this.qO = motionEvent.getPointerId(0);
                this.mLastMotionX = motionEvent.getX(motionEvent.findPointerIndex(this.qO));
            }
            if (this.Zl) {
                this.Zl = false;
                View childAt = getChildAt(this.mCurrentScreen);
                if (childAt != null) {
                    childAt.cancelLongPress();
                }
            }
            if (this.Zi == 1) {
                this.Zn = (float) getScrollX();
                this.Zm = ((float) System.nanoTime()) / Yx;
            }
        }
        fA();
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction() & 255) {
            case 0:
                motionEvent.setAction(3);
                this.Zh.onTouchEvent(motionEvent);
                motionEvent.setAction(0);
                this.Zk = false;
                this.Zj = false;
                this.mLastMotionX = motionEvent.getX();
                this.mLastMotionY = motionEvent.getY();
                if (!this.wy.isFinished()) {
                    this.wy.abortAnimation();
                    a(motionEvent, 1);
                    break;
                }
                this.Zl = true;
                break;
            case 1:
            case 3:
                a(motionEvent, 0);
                break;
            case 2:
                e(motionEvent);
                if (this.Zi == 0 && d(motionEvent)) {
                    a(motionEvent, 1);
                    break;
                }
        }
        if (2 != (motionEvent.getAction() & 255)) {
            e(motionEvent);
        }
        if (this.Zk) {
            return true;
        }
        if (this.Zi == 0 || this.Zi == 3) {
            return false;
        }
        return true;
    }

    private boolean d(MotionEvent motionEvent) {
        float abs = Math.abs(motionEvent.getX(0) - this.mLastMotionX);
        if (abs <= Math.abs(motionEvent.getY(0) - this.mLastMotionY) * this.Zo || abs <= ((float) (this.fO * motionEvent.getPointerCount()))) {
            return false;
        }
        return true;
    }

    private void e(MotionEvent motionEvent) {
        this.Zu.addMovement(motionEvent);
        if (this.Zi == 0 || 4 == this.Zi) {
            this.Zh.onTouchEvent(motionEvent);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.Zk) {
            return true;
        }
        if (this.Zj) {
            e(motionEvent);
        }
        int action = motionEvent.getAction() & 255;
        int i = 0;
        if (action != 6) {
            switch (action) {
                case 1:
                case 3:
                    if (this.Zi == 1) {
                        aE(this.qO);
                    }
                    a(motionEvent, 0);
                    break;
                case 2:
                    if (this.Zi == 0 && d(motionEvent)) {
                        a(motionEvent, 1);
                    }
                    if (this.Zi == 1) {
                        action = motionEvent.findPointerIndex(this.qO);
                        if (action == -1) {
                            a(motionEvent, 1);
                            action = motionEvent.findPointerIndex(this.qO);
                        }
                        float x = motionEvent.getX(action);
                        float f = this.mLastMotionX - x;
                        this.mLastMotionX = x;
                        if (f == 0.0f) {
                            awakenScrollBars();
                            break;
                        }
                        scrollTo(Math.round(this.Zn + f), 0);
                        break;
                    }
                    break;
            }
        }
        action = (motionEvent.getAction() & 65280) >> 8;
        if (motionEvent.getPointerId(action) == this.qO) {
            if (action == 0) {
                i = 1;
            }
            this.mLastMotionX = motionEvent.getX(i);
            this.qO = motionEvent.getPointerId(i);
            this.Zu.init(this.qO);
        }
        this.Zj = true;
        return true;
    }

    private void aE(int i) {
        if (this.mChildScreenWidth > 0 && getCurrentScreen() != null) {
            i = (int) this.Zu.j(1000, this.qT, i);
            snapByVelocity(i, this.Zu.e((float) Math.abs(i)));
        }
    }

    protected void snapByVelocity(int i, int i2) {
        if (i2 == 1 && this.mCurrentScreen > 0) {
            snapToScreen(this.mCurrentScreen - this.mVisibleRange, i, true);
        } else if (i2 == 2 && this.mCurrentScreen < getScreenCount() - 1) {
            snapToScreen(this.mCurrentScreen + this.mVisibleRange, i, true);
        } else if (i2 == 3) {
            snapToScreen(this.mCurrentScreen, i, true);
        } else {
            snapToScreen((getScrollX() + ((this.mChildScreenWidth * (this.Ze ? this.mVisibleRange : 1)) >> 1)) / this.mChildScreenWidth, 0, true);
        }
    }

    public void snapToScreen(int i) {
        snapToScreen(l(i, false), 0, false);
    }

    public void snapToScreen(int i, SnapScreenOnceNotification snapScreenOnceNotification) {
        snapToScreen(l(i, false), 0, false, snapScreenOnceNotification);
    }

    protected void snapToScreen(int i, int i2, boolean z, SnapScreenOnceNotification snapScreenOnceNotification) {
        if (this.YX > 0) {
            if (this.Ze) {
                this.Za = Math.max(0, Math.min(i, getScreenCount() - 1));
                this.Za -= this.Za % this.mVisibleRange;
            } else {
                this.Za = Math.max(0, Math.min(i, getScreenCount() - this.mVisibleRange));
            }
            i = Math.max(1, Math.abs(this.Za - this.mCurrentScreen));
            if (!this.wy.isFinished()) {
                if (this.Zt != null) {
                    this.Zt.onSnapCancelled(this);
                }
                this.wy.abortAnimation();
            }
            this.Zt = snapScreenOnceNotification;
            i2 = Math.abs(i2);
            if (z) {
                this.Zq.q(i, i2);
            } else {
                this.Zq.fG();
            }
            int scrollX = ((this.Za * this.mChildScreenWidth) - this.YV) - getScrollX();
            if (scrollX != 0) {
                int min;
                int abs = (Math.abs(scrollX) * this.Zp) / this.YX;
                if (i2 > 0) {
                    abs += (int) ((((float) abs) / (((float) i2) / YB)) * YC);
                }
                i2 = Math.max(this.Zp, abs);
                if (i <= 1) {
                    min = Math.min(i2, this.Zp * 2);
                } else {
                    min = i2;
                }
                this.wy.startScroll(getScrollX(), 0, scrollX, 0, min);
                invalidate();
            }
        }
    }

    protected void snapToScreen(int i, int i2, boolean z) {
        snapToScreen(i, i2, z, null);
    }

    public final int getScreenCount() {
        return this.Zg;
    }

    public int getCurrentScreenIndex() {
        int i;
        if (this.Za != -1) {
            i = this.Za;
        } else {
            i = this.mCurrentScreen;
        }
        return aF(i);
    }

    public View getCurrentScreen() {
        return n(this.mCurrentScreen, true);
    }

    public void setCurrentScreen(int i) {
        m(i, false);
    }

    private int l(int i, boolean z) {
        return (z || !A()) ? i : aG(i);
    }

    private int aF(int i) {
        return A() ? aG(i) : i;
    }

    private int aG(int i) {
        return (getScreenCount() - 1) - i;
    }

    private void m(int i, boolean z) {
        if (this.Ze) {
            i = Math.max(0, Math.min(i, getScreenCount() - 1));
            i -= i % this.mVisibleRange;
        } else {
            i = Math.max(0, Math.min(i, getScreenCount() - this.mVisibleRange));
        }
        aH(l(i, z));
        if (!this.NF) {
            if (!this.wy.isFinished()) {
                this.wy.abortAnimation();
            }
            k(this.mCurrentScreen, true);
            invalidate();
        }
    }

    private void aH(int i) {
        p(this.mCurrentScreen, i);
        this.mCurrentScreen = i;
        this.Za = -1;
    }

    public View getScreen(int i) {
        return n(i, false);
    }

    private View n(int i, boolean z) {
        if (i < 0 || i >= getScreenCount()) {
            return null;
        }
        return getChildAt(l(i, z));
    }

    public int getVisibleRange() {
        return this.mVisibleRange;
    }

    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        int screenCount = getScreenCount();
        boolean A = A();
        int i2 = 0;
        if (i >= 0) {
            if (A) {
                i2 = screenCount - i;
            }
            screenCount = Math.min(i, screenCount);
        } else if (A) {
        }
        if (A) {
            screenCount = i2;
        }
        if (this.YO != null) {
            this.YO.addView(fE(), screenCount, Yt);
        }
        this.Zg++;
        fD();
        super.addView(view, screenCount, layoutParams);
    }

    public void removeView(View view) {
        throw new UnsupportedOperationException("ScreenView doesn't support remove view directly.");
    }

    public void removeViewInLayout(View view) {
        throw new UnsupportedOperationException("ScreenView doesn't support remove view directly.");
    }

    public void removeViewsInLayout(int i, int i2) {
        throw new UnsupportedOperationException("ScreenView doesn't support remove view directly.");
    }

    public void removeViewAt(int i) {
        throw new UnsupportedOperationException("ScreenView doesn't support remove view directly.");
    }

    public void removeViews(int i, int i2) {
        throw new UnsupportedOperationException("ScreenView doesn't support remove view directly.");
    }

    public void removeAllViewsInLayout() {
        this.YG = 0;
        this.Zg = 0;
        super.removeAllViewsInLayout();
    }

    protected void addIndicator(View view, FrameLayout.LayoutParams layoutParams) {
        this.YG++;
        super.addView(view, -1, layoutParams);
    }

    protected void addIndicatorAt(View view, FrameLayout.LayoutParams layoutParams, int i) {
        i = Math.max(-1, Math.min(i, this.YG));
        if (i >= 0) {
            i += getScreenCount();
        }
        this.YG++;
        super.addView(view, i, layoutParams);
    }

    protected void removeIndicator(View view) {
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= getScreenCount()) {
            this.YG--;
            super.removeViewAt(indexOfChild);
            return;
        }
        throw new InvalidParameterException("The view passed through the parameter must be indicator.");
    }

    public void removeScreen(int i) {
        if (i < getScreenCount()) {
            int l = l(i, false);
            if (l == this.mCurrentScreen) {
                if (!this.Ze) {
                    m(Math.max(0, -1), true);
                } else if (i != 0 && i == getScreenCount() - 1) {
                    snapToScreen(i - 1);
                }
            }
            if (this.YO != null) {
                this.YO.removeViewAt(l);
            }
            this.Zg--;
            super.removeViewAt(l);
            return;
        }
        throw new InvalidParameterException("The view specified by the index must be a screen.");
    }

    public void removeAllScreens() {
        removeScreensInLayout(0, getScreenCount());
        requestLayout();
        invalidate();
    }

    public void removeScreensInLayout(int i, int i2) {
        if (A()) {
            i = (l(i, false) - i2) + 1;
        }
        if (i >= 0 && i < getScreenCount()) {
            i2 = Math.min(i2, getScreenCount() - i);
            if (this.YO != null) {
                this.YO.removeViewsInLayout(i, i2);
            }
            this.Zg = 0;
            super.removeViewsInLayout(i, i2);
        }
    }

    public boolean allowLongPress() {
        return this.Zl;
    }

    public void setAllowLongPress(boolean z) {
        this.Zl = z;
    }

    public void setOnLongClickListener(OnLongClickListener onLongClickListener) {
        int screenCount = getScreenCount();
        for (int i = 0; i < screenCount; i++) {
            getChildAt(i).setOnLongClickListener(onLongClickListener);
        }
    }

    public ImageView getSeekPointView(int i) {
        return (ImageView) this.YO.getChildAt(l(i, false));
    }

    private ImageView fE() {
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ScaleType.CENTER);
        imageView.setImageResource(this.YL);
        return imageView;
    }

    private void p(int i, int i2) {
        if (this.YO != null) {
            int screenCount = getScreenCount();
            int i3 = 0;
            if (i >= 0) {
                for (int i4 = 0; i4 < this.mVisibleRange; i4++) {
                    int i5 = i + i4;
                    if (i5 >= screenCount) {
                        break;
                    }
                    this.YO.getChildAt(i5).setSelected(false);
                }
            }
            while (i3 < this.mVisibleRange) {
                i = i2 + i3;
                if (i < screenCount) {
                    this.YO.getChildAt(i).setSelected(true);
                    i3++;
                } else {
                    return;
                }
            }
        }
    }

    public void onResume() {
    }

    public void onPause() {
        if (!this.wy.isFinished()) {
            m((int) Math.floor((double) ((this.wy.getCurrX() + (this.mChildScreenWidth / 2)) / this.mChildScreenWidth)), true);
            this.wy.abortAnimation();
        }
    }

    public int getScreenTransitionType() {
        return this.Zr;
    }

    public void setScreenTransitionType(int i) {
        if (i != this.Zr) {
            this.Zr = i;
            switch (this.Zr) {
                case 0:
                    setOvershootTension(YD);
                    setScreenSnapDuration(ActionModeView.ANIMATION_DURATION);
                    return;
                case 1:
                case 2:
                    setOvershootTension(0.0f);
                    setScreenSnapDuration(nexClip.kClip_Rotate_270);
                    return;
                case 3:
                    setOvershootTension(YD);
                    setScreenSnapDuration(ActionModeView.ANIMATION_DURATION);
                    return;
                case 4:
                    setOvershootTension(0.0f);
                    setScreenSnapDuration(330);
                    return;
                case 5:
                    setOvershootTension(0.0f);
                    setScreenSnapDuration(330);
                    return;
                case 7:
                    setOvershootTension(0.0f);
                    setScreenSnapDuration(nexClip.kClip_Rotate_270);
                    return;
                case 8:
                    setOvershootTension(YD);
                    setScreenSnapDuration(330);
                    return;
                default:
                    return;
            }
        }
    }

    protected void resetTransformation(View view) {
        view.setAlpha(1.0f);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        view.setPivotX(0.0f);
        view.setPivotY(0.0f);
        view.setRotation(0.0f);
        view.setRotationX(0.0f);
        view.setRotationY(0.0f);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        a(view, this.YF);
    }

    private void r(View view) {
        if (!(view instanceof Indicator)) {
            float measuredWidth = (float) view.getMeasuredWidth();
            float measuredHeight = (float) view.getMeasuredHeight();
            float f = measuredWidth / 2.0f;
            float f2 = measuredHeight / 2.0f;
            float scrollX = (((((float) getScrollX()) + (((float) getMeasuredWidth()) / 2.0f)) - ((float) view.getLeft())) - f) / measuredWidth;
            float f3;
            switch (this.Zr) {
                case 0:
                    resetTransformation(view);
                    break;
                case 1:
                    resetTransformation(view);
                    break;
                case 2:
                    if (scrollX != 0.0f && Math.abs(scrollX) <= 1.0f) {
                        view.setAlpha(((1.0f - Math.abs(scrollX)) * 0.7f) + 0.3f);
                        view.setTranslationX(0.0f);
                        view.setTranslationY(0.0f);
                        view.setScaleX(1.0f);
                        view.setScaleY(1.0f);
                        view.setPivotX(0.0f);
                        view.setPivotY(0.0f);
                        view.setRotation(0.0f);
                        view.setRotationX(0.0f);
                        view.setRotationY(0.0f);
                        a(view, this.YF);
                        break;
                    }
                    resetTransformation(view);
                    break;
                    break;
                case 3:
                    if (scrollX != 0.0f && Math.abs(scrollX) <= 1.0f) {
                        view.setAlpha(1.0f);
                        view.setTranslationX(0.0f);
                        view.setTranslationY(0.0f);
                        view.setScaleX(1.0f);
                        view.setScaleY(1.0f);
                        view.setPivotX(f);
                        view.setPivotY(measuredHeight);
                        view.setRotation((-scrollX) * 30.0f);
                        view.setRotationX(0.0f);
                        view.setRotationY(0.0f);
                        a(view, this.YF);
                        break;
                    }
                    resetTransformation(view);
                    break;
                    break;
                case 4:
                    if (scrollX != 0.0f && Math.abs(scrollX) <= 1.0f) {
                        view.setAlpha(1.0f);
                        view.setTranslationX(0.0f);
                        view.setTranslationY(0.0f);
                        view.setScaleX(1.0f);
                        view.setScaleY(1.0f);
                        if (scrollX < 0.0f) {
                            measuredWidth = 0.0f;
                        }
                        view.setPivotX(measuredWidth);
                        view.setPivotY(f2);
                        view.setRotation(0.0f);
                        view.setRotationX(0.0f);
                        view.setRotationY(-90.0f * scrollX);
                        a(view, 5000.0f);
                        break;
                    }
                    resetTransformation(view);
                    break;
                case 5:
                    if (scrollX != 0.0f && Math.abs(scrollX) <= 1.0f) {
                        view.setAlpha(1.0f - Math.abs(scrollX));
                        view.setTranslationY(0.0f);
                        view.setTranslationX((measuredWidth * scrollX) - ((measuredWidth * Math.abs(scrollX)) * 0.3f));
                        f3 = 1.0f + (0.3f * scrollX);
                        view.setScaleX(f3);
                        view.setScaleY(f3);
                        view.setPivotX(0.0f);
                        view.setPivotY(f2);
                        view.setRotation(0.0f);
                        view.setRotationX(0.0f);
                        view.setRotationY(45.0f * (-scrollX));
                        a(view, 5000.0f);
                        break;
                    }
                    resetTransformation(view);
                    break;
                    break;
                case 7:
                    if (scrollX > 0.0f) {
                        float f4 = 1.0f - scrollX;
                        view.setAlpha(f4);
                        f2 = 0.6f + (YC * f4);
                        f3 = 1.0f - f2;
                        view.setTranslationX((measuredWidth * f3) * 3.0f);
                        view.setTranslationY((measuredHeight * f3) * 0.5f);
                        view.setScaleX(f2);
                        view.setScaleY(f2);
                        view.setPivotX(0.0f);
                        view.setPivotY(0.0f);
                        view.setRotation(0.0f);
                        view.setRotationX(0.0f);
                        view.setRotationY(0.0f);
                        a(view, this.YF);
                        break;
                    }
                    resetTransformation(view);
                    break;
                case 8:
                    if (scrollX != 0.0f && Math.abs(scrollX) <= 1.0f) {
                        view.setAlpha(1.0f - Math.abs(scrollX));
                        view.setTranslationX(measuredWidth * scrollX);
                        view.setTranslationY(0.0f);
                        view.setScaleX(1.0f);
                        view.setScaleY(1.0f);
                        view.setPivotX(f);
                        view.setPivotY(f2);
                        view.setRotation(0.0f);
                        view.setRotationX(0.0f);
                        view.setRotationY(90.0f * (-scrollX));
                        a(view, 5000.0f);
                        break;
                    }
                    resetTransformation(view);
                    break;
                    break;
                case 9:
                    updateChildStaticTransformationByScreen(view, scrollX);
                    break;
            }
        }
    }

    protected void updateChildStaticTransformationByScreen(View view, float f) {
    }

    protected void onPinchIn(ScaleGestureDetector scaleGestureDetector) {
    }

    protected void onPinchOut(ScaleGestureDetector scaleGestureDetector) {
    }

    protected void finishCurrentGesture() {
        this.Zk = true;
        a(null, 0);
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.ZB = this.mCurrentScreen;
        return savedState;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.ZB != -1) {
            m(savedState.ZB, true);
        }
    }

    private void a(View view, float f) {
        if (view.getCameraDistance() != f) {
            view.setCameraDistance(f);
        }
    }
}
