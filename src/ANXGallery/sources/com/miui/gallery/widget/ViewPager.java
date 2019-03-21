package com.miui.gallery.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import com.miui.gallery.R;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.widget.slip.ISlipAnimView;
import com.nexstreaming.nexeditorsdk.nexEngine;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;

public class ViewPager extends ViewGroup implements ISlipAnimView {
    private static final Comparator<ItemInfo> COMPARATOR = new Comparator<ItemInfo>() {
        public int compare(ItemInfo lhs, ItemInfo rhs) {
            return lhs.position - rhs.position;
        }
    };
    private static final boolean DEBUG = Log.isLoggable("ViewPager", 3);
    private static final int[] LAYOUT_ATTRS = new int[]{16842931};
    private static final Interpolator sInterpolator = new Interpolator() {
        public float getInterpolation(float t) {
            t -= 1.0f;
            return ((((t * t) * t) * t) * t) + 1.0f;
        }
    };
    private int mActivePointerId;
    private PagerAdapter mAdapter;
    private OnAdapterChangeListener mAdapterChangeListener;
    private float mBottomMarginProgress;
    private int mBottomPageBounds;
    private boolean mCalledSuper;
    private int mChildHeightMeasureSpec;
    private int mChildWidthMeasureSpec;
    private int mCloseEnough;
    private int mCurItem;
    private int mDecorChildCount;
    private int mDefaultGutterSize;
    boolean mDragEnabled;
    private boolean mFakeDragging;
    private boolean mFirstLayout;
    private float mFirstOffset;
    private float mFirstOffsetLeftScreen;
    private int mFlingDistance;
    private boolean mForceReplayout;
    private int mGutterSize;
    private float mHeightSlipRatio;
    private boolean mInLayout;
    private int mInitialHeight;
    private float mInitialMotionX;
    private int mInitialPageMargin;
    private int mInitialWidth;
    private OnPageChangeListener mInternalPageChangeListener;
    private boolean mIsBeingDragged;
    private boolean mIsUnableToDrag;
    private final ArrayList<ItemInfo> mItems;
    private float mLastMotionX;
    private float mLastMotionY;
    private float mLastOffset;
    private float mLastOffsetLeftScreen;
    private int mLastOrientation;
    float mLastPageOffset;
    private int mLastSettledItem;
    private EdgeEffect mLeftEdge;
    private int mLeftOffscreenPageLimit;
    private Drawable mMarginDrawable;
    private float mMarginSlipRatio;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private boolean mNeedCalculatePageOffsets;
    private PagerObserver mObserver;
    private OnPageChangeListener mOnPageChangeListener;
    private int mPageMargin;
    private OnPageSettledListener mPageSettledListener;
    private boolean mPopulatePending;
    private Parcelable mRestoredAdapterState;
    private int mRestoredCurItem;
    private int mReverseVelocity;
    private EdgeEffect mRightEdge;
    private int mRightOffscreenPageLimit;
    private int mScrollState;
    private Scroller mScroller;
    private boolean mScrollingCacheEnabled;
    private float mSlipProgress;
    private final ItemInfo mTempItem;
    private final Rect mTempRect;
    private int mTopPageBounds;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    private float mWidthSlipRatio;

    public interface OnPageChangeListener {
        void onPageScrollStateChanged(int i);

        void onPageScrolled(int i, float f, int i2);

        void onPageSelected(int i);
    }

    public interface OnPageSettledListener {
        void onPageSettled(int i);
    }

    interface Decor {
    }

    static class ItemInfo {
        Object object;
        float offset;
        float offsetLeftScreen;
        float offsetTopScreen;
        int position;
        boolean scrolling;
        float widthFactor;

        ItemInfo() {
        }
    }

    public static class LayoutParams extends android.view.ViewGroup.LayoutParams {
        public int gravity;
        public boolean isDecor;
        public boolean needsMeasure;
        public float widthFactor = 0.0f;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(Context context, AttributeSet attrs) {
            super(context, attrs);
            TypedArray a = context.obtainStyledAttributes(attrs, ViewPager.LAYOUT_ATTRS);
            this.gravity = a.getInteger(0, 48);
            a.recycle();
        }
    }

    interface OnAdapterChangeListener {
        void onAdapterChanged(PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2);
    }

    private class PagerObserver extends DataSetObserver {
        private PagerObserver() {
        }

        /* synthetic */ PagerObserver(ViewPager x0, AnonymousClass1 x1) {
            this();
        }

        public void onChanged() {
            ViewPager.this.dataSetChanged();
        }

        public void onInvalidated() {
            ViewPager.this.dataSetChanged();
        }
    }

    public static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            public SavedState createFromParcel(Parcel in) {
                return new SavedState(in);
            }

            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        };
        Parcelable adapterState;
        int position;

        public SavedState(Parcelable superState) {
            super(superState);
        }

        public void writeToParcel(Parcel out, int flags) {
            super.writeToParcel(out, flags);
            out.writeInt(this.position);
            out.writeParcelable(this.adapterState, flags);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.position + "}";
        }

        SavedState(Parcel in) {
            super(in);
            this.position = in.readInt();
            this.adapterState = in.readParcelable(null);
        }
    }

    public ViewPager(Context context) {
        this(context, null);
    }

    public ViewPager(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ViewPager(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mItems = new ArrayList();
        this.mTempItem = new ItemInfo();
        this.mTempRect = new Rect();
        this.mRestoredCurItem = -1;
        this.mRestoredAdapterState = null;
        this.mFirstOffset = -3.4028235E38f;
        this.mLastOffset = Float.MAX_VALUE;
        this.mFirstOffsetLeftScreen = 0.0f;
        this.mLastOffsetLeftScreen = 0.0f;
        this.mLeftOffscreenPageLimit = 1;
        this.mRightOffscreenPageLimit = 3;
        this.mActivePointerId = -1;
        this.mFirstLayout = true;
        this.mNeedCalculatePageOffsets = false;
        this.mDragEnabled = true;
        this.mLastPageOffset = 0.0f;
        this.mScrollState = 0;
        this.mInitialWidth = 0;
        this.mInitialHeight = 0;
        this.mInitialPageMargin = this.mPageMargin;
        this.mSlipProgress = 0.0f;
        this.mWidthSlipRatio = 1.0f;
        this.mHeightSlipRatio = 1.0f;
        this.mMarginSlipRatio = 1.0f;
        this.mLastOrientation = 0;
        initViewPager(context, attrs, 0);
    }

    void initViewPager(Context context, AttributeSet attrs, int defStyleAttr) {
        if (attrs != null) {
            TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.ViewPager, defStyleAttr, 0);
            this.mLeftOffscreenPageLimit = a.getInteger(0, 1);
            this.mRightOffscreenPageLimit = a.getInteger(1, 3);
            this.mWidthSlipRatio = a.getFloat(2, 1.0f);
            this.mHeightSlipRatio = a.getFloat(3, 1.0f);
            this.mMarginSlipRatio = a.getFloat(4, 1.0f);
            a.recycle();
        }
        setWillNotDraw(false);
        setDescendantFocusability(nexEngine.ExportHEVCMainTierLevel52);
        setFocusable(true);
        this.mScroller = new Scroller(context, sInterpolator);
        ViewConfiguration configuration = ViewConfiguration.get(context);
        this.mTouchSlop = configuration.getScaledPagingTouchSlop();
        this.mMinimumVelocity = configuration.getScaledMinimumFlingVelocity();
        this.mMaximumVelocity = configuration.getScaledMaximumFlingVelocity();
        this.mReverseVelocity = Math.max(this.mMinimumVelocity * 10, this.mMaximumVelocity / 10);
        this.mLeftEdge = new EdgeEffect(context);
        this.mRightEdge = new EdgeEffect(context);
        float density = context.getResources().getDisplayMetrics().density;
        this.mFlingDistance = (int) (10.0f * density);
        this.mCloseEnough = (int) (2.0f * density);
        this.mDefaultGutterSize = (int) (16.0f * density);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    private void setScrollState(int newState) {
        if (this.mScrollState != newState) {
            this.mScrollState = newState;
            if (this.mOnPageChangeListener != null) {
                this.mOnPageChangeListener.onPageScrollStateChanged(newState);
            }
            if (this.mInternalPageChangeListener != null) {
                this.mInternalPageChangeListener.onPageScrollStateChanged(newState);
            }
        }
    }

    public void setAdapter(PagerAdapter adapter) {
        if (this.mAdapter != null) {
            this.mAdapter.unregisterDataSetObserver(this.mObserver);
            this.mAdapter.startUpdate((ViewGroup) this);
            Iterator it = this.mItems.iterator();
            while (it.hasNext()) {
                ItemInfo ii = (ItemInfo) it.next();
                this.mAdapter.destroyItem((ViewGroup) this, ii.position, ii.object);
            }
            this.mAdapter.finishUpdate((ViewGroup) this);
            this.mItems.clear();
            removeNonDecorViews();
            this.mCurItem = 0;
            scrollTo(0, 0);
        }
        PagerAdapter oldAdapter = this.mAdapter;
        this.mAdapter = adapter;
        if (this.mAdapter != null) {
            if (this.mObserver == null) {
                this.mObserver = new PagerObserver(this, null);
            }
            this.mAdapter.registerDataSetObserver(this.mObserver);
            this.mPopulatePending = false;
            this.mFirstLayout = true;
            if (this.mRestoredCurItem >= 0) {
                this.mAdapter.restoreState(this.mRestoredAdapterState, null);
                setCurrentItemInternal(this.mRestoredCurItem, false, true);
                this.mRestoredCurItem = -1;
                this.mRestoredAdapterState = null;
            } else {
                populate();
            }
        }
        if (this.mAdapterChangeListener != null && oldAdapter != adapter) {
            this.mAdapterChangeListener.onAdapterChanged(oldAdapter, adapter);
        }
    }

    private void removeNonDecorViews() {
        int i = 0;
        while (i < getChildCount()) {
            if (!((LayoutParams) getChildAt(i).getLayoutParams()).isDecor) {
                removeViewAt(i);
                i--;
            }
            i++;
        }
    }

    public PagerAdapter getAdapter() {
        return this.mAdapter;
    }

    void setOnAdapterChangeListener(OnAdapterChangeListener listener) {
        this.mAdapterChangeListener = listener;
    }

    public void setCurrentItem(int item) {
        boolean z;
        this.mPopulatePending = false;
        if (this.mFirstLayout) {
            z = false;
        } else {
            z = true;
        }
        setCurrentItemInternal(item, z, false);
    }

    public void setCurrentItem(int item, boolean smoothScroll) {
        this.mPopulatePending = false;
        setCurrentItemInternal(item, smoothScroll, false);
    }

    public int getCurrentItem() {
        return this.mCurItem;
    }

    void setCurrentItemInternal(int item, boolean smoothScroll, boolean always) {
        setCurrentItemInternal(item, smoothScroll, always, 0);
    }

    private float getMinScrollOffset() {
        return this.mFirstOffset - this.mFirstOffsetLeftScreen;
    }

    private float getMaxScrollOffset() {
        return this.mLastOffset - this.mLastOffsetLeftScreen;
    }

    private void callBackPageSettled() {
        if (this.mLastSettledItem != this.mCurItem) {
            this.mLastSettledItem = this.mCurItem;
            if (this.mPageSettledListener != null) {
                this.mPageSettledListener.onPageSettled(this.mCurItem);
            }
        }
    }

    void setCurrentItemInternal(int item, boolean smoothScroll, boolean always, int velocity) {
        boolean dispatchSelected = true;
        if (this.mAdapter == null || this.mAdapter.getCount() <= 0) {
            setScrollingCacheEnabled(false);
        } else if (always || this.mCurItem != item || this.mItems.size() == 0) {
            if (item < 0) {
                item = 0;
            } else if (item >= this.mAdapter.getCount()) {
                item = this.mAdapter.getCount() - 1;
            }
            if (item > this.mCurItem + getRightOffscreenPageLimit() || item < this.mCurItem - getLeftOffscreenPageLimit()) {
                Iterator it = this.mItems.iterator();
                while (it.hasNext()) {
                    ((ItemInfo) it.next()).scrolling = true;
                }
            }
            if (this.mCurItem == item) {
                dispatchSelected = false;
            }
            populate(item);
            ItemInfo curInfo = infoForPosition(item);
            int destX = 0;
            if (curInfo != null) {
                int width = getWidth();
                destX = (int) (((float) width) * Math.max(getMinScrollOffset(), Math.min(curInfo.offset - curInfo.offsetLeftScreen, getMaxScrollOffset())));
            }
            if (smoothScroll) {
                smoothScrollTo(destX, 0, velocity);
                if (dispatchSelected && this.mOnPageChangeListener != null) {
                    this.mOnPageChangeListener.onPageSelected(item);
                }
                if (dispatchSelected && this.mInternalPageChangeListener != null) {
                    this.mInternalPageChangeListener.onPageSelected(item);
                    return;
                }
                return;
            }
            if (dispatchSelected && this.mOnPageChangeListener != null) {
                this.mOnPageChangeListener.onPageSelected(item);
            }
            if (dispatchSelected && this.mInternalPageChangeListener != null) {
                this.mInternalPageChangeListener.onPageSelected(item);
            }
            completeScroll();
            scrollTo(destX, 0);
            callBackPageSettled();
        } else {
            setScrollingCacheEnabled(false);
        }
    }

    public void setOnPageChangeListener(OnPageChangeListener listener) {
        this.mOnPageChangeListener = listener;
    }

    public void setOnPageSettledListener(OnPageSettledListener listener) {
        this.mPageSettledListener = listener;
    }

    public int getLeftOffscreenPageLimit() {
        return this.mLeftOffscreenPageLimit;
    }

    public int getRightOffscreenPageLimit() {
        return this.mRightOffscreenPageLimit;
    }

    public void setLeftOffscreenPageLimit(int limit) {
        if (limit != this.mLeftOffscreenPageLimit) {
            this.mLeftOffscreenPageLimit = limit;
            populate();
        }
    }

    public void setRightOffscreenPageLimit(int limit) {
        if (limit != this.mRightOffscreenPageLimit) {
            this.mRightOffscreenPageLimit = limit;
            populate();
        }
    }

    public void setPageMargin(int marginPixels) {
        int oldMargin = this.mPageMargin;
        this.mPageMargin = marginPixels;
        this.mInitialPageMargin = this.mPageMargin;
        int width = getWidth();
        recomputeScrollPosition(width, width, marginPixels, oldMargin);
        requestLayout();
    }

    public int getPageMargin() {
        return this.mPageMargin;
    }

    public void setPageMarginDrawable(Drawable d) {
        setPageMarginDrawable(d, true);
    }

    public void setPageMarginDrawable(Drawable d, boolean invalidate) {
        this.mMarginDrawable = d;
        if (d != null) {
            refreshDrawableState();
        }
        setWillNotDraw(d == null);
        if (invalidate) {
            invalidate();
        }
    }

    public void setPageMarginDrawable(int resId) {
        setPageMarginDrawable(getContext().getResources().getDrawable(resId));
    }

    protected boolean verifyDrawable(Drawable who) {
        return super.verifyDrawable(who) || who == this.mMarginDrawable;
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable d = this.mMarginDrawable;
        if (d != null && d.isStateful()) {
            d.setState(getDrawableState());
        }
    }

    float distanceInfluenceForSnapDuration(float f) {
        return (float) Math.sin((double) ((float) (((double) (f - 0.5f)) * 0.4712389167638204d)));
    }

    void smoothScrollTo(int x, int y, int velocity) {
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        int sx = getScrollX();
        int sy = getScrollY();
        int dx = x - sx;
        int dy = y - sy;
        if (dx == 0 && dy == 0) {
            completeScroll();
            populate();
            setScrollState(0);
            callBackPageSettled();
            return;
        }
        int duration;
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int width = getWidth();
        int halfWidth = width / 2;
        float distance = ((float) halfWidth) + (((float) halfWidth) * distanceInfluenceForSnapDuration(Math.min(1.0f, (1.0f * ((float) Math.abs(dx))) / ((float) width))));
        velocity = Math.abs(velocity);
        if (velocity > 0) {
            duration = Math.round(1000.0f * Math.abs(distance / ((float) velocity))) * 4;
        } else {
            duration = (int) ((1.0f + (((float) Math.abs(dx)) / (((float) this.mPageMargin) + (((float) width) * this.mAdapter.getPageWidth(this.mCurItem))))) * 100.0f);
        }
        this.mScroller.startScroll(sx, sy, dx, dy, Math.min(duration, 600));
        postInvalidateOnAnimation();
    }

    ItemInfo addNewItem(int position, int index) {
        ItemInfo ii = new ItemInfo();
        ii.position = position;
        ii.object = this.mAdapter.instantiateItem((ViewGroup) this, position);
        ii.widthFactor = this.mAdapter.getPageWidth(position);
        if (index < 0 || index >= this.mItems.size()) {
            this.mItems.add(ii);
        } else {
            this.mItems.add(index, ii);
        }
        return ii;
    }

    void dataSetChanged() {
        boolean needPopulate;
        if (this.mItems.size() >= (getLeftOffscreenPageLimit() + getRightOffscreenPageLimit()) + 1 || this.mItems.size() >= this.mAdapter.getCount()) {
            needPopulate = false;
        } else {
            needPopulate = true;
        }
        int newCurrItem = this.mCurItem;
        boolean isUpdating = false;
        int i = 0;
        while (i < this.mItems.size()) {
            ItemInfo ii = (ItemInfo) this.mItems.get(i);
            int newPos = this.mAdapter.getItemPosition(ii.object, ii.position);
            if (newPos != -1) {
                if (newPos == -3) {
                    refreshItem(i);
                } else if (newPos == -2) {
                    this.mItems.remove(i);
                    i--;
                    if (!isUpdating) {
                        this.mAdapter.startUpdate((ViewGroup) this);
                        isUpdating = true;
                    }
                    this.mAdapter.destroyItem((ViewGroup) this, ii.position, ii.object);
                    needPopulate = true;
                    if (this.mCurItem == ii.position) {
                        newCurrItem = Math.max(0, Math.min(this.mCurItem, this.mAdapter.getCount() - 1));
                        needPopulate = true;
                    }
                } else if (ii.position != newPos) {
                    if (ii.position == this.mCurItem) {
                        newCurrItem = newPos;
                    }
                    ii.position = newPos;
                    needPopulate = true;
                }
            }
            i++;
        }
        if (isUpdating) {
            this.mAdapter.finishUpdate((ViewGroup) this);
        }
        Collections.sort(this.mItems, COMPARATOR);
        if (needPopulate) {
            int childCount = getChildCount();
            for (i = 0; i < childCount; i++) {
                LayoutParams lp = (LayoutParams) getChildAt(i).getLayoutParams();
                if (!lp.isDecor) {
                    lp.widthFactor = 0.0f;
                }
            }
            setCurrentItemInternal(newCurrItem, false, true);
            requestLayout();
        }
    }

    void populate() {
        populate(this.mCurItem);
    }

    private void refreshItem(int index) {
        if (this.mAdapter != null && index >= 0 && index < this.mItems.size()) {
            ItemInfo ii = (ItemInfo) this.mItems.get(index);
            if (ii != null) {
                this.mAdapter.refreshItem(ii.object, ii.position);
            }
        }
    }

    public Object getItem(int position) {
        Iterator it = this.mItems.iterator();
        while (it.hasNext()) {
            ItemInfo ii = (ItemInfo) it.next();
            if (ii.position == position) {
                return ii.object;
            }
        }
        return null;
    }

    public final Object getItemByNativeIndex(int index) {
        if (index < 0 || index >= this.mItems.size()) {
            return null;
        }
        return ((ItemInfo) this.mItems.get(index)).object;
    }

    public final int getActiveCount() {
        return this.mItems.size();
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x00e4  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x010d  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x01da  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0192  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x01b5  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x01e3  */
    /* JADX WARNING: Removed duplicated region for block: B:96:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x0234  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void populate(int newCurrentItem) {
        ItemInfo oldCurInfo = null;
        if (this.mCurItem != newCurrentItem) {
            calculatePageLimits(newCurrentItem);
            oldCurInfo = infoForPosition(this.mCurItem);
            this.mCurItem = newCurrentItem;
        }
        if (this.mAdapter != null) {
            if (this.mPopulatePending) {
                if (DEBUG) {
                    Log.i("ViewPager", "populate is pending, skipping for now...");
                }
            } else if (getWindowToken() != null) {
                int curIndex;
                int i;
                int childCount;
                this.mAdapter.startUpdate((ViewGroup) this);
                int startPos = Math.max(0, this.mCurItem - getLeftOffscreenPageLimit());
                int N = this.mAdapter.getCount();
                int endPos = Math.min(N - 1, this.mCurItem + getRightOffscreenPageLimit());
                boolean isFirstPupolate = N > 0 && this.mItems.isEmpty();
                ItemInfo curItem = null;
                for (curIndex = 0; curIndex < this.mItems.size(); curIndex++) {
                    ItemInfo ii = (ItemInfo) this.mItems.get(curIndex);
                    if (ii.position >= this.mCurItem) {
                        View child;
                        if (ii.position == this.mCurItem) {
                            curItem = ii;
                        }
                        if (curItem == null && N > 0) {
                            curItem = addNewItem(this.mCurItem, curIndex);
                        }
                        if (curItem != null) {
                            if (this.mLeftOffscreenPageLimit <= this.mRightOffscreenPageLimit) {
                                curIndex = populateRight(curItem, populateLeft(curItem, curIndex, startPos), endPos);
                            } else {
                                curIndex = populateLeft(curItem, populateRight(curItem, curIndex, endPos), startPos);
                            }
                            calculatePageOffsets(curItem, curIndex, oldCurInfo);
                        }
                        if (DEBUG) {
                            Log.i("ViewPager", "Current page list:");
                            for (i = 0; i < this.mItems.size(); i++) {
                                Log.i("ViewPager", "#" + i + ": page " + ((ItemInfo) this.mItems.get(i)).position);
                            }
                        }
                        this.mAdapter.setPrimaryItem((ViewGroup) this, this.mCurItem, curItem == null ? curItem.object : null);
                        this.mAdapter.finishUpdate((ViewGroup) this);
                        childCount = getChildCount();
                        for (i = 0; i < childCount; i++) {
                            child = getChildAt(i);
                            LayoutParams lp = (LayoutParams) child.getLayoutParams();
                            if (!lp.isDecor) {
                                ii = infoForChild(child);
                                if (ii != null) {
                                    lp.widthFactor = ii.widthFactor;
                                }
                            }
                        }
                        if (hasFocus()) {
                            View currentFocused = findFocus();
                            ii = currentFocused != null ? infoForAnyChild(currentFocused) : null;
                            if (ii == null || ii.position != this.mCurItem) {
                                for (i = 0; i < getChildCount(); i++) {
                                    child = getChildAt(i);
                                    ii = infoForChild(child);
                                    if (ii != null && ii.position == this.mCurItem && child.requestFocus(2)) {
                                        break;
                                    }
                                }
                            }
                        }
                        if (!isFirstPupolate) {
                            if (this.mOnPageChangeListener != null) {
                                this.mOnPageChangeListener.onPageSelected(this.mCurItem);
                            }
                            if (this.mPageSettledListener != null) {
                                this.mPageSettledListener.onPageSettled(this.mCurItem);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
                curItem = addNewItem(this.mCurItem, curIndex);
                if (curItem != null) {
                }
                if (DEBUG) {
                }
                if (curItem == null) {
                }
                this.mAdapter.setPrimaryItem((ViewGroup) this, this.mCurItem, curItem == null ? curItem.object : null);
                this.mAdapter.finishUpdate((ViewGroup) this);
                childCount = getChildCount();
                while (i < childCount) {
                }
                if (hasFocus()) {
                }
                if (!isFirstPupolate) {
                }
            }
        }
    }

    private int populateLeft(ItemInfo curItem, int curIndex, int startPos) {
        ItemInfo ii;
        float extraWidthLeft = 0.0f;
        int itemIndex = curIndex - 1;
        if (itemIndex >= 0) {
            ii = (ItemInfo) this.mItems.get(itemIndex);
        } else {
            ii = null;
        }
        float leftWidthNeeded = 2.0f - curItem.widthFactor;
        int pos = this.mCurItem - 1;
        while (pos >= 0) {
            if (extraWidthLeft < leftWidthNeeded || pos >= startPos) {
                if (ii == null || pos != ii.position) {
                    extraWidthLeft += addNewItem(pos, itemIndex + 1).widthFactor;
                    curIndex++;
                    ii = itemIndex >= 0 ? (ItemInfo) this.mItems.get(itemIndex) : null;
                } else {
                    extraWidthLeft += ii.widthFactor;
                    itemIndex--;
                    ii = itemIndex >= 0 ? (ItemInfo) this.mItems.get(itemIndex) : null;
                }
            } else if (ii == null) {
                break;
            } else if (pos == ii.position && !ii.scrolling) {
                this.mItems.remove(itemIndex);
                this.mAdapter.destroyItem((ViewGroup) this, pos, ii.object);
                itemIndex--;
                curIndex--;
                ii = itemIndex >= 0 ? (ItemInfo) this.mItems.get(itemIndex) : null;
            }
            pos--;
        }
        return curIndex;
    }

    private int populateRight(ItemInfo curItem, int curIndex, int endPos) {
        float extraWidthRight = curItem.widthFactor;
        int itemIndex = curIndex + 1;
        int N = this.mAdapter.getCount();
        if (extraWidthRight < 2.0f) {
            ItemInfo ii = itemIndex < this.mItems.size() ? (ItemInfo) this.mItems.get(itemIndex) : null;
            int pos = this.mCurItem + 1;
            while (pos < N) {
                if (extraWidthRight < 2.0f || pos <= endPos) {
                    if (ii == null || pos != ii.position) {
                        ii = addNewItem(pos, itemIndex);
                        itemIndex++;
                        extraWidthRight += ii.widthFactor;
                        ii = itemIndex < this.mItems.size() ? (ItemInfo) this.mItems.get(itemIndex) : null;
                    } else {
                        extraWidthRight += ii.widthFactor;
                        itemIndex++;
                        ii = itemIndex < this.mItems.size() ? (ItemInfo) this.mItems.get(itemIndex) : null;
                    }
                } else if (ii == null) {
                    break;
                } else if (pos == ii.position && !ii.scrolling) {
                    this.mItems.remove(itemIndex);
                    this.mAdapter.destroyItem((ViewGroup) this, pos, ii.object);
                    ii = itemIndex < this.mItems.size() ? (ItemInfo) this.mItems.get(itemIndex) : null;
                }
                pos++;
            }
        }
        return curIndex;
    }

    private void calculatePageLimits(int newCurrentItem) {
        if (this.mCurItem > newCurrentItem) {
            this.mLeftOffscreenPageLimit = 3;
            this.mRightOffscreenPageLimit = 1;
        } else if (this.mCurItem < newCurrentItem) {
            this.mRightOffscreenPageLimit = 3;
            this.mLeftOffscreenPageLimit = 1;
        }
    }

    private float getSlipScale(int position) {
        int itemSlipWidth = this.mAdapter.getSlipWidth((int) (((float) this.mInitialHeight) * this.mHeightSlipRatio), position);
        return itemSlipWidth > 0 ? Math.min(this.mWidthSlipRatio, (1.0f * ((float) itemSlipWidth)) / ((float) this.mInitialWidth)) : this.mWidthSlipRatio;
    }

    private void calculatePageWidthFactor(ItemInfo curItem) {
        float curItemLastWidthFactor = curItem.widthFactor;
        this.mPageMargin = (int) ((1.0f - ((1.0f - this.mMarginSlipRatio) * this.mSlipProgress)) * ((float) this.mInitialPageMargin));
        Iterator it = this.mItems.iterator();
        while (it.hasNext()) {
            ItemInfo item = (ItemInfo) it.next();
            float wRatio = 1.0f;
            if (!BaseMiscUtil.floatEquals(this.mSlipProgress, 0.0f)) {
                wRatio = 1.0f - ((1.0f - getSlipScale(item.position)) * this.mSlipProgress);
            }
            item.widthFactor = this.mAdapter.getPageWidth(item.position) * wRatio;
            item.offsetLeftScreen = (1.0f - item.widthFactor) / 2.0f;
        }
        curItem.offset += (curItemLastWidthFactor - curItem.widthFactor) / 2.0f;
    }

    public void onSlipping(float progress) {
        this.mSlipProgress = progress;
    }

    public void setHeightSlipRatio(float ratio) {
        this.mHeightSlipRatio = BaseMiscUtil.clamp(ratio, 0.0f, 1.0f);
        if (isLaidOut()) {
            if (DEBUG) {
                Log.d("ViewPager", "update height slip ratio, request layout");
            }
            requestLayout();
        }
    }

    public void setWidthSlipRatio(float ratio) {
        this.mWidthSlipRatio = BaseMiscUtil.clamp(ratio, 0.0f, 1.0f);
        if (isLaidOut()) {
            if (DEBUG) {
                Log.d("ViewPager", "update width slip ratio, request layout");
            }
            requestLayout();
        }
    }

    public void setMarginSlipRatio(float ratio) {
        this.mMarginSlipRatio = BaseMiscUtil.clamp(ratio, 0.0f, 1.0f);
        if (isLaidOut()) {
            if (DEBUG) {
                Log.d("ViewPager", "update margin slip ratio, request layout");
            }
            requestLayout();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0060 A:{LOOP_END, LOOP:2: B:18:0x005c->B:20:0x0060} */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00a9 A:{LOOP_END, LOOP:5: B:33:0x00a5->B:35:0x00a9} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void calculatePageOffsets(ItemInfo curItem, int curIndex, ItemInfo oldCurInfo) {
        float offset;
        int pos;
        ItemInfo ii;
        calculatePageWidthFactor(curItem);
        int N = this.mAdapter.getCount();
        int width = getWidth();
        float marginOffset = width > 0 ? ((float) this.mPageMargin) / ((float) width) : 0.0f;
        if (oldCurInfo != null) {
            int oldCurPosition = oldCurInfo.position;
            int itemIndex;
            if (oldCurPosition < curItem.position) {
                itemIndex = 0;
                offset = (oldCurInfo.offset + oldCurInfo.widthFactor) + marginOffset;
                pos = oldCurPosition + 1;
                while (pos <= curItem.position && itemIndex < this.mItems.size()) {
                    ii = this.mItems.get(itemIndex);
                    while (true) {
                        ii = ii;
                        if (pos <= ii.position || itemIndex >= this.mItems.size() - 1) {
                            while (pos < ii.position) {
                                offset += this.mAdapter.getPageWidth(pos) + marginOffset;
                                pos++;
                            }
                        } else {
                            itemIndex++;
                            ii = this.mItems.get(itemIndex);
                        }
                    }
                    while (pos < ii.position) {
                    }
                    ii.offset = offset;
                    offset += ii.widthFactor + marginOffset;
                    pos++;
                }
            } else if (oldCurPosition > curItem.position) {
                itemIndex = this.mItems.size() - 1;
                offset = oldCurInfo.offset;
                pos = oldCurPosition - 1;
                while (pos >= curItem.position && itemIndex >= 0) {
                    Object ii2 = this.mItems.get(itemIndex);
                    while (true) {
                        ii = (ItemInfo) ii2;
                        if (pos >= ii.position || itemIndex <= 0) {
                            while (pos > ii.position) {
                                offset -= this.mAdapter.getPageWidth(pos) + marginOffset;
                                pos--;
                            }
                        } else {
                            itemIndex--;
                            ii2 = this.mItems.get(itemIndex);
                        }
                    }
                    while (pos > ii.position) {
                    }
                    offset -= ii.widthFactor + marginOffset;
                    ii.offset = offset;
                    pos--;
                }
            }
        }
        int itemCount = this.mItems.size();
        offset = curItem.offset;
        pos = curItem.position - 1;
        this.mFirstOffset = curItem.position == 0 ? curItem.offset : -3.4028235E38f;
        this.mFirstOffsetLeftScreen = curItem.position == 0 ? curItem.offsetLeftScreen : 0.0f;
        this.mLastOffset = curItem.position == N + -1 ? curItem.offset : Float.MAX_VALUE;
        this.mLastOffsetLeftScreen = curItem.position == N + -1 ? curItem.offsetLeftScreen : 0.0f;
        int i = curIndex - 1;
        while (i >= 0) {
            ii = (ItemInfo) this.mItems.get(i);
            while (pos > ii.position) {
                offset -= this.mAdapter.getPageWidth(pos) + marginOffset;
                pos--;
            }
            offset -= ii.widthFactor + marginOffset;
            ii.offset = offset;
            if (ii.position == 0) {
                this.mFirstOffset = offset;
                this.mFirstOffsetLeftScreen = ii.offsetLeftScreen;
            }
            i--;
            pos--;
        }
        offset = (curItem.offset + curItem.widthFactor) + marginOffset;
        pos = curItem.position + 1;
        i = curIndex + 1;
        while (i < itemCount) {
            ii = (ItemInfo) this.mItems.get(i);
            while (pos < ii.position) {
                offset += this.mAdapter.getPageWidth(pos) + marginOffset;
                pos++;
            }
            if (ii.position == N - 1) {
                this.mLastOffset = offset;
                this.mLastOffsetLeftScreen = ii.offsetLeftScreen;
            }
            ii.offset = offset;
            offset += ii.widthFactor + marginOffset;
            i++;
            pos++;
        }
        this.mNeedCalculatePageOffsets = false;
    }

    public Parcelable onSaveInstanceState() {
        SavedState ss = new SavedState(super.onSaveInstanceState());
        ss.position = this.mCurItem;
        if (this.mAdapter != null) {
            ss.adapterState = this.mAdapter.saveState();
        }
        return ss;
    }

    public void onRestoreInstanceState(Parcelable state) {
        if (state instanceof SavedState) {
            SavedState ss = (SavedState) state;
            super.onRestoreInstanceState(ss.getSuperState());
            if (this.mAdapter != null) {
                this.mAdapter.restoreState(ss.adapterState, null);
                setCurrentItemInternal(ss.position, false, true);
                return;
            }
            this.mRestoredCurItem = ss.position;
            this.mRestoredAdapterState = ss.adapterState;
            return;
        }
        super.onRestoreInstanceState(state);
    }

    public void addView(View child, int index, android.view.ViewGroup.LayoutParams params) {
        if (!checkLayoutParams(params)) {
            params = generateLayoutParams(params);
        }
        LayoutParams lp = (LayoutParams) params;
        lp.isDecor |= child instanceof Decor;
        if (!this.mInLayout) {
            super.addView(child, index, params);
        } else if (lp.isDecor) {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        } else {
            lp.needsMeasure = true;
            addViewInLayout(child, index, params);
        }
    }

    ItemInfo infoForChild(View child) {
        Iterator it = this.mItems.iterator();
        while (it.hasNext()) {
            ItemInfo ii = (ItemInfo) it.next();
            if (this.mAdapter.isViewFromObject(child, ii.object)) {
                return ii;
            }
        }
        return null;
    }

    ItemInfo infoForAnyChild(View child) {
        while (true) {
            View parent = child.getParent();
            if (parent == this) {
                return infoForChild(child);
            }
            if (!(parent instanceof View)) {
                return null;
            }
            child = parent;
        }
    }

    ItemInfo infoForPosition(int position) {
        Iterator it = this.mItems.iterator();
        while (it.hasNext()) {
            ItemInfo ii = (ItemInfo) it.next();
            if (ii.position == position) {
                return ii;
            }
        }
        return null;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int i;
        View child;
        LayoutParams lp;
        setMeasuredDimension(getDefaultSize(0, widthMeasureSpec), getDefaultSize(0, heightMeasureSpec));
        int measuredWidth = getMeasuredWidth();
        this.mGutterSize = Math.min(measuredWidth / 10, this.mDefaultGutterSize);
        int childWidthSize = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int childHeightSize = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int size = getChildCount();
        for (i = 0; i < size; i++) {
            child = getChildAt(i);
            if (child.getVisibility() != 8) {
                lp = (LayoutParams) child.getLayoutParams();
                if (lp != null && lp.isDecor) {
                    int hgrav = lp.gravity & 7;
                    int vgrav = lp.gravity & BaiduSceneResult.STREET_VIEW;
                    int widthMode = Integer.MIN_VALUE;
                    int heightMode = Integer.MIN_VALUE;
                    boolean consumeVertical = vgrav == 48 || vgrav == 80;
                    boolean consumeHorizontal = hgrav == 3 || hgrav == 5;
                    if (consumeVertical) {
                        widthMode = 1073741824;
                    } else if (consumeHorizontal) {
                        heightMode = 1073741824;
                    }
                    int widthSize = childWidthSize;
                    int heightSize = childHeightSize;
                    if (lp.width != -2) {
                        widthMode = 1073741824;
                        if (lp.width != -1) {
                            widthSize = lp.width;
                        }
                    }
                    if (lp.height != -2) {
                        heightMode = 1073741824;
                        if (lp.height != -1) {
                            heightSize = lp.height;
                        }
                    }
                    child.measure(MeasureSpec.makeMeasureSpec(widthSize, widthMode), MeasureSpec.makeMeasureSpec(heightSize, heightMode));
                    if (consumeVertical) {
                        childHeightSize -= child.getMeasuredHeight();
                    } else if (consumeHorizontal) {
                        childWidthSize -= child.getMeasuredWidth();
                    }
                }
            }
        }
        this.mChildWidthMeasureSpec = MeasureSpec.makeMeasureSpec(childWidthSize, 1073741824);
        this.mChildHeightMeasureSpec = MeasureSpec.makeMeasureSpec(childHeightSize, 1073741824);
        this.mInLayout = true;
        populate();
        this.mInLayout = false;
        size = getChildCount();
        for (i = 0; i < size; i++) {
            child = getChildAt(i);
            if (child.getVisibility() != 8) {
                if (DEBUG) {
                    Log.v("ViewPager", "Measuring #" + i + " " + child + ": " + this.mChildWidthMeasureSpec);
                }
                lp = (LayoutParams) child.getLayoutParams();
                if (!lp.isDecor) {
                    child.measure(MeasureSpec.makeMeasureSpec((int) (((float) childWidthSize) * lp.widthFactor), 1073741824), MeasureSpec.makeMeasureSpec(childHeightSize, 1073741824));
                }
            }
        }
    }

    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        if (w != oldw) {
            recomputeScrollPosition(w, oldw, 0, 0);
        }
    }

    private void recomputeScrollPosition(int width, int oldWidth, int margin, int oldMargin) {
        if (oldWidth <= 0 || this.mItems.isEmpty()) {
            ItemInfo ii = infoForPosition(this.mCurItem);
            int scrollPos = (int) (((float) width) * (ii != null ? Math.min(ii.offset, this.mLastOffset) : 0.0f));
            if (scrollPos != getScrollX()) {
                completeScroll();
                scrollTo(scrollPos, getScrollY());
                return;
            }
            return;
        }
        int newOffsetPixels = (int) (((float) (width + margin)) * (((float) getScrollX()) / ((float) (oldWidth + oldMargin))));
        scrollTo(newOffsetPixels, getScrollY());
        if (!this.mScroller.isFinished()) {
            int newDuration = this.mScroller.getDuration() - this.mScroller.timePassed();
            ItemInfo targetInfo = infoForPosition(this.mCurItem);
            if (targetInfo != null) {
                this.mScroller.startScroll(newOffsetPixels, 0, (int) ((targetInfo.offset - targetInfo.offsetLeftScreen) * ((float) width)), 0, newDuration);
                return;
            }
        }
        this.mScroller.startScroll(newOffsetPixels, 0, 0, 0, 0);
        this.mScroller.abortAnimation();
    }

    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        if (this.mLastOrientation != newConfig.orientation) {
            this.mLastOrientation = newConfig.orientation;
            resetSlipInitials();
        }
    }

    private void resetSlipInitials() {
        if (BaseMiscUtil.floatEquals(this.mSlipProgress, 0.0f) && this.mInitialHeight != 0) {
            this.mInitialHeight = 0;
            this.mInitialWidth = 0;
        }
    }

    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        int i;
        View child;
        LayoutParams lp;
        int childLeft;
        int childTop;
        this.mInLayout = true;
        populate();
        this.mInLayout = false;
        int count = getChildCount();
        int width = r - l;
        int height = b - t;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int decorCount = 0;
        if (this.mInitialHeight == 0) {
            this.mInitialWidth = width;
            this.mInitialHeight = height;
        }
        for (i = 0; i < count; i++) {
            child = getChildAt(i);
            if (child.getVisibility() != 8) {
                lp = (LayoutParams) child.getLayoutParams();
                if (lp.isDecor) {
                    int vgrav = lp.gravity & BaiduSceneResult.STREET_VIEW;
                    switch (lp.gravity & 7) {
                        case 1:
                            childLeft = Math.max((width - child.getMeasuredWidth()) / 2, paddingLeft);
                            break;
                        case 3:
                            childLeft = paddingLeft;
                            paddingLeft += child.getMeasuredWidth();
                            break;
                        case 5:
                            childLeft = (width - paddingRight) - child.getMeasuredWidth();
                            paddingRight += child.getMeasuredWidth();
                            break;
                        default:
                            childLeft = paddingLeft;
                            break;
                    }
                    switch (vgrav) {
                        case 16:
                            childTop = Math.max((height - child.getMeasuredHeight()) / 2, paddingTop);
                            break;
                        case 48:
                            childTop = paddingTop;
                            paddingTop += child.getMeasuredHeight();
                            break;
                        case BaiduSceneResult.SKI /*80*/:
                            childTop = (height - paddingBottom) - child.getMeasuredHeight();
                            paddingBottom += child.getMeasuredHeight();
                            break;
                        default:
                            childTop = paddingTop;
                            break;
                    }
                    childLeft += scrollX;
                    child.layout(childLeft, childTop, child.getMeasuredWidth() + childLeft, child.getMeasuredHeight() + childTop);
                    decorCount++;
                }
            }
        }
        for (i = 0; i < count; i++) {
            child = getChildAt(i);
            if (child.getVisibility() != 8) {
                lp = (LayoutParams) child.getLayoutParams();
                if (!lp.isDecor) {
                    ItemInfo ii = infoForChild(child);
                    if (ii != null) {
                        childLeft = paddingLeft + ((int) (((float) width) * ii.offset));
                        childTop = (int) ((ii.offsetTopScreen * ((float) height)) + ((float) paddingTop));
                        if (this.mForceReplayout || lp.needsMeasure) {
                            lp.needsMeasure = false;
                            int widthSpec = MeasureSpec.makeMeasureSpec((int) (((float) ((width - paddingLeft) - paddingRight)) * lp.widthFactor), 1073741824);
                            this.mForceReplayout = false;
                            child.measure(widthSpec, MeasureSpec.makeMeasureSpec((height - paddingTop) - paddingBottom, 1073741824));
                        }
                        if (DEBUG) {
                            Log.v("ViewPager", "Positioning #" + i + " " + child + " f=" + ii.object + ":" + childLeft + "," + paddingTop + " " + child.getMeasuredWidth() + "x" + child.getMeasuredHeight());
                        }
                        child.layout(childLeft, childTop, child.getMeasuredWidth() + childLeft, child.getMeasuredHeight() - (childTop * 2));
                    }
                }
            }
        }
        this.mTopPageBounds = paddingTop;
        this.mBottomPageBounds = height - paddingBottom;
        this.mDecorChildCount = decorCount;
        this.mFirstLayout = false;
    }

    public void computeScroll() {
        if (this.mScroller.isFinished() || !this.mScroller.computeScrollOffset()) {
            completeScroll();
            return;
        }
        int oldX = getScrollX();
        int oldY = getScrollY();
        int x = this.mScroller.getCurrX();
        int y = this.mScroller.getCurrY();
        if (!(oldX == x && oldY == y)) {
            scrollTo(x, y);
            if (!pageScrolled(x, false)) {
                this.mScroller.abortAnimation();
                scrollTo(0, y);
            }
        }
        postInvalidateOnAnimation();
    }

    private boolean pageScrolled(int xpos, boolean updateCurrentItem) {
        if (this.mItems.size() == 0) {
            this.mCalledSuper = false;
            onPageScrolled(0, 0.0f, 0);
            if (this.mCalledSuper) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        ItemInfo ii = infoForCurrentScrollPosition();
        int width = getWidth();
        int widthWithMargin = width + this.mPageMargin;
        float marginOffset = ((float) this.mPageMargin) / ((float) width);
        int currentPage = ii.position;
        float pageOffset = (((((float) xpos) / ((float) width)) - ii.offset) - ii.offsetLeftScreen) / (ii.widthFactor + marginOffset);
        int offsetPixels = (int) (((float) widthWithMargin) * pageOffset);
        this.mCalledSuper = false;
        onPageScrolled(currentPage, pageOffset, offsetPixels);
        if (this.mCalledSuper) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    protected void onPageScrolled(int position, float offset, int offsetPixels) {
        if (this.mDecorChildCount > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                View child = getChildAt(i);
                LayoutParams lp = (LayoutParams) child.getLayoutParams();
                if (lp.isDecor) {
                    int childLeft;
                    switch (lp.gravity & 7) {
                        case 1:
                            childLeft = Math.max((width - child.getMeasuredWidth()) / 2, paddingLeft);
                            break;
                        case 3:
                            childLeft = paddingLeft;
                            paddingLeft += child.getWidth();
                            break;
                        case 5:
                            childLeft = (width - paddingRight) - child.getMeasuredWidth();
                            paddingRight += child.getMeasuredWidth();
                            break;
                        default:
                            childLeft = paddingLeft;
                            break;
                    }
                    int childOffset = (childLeft + scrollX) - child.getLeft();
                    if (childOffset != 0) {
                        child.offsetLeftAndRight(childOffset);
                    }
                }
            }
        }
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.onPageScrolled(position, offset, offsetPixels);
        }
        if (this.mInternalPageChangeListener != null) {
            this.mInternalPageChangeListener.onPageScrolled(position, offset, offsetPixels);
        }
        this.mCalledSuper = true;
    }

    private void completeScroll() {
        boolean needPopulate;
        boolean needCallbackSettled;
        if (this.mScrollState == 2) {
            needPopulate = true;
        } else {
            needPopulate = false;
        }
        if (this.mScrollState == 2) {
            needCallbackSettled = true;
        } else {
            needCallbackSettled = false;
        }
        if (needPopulate) {
            setScrollingCacheEnabled(false);
            this.mScroller.abortAnimation();
            int oldX = getScrollX();
            int oldY = getScrollY();
            int x = this.mScroller.getCurrX();
            int y = this.mScroller.getCurrY();
            if (!(oldX == x && oldY == y)) {
                scrollTo(x, y);
            }
            setScrollState(0);
        }
        if (needCallbackSettled) {
            callBackPageSettled();
        }
        this.mPopulatePending = false;
        Iterator it = this.mItems.iterator();
        while (it.hasNext()) {
            ItemInfo ii = (ItemInfo) it.next();
            if (ii.scrolling) {
                needPopulate = true;
                ii.scrolling = false;
            }
        }
        if (needPopulate) {
            populate();
        }
    }

    private boolean isGutterDrag(float x, float dx) {
        return (x < ((float) this.mGutterSize) && dx > 0.0f) || (x > ((float) (getWidth() - this.mGutterSize)) && dx < 0.0f);
    }

    private boolean needIntercept(float xDiff, float yDiff) {
        return xDiff > ((float) this.mTouchSlop) && ((double) xDiff) > ((double) yDiff) * Math.tan(0.4363323129985824d);
    }

    private int findPointerIndex(MotionEvent ev, int activePointerId) {
        int pointerIndex = ev.findPointerIndex(activePointerId);
        int pointCount = ev.getPointerCount();
        if (pointerIndex >= 0 && pointerIndex < pointCount) {
            return pointerIndex;
        }
        HashMap<String, String> params = new HashMap();
        params.put("invalid_pointer", String.format(Locale.US, "id[%d], index[%d], count[%d]", new Object[]{Integer.valueOf(activePointerId), Integer.valueOf(pointerIndex), Integer.valueOf(pointCount)}));
        BaseSamplingStatHelper.recordErrorEvent("gesture", "gesture_view_pager", params);
        return -1;
    }

    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (!this.mDragEnabled) {
            return false;
        }
        int action = ev.getAction() & 255;
        if (action == 3 || action == 1) {
            if (DEBUG) {
                Log.v("ViewPager", "Intercept done!");
            }
            this.mIsBeingDragged = false;
            this.mIsUnableToDrag = false;
            this.mActivePointerId = -1;
            if (this.mVelocityTracker != null) {
                this.mVelocityTracker.recycle();
                this.mVelocityTracker = null;
            }
            return false;
        }
        if (action != 0) {
            if (this.mIsBeingDragged) {
                if (DEBUG) {
                    Log.v("ViewPager", "Intercept returning true!");
                }
                return true;
            } else if (this.mIsUnableToDrag) {
                if (DEBUG) {
                    Log.v("ViewPager", "Intercept returning false!");
                }
                return false;
            }
        }
        switch (action) {
            case 0:
                float x = ev.getX();
                this.mInitialMotionX = x;
                this.mLastMotionX = x;
                this.mLastMotionY = ev.getY();
                this.mActivePointerId = ev.getPointerId(0);
                this.mIsUnableToDrag = false;
                this.mScroller.computeScrollOffset();
                if (this.mScrollState != 2 || Math.abs(this.mScroller.getFinalX() - this.mScroller.getCurrX()) <= this.mCloseEnough) {
                    completeScroll();
                    this.mIsBeingDragged = false;
                } else {
                    this.mScroller.abortAnimation();
                    this.mPopulatePending = false;
                    populate();
                    this.mIsBeingDragged = true;
                    setScrollState(1);
                }
                if (DEBUG) {
                    Log.v("ViewPager", "Down at " + this.mLastMotionX + "," + this.mLastMotionY + " mIsBeingDragged=" + this.mIsBeingDragged + "mIsUnableToDrag=" + this.mIsUnableToDrag);
                    break;
                }
                break;
            case 2:
                int activePointerId = this.mActivePointerId;
                if (activePointerId != -1) {
                    int pointerIndex = findPointerIndex(ev, activePointerId);
                    if (pointerIndex != -1) {
                        float x2 = ev.getX(pointerIndex);
                        float dx = x2 - this.mLastMotionX;
                        float xDiff = Math.abs(dx);
                        float y = ev.getY(pointerIndex);
                        float yDiff = Math.abs(y - this.mLastMotionY);
                        if (DEBUG) {
                            Log.v("ViewPager", "Moved x to " + x2 + "," + y + " diff=" + xDiff + "," + yDiff);
                        }
                        if (!(BaseMiscUtil.floatEquals(dx, 0.0f) || isGutterDrag(this.mLastMotionX, dx))) {
                            if (canScroll(this, false, (int) dx, (int) x2, (int) y)) {
                                this.mLastMotionX = x2;
                                this.mInitialMotionX = x2;
                                this.mLastMotionY = y;
                                this.mIsUnableToDrag = true;
                                return false;
                            }
                        }
                        if (needIntercept(xDiff, yDiff)) {
                            if (DEBUG) {
                                Log.v("ViewPager", "Starting drag!");
                            }
                            this.mIsBeingDragged = true;
                            setScrollState(1);
                            if (Math.abs(x2 - this.mInitialMotionX) > ((float) (this.mTouchSlop * 2))) {
                                this.mLastMotionX = x2;
                                this.mInitialMotionX = x2;
                                this.mLastMotionY = y;
                            } else {
                                this.mLastMotionX = dx > 0.0f ? this.mInitialMotionX + ((float) this.mTouchSlop) : this.mInitialMotionX - ((float) this.mTouchSlop);
                            }
                            setScrollingCacheEnabled(true);
                        } else if (yDiff > ((float) this.mTouchSlop)) {
                            if (DEBUG) {
                                Log.v("ViewPager", "Starting unable to drag!");
                            }
                            this.mIsUnableToDrag = true;
                        }
                        if (this.mIsBeingDragged && performDrag(x2)) {
                            postInvalidateOnAnimation();
                            break;
                        }
                    }
                }
                break;
            case 6:
                onSecondaryPointerUp(ev);
                break;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(ev);
        return this.mIsBeingDragged;
    }

    public boolean onTouchEvent(MotionEvent ev) {
        if (this.mFakeDragging) {
            return true;
        }
        if (ev.getAction() == 0 && ev.getEdgeFlags() != 0) {
            return false;
        }
        if (this.mAdapter == null || this.mAdapter.getCount() == 0) {
            return false;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(ev);
        boolean needsInvalidate = false;
        float x;
        int activePointerIndex;
        int pointerIndex;
        switch (ev.getAction() & 255) {
            case 0:
                this.mScroller.abortAnimation();
                this.mPopulatePending = false;
                populate();
                this.mIsBeingDragged = true;
                setScrollState(1);
                x = ev.getX();
                this.mInitialMotionX = x;
                this.mLastMotionX = x;
                this.mActivePointerId = ev.getPointerId(0);
                break;
            case 1:
                if (this.mIsBeingDragged) {
                    VelocityTracker velocityTracker = this.mVelocityTracker;
                    velocityTracker.computeCurrentVelocity(1000, (float) this.mMaximumVelocity);
                    int initialVelocity = (int) velocityTracker.getXVelocity(this.mActivePointerId);
                    this.mPopulatePending = true;
                    int width = getWidth();
                    int scrollX = getScrollX();
                    ItemInfo ii = infoForCurrentScrollPosition();
                    int currentPage = ii.position;
                    float pageOffset = (((((float) scrollX) / ((float) width)) - ii.offset) - ii.offsetLeftScreen) / ii.widthFactor;
                    activePointerIndex = findPointerIndex(ev, this.mActivePointerId);
                    if (activePointerIndex != -1) {
                        setCurrentItemInternal(determineTargetPage(currentPage, pageOffset, initialVelocity, (int) (ev.getX(activePointerIndex) - this.mInitialMotionX)), true, true, initialVelocity);
                        this.mActivePointerId = -1;
                        endDrag();
                        this.mLeftEdge.onRelease();
                        this.mRightEdge.onRelease();
                        needsInvalidate = this.mLeftEdge.isFinished() | this.mRightEdge.isFinished();
                        break;
                    }
                }
                break;
            case 2:
                if (!this.mIsBeingDragged) {
                    pointerIndex = findPointerIndex(ev, this.mActivePointerId);
                    if (pointerIndex != -1) {
                        float x2 = ev.getX(pointerIndex);
                        float xDiff = Math.abs(x2 - this.mLastMotionX);
                        float y = ev.getY(pointerIndex);
                        float yDiff = Math.abs(y - this.mLastMotionY);
                        if (DEBUG) {
                            Log.v("ViewPager", "Moved x to " + x2 + "," + y + " diff=" + xDiff + "," + yDiff);
                        }
                        if (needIntercept(xDiff, yDiff)) {
                            if (DEBUG) {
                                Log.v("ViewPager", "Starting drag!");
                            }
                            this.mIsBeingDragged = true;
                            if (x2 - this.mInitialMotionX > 0.0f) {
                                x = this.mInitialMotionX + ((float) this.mTouchSlop);
                            } else {
                                x = this.mInitialMotionX - ((float) this.mTouchSlop);
                            }
                            this.mLastMotionX = x;
                            setScrollState(1);
                            setScrollingCacheEnabled(true);
                        }
                    }
                }
                if (this.mIsBeingDragged) {
                    activePointerIndex = findPointerIndex(ev, this.mActivePointerId);
                    if (activePointerIndex != -1) {
                        needsInvalidate = performDrag(ev.getX(activePointerIndex));
                        break;
                    }
                }
                break;
            case 3:
                if (this.mIsBeingDragged) {
                    setCurrentItemInternal(this.mCurItem, true, true);
                    this.mActivePointerId = -1;
                    endDrag();
                    this.mLeftEdge.onRelease();
                    this.mRightEdge.onRelease();
                    needsInvalidate = this.mLeftEdge.isFinished() | this.mRightEdge.isFinished();
                    break;
                }
                break;
            case 5:
                int index = ev.getActionIndex();
                this.mLastMotionX = ev.getX(index);
                this.mActivePointerId = ev.getPointerId(index);
                break;
            case 6:
                onSecondaryPointerUp(ev);
                pointerIndex = findPointerIndex(ev, this.mActivePointerId);
                if (pointerIndex != -1) {
                    this.mLastMotionX = ev.getX(pointerIndex);
                    break;
                }
                break;
        }
        if (needsInvalidate) {
            postInvalidateOnAnimation();
        }
        return true;
    }

    private boolean performDrag(float x) {
        boolean needsInvalidate = false;
        float deltaX = this.mLastMotionX - x;
        this.mLastMotionX = x;
        float scrollX = ((float) getScrollX()) + deltaX;
        int width = getWidth();
        float leftBound = ((float) width) * getMinScrollOffset();
        float rightBound = ((float) width) * getMaxScrollOffset();
        boolean leftAbsolute = true;
        boolean rightAbsolute = true;
        ItemInfo firstItem = (ItemInfo) this.mItems.get(0);
        ItemInfo lastItem = (ItemInfo) this.mItems.get(this.mItems.size() - 1);
        if (firstItem.position != 0) {
            leftAbsolute = false;
            leftBound = (firstItem.offset - firstItem.offsetLeftScreen) * ((float) width);
        }
        if (lastItem.position != this.mAdapter.getCount() - 1) {
            rightAbsolute = false;
            rightBound = (lastItem.offset - lastItem.offsetLeftScreen) * ((float) width);
        }
        if (scrollX < leftBound) {
            if (leftAbsolute) {
                this.mLeftEdge.onPull(Math.abs(leftBound - scrollX) / ((float) width));
                needsInvalidate = true;
            }
            scrollX = leftBound;
        } else if (scrollX > rightBound) {
            if (rightAbsolute) {
                this.mRightEdge.onPull(Math.abs(scrollX - rightBound) / ((float) width));
                needsInvalidate = true;
            }
            scrollX = rightBound;
        }
        this.mLastMotionX += scrollX - ((float) ((int) scrollX));
        scrollTo((int) scrollX, getScrollY());
        pageScrolled((int) scrollX, true);
        return needsInvalidate;
    }

    private ItemInfo infoForCurrentScrollPosition() {
        float scrollOffset;
        float marginOffset = 0.0f;
        int width = getWidth();
        if (width > 0) {
            scrollOffset = ((float) getScrollX()) / ((float) width);
        } else {
            scrollOffset = 0.0f;
        }
        if (width > 0) {
            marginOffset = ((float) this.mPageMargin) / ((float) width);
        }
        int lastPos = -1;
        float lastOffset = 0.0f;
        float lastWidth = 0.0f;
        boolean first = true;
        ItemInfo lastItem = null;
        int i = 0;
        while (i < this.mItems.size()) {
            ItemInfo ii = (ItemInfo) this.mItems.get(i);
            if (!(first || ii.position == lastPos + 1)) {
                ii = this.mTempItem;
                ii.offset = (lastOffset + lastWidth) + marginOffset;
                ii.position = lastPos + 1;
                ii.widthFactor = this.mAdapter.getPageWidth(ii.position);
                i--;
            }
            float offset = ii.offset;
            float leftBound = offset - ii.offsetLeftScreen;
            float rightBound = ((offset - ii.offsetLeftScreen) + ii.widthFactor) + marginOffset;
            if (!first && scrollOffset < leftBound) {
                return lastItem;
            }
            if (scrollOffset < rightBound || i == this.mItems.size() - 1) {
                return ii;
            }
            first = false;
            lastPos = ii.position;
            lastOffset = offset;
            lastWidth = ii.widthFactor;
            lastItem = ii;
            i++;
        }
        return lastItem;
    }

    private int determineTargetPage(int currentPage, float pageOffset, int velocity, int deltaX) {
        int targetPage;
        int i;
        if (Math.abs(deltaX) <= this.mFlingDistance || Math.abs(velocity) <= this.mMinimumVelocity) {
            targetPage = (int) (((float) currentPage) + (pageOffset + (currentPage >= this.mCurItem ? 0.6f : 0.4f)));
        } else if (deltaX < 0) {
            if (velocity > this.mReverseVelocity) {
                i = 0;
            } else {
                i = 1;
            }
            targetPage = currentPage + i;
            if (velocity < 0 && targetPage == getCurrentItem()) {
                if (DEBUG) {
                    Log.d("ViewPager", "go on scrolling to new page, offset: " + pageOffset);
                }
                targetPage += (int) (pageOffset + 0.3f);
            }
        } else {
            if (velocity < (-this.mReverseVelocity)) {
                i = 1;
            } else {
                i = 0;
            }
            targetPage = currentPage + i;
            if (velocity > 0 && targetPage == getCurrentItem()) {
                if (DEBUG) {
                    Log.d("ViewPager", "go on scrolling to new page, offset: " + pageOffset);
                }
                if (pageOffset < 0.3f) {
                    i = 1;
                } else {
                    i = 0;
                }
                targetPage -= i;
            }
        }
        if (this.mItems.size() > 0) {
            targetPage = Math.max(((ItemInfo) this.mItems.get(0)).position, Math.min(targetPage, ((ItemInfo) this.mItems.get(this.mItems.size() - 1)).position));
        }
        if (DEBUG) {
            Log.d("ViewPager", String.format(Locale.US, "deltaX: %s, velocity: %s, offset: %s, curItem: %s, displayItem: %s, tarItem: %s", new Object[]{Integer.valueOf(deltaX), Integer.valueOf(velocity), Float.valueOf(pageOffset), Integer.valueOf(getCurrentItem()), Integer.valueOf(currentPage), Integer.valueOf(targetPage)}));
        }
        return targetPage;
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        boolean needsInvalidate = false;
        int overScrollMode = getOverScrollMode();
        if (overScrollMode == 0 || (overScrollMode == 1 && this.mAdapter != null && this.mAdapter.getCount() > 1)) {
            int restoreCount;
            int height;
            int width;
            if (!this.mLeftEdge.isFinished()) {
                restoreCount = canvas.save();
                height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((float) ((-height) + getPaddingTop()), this.mFirstOffset * ((float) width));
                this.mLeftEdge.setSize(height, width);
                needsInvalidate = this.mLeftEdge.draw(canvas);
                canvas.restoreToCount(restoreCount);
            }
            if (!this.mRightEdge.isFinished()) {
                restoreCount = canvas.save();
                width = getWidth();
                height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate((float) (-getPaddingTop()), (-(this.mLastOffset + 1.0f)) * ((float) width));
                this.mRightEdge.setSize(height, width);
                needsInvalidate |= this.mRightEdge.draw(canvas);
                canvas.restoreToCount(restoreCount);
            }
        } else {
            this.mLeftEdge.finish();
            this.mRightEdge.finish();
        }
        if (needsInvalidate) {
            postInvalidateOnAnimation();
        }
    }

    protected void onDraw(Canvas canvas) {
        if (this.mPageMargin > 0 && this.mMarginDrawable != null && this.mItems.size() > 0 && this.mAdapter != null) {
            int scrollX = getScrollX();
            int width = getWidth();
            float marginOffset = ((float) this.mPageMargin) / ((float) width);
            int itemIndex = 0;
            ItemInfo ii = (ItemInfo) this.mItems.get(0);
            float offset = ii.offset;
            int itemCount = this.mItems.size();
            int firstPos = ii.position;
            int lastPos = ((ItemInfo) this.mItems.get(itemCount - 1)).position;
            for (int pos = firstPos; pos < lastPos; pos++) {
                float drawAt;
                while (pos > ii.position && itemIndex < itemCount) {
                    itemIndex++;
                    ii = (ItemInfo) this.mItems.get(itemIndex);
                }
                if (pos == ii.position) {
                    drawAt = (ii.offset + ii.widthFactor) * ((float) width);
                    offset = (ii.offset + ii.widthFactor) + marginOffset;
                } else {
                    float widthFactor = this.mAdapter.getPageWidth(pos);
                    drawAt = (offset + widthFactor) * ((float) width);
                    offset += widthFactor + marginOffset;
                }
                if (((float) this.mPageMargin) + drawAt > ((float) scrollX)) {
                    this.mMarginDrawable.setBounds((int) (drawAt - 1.0f), this.mTopPageBounds, (int) ((((float) this.mPageMargin) + drawAt) + 1.0f), this.mBottomPageBounds);
                    this.mMarginDrawable.draw(canvas);
                }
                if (drawAt > ((float) (scrollX + width))) {
                    break;
                }
            }
        }
        super.onDraw(canvas);
    }

    private void onSecondaryPointerUp(MotionEvent ev) {
        int pointerIndex = ev.getActionIndex();
        if (ev.getPointerId(pointerIndex) == this.mActivePointerId) {
            int newPointerIndex = pointerIndex == 0 ? 1 : 0;
            this.mLastMotionX = ev.getX(newPointerIndex);
            this.mActivePointerId = ev.getPointerId(newPointerIndex);
            if (this.mVelocityTracker != null) {
                this.mVelocityTracker.clear();
            }
        }
    }

    private void endDrag() {
        this.mIsBeingDragged = false;
        this.mIsUnableToDrag = false;
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private void setScrollingCacheEnabled(boolean enabled) {
        if (this.mScrollingCacheEnabled != enabled) {
            this.mScrollingCacheEnabled = enabled;
        }
    }

    protected boolean canScroll(View v, boolean checkV, int dx, int x, int y) {
        if (v instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) v;
            int scrollX = v.getScrollX();
            int scrollY = v.getScrollY();
            for (int i = group.getChildCount() - 1; i >= 0; i--) {
                View child = group.getChildAt(i);
                if (x + scrollX >= child.getLeft() && x + scrollX < child.getRight() && y + scrollY >= child.getTop() && y + scrollY < child.getBottom()) {
                    if (canScroll(child, true, dx, (x + scrollX) - child.getLeft(), (y + scrollY) - child.getTop())) {
                        return true;
                    }
                }
            }
        }
        return checkV && v.canScrollHorizontally(-dx);
    }

    public boolean dispatchKeyEvent(KeyEvent event) {
        return super.dispatchKeyEvent(event) || executeKeyEvent(event);
    }

    public boolean executeKeyEvent(KeyEvent event) {
        if (event.getAction() != 0) {
            return false;
        }
        switch (event.getKeyCode()) {
            case 21:
                return arrowScroll(17);
            case 22:
                return arrowScroll(66);
            case 61:
                if (VERSION.SDK_INT < 11) {
                    return false;
                }
                if (event.hasNoModifiers()) {
                    return arrowScroll(2);
                }
                if (event.hasModifiers(1)) {
                    return arrowScroll(1);
                }
                return false;
            default:
                return false;
        }
    }

    public boolean arrowScroll(int direction) {
        View currentFocused = findFocus();
        if (currentFocused == this) {
            currentFocused = null;
        }
        boolean handled = false;
        View nextFocused = FocusFinder.getInstance().findNextFocus(this, currentFocused, direction);
        if (nextFocused == null || nextFocused == currentFocused) {
            if (direction == 17 || direction == 1) {
                handled = pageLeft();
            } else if (direction == 66 || direction == 2) {
                handled = pageRight();
            }
        } else if (direction == 17) {
            handled = (currentFocused == null || getChildRectInPagerCoordinates(this.mTempRect, nextFocused).left < getChildRectInPagerCoordinates(this.mTempRect, currentFocused).left) ? nextFocused.requestFocus() : pageLeft();
        } else if (direction == 66) {
            handled = (currentFocused == null || getChildRectInPagerCoordinates(this.mTempRect, nextFocused).left > getChildRectInPagerCoordinates(this.mTempRect, currentFocused).left) ? nextFocused.requestFocus() : pageRight();
        }
        if (handled) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(direction));
        }
        return handled;
    }

    private Rect getChildRectInPagerCoordinates(Rect outRect, View child) {
        if (outRect == null) {
            outRect = new Rect();
        }
        if (child == null) {
            outRect.set(0, 0, 0, 0);
        } else {
            outRect.left = child.getLeft();
            outRect.right = child.getRight();
            outRect.top = child.getTop();
            outRect.bottom = child.getBottom();
            ViewGroup parent = child.getParent();
            while ((parent instanceof ViewGroup) && parent != this) {
                ViewGroup group = parent;
                outRect.left += group.getLeft();
                outRect.right += group.getRight();
                outRect.top += group.getTop();
                outRect.bottom += group.getBottom();
                parent = group.getParent();
            }
        }
        return outRect;
    }

    boolean pageLeft() {
        if (this.mCurItem <= 0) {
            return false;
        }
        setCurrentItem(this.mCurItem - 1, true);
        return true;
    }

    boolean pageRight() {
        if (this.mAdapter == null || this.mCurItem >= this.mAdapter.getCount() - 1) {
            return false;
        }
        setCurrentItem(this.mCurItem + 1, true);
        return true;
    }

    public void addFocusables(ArrayList<View> views, int direction, int focusableMode) {
        if (views != null) {
            int focusableCount = views.size();
            int descendantFocusability = getDescendantFocusability();
            if (descendantFocusability != 393216) {
                for (int i = 0; i < getChildCount(); i++) {
                    View child = getChildAt(i);
                    if (child.getVisibility() == 0) {
                        ItemInfo ii = infoForChild(child);
                        if (ii != null && ii.position == this.mCurItem) {
                            child.addFocusables(views, direction, focusableMode);
                        }
                    }
                }
            }
            if ((descendantFocusability == nexEngine.ExportHEVCMainTierLevel52 && focusableCount != views.size()) || !isFocusable()) {
                return;
            }
            if ((focusableMode & 1) != 1 || !isInTouchMode() || isFocusableInTouchMode()) {
                views.add(this);
            }
        }
    }

    public void addTouchables(ArrayList<View> views) {
        for (int i = 0; i < getChildCount(); i++) {
            View child = getChildAt(i);
            if (child.getVisibility() == 0) {
                ItemInfo ii = infoForChild(child);
                if (ii != null && ii.position == this.mCurItem) {
                    child.addTouchables(views);
                }
            }
        }
    }

    protected boolean onRequestFocusInDescendants(int direction, Rect previouslyFocusedRect) {
        int index;
        int increment;
        int end;
        int count = getChildCount();
        if ((direction & 2) != 0) {
            index = 0;
            increment = 1;
            end = count;
        } else {
            index = count - 1;
            increment = -1;
            end = -1;
        }
        for (int i = index; i != end; i += increment) {
            View child = getChildAt(i);
            if (child.getVisibility() == 0) {
                ItemInfo ii = infoForChild(child);
                if (ii != null && ii.position == this.mCurItem && child.requestFocus(direction, previouslyFocusedRect)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent event) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = getChildAt(i);
            if (child.getVisibility() == 0) {
                ItemInfo ii = infoForChild(child);
                if (ii != null && ii.position == this.mCurItem && child.dispatchPopulateAccessibilityEvent(event)) {
                    return true;
                }
            }
        }
        return false;
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams p) {
        return generateDefaultLayoutParams();
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams p) {
        return (p instanceof LayoutParams) && super.checkLayoutParams(p);
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(getContext(), attrs);
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent event) {
        super.onInitializeAccessibilityEvent(event);
        event.setClassName(ViewPager.class.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        boolean z = true;
        super.onInitializeAccessibilityNodeInfo(info);
        info.setClassName(ViewPager.class.getName());
        if (this.mAdapter == null || this.mAdapter.getCount() <= 1) {
            z = false;
        }
        info.setScrollable(z);
        if (this.mAdapter != null && this.mCurItem >= 0 && this.mCurItem < this.mAdapter.getCount() - 1) {
            info.addAction(4096);
        }
        if (this.mAdapter != null && this.mCurItem > 0 && this.mCurItem < this.mAdapter.getCount()) {
            info.addAction(8192);
        }
    }

    public boolean performAccessibilityAction(int action, Bundle args) {
        if (super.performAccessibilityAction(action, args)) {
            return true;
        }
        switch (action) {
            case 4096:
                if (this.mAdapter == null || this.mCurItem < 0 || this.mCurItem >= this.mAdapter.getCount() - 1) {
                    return false;
                }
                setCurrentItem(this.mCurItem + 1);
                return true;
            case 8192:
                if (this.mAdapter == null || this.mCurItem <= 0 || this.mCurItem >= this.mAdapter.getCount()) {
                    return false;
                }
                setCurrentItem(this.mCurItem - 1);
                return true;
            default:
                return false;
        }
    }

    public void setDraggable(boolean enabled) {
        this.mDragEnabled = enabled;
    }

    public void setBottomMarginProgress(float progress) {
        this.mBottomMarginProgress = progress;
        this.mForceReplayout = true;
        requestLayout();
        invalidate();
    }
}
