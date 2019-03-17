package com.xiaomi.scanner.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetrics;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.Region.Op;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.widget.Scroller;
import com.xiaomi.scanner.R;
import java.util.Arrays;
import java.util.List;

public class WheelPicker extends View implements Runnable {
    public static final int ALIGN_CENTER = 0;
    public static final int ALIGN_LEFT = 1;
    public static final int ALIGN_RIGHT = 2;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SCROLLING = 2;
    private static final String TAG = WheelPicker.class.getSimpleName();
    private boolean canTouchScroll;
    private String fontPath;
    private boolean hasAtmospheric;
    private boolean hasCurtain;
    private boolean hasIndicator;
    private boolean hasSameItemSize;
    private boolean hasSameWidth;
    private boolean isClick;
    private boolean isCurved;
    private boolean isCyclic;
    private boolean isForceFinishScroll;
    private boolean isTouchTriggered;
    private Camera mCamera;
    private Paint mCenterBgPaint;
    private Rect mCenterRect;
    private int mCurrentItemPosition;
    private int mCurtainColor;
    private List<String> mData;
    private int mDownPointY;
    private int mDrawnCenterX;
    private int mDrawnCenterY;
    private int mDrawnItemCount;
    private int mHalfDrawnItemCount;
    private int mHalfItemHeight;
    private int mHalfWheelHeight;
    private final Handler mHandler;
    private int mIndicatorColor;
    private int mIndicatorSize;
    private int mItemAlign;
    private int mItemHeight;
    private int mItemMinTextSize;
    private int mItemSpace;
    private int mItemTextColor;
    private int mItemTextSize;
    private int mLastPointY;
    private Matrix mMatrixDepth;
    private Matrix mMatrixRotate;
    private int mMaxFlingY;
    private String mMaxWidthText;
    private int mMaximumVelocity;
    private int mMinFlingY;
    private int mMinimumVelocity;
    private OnItemSelectedListener mOnItemSelectedListener;
    private OnWheelChangeListener mOnWheelChangeListener;
    private Paint mPaint;
    private Rect mRectCurrentItem;
    private Rect mRectDrawn;
    private Rect mRectIndicatorFoot;
    private Rect mRectIndicatorHead;
    private int mScrollOffsetY;
    private Scroller mScroller;
    private int mSelectedItemPosition;
    private int mSelectedItemTextColor;
    private int mTextMaxHeight;
    private int mTextMaxWidth;
    private int mTextMaxWidthPosition;
    private int mTouchSlop;
    private VelocityTracker mTracker;
    private int mVisibleItemCount;
    private int mWheelCenterX;
    private int mWheelCenterY;
    private boolean moveByOutSide;

    public interface OnWheelChangeListener {
        void onWheelScrollStateChanged(int i);

        void onWheelScrolled(int i);

        void onWheelSelected(int i);
    }

    public interface OnItemSelectedListener {
        void onItemSelected(WheelPicker wheelPicker, String str, int i);
    }

    public WheelPicker(Context context) {
        this(context, null);
    }

    public WheelPicker(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mHandler = new Handler();
        this.mMinimumVelocity = 50;
        this.mMaximumVelocity = 8000;
        this.mTouchSlop = 8;
        this.canTouchScroll = true;
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.WheelPicker);
        int idData = a.getResourceId(0, 0);
        Resources resources = getResources();
        if (idData == 0) {
            idData = R.array.WheelArrayLang;
        }
        this.mData = Arrays.asList(resources.getStringArray(idData));
        this.mItemTextSize = a.getDimensionPixelSize(2, getResources().getDimensionPixelSize(R.dimen.WheelItemTextSize));
        this.mItemMinTextSize = a.getDimensionPixelSize(3, 0);
        this.mVisibleItemCount = a.getInt(9, 5);
        this.mSelectedItemPosition = a.getInt(1, 0);
        this.hasSameWidth = a.getBoolean(6, false);
        this.mTextMaxWidthPosition = a.getInt(8, -1);
        this.mMaxWidthText = a.getString(7);
        this.mSelectedItemTextColor = a.getColor(5, -1);
        this.mItemTextColor = a.getColor(4, -7829368);
        this.mItemSpace = a.getDimensionPixelSize(10, getResources().getDimensionPixelSize(R.dimen.WheelItemSpace));
        this.isCyclic = a.getBoolean(11, false);
        this.hasIndicator = a.getBoolean(12, false);
        this.hasSameItemSize = a.getBoolean(16, false);
        this.mIndicatorColor = a.getColor(13, -1166541);
        this.mIndicatorSize = a.getDimensionPixelSize(14, getResources().getDimensionPixelSize(R.dimen.WheelIndicatorSize));
        this.hasCurtain = a.getBoolean(15, false);
        this.mCurtainColor = a.getColor(17, -1996488705);
        this.hasAtmospheric = a.getBoolean(18, false);
        this.isCurved = a.getBoolean(19, false);
        this.mItemAlign = a.getInt(20, 0);
        this.fontPath = a.getString(21);
        a.recycle();
        updateVisibleItemCount();
        this.mPaint = new Paint(69);
        this.mPaint.setTextSize((float) this.mItemTextSize);
        this.mCenterBgPaint = new Paint();
        this.mCenterBgPaint.setColor(getResources().getColor(R.color.select_word_center_bg));
        if (this.fontPath != null) {
            setTypeface(Typeface.createFromAsset(context.getAssets(), this.fontPath));
        }
        updateItemTextAlign();
        computeTextSize();
        this.mScroller = new Scroller(getContext());
        if (VERSION.SDK_INT >= 4) {
            ViewConfiguration conf = ViewConfiguration.get(getContext());
            this.mMinimumVelocity = conf.getScaledMinimumFlingVelocity();
            this.mMaximumVelocity = conf.getScaledMaximumFlingVelocity();
            this.mTouchSlop = conf.getScaledTouchSlop();
        }
        this.mRectDrawn = new Rect();
        this.mRectIndicatorHead = new Rect();
        this.mRectIndicatorFoot = new Rect();
        this.mRectCurrentItem = new Rect();
        this.mCenterRect = new Rect();
        this.mCamera = new Camera();
        this.mMatrixRotate = new Matrix();
        this.mMatrixDepth = new Matrix();
    }

    private void updateVisibleItemCount() {
        if (this.mVisibleItemCount < 2) {
            throw new ArithmeticException("Wheel's visible item count can not be less than 2!");
        }
        if (this.mVisibleItemCount % 2 == 0) {
            this.mVisibleItemCount++;
        }
        this.mDrawnItemCount = this.mVisibleItemCount + 2;
        this.mHalfDrawnItemCount = this.mDrawnItemCount / 2;
    }

    private void computeTextSize() {
        this.mTextMaxHeight = 0;
        this.mTextMaxWidth = 0;
        if (this.hasSameWidth) {
            this.mTextMaxWidth = (int) this.mPaint.measureText(String.valueOf(this.mData.get(0)));
        } else if (isPosInRang(this.mTextMaxWidthPosition)) {
            this.mTextMaxWidth = (int) this.mPaint.measureText(String.valueOf(this.mData.get(this.mTextMaxWidthPosition)));
        } else if (TextUtils.isEmpty(this.mMaxWidthText)) {
            for (Object obj : this.mData) {
                this.mTextMaxWidth = Math.max(this.mTextMaxWidth, (int) this.mPaint.measureText(String.valueOf(obj)));
            }
        } else {
            this.mTextMaxWidth = (int) this.mPaint.measureText(this.mMaxWidthText);
        }
        FontMetrics metrics = this.mPaint.getFontMetrics();
        this.mTextMaxHeight = (int) (metrics.bottom - metrics.top);
    }

    private void updateItemTextAlign() {
        switch (this.mItemAlign) {
            case 1:
                this.mPaint.setTextAlign(Align.LEFT);
                return;
            case 2:
                this.mPaint.setTextAlign(Align.RIGHT);
                return;
            default:
                this.mPaint.setTextAlign(Align.CENTER);
                return;
        }
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int sizeWidth = MeasureSpec.getSize(widthMeasureSpec);
        int sizeHeight = MeasureSpec.getSize(heightMeasureSpec);
        setMeasuredDimension(sizeWidth, sizeHeight);
        int centerY = sizeHeight / 2;
        this.mCenterRect.left = 0;
        int distance = getResources().getDimensionPixelOffset(R.dimen.Wheel_distance_side);
        this.mCenterRect.top = centerY - distance;
        this.mCenterRect.bottom = centerY + distance;
        this.mCenterRect.right = sizeWidth;
    }

    protected void onSizeChanged(int w, int h, int oldW, int oldH) {
        this.mRectDrawn.set(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
        this.mWheelCenterX = this.mRectDrawn.centerX();
        this.mWheelCenterY = this.mRectDrawn.centerY();
        computeDrawnCenter();
        this.mHalfWheelHeight = this.mRectDrawn.height() / 2;
        this.mItemHeight = (int) ((((float) this.mRectDrawn.height()) * 1.0f) / ((float) this.mVisibleItemCount));
        this.mHalfItemHeight = this.mItemHeight / 2;
        computeFlingLimitY();
        computeIndicatorRect();
        computeCurrentItemRect();
    }

    private void computeDrawnCenter() {
        switch (this.mItemAlign) {
            case 1:
                this.mDrawnCenterX = this.mRectDrawn.left;
                break;
            case 2:
                this.mDrawnCenterX = this.mRectDrawn.right;
                break;
            default:
                this.mDrawnCenterX = this.mWheelCenterX;
                break;
        }
        this.mDrawnCenterY = (int) (((float) this.mWheelCenterY) - ((this.mPaint.ascent() + this.mPaint.descent()) / 2.0f));
    }

    private void computeFlingLimitY() {
        int i;
        int currentItemOffset = this.mSelectedItemPosition * this.mItemHeight;
        if (this.isCyclic) {
            i = Integer.MIN_VALUE;
        } else {
            i = ((-this.mItemHeight) * (this.mData.size() - 1)) + currentItemOffset;
        }
        this.mMinFlingY = i;
        if (this.isCyclic) {
            currentItemOffset = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }
        this.mMaxFlingY = currentItemOffset;
    }

    private void computeIndicatorRect() {
        if (this.hasIndicator) {
            int halfIndicatorSize = this.mIndicatorSize / 2;
            int indicatorHeadCenterY = this.mWheelCenterY + this.mHalfItemHeight;
            int indicatorFootCenterY = this.mWheelCenterY - this.mHalfItemHeight;
            this.mRectIndicatorHead.set(this.mRectDrawn.left, indicatorHeadCenterY - halfIndicatorSize, this.mRectDrawn.right, indicatorHeadCenterY + halfIndicatorSize);
            this.mRectIndicatorFoot.set(this.mRectDrawn.left, indicatorFootCenterY - halfIndicatorSize, this.mRectDrawn.right, indicatorFootCenterY + halfIndicatorSize);
        }
    }

    private void computeCurrentItemRect() {
        if (this.hasCurtain || this.mSelectedItemTextColor != -1) {
            this.mRectCurrentItem.set(this.mRectDrawn.left, this.mWheelCenterY - this.mHalfItemHeight, this.mRectDrawn.right, this.mWheelCenterY + this.mHalfItemHeight);
        }
    }

    protected void onDraw(Canvas canvas) {
        canvas.drawRect(this.mCenterRect, this.mCenterBgPaint);
        if (!(this.mOnWheelChangeListener == null || this.moveByOutSide)) {
            this.mOnWheelChangeListener.onWheelScrolled(this.mScrollOffsetY);
        }
        this.moveByOutSide = false;
        int drawnDataStartPos = ((-this.mScrollOffsetY) / this.mItemHeight) - this.mHalfDrawnItemCount;
        int drawnDataPos = drawnDataStartPos + this.mSelectedItemPosition;
        int drawnOffsetPos = -this.mHalfDrawnItemCount;
        while (drawnDataPos < (this.mSelectedItemPosition + drawnDataStartPos) + this.mDrawnItemCount) {
            int drawnCenterY;
            String data = "";
            if (this.isCyclic) {
                int actualPos = drawnDataPos % this.mData.size();
                if (actualPos < 0) {
                    actualPos += this.mData.size();
                }
                data = String.valueOf(this.mData.get(actualPos));
            } else if (isPosInRang(drawnDataPos)) {
                data = String.valueOf(this.mData.get(drawnDataPos));
            }
            this.mPaint.setColor(this.mItemTextColor);
            this.mPaint.setStyle(Style.FILL);
            int mDrawnItemCenterY = (this.mDrawnCenterY + (this.mItemHeight * drawnOffsetPos)) + (this.mScrollOffsetY % this.mItemHeight);
            int distanceToCenter = 0;
            if (this.isCurved) {
                float ratio = (((float) ((this.mDrawnCenterY - Math.abs(this.mDrawnCenterY - mDrawnItemCenterY)) - this.mRectDrawn.top)) * 1.0f) / ((float) (this.mDrawnCenterY - this.mRectDrawn.top));
                int unit = 0;
                if (mDrawnItemCenterY > this.mDrawnCenterY) {
                    unit = 1;
                } else if (mDrawnItemCenterY < this.mDrawnCenterY) {
                    unit = -1;
                }
                float degree = ((-(1.0f - ratio)) * 90.0f) * ((float) unit);
                if (degree < -90.0f) {
                    degree = -90.0f;
                }
                if (degree > 90.0f) {
                    degree = 90.0f;
                }
                distanceToCenter = computeSpace((int) degree);
                int transX = this.mWheelCenterX;
                switch (this.mItemAlign) {
                    case 1:
                        transX = this.mRectDrawn.left;
                        break;
                    case 2:
                        transX = this.mRectDrawn.right;
                        break;
                }
                int transY = this.mWheelCenterY - distanceToCenter;
                this.mCamera.save();
                this.mCamera.rotateX(degree);
                this.mCamera.getMatrix(this.mMatrixRotate);
                this.mCamera.restore();
                this.mMatrixRotate.preTranslate((float) (-transX), (float) (-transY));
                this.mMatrixRotate.postTranslate((float) transX, (float) transY);
                this.mCamera.save();
                this.mCamera.translate(0.0f, 0.0f, (float) computeDepth((int) degree));
                this.mCamera.getMatrix(this.mMatrixDepth);
                this.mCamera.restore();
                this.mMatrixDepth.preTranslate((float) (-transX), (float) (-transY));
                this.mMatrixDepth.postTranslate((float) transX, (float) transY);
                this.mMatrixRotate.postConcat(this.mMatrixDepth);
            }
            if (this.hasAtmospheric) {
                int alpha = (int) (((((float) (this.mDrawnCenterY - Math.abs(this.mDrawnCenterY - mDrawnItemCenterY))) * 1.0f) / ((float) this.mDrawnCenterY)) * 255.0f);
                if (alpha < 0) {
                    alpha = 0;
                }
                this.mPaint.setAlpha(alpha);
            }
            if (!this.hasSameItemSize) {
                float textSize = ((float) this.mItemTextSize) - ((((float) (this.mItemTextSize - this.mItemMinTextSize)) * (((float) this.mDrawnCenterY) - ((float) (this.mDrawnCenterY - Math.abs(this.mDrawnCenterY - mDrawnItemCenterY))))) / ((float) this.mDrawnCenterY));
                if (textSize <= 0.0f) {
                    textSize = 0.0f;
                }
                this.mPaint.setTextSize(textSize);
            }
            if (this.isCurved) {
                drawnCenterY = this.mDrawnCenterY - distanceToCenter;
            } else {
                drawnCenterY = mDrawnItemCenterY;
            }
            if (this.mSelectedItemTextColor != -1) {
                canvas.save();
                if (this.isCurved) {
                    canvas.concat(this.mMatrixRotate);
                }
                canvas.clipRect(this.mRectCurrentItem, Op.DIFFERENCE);
                canvas.drawText(data, (float) this.mDrawnCenterX, (float) drawnCenterY, this.mPaint);
                canvas.restore();
                this.mPaint.setColor(this.mSelectedItemTextColor);
                canvas.save();
                if (this.isCurved) {
                    canvas.concat(this.mMatrixRotate);
                }
                canvas.clipRect(this.mRectCurrentItem);
                canvas.drawText(data, (float) this.mDrawnCenterX, (float) drawnCenterY, this.mPaint);
                canvas.restore();
            } else {
                canvas.save();
                canvas.clipRect(this.mRectDrawn);
                if (this.isCurved) {
                    canvas.concat(this.mMatrixRotate);
                }
                canvas.drawText(data, (float) this.mDrawnCenterX, (float) drawnCenterY, this.mPaint);
                canvas.restore();
            }
            drawnDataPos++;
            drawnOffsetPos++;
        }
        if (this.hasCurtain) {
            this.mPaint.setColor(this.mCurtainColor);
            this.mPaint.setStyle(Style.FILL);
            canvas.drawRect(this.mRectCurrentItem, this.mPaint);
        }
        if (this.hasIndicator) {
            this.mPaint.setColor(this.mIndicatorColor);
            this.mPaint.setStyle(Style.FILL);
            canvas.drawRect(this.mRectIndicatorHead, this.mPaint);
            canvas.drawRect(this.mRectIndicatorFoot, this.mPaint);
        }
    }

    private boolean isPosInRang(int position) {
        return position >= 0 && position < this.mData.size();
    }

    private int computeSpace(int degree) {
        return (int) (Math.sin(Math.toRadians((double) degree)) * ((double) this.mHalfWheelHeight));
    }

    private int computeDepth(int degree) {
        return (int) (((double) this.mHalfWheelHeight) - (Math.cos(Math.toRadians((double) degree)) * ((double) this.mHalfWheelHeight)));
    }

    public boolean onTouchEvent(MotionEvent event) {
        if (this.canTouchScroll) {
            switch (event.getAction()) {
                case 0:
                    this.isClick = true;
                    this.isTouchTriggered = true;
                    if (getParent() != null) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    if (this.mTracker == null) {
                        this.mTracker = VelocityTracker.obtain();
                    } else {
                        this.mTracker.clear();
                    }
                    this.mTracker.addMovement(event);
                    if (!this.mScroller.isFinished()) {
                        this.mScroller.abortAnimation();
                        this.isForceFinishScroll = true;
                    }
                    int y = (int) event.getY();
                    this.mLastPointY = y;
                    this.mDownPointY = y;
                    break;
                case 1:
                    if (getParent() != null) {
                        getParent().requestDisallowInterceptTouchEvent(false);
                    }
                    if (this.isClick) {
                        this.mScrollOffsetY += this.mItemHeight * Math.round(((((float) this.mDrawnCenterY) - event.getY()) * 1.0f) / ((float) this.mItemHeight));
                    }
                    this.mTracker.addMovement(event);
                    this.mTracker.computeCurrentVelocity(1000, (float) this.mMaximumVelocity);
                    this.isForceFinishScroll = false;
                    int velocity = (int) this.mTracker.getYVelocity();
                    if (Math.abs(velocity) > this.mMinimumVelocity) {
                        this.mScroller.fling(0, this.mScrollOffsetY, 0, velocity, 0, 0, this.mMinFlingY, this.mMaxFlingY);
                        this.mScroller.setFinalY(this.mScroller.getFinalY() + computeDistanceToEndPoint(this.mScroller.getFinalY() % this.mItemHeight));
                    } else {
                        this.mScroller.startScroll(0, this.mScrollOffsetY, 0, computeDistanceToEndPoint(this.mScrollOffsetY % this.mItemHeight));
                    }
                    if (!this.isCyclic) {
                        if (this.mScroller.getFinalY() > this.mMaxFlingY) {
                            this.mScroller.setFinalY(this.mMaxFlingY);
                        } else if (this.mScroller.getFinalY() < this.mMinFlingY) {
                            this.mScroller.setFinalY(this.mMinFlingY);
                        }
                    }
                    this.mHandler.post(this);
                    if (this.mTracker != null) {
                        this.mTracker.recycle();
                        this.mTracker = null;
                        break;
                    }
                    break;
                case 2:
                    if (Math.abs(((float) this.mDownPointY) - event.getY()) >= ((float) this.mTouchSlop)) {
                        this.isClick = false;
                        this.mTracker.addMovement(event);
                        if (this.mOnWheelChangeListener != null) {
                            this.mOnWheelChangeListener.onWheelScrollStateChanged(1);
                        }
                        float move = event.getY() - ((float) this.mLastPointY);
                        if (Math.abs(move) >= 1.0f) {
                            this.mScrollOffsetY = (int) (((float) this.mScrollOffsetY) + move);
                            this.mLastPointY = (int) event.getY();
                            if (!isCyclic()) {
                                if (this.mScrollOffsetY >= this.mMaxFlingY && move >= 0.0f) {
                                    this.mScrollOffsetY = this.mMaxFlingY;
                                } else if (this.mScrollOffsetY <= this.mMinFlingY && move <= 0.0f) {
                                    this.mScrollOffsetY = this.mMinFlingY;
                                }
                            }
                            invalidate();
                            break;
                        }
                    }
                    this.isClick = true;
                    break;
                    break;
                case 3:
                    if (getParent() != null) {
                        getParent().requestDisallowInterceptTouchEvent(false);
                    }
                    if (this.mTracker != null) {
                        this.mTracker.recycle();
                        this.mTracker = null;
                        break;
                    }
                    break;
            }
        }
        return true;
    }

    private int computeDistanceToEndPoint(int remainder) {
        if (Math.abs(remainder) <= this.mHalfItemHeight) {
            return -remainder;
        }
        if (this.mScrollOffsetY < 0) {
            return (-this.mItemHeight) - remainder;
        }
        return this.mItemHeight - remainder;
    }

    public void run() {
        if (this.mData != null && this.mData.size() != 0) {
            if (this.mScroller.isFinished() && !this.isForceFinishScroll) {
                if (this.mItemHeight != 0) {
                    int position = (((-this.mScrollOffsetY) / this.mItemHeight) + this.mSelectedItemPosition) % this.mData.size();
                    if (position < 0) {
                        position += this.mData.size();
                    }
                    this.mCurrentItemPosition = position;
                    if (this.mOnItemSelectedListener != null && this.isTouchTriggered) {
                        this.mOnItemSelectedListener.onItemSelected(this, (String) this.mData.get(position), position);
                    }
                    if (this.mOnWheelChangeListener != null && this.isTouchTriggered) {
                        this.mOnWheelChangeListener.onWheelSelected(position);
                        this.mOnWheelChangeListener.onWheelScrollStateChanged(0);
                        this.moveByOutSide = false;
                    }
                } else {
                    return;
                }
            }
            if (this.mScroller.computeScrollOffset()) {
                if (this.mOnWheelChangeListener != null) {
                    this.mOnWheelChangeListener.onWheelScrollStateChanged(2);
                }
                this.mScrollOffsetY = this.mScroller.getCurrY();
                postInvalidate();
                this.mHandler.postDelayed(this, 16);
            }
        }
    }

    public void moveItemView(int offset) {
        this.mScrollOffsetY = offset;
        this.moveByOutSide = true;
        postInvalidate();
    }

    public int getVisibleItemCount() {
        return this.mVisibleItemCount;
    }

    public void setVisibleItemCount(int count) {
        this.mVisibleItemCount = count;
        updateVisibleItemCount();
        requestLayout();
    }

    public boolean isCyclic() {
        return this.isCyclic;
    }

    public void setCyclic(boolean isCyclic) {
        this.isCyclic = isCyclic;
        computeFlingLimitY();
        invalidate();
    }

    public void setOnItemSelectedListener(OnItemSelectedListener listener) {
        this.mOnItemSelectedListener = listener;
    }

    public int getSelectedItemPosition() {
        return this.mSelectedItemPosition;
    }

    public void setSelectedItemPosition(int position) {
        setSelectedItemPosition(position, true);
    }

    public void setSelectedItemPosition(int position, boolean animated) {
        this.isTouchTriggered = false;
        if (animated && this.mScroller.isFinished()) {
            int length = getData().size();
            int itemDifference = position - this.mCurrentItemPosition;
            if (itemDifference != 0) {
                if (this.isCyclic && Math.abs(itemDifference) > length / 2) {
                    if (itemDifference > 0) {
                        length = -length;
                    }
                    itemDifference += length;
                }
                this.mScroller.startScroll(0, this.mScroller.getCurrY(), 0, (-itemDifference) * this.mItemHeight);
                this.mHandler.post(this);
                return;
            }
            return;
        }
        if (!this.mScroller.isFinished()) {
            this.mScroller.abortAnimation();
        }
        position = Math.max(Math.min(position, this.mData.size() - 1), 0);
        this.mSelectedItemPosition = position;
        this.mCurrentItemPosition = position;
        this.mScrollOffsetY = 0;
        computeFlingLimitY();
        requestLayout();
        invalidate();
    }

    public int getCurrentItemPosition() {
        return this.mCurrentItemPosition;
    }

    public List getData() {
        return this.mData;
    }

    public void setData(List data) {
        if (data == null) {
            throw new NullPointerException("WheelPicker's data can not be null!");
        }
        this.mData = data;
        if (this.mSelectedItemPosition > data.size() - 1 || this.mCurrentItemPosition > data.size() - 1) {
            int size = data.size() - 1;
            this.mCurrentItemPosition = size;
            this.mSelectedItemPosition = size;
        } else {
            this.mSelectedItemPosition = this.mCurrentItemPosition;
        }
        this.mScrollOffsetY = 0;
        computeTextSize();
        computeFlingLimitY();
        requestLayout();
        invalidate();
    }

    public void setSameWidth(boolean hasSameWidth) {
        this.hasSameWidth = hasSameWidth;
        computeTextSize();
        requestLayout();
        invalidate();
    }

    public boolean hasSameWidth() {
        return this.hasSameWidth;
    }

    public void setOnWheelChangeListener(OnWheelChangeListener listener) {
        this.mOnWheelChangeListener = listener;
    }

    public String getMaximumWidthText() {
        return this.mMaxWidthText;
    }

    public void setMaximumWidthText(String text) {
        if (text == null) {
            throw new NullPointerException("Maximum width text can not be null!");
        }
        this.mMaxWidthText = text;
        computeTextSize();
        requestLayout();
        invalidate();
    }

    public int getMaximumWidthTextPosition() {
        return this.mTextMaxWidthPosition;
    }

    public void setMaximumWidthTextPosition(int position) {
        if (isPosInRang(position)) {
            this.mTextMaxWidthPosition = position;
            computeTextSize();
            requestLayout();
            invalidate();
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Maximum width text Position must in [0, " + this.mData.size() + "), but current is " + position);
    }

    public int getSelectedItemTextColor() {
        return this.mSelectedItemTextColor;
    }

    public void setSelectedItemTextColor(int color) {
        this.mSelectedItemTextColor = color;
        computeCurrentItemRect();
        invalidate();
    }

    public int getItemTextColor() {
        return this.mItemTextColor;
    }

    public void setItemTextColor(int color) {
        this.mItemTextColor = color;
        invalidate();
    }

    public int getItemTextSize() {
        return this.mItemTextSize;
    }

    public void setItemTextSize(int size) {
        this.mItemTextSize = size;
        this.mPaint.setTextSize((float) this.mItemTextSize);
        computeTextSize();
        requestLayout();
        invalidate();
    }

    public int getItemSpace() {
        return this.mItemSpace;
    }

    public void setItemSpace(int space) {
        this.mItemSpace = space;
        requestLayout();
        invalidate();
    }

    public void setCanTouchScroll(boolean touchScroll) {
        this.canTouchScroll = touchScroll;
    }

    public void setIndicator(boolean hasIndicator) {
        this.hasIndicator = hasIndicator;
        computeIndicatorRect();
        invalidate();
    }

    public boolean hasIndicator() {
        return this.hasIndicator;
    }

    public int getIndicatorSize() {
        return this.mIndicatorSize;
    }

    public void setIndicatorSize(int size) {
        this.mIndicatorSize = size;
        computeIndicatorRect();
        invalidate();
    }

    public int getIndicatorColor() {
        return this.mIndicatorColor;
    }

    public void setIndicatorColor(int color) {
        this.mIndicatorColor = color;
        invalidate();
    }

    public void setCurtain(boolean hasCurtain) {
        this.hasCurtain = hasCurtain;
        computeCurrentItemRect();
        invalidate();
    }

    public boolean hasCurtain() {
        return this.hasCurtain;
    }

    public int getCurtainColor() {
        return this.mCurtainColor;
    }

    public void setCurtainColor(int color) {
        this.mCurtainColor = color;
        invalidate();
    }

    public void setAtmospheric(boolean hasAtmospheric) {
        this.hasAtmospheric = hasAtmospheric;
        invalidate();
    }

    public boolean hasAtmospheric() {
        return this.hasAtmospheric;
    }

    public boolean isCurved() {
        return this.isCurved;
    }

    public void setCurved(boolean isCurved) {
        this.isCurved = isCurved;
        requestLayout();
        invalidate();
    }

    public int getItemAlign() {
        return this.mItemAlign;
    }

    public void setItemAlign(int align) {
        this.mItemAlign = align;
        updateItemTextAlign();
        computeDrawnCenter();
        invalidate();
    }

    public Typeface getTypeface() {
        if (this.mPaint != null) {
            return this.mPaint.getTypeface();
        }
        return null;
    }

    public void setTypeface(Typeface tf) {
        if (this.mPaint != null) {
            this.mPaint.setTypeface(tf);
        }
        computeTextSize();
        requestLayout();
        invalidate();
    }
}
