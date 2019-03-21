package com.tonicartos.widget.stickygridheaders;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.util.ArrayMap;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.google.common.collect.Lists;
import com.miui.gallery.R;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.photoview.ScrollableView;
import com.miui.gallery.view.GestureDetector;
import com.miui.gallery.view.GestureDetector.OnGestureListener;
import com.miui.gallery.view.GestureDetector.SimpleOnGestureListener;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class StickyGridHeadersGridView extends GridView implements OnScrollListener, OnItemClickListener, OnItemLongClickListener, OnItemSelectedListener, ScrollableView {
    private static final String ERROR_PLATFORM = ("Error supporting platform " + VERSION.SDK_INT + ".");
    static final String TAG = StickyGridHeadersGridView.class.getSimpleName();
    protected StickyGridHeadersBaseAdapterWrapper mAdapter;
    private boolean mAreHeadersSticky;
    private boolean mClipToPaddingHasBeenSet;
    private final Rect mClippingRect;
    private boolean mClippingToPadding;
    private long mCurrentHeaderId;
    protected boolean mDataChanged;
    private DataSetObserver mDataSetObserver;
    private ArrayList<FixedViewInfo> mFooterViewInfos;
    private GestureDetector mGestureDetector;
    OnGestureListener mGestureListener;
    private int mHeaderBottomPosition;
    boolean mHeaderChildBeingPressed;
    private ArrayList<FixedViewInfo> mHeaderViewInfos;
    private boolean mHeadersIgnorePadding;
    private int mHorizontalSpacing;
    private boolean mMaskStickyHeaderRegion;
    protected int mMotionHeaderPosition;
    private float mMotionY;
    private OnHeaderClickListener mOnHeaderClickListener;
    private OnHeaderLongClickListener mOnHeaderLongClickListener;
    private OnItemClickListener mOnItemClickListener;
    private OnItemLongClickListener mOnItemLongClickListener;
    private OnItemSelectedListener mOnItemSelectedListener;
    public CheckForHeaderLongPress mPendingCheckForLongPress;
    public CheckForHeaderTap mPendingCheckForTap;
    private PerformHeaderClick mPerformHeaderClick;
    private int mPreScrollState;
    private ListAdapter mRealAdapter;
    private int mRequestedNumColumns;
    private OnScrollListener mScrollListener;
    private int mScrollState;
    private View mStickiedHeader;
    private int mStickyHeaderBackgroundAlpha;
    private Drawable mStickyHeaderBackgroundDrawable;
    protected int mTouchMode;
    private Runnable mTouchModeReset;
    private int mTouchSlop;
    private int mVerticalSpacing;

    private class WindowRunnable {
        private int mOriginalAttachCount;

        private WindowRunnable() {
        }

        /* synthetic */ WindowRunnable(StickyGridHeadersGridView x0, AnonymousClass1 x1) {
            this();
        }

        public void rememberWindowAttachCount() {
            this.mOriginalAttachCount = StickyGridHeadersGridView.this.getWindowAttachCount();
        }

        public boolean sameWindow() {
            return StickyGridHeadersGridView.this.hasWindowFocus() && StickyGridHeadersGridView.this.getWindowAttachCount() == this.mOriginalAttachCount;
        }
    }

    private class CheckForHeaderLongPress extends WindowRunnable implements Runnable {
        private CheckForHeaderLongPress() {
            super(StickyGridHeadersGridView.this, null);
        }

        /* synthetic */ CheckForHeaderLongPress(StickyGridHeadersGridView x0, AnonymousClass1 x1) {
            this();
        }

        public void run() {
            View child = StickyGridHeadersGridView.this.getHeaderAt(StickyGridHeadersGridView.this.mMotionHeaderPosition);
            if (child != null) {
                if (!(sameWindow() && StickyGridHeadersGridView.this.mDataChanged)) {
                }
                if (false) {
                    StickyGridHeadersGridView.this.mTouchMode = -2;
                    StickyGridHeadersGridView.this.setPressed(false);
                    child.setPressed(false);
                    return;
                }
                StickyGridHeadersGridView.this.mTouchMode = 2;
            }
        }
    }

    final class CheckForHeaderTap implements Runnable {
        CheckForHeaderTap() {
        }

        public void run() {
            if (StickyGridHeadersGridView.this.mTouchMode == 0) {
                StickyGridHeadersGridView.this.mTouchMode = 1;
                View header = StickyGridHeadersGridView.this.getHeaderAt(StickyGridHeadersGridView.this.mMotionHeaderPosition);
                if (header != null && !StickyGridHeadersGridView.this.mHeaderChildBeingPressed) {
                    if (StickyGridHeadersGridView.this.mDataChanged) {
                        StickyGridHeadersGridView.this.mTouchMode = 2;
                        return;
                    }
                    header.setPressed(true);
                    StickyGridHeadersGridView.this.setPressed(true);
                    StickyGridHeadersGridView.this.refreshDrawableState();
                    int longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    if (StickyGridHeadersGridView.this.isLongClickable()) {
                        if (StickyGridHeadersGridView.this.mPendingCheckForLongPress == null) {
                            StickyGridHeadersGridView.this.mPendingCheckForLongPress = new CheckForHeaderLongPress(StickyGridHeadersGridView.this, null);
                        }
                        StickyGridHeadersGridView.this.mPendingCheckForLongPress.rememberWindowAttachCount();
                        StickyGridHeadersGridView.this.postDelayed(StickyGridHeadersGridView.this.mPendingCheckForLongPress, (long) longPressTimeout);
                        return;
                    }
                    StickyGridHeadersGridView.this.mTouchMode = 2;
                }
            }
        }
    }

    public class FixedViewInfo {
        public Object data;
        public View view;
    }

    public interface OnHeaderClickListener {
        void onHeaderClick(AdapterView<?> adapterView, View view, long j);
    }

    public interface OnHeaderLongClickListener {
    }

    private class PerformHeaderClick extends WindowRunnable implements Runnable {
        int mClickMotionPosition;

        private PerformHeaderClick() {
            super(StickyGridHeadersGridView.this, null);
        }

        /* synthetic */ PerformHeaderClick(StickyGridHeadersGridView x0, AnonymousClass1 x1) {
            this();
        }

        public void run() {
            if (!StickyGridHeadersGridView.this.mDataChanged && StickyGridHeadersGridView.this.mAdapter != null && StickyGridHeadersGridView.this.mAdapter.getCount() > 0 && this.mClickMotionPosition != -1 && this.mClickMotionPosition < StickyGridHeadersGridView.this.mAdapter.getCount() && sameWindow()) {
                View view = StickyGridHeadersGridView.this.getHeaderAt(this.mClickMotionPosition);
                if (view != null) {
                    StickyGridHeadersGridView.this.performHeaderClick(view, StickyGridHeadersGridView.this.headerViewPositionToId(this.mClickMotionPosition));
                }
            }
        }
    }

    class RuntimePlatformSupportException extends RuntimeException {
        private static final long serialVersionUID = -6512098808936536538L;

        public RuntimePlatformSupportException(Exception e) {
            super(StickyGridHeadersGridView.ERROR_PLATFORM, e);
        }
    }

    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            public SavedState createFromParcel(Parcel in) {
                return new SavedState(in, null);
            }

            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        };
        boolean areHeadersSticky;

        /* synthetic */ SavedState(Parcel x0, AnonymousClass1 x1) {
            this(x0);
        }

        public SavedState(Parcelable superState) {
            super(superState);
        }

        private SavedState(Parcel in) {
            super(in);
            this.areHeadersSticky = in.readByte() != (byte) 0;
        }

        public String toString() {
            return "StickyGridHeadersGridView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " areHeadersSticky=" + this.areHeadersSticky + "}";
        }

        public void writeToParcel(Parcel out, int flags) {
            super.writeToParcel(out, flags);
            out.writeByte((byte) (this.areHeadersSticky ? 1 : 0));
        }
    }

    public StickyGridHeadersGridView(Context context) {
        this(context, null);
    }

    public StickyGridHeadersGridView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public StickyGridHeadersGridView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mAreHeadersSticky = true;
        this.mClippingRect = new Rect();
        this.mCurrentHeaderId = -1;
        this.mDataSetObserver = new DataSetObserver() {
            public void onChanged() {
                StickyGridHeadersGridView.this.reset();
            }

            public void onInvalidated() {
                StickyGridHeadersGridView.this.reset();
            }
        };
        this.mMaskStickyHeaderRegion = false;
        this.mStickyHeaderBackgroundAlpha = 250;
        this.mPreScrollState = 0;
        this.mScrollState = 0;
        this.mHeaderChildBeingPressed = false;
        this.mHeaderViewInfos = Lists.newArrayList();
        this.mFooterViewInfos = Lists.newArrayList();
        this.mGestureListener = new SimpleOnGestureListener() {
            public boolean onSingleTapUp(MotionEvent ev) {
                Log.d(StickyGridHeadersGridView.TAG, "onSingleTapUp mPreScrollState %s, mScrollState %s", Integer.valueOf(StickyGridHeadersGridView.this.mPreScrollState), Integer.valueOf(StickyGridHeadersGridView.this.mScrollState));
                if (StickyGridHeadersGridView.this.mPreScrollState == 0 || StickyGridHeadersGridView.this.mScrollState != 0) {
                    int motionPosition = StickyGridHeadersGridView.this.pointToPosition((int) ev.getX(), (int) ev.getY());
                    if (motionPosition != -1 && motionPosition < StickyGridHeadersGridView.this.mAdapter.getCount() && StickyGridHeadersGridView.this.mAdapter.isEnabled(motionPosition)) {
                        View view = StickyGridHeadersGridView.this.getChildAt(motionPosition - StickyGridHeadersGridView.this.getFirstVisiblePosition());
                        if (view != null) {
                            StickyGridHeadersGridView.this.onItemClick(StickyGridHeadersGridView.this, view, motionPosition, StickyGridHeadersGridView.this.mAdapter.getItemId(motionPosition));
                        }
                    }
                }
                return super.onSingleTapUp(ev);
            }
        };
        super.setOnScrollListener(this);
        setVerticalFadingEdgeEnabled(false);
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    public View getHeaderAt(int position) {
        if (position == -2) {
            return this.mStickiedHeader;
        }
        try {
            return (View) getChildAt(position).getTag();
        } catch (Exception e) {
            return null;
        }
    }

    public View getStickiedHeader() {
        return this.mStickiedHeader;
    }

    public boolean getStickyHeaderIsTranscluent() {
        return !this.mMaskStickyHeaderRegion;
    }

    public int getRequestedNumColumns() {
        return this.mRequestedNumColumns;
    }

    public void setNumColumns(int numColumns) {
        super.setNumColumns(numColumns);
        this.mRequestedNumColumns = numColumns;
    }

    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        int pos = this.mAdapter.translatePosition(position).mPosition;
        if (pos < 0) {
            Log.d(TAG, "position is invalid, skip");
        } else if (this.mOnItemClickListener != null) {
            this.mOnItemClickListener.onItemClick(parent, view, pos, id);
        }
    }

    public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id) {
        int pos = this.mAdapter.translatePosition(position).mPosition;
        if (pos >= 0) {
            return this.mOnItemLongClickListener.onItemLongClick(parent, view, pos, id);
        }
        Log.d(TAG, "position is invalid, skip");
        return true;
    }

    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
        int pos = this.mAdapter.translatePosition(position).mPosition;
        if (pos < 0) {
            Log.d(TAG, "position is invalid, skip");
        }
        this.mOnItemSelectedListener.onItemSelected(parent, view, pos, id);
    }

    public void onNothingSelected(AdapterView<?> parent) {
        this.mOnItemSelectedListener.onNothingSelected(parent);
    }

    public void onRestoreInstanceState(Parcelable state) {
        SavedState ss = (SavedState) state;
        super.onRestoreInstanceState(ss.getSuperState());
        this.mAreHeadersSticky = ss.areHeadersSticky;
        requestLayout();
    }

    public Parcelable onSaveInstanceState() {
        SavedState ss = new SavedState(super.onSaveInstanceState());
        ss.areHeadersSticky = this.mAreHeadersSticky;
        return ss;
    }

    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        if (!(this.mScrollListener == null || this.mAdapter == null)) {
            VisibleInfo info = this.mAdapter.translateVisibleInfo(firstVisibleItem, visibleItemCount);
            this.mScrollListener.onScroll(view, info.mFirstPosition, info.mVisibleCount, this.mRealAdapter.getCount());
        }
        if (VERSION.SDK_INT >= 8) {
            scrollChanged(firstVisibleItem);
        }
    }

    public void onScrollStateChanged(AbsListView view, int scrollState) {
        if (this.mScrollListener != null) {
            this.mScrollListener.onScrollStateChanged(view, scrollState);
        }
        Log.d(TAG, "scrollState changed %s", Integer.valueOf(scrollState));
        this.mScrollState = scrollState;
    }

    public boolean onInterceptTouchEvent(MotionEvent ev) {
        switch (ev.getActionMasked()) {
            case 0:
                int headerPosition = findMotionHeader((float) ((int) ev.getY()));
                if (!(headerPosition == -1 || this.mScrollState == 2)) {
                    View tempHeader = getHeaderAt(headerPosition);
                    if (tempHeader != null && tempHeader.dispatchTouchEvent(transformEvent(ev, headerPosition))) {
                        Log.d(TAG, "header child handled event");
                        return true;
                    }
                }
        }
        return super.onInterceptTouchEvent(ev);
    }

    public boolean onTouchEvent(MotionEvent ev) {
        View tempHeader;
        int action = ev.getAction();
        boolean wasHeaderChildBeingPressed = this.mHeaderChildBeingPressed;
        if (this.mHeaderChildBeingPressed) {
            View headerHolder;
            tempHeader = getHeaderAt(this.mMotionHeaderPosition);
            if (this.mMotionHeaderPosition == -2) {
                headerHolder = tempHeader;
            } else {
                headerHolder = getChildAt(this.mMotionHeaderPosition);
            }
            if (action == 1 || action == 3) {
                this.mHeaderChildBeingPressed = false;
            }
            if (tempHeader != null) {
                tempHeader.dispatchTouchEvent(transformEvent(ev, this.mMotionHeaderPosition));
                tempHeader.invalidate();
                tempHeader.postDelayed(new Runnable() {
                    public void run() {
                        StickyGridHeadersGridView.this.invalidate(0, headerHolder.getTop(), StickyGridHeadersGridView.this.getWidth(), headerHolder.getTop() + headerHolder.getHeight());
                    }
                }, (long) ViewConfiguration.getPressedStateDuration());
                invalidate(0, headerHolder.getTop(), getWidth(), headerHolder.getTop() + headerHolder.getHeight());
            }
        }
        final View header;
        Handler handler;
        switch (action & 255) {
            case 0:
                if (this.mPendingCheckForTap == null) {
                    this.mPendingCheckForTap = new CheckForHeaderTap();
                }
                postDelayed(this.mPendingCheckForTap, (long) ViewConfiguration.getTapTimeout());
                int y = (int) ev.getY();
                this.mMotionY = (float) y;
                this.mMotionHeaderPosition = findMotionHeader((float) y);
                if (!(this.mMotionHeaderPosition == -1 || this.mScrollState == 2)) {
                    tempHeader = getHeaderAt(this.mMotionHeaderPosition);
                    if (tempHeader != null) {
                        if (tempHeader.dispatchTouchEvent(transformEvent(ev, this.mMotionHeaderPosition))) {
                            this.mHeaderChildBeingPressed = true;
                            tempHeader.setPressed(true);
                        }
                        tempHeader.invalidate();
                        if (this.mMotionHeaderPosition != -2) {
                            tempHeader = getChildAt(this.mMotionHeaderPosition);
                        }
                        invalidate(0, tempHeader.getTop(), getWidth(), tempHeader.getTop() + tempHeader.getHeight());
                    }
                    this.mTouchMode = 0;
                    return true;
                }
            case 1:
                if (this.mTouchMode == -2) {
                    this.mTouchMode = -1;
                    return true;
                } else if (!(this.mTouchMode == -1 || this.mMotionHeaderPosition == -1)) {
                    header = getHeaderAt(this.mMotionHeaderPosition);
                    Log.d(TAG, "wasHeaderChildBeingPressed %s", Boolean.valueOf(wasHeaderChildBeingPressed));
                    if (!wasHeaderChildBeingPressed) {
                        if (header != null) {
                            if (this.mTouchMode != 0) {
                                header.setPressed(false);
                            }
                            if (this.mPerformHeaderClick == null) {
                                this.mPerformHeaderClick = new PerformHeaderClick(this, null);
                            }
                            final PerformHeaderClick performHeaderClick = this.mPerformHeaderClick;
                            performHeaderClick.mClickMotionPosition = this.mMotionHeaderPosition;
                            performHeaderClick.rememberWindowAttachCount();
                            if (this.mTouchMode == 0 || this.mTouchMode == 1) {
                                handler = getHandler();
                                if (handler != null) {
                                    handler.removeCallbacks(this.mTouchMode == 0 ? this.mPendingCheckForTap : this.mPendingCheckForLongPress);
                                }
                                if (this.mDataChanged) {
                                    this.mTouchMode = -1;
                                } else {
                                    this.mTouchMode = 1;
                                    header.setPressed(true);
                                    setPressed(true);
                                    if (this.mTouchModeReset != null) {
                                        removeCallbacks(this.mTouchModeReset);
                                    }
                                    this.mTouchModeReset = new Runnable() {
                                        public void run() {
                                            StickyGridHeadersGridView.this.mMotionHeaderPosition = -1;
                                            StickyGridHeadersGridView.this.mTouchModeReset = null;
                                            StickyGridHeadersGridView.this.mTouchMode = -1;
                                            header.setPressed(false);
                                            StickyGridHeadersGridView.this.setPressed(false);
                                            header.invalidate();
                                            StickyGridHeadersGridView.this.invalidate(0, header.getTop(), StickyGridHeadersGridView.this.getWidth(), header.getHeight());
                                            if (!StickyGridHeadersGridView.this.mDataChanged) {
                                                performHeaderClick.run();
                                            }
                                        }
                                    };
                                    postDelayed(this.mTouchModeReset, (long) ViewConfiguration.getPressedStateDuration());
                                }
                            } else if (!this.mDataChanged) {
                                performHeaderClick.run();
                            }
                        }
                        this.mTouchMode = -1;
                        break;
                    }
                    this.mTouchMode = -1;
                    return true;
                }
                break;
            case 2:
                if (this.mMotionHeaderPosition != -1 && Math.abs(ev.getY() - this.mMotionY) > ((float) this.mTouchSlop)) {
                    this.mTouchMode = -1;
                    header = getHeaderAt(this.mMotionHeaderPosition);
                    if (header != null) {
                        header.setPressed(false);
                        header.invalidate();
                    }
                    handler = getHandler();
                    if (handler != null) {
                        handler.removeCallbacks(this.mPendingCheckForLongPress);
                    }
                    this.mMotionHeaderPosition = -1;
                    break;
                }
        }
        this.mPreScrollState = this.mScrollState;
        boolean handled = super.onTouchEvent(ev);
        this.mGestureDetector.onTouchEvent(ev);
        return handled;
    }

    public boolean performHeaderClick(View view, long id) {
        if (this.mOnHeaderClickListener == null) {
            return false;
        }
        playSoundEffect(0);
        if (view != null) {
            view.sendAccessibilityEvent(1);
        }
        this.mOnHeaderClickListener.onHeaderClick(this, view, id);
        return true;
    }

    public void setAdapter(ListAdapter adapter) {
        if (this.mRealAdapter != adapter) {
            StickyGridHeadersBaseAdapter baseAdapter;
            if (!(this.mAdapter == null || this.mDataSetObserver == null)) {
                this.mAdapter.unregisterDataSetObserver(this.mDataSetObserver);
            }
            if (!this.mClipToPaddingHasBeenSet) {
                this.mClippingToPadding = true;
            }
            this.mRealAdapter = adapter;
            if (adapter instanceof StickyGridHeadersBaseAdapter) {
                baseAdapter = (StickyGridHeadersBaseAdapter) adapter;
            } else if (adapter instanceof StickyGridHeadersSimpleAdapter) {
                baseAdapter = new StickyGridHeadersSimpleAdapterWrapper((StickyGridHeadersSimpleAdapter) adapter);
            } else {
                baseAdapter = new StickyGridHeadersListAdapterWrapper(adapter);
            }
            this.mAdapter = new StickyGridHeadersBaseAdapterWrapper(getContext(), this, baseAdapter, this.mHeaderViewInfos, this.mFooterViewInfos);
            this.mAdapter.registerDataSetObserver(this.mDataSetObserver);
            reset();
            super.setAdapter(this.mAdapter);
        }
    }

    public ListAdapter getRealAdapter() {
        return this.mRealAdapter;
    }

    public void setAreHeadersSticky(boolean useStickyHeaders) {
        if (useStickyHeaders != this.mAreHeadersSticky) {
            this.mAreHeadersSticky = useStickyHeaders;
            requestLayout();
        }
    }

    public void setClipToPadding(boolean clipToPadding) {
        super.setClipToPadding(clipToPadding);
        this.mClippingToPadding = clipToPadding;
        this.mClipToPaddingHasBeenSet = true;
    }

    public void setHeadersIgnorePadding(boolean b) {
        this.mHeadersIgnorePadding = b;
    }

    public void setHorizontalSpacing(int horizontalSpacing) {
        super.setHorizontalSpacing(horizontalSpacing);
        this.mHorizontalSpacing = horizontalSpacing;
    }

    public void setOnHeaderClickListener(OnHeaderClickListener listener) {
        this.mOnHeaderClickListener = listener;
    }

    public void setOnHeaderLongClickListener(OnHeaderLongClickListener listener) {
        if (!isLongClickable()) {
            setLongClickable(true);
        }
        this.mOnHeaderLongClickListener = listener;
    }

    public void setOnItemClickListener(OnItemClickListener listener) {
        this.mOnItemClickListener = listener;
        super.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                if (VERSION.SDK_INT >= 26 && view.isAccessibilityFocused()) {
                    StickyGridHeadersGridView.this.onItemClick(parent, view, position, id);
                }
            }
        });
    }

    public void setOnItemLongClickListener(OnItemLongClickListener listener) {
        this.mOnItemLongClickListener = listener;
        super.setOnItemLongClickListener(this);
    }

    public void setOnItemSelectedListener(OnItemSelectedListener listener) {
        this.mOnItemSelectedListener = listener;
        super.setOnItemSelectedListener(this);
    }

    public void setOnScrollListener(OnScrollListener listener) {
        this.mScrollListener = listener;
    }

    public void setStickyHeaderIsTranscluent(boolean isTranscluent) {
        this.mMaskStickyHeaderRegion = !isTranscluent;
    }

    public void setStickyHeaderIsTranscluent(int alpha) {
        if (alpha < 0 || alpha > 255) {
            throw new IllegalArgumentException("The value of alpha out of range.");
        }
        this.mMaskStickyHeaderRegion = false;
        this.mStickyHeaderBackgroundAlpha = alpha;
    }

    public void setStickyHeaderBackgroundDrawable(Drawable bg) {
        this.mStickyHeaderBackgroundDrawable = bg;
    }

    public void setVerticalSpacing(int verticalSpacing) {
        super.setVerticalSpacing(verticalSpacing);
        this.mVerticalSpacing = verticalSpacing;
    }

    private int findMotionHeader(float y) {
        if (this.mStickiedHeader != null && y <= ((float) this.mHeaderBottomPosition)) {
            return -2;
        }
        int vi = 0;
        int i = getFirstVisiblePosition();
        while (i <= getLastVisiblePosition()) {
            if (getItemIdAtPosition(i) == -1) {
                View headerWrapper = getChildAt(vi);
                int bottom = headerWrapper.getBottom();
                int top = headerWrapper.getTop();
                if (y <= ((float) bottom) && y >= ((float) top)) {
                    return vi;
                }
            }
            i += getNumColumns();
            vi += getNumColumns();
        }
        return -1;
    }

    public int getGroupItemsCount(int headerIndex) {
        return this.mAdapter.getCountForHeader(headerIndex);
    }

    public int getGroupItemStartIndex(int headerIndex) {
        return this.mAdapter.getGroupItemStartIndex(headerIndex);
    }

    public View getChildViewByItemIndex(int itemIndex) {
        int position = this.mAdapter.getItemPositionByItemIndex(itemIndex);
        if (position - super.getFirstVisiblePosition() < 0 || position > super.getLastVisiblePosition()) {
            return null;
        }
        return getChildAt(position - super.getFirstVisiblePosition());
    }

    public int getItemIndexByItemPosition(int itemPosition) {
        return this.mAdapter.translatePosition(itemPosition).mPosition;
    }

    public int getGroupIndexByItemIndex(int itemIndex) {
        return this.mAdapter.getGroupIndexByItemIndex(itemIndex);
    }

    public int getHeaderNum() {
        return this.mAdapter.getHeaderNum();
    }

    public void notifyChanged() {
        this.mAdapter.notifyDataSetChanged();
    }

    private int getHeaderHeight() {
        if (this.mStickiedHeader != null) {
            return this.mStickiedHeader.getMeasuredHeight();
        }
        return 0;
    }

    private long headerViewPositionToId(int pos) {
        if (pos == -2) {
            return this.mCurrentHeaderId;
        }
        return this.mAdapter.getHeaderId(getFirstVisiblePosition() + pos);
    }

    private void measureHeader() {
        if (this.mStickiedHeader != null) {
            int widthMeasureSpec;
            int heightMeasureSpec;
            if (this.mHeadersIgnorePadding) {
                widthMeasureSpec = MeasureSpec.makeMeasureSpec(getWidth(), 1073741824);
            } else {
                widthMeasureSpec = MeasureSpec.makeMeasureSpec((getWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824);
            }
            LayoutParams params = this.mStickiedHeader.getLayoutParams();
            if (params == null || params.height <= 0) {
                heightMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
            } else {
                heightMeasureSpec = MeasureSpec.makeMeasureSpec(params.height, 1073741824);
            }
            this.mStickiedHeader.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
            this.mStickiedHeader.measure(widthMeasureSpec, heightMeasureSpec);
            if (this.mHeadersIgnorePadding) {
                this.mStickiedHeader.layout(getLeft(), 0, getRight(), this.mStickiedHeader.getMeasuredHeight());
            } else {
                this.mStickiedHeader.layout(getLeft() + getPaddingLeft(), 0, getRight() - getPaddingRight(), this.mStickiedHeader.getMeasuredHeight());
            }
        }
    }

    private void reset() {
        this.mHeaderBottomPosition = 0;
        swapStickiedHeader(null);
        this.mCurrentHeaderId = Long.MIN_VALUE;
    }

    private void scrollChanged(int firstVisibleItem) {
        if (this.mAdapter != null && this.mAdapter.getCount() != 0 && this.mAreHeadersSticky && getChildAt(0) != null) {
            if (this.mAdapter.getHeaderId(firstVisibleItem) < ((long) this.mHeaderViewInfos.size())) {
                this.mCurrentHeaderId = -1;
                this.mStickiedHeader = null;
                return;
            }
            long newHeaderId;
            int columns = getNumColumns();
            int selectedHeaderPosition = firstVisibleItem;
            int beforeRowPosition = firstVisibleItem - columns;
            if (beforeRowPosition < 0) {
                beforeRowPosition = firstVisibleItem;
            }
            int secondRowPosition = firstVisibleItem + columns;
            if (secondRowPosition >= this.mAdapter.getCount()) {
                secondRowPosition = firstVisibleItem;
            }
            if (this.mVerticalSpacing == 0) {
                newHeaderId = this.mAdapter.getHeaderId(firstVisibleItem);
            } else if (this.mVerticalSpacing < 0) {
                newHeaderId = this.mAdapter.getHeaderId(firstVisibleItem);
                if (getChildAt(columns).getTop() <= 0) {
                    newHeaderId = this.mAdapter.getHeaderId(secondRowPosition);
                    selectedHeaderPosition = secondRowPosition;
                } else {
                    newHeaderId = this.mAdapter.getHeaderId(firstVisibleItem);
                }
            } else {
                int margin = getChildAt(0).getTop();
                if (margin <= 0 || margin >= this.mVerticalSpacing) {
                    newHeaderId = this.mAdapter.getHeaderId(firstVisibleItem);
                } else {
                    newHeaderId = this.mAdapter.getHeaderId(beforeRowPosition);
                    selectedHeaderPosition = beforeRowPosition;
                }
            }
            if (this.mCurrentHeaderId != newHeaderId) {
                swapStickiedHeader(this.mAdapter.getHeaderView(selectedHeaderPosition, this.mStickiedHeader, this));
                measureHeader();
                this.mCurrentHeaderId = newHeaderId;
            }
            int childCount = getChildCount();
            if (childCount != 0) {
                View viewToWatch = null;
                int watchingChildDistance = 99999;
                for (int i = 0; i < childCount; i += columns) {
                    int childDistance;
                    View child = super.getChildAt(i);
                    if (this.mClippingToPadding) {
                        childDistance = child.getTop() - getPaddingTop();
                    } else {
                        childDistance = child.getTop();
                    }
                    if (childDistance >= 0 && this.mAdapter.getItemId(getPositionForView(child)) == -1 && childDistance < watchingChildDistance) {
                        viewToWatch = child;
                        watchingChildDistance = childDistance;
                    }
                }
                int headerHeight = getHeaderHeight();
                if (viewToWatch == null) {
                    this.mHeaderBottomPosition = headerHeight;
                    if (this.mClippingToPadding) {
                        this.mHeaderBottomPosition += getPaddingTop();
                    }
                } else if (firstVisibleItem == 0 && super.getChildAt(0).getTop() > 0 && !this.mClippingToPadding) {
                    this.mHeaderBottomPosition = 0;
                } else if (this.mClippingToPadding) {
                    this.mHeaderBottomPosition = Math.min(viewToWatch.getTop(), getPaddingTop() + headerHeight);
                    this.mHeaderBottomPosition = this.mHeaderBottomPosition < getPaddingTop() ? getPaddingTop() + headerHeight : this.mHeaderBottomPosition;
                } else {
                    this.mHeaderBottomPosition = Math.min(viewToWatch.getTop(), headerHeight);
                    if (this.mHeaderBottomPosition >= 0) {
                        headerHeight = this.mHeaderBottomPosition;
                    }
                    this.mHeaderBottomPosition = headerHeight;
                }
            }
        }
    }

    private void swapStickiedHeader(View newStickiedHeader) {
        detachHeader(this.mStickiedHeader);
        attachHeader(newStickiedHeader);
        this.mStickiedHeader = newStickiedHeader;
        if (this.mStickiedHeader != null) {
            if (this.mStickyHeaderBackgroundDrawable != null) {
                this.mStickiedHeader.setBackground(this.mStickyHeaderBackgroundDrawable);
            } else {
                this.mStickiedHeader.setBackgroundResource(R.drawable.sticky_header_bg);
            }
            if (getStickyHeaderIsTranscluent() && this.mStickiedHeader.getBackground() != null) {
                this.mStickiedHeader.getBackground().setAlpha(this.mStickyHeaderBackgroundAlpha);
            }
        }
    }

    private MotionEvent transformEvent(MotionEvent e, int headerPosition) {
        if (headerPosition == -2) {
            return e;
        }
        View headerHolder = getChildAt(headerPosition);
        MotionEvent n = MotionEvent.obtain(e);
        n.offsetLocation(0.0f, (float) (-headerHolder.getTop()));
        return n;
    }

    protected void dispatchDraw(Canvas canvas) {
        int widthMeasureSpec;
        int heightMeasureSpec;
        int wantedWidth;
        if (VERSION.SDK_INT < 8) {
            scrollChanged(getFirstVisiblePosition());
        }
        int columns = getNumColumns();
        boolean drawStickiedHeader = this.mStickiedHeader != null && this.mAreHeadersSticky && this.mStickiedHeader.getVisibility() == 0;
        int headerHeight = getHeaderHeight();
        int top = this.mHeaderBottomPosition - headerHeight;
        if (drawStickiedHeader && this.mMaskStickyHeaderRegion) {
            if (this.mHeadersIgnorePadding) {
                this.mClippingRect.left = 0;
                this.mClippingRect.right = getWidth();
            } else {
                this.mClippingRect.left = getPaddingLeft();
                this.mClippingRect.right = getWidth() - getPaddingRight();
            }
            this.mClippingRect.top = this.mHeaderBottomPosition;
            this.mClippingRect.bottom = getHeight();
            canvas.save();
            canvas.clipRect(this.mClippingRect);
        }
        super.dispatchDraw(canvas);
        ArrayMap<Integer, Integer> viewPositions = new ArrayMap();
        int vi = 0;
        int preAdapterCount = getAdapter() == null ? -1 : getAdapter().getCount();
        int preRealAdapterCount = getRealAdapter() == null ? -1 : getRealAdapter().getCount();
        int i = getFirstVisiblePosition();
        while (i <= getLastVisiblePosition()) {
            long id = getItemIdAtPosition(i);
            if (id == -1) {
                viewPositions.put(Integer.valueOf(vi), Integer.valueOf(0));
            } else if (id == -4) {
                viewPositions.put(Integer.valueOf(vi), Integer.valueOf(1));
            }
            i += columns;
            vi += columns;
        }
        i = 0;
        while (i < viewPositions.size()) {
            View frame = getChildAt(((Integer) viewPositions.keyAt(i)).intValue());
            try {
                View viewToDraw = (View) frame.getTag();
                if (viewToDraw == null) {
                    int layoutPos = ((Integer) viewPositions.keyAt(i)).intValue();
                    int adapterPos = getFirstVisiblePosition() + layoutPos;
                    String str = TAG;
                    String str2 = "view count [%d], adapter count[%d/%d], real adapter count[%d/%d]";
                    Object[] objArr = new Object[5];
                    objArr[0] = Integer.valueOf(getChildCount());
                    objArr[1] = Integer.valueOf(preAdapterCount);
                    objArr[2] = Integer.valueOf(getAdapter() == null ? -1 : getAdapter().getCount());
                    objArr[3] = Integer.valueOf(preRealAdapterCount);
                    objArr[4] = Integer.valueOf(getRealAdapter() == null ? -1 : getRealAdapter().getCount());
                    Log.i(str, str2, objArr);
                    Log.w(TAG, "current[layout: %d|adapter: %d] item is %s", Integer.valueOf(layoutPos), Integer.valueOf(adapterPos), getItemAtPosition(adapterPos) == null ? "null" : "not null");
                    String headerClassName = frame.getClass().getSimpleName();
                    String tagClassName = frame.getTag() != null ? frame.getTag().getClass().getSimpleName() : "null";
                    HashMap<String, String> params = new HashMap();
                    params.put("header_class/tag_class", headerClassName + "/" + tagClassName);
                    BaseSamplingStatHelper.recordErrorEvent("error_track", "sticky_grid_headers_get_tag_npe", params);
                } else if (viewToDraw.getVisibility() == 0) {
                    if (((Integer) viewPositions.valueAt(i)).intValue() == 0) {
                        boolean headerIsStickied = ((long) ((HeaderFillerView) frame).getHeaderId()) == this.mCurrentHeaderId && frame.getTop() < 0 && this.mAreHeadersSticky;
                        if (headerIsStickied) {
                        }
                    }
                    if (this.mHeadersIgnorePadding) {
                        widthMeasureSpec = MeasureSpec.makeMeasureSpec(getWidth(), 1073741824);
                    } else {
                        widthMeasureSpec = MeasureSpec.makeMeasureSpec((getWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824);
                    }
                    heightMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
                    viewToDraw.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
                    viewToDraw.measure(widthMeasureSpec, heightMeasureSpec);
                    if (this.mHeadersIgnorePadding) {
                        viewToDraw.layout(getLeft(), 0, getRight(), frame.getHeight());
                    } else {
                        viewToDraw.layout(getLeft() + getPaddingLeft(), 0, getRight() - getPaddingRight(), frame.getHeight());
                    }
                    if (this.mHeadersIgnorePadding) {
                        this.mClippingRect.left = 0;
                        this.mClippingRect.right = getWidth();
                    } else {
                        this.mClippingRect.left = getPaddingLeft();
                        this.mClippingRect.right = getWidth() - getPaddingRight();
                    }
                    this.mClippingRect.bottom = frame.getBottom();
                    this.mClippingRect.top = frame.getTop();
                    canvas.save();
                    canvas.clipRect(this.mClippingRect);
                    if (this.mHeadersIgnorePadding) {
                        canvas.translate(0.0f, (float) frame.getTop());
                    } else {
                        canvas.translate((float) getPaddingLeft(), (float) frame.getTop());
                    }
                    viewToDraw.draw(canvas);
                    canvas.restore();
                }
                i++;
            } catch (Exception e) {
                return;
            }
        }
        if (drawStickiedHeader && this.mMaskStickyHeaderRegion) {
            canvas.restore();
        } else if (!drawStickiedHeader) {
            return;
        }
        if (this.mHeadersIgnorePadding) {
            wantedWidth = getWidth();
        } else {
            wantedWidth = (getWidth() - getPaddingLeft()) - getPaddingRight();
        }
        if (this.mStickiedHeader.getWidth() != wantedWidth) {
            if (this.mHeadersIgnorePadding) {
                widthMeasureSpec = MeasureSpec.makeMeasureSpec(getWidth(), 1073741824);
            } else {
                widthMeasureSpec = MeasureSpec.makeMeasureSpec((getWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824);
            }
            LayoutParams params2 = this.mStickiedHeader.getLayoutParams();
            if (params2 == null || params2.height <= 0) {
                heightMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
            } else {
                heightMeasureSpec = MeasureSpec.makeMeasureSpec(params2.height, 1073741824);
            }
            this.mStickiedHeader.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
            this.mStickiedHeader.measure(widthMeasureSpec, heightMeasureSpec);
            if (this.mHeadersIgnorePadding) {
                this.mStickiedHeader.layout(getLeft(), 0, getRight(), this.mStickiedHeader.getHeight());
            } else {
                this.mStickiedHeader.layout(getLeft() + getPaddingLeft(), 0, getRight() - getPaddingRight(), this.mStickiedHeader.getHeight());
            }
        }
        if (this.mHeadersIgnorePadding) {
            this.mClippingRect.left = 0;
            this.mClippingRect.right = getWidth();
        } else {
            this.mClippingRect.left = getPaddingLeft();
            this.mClippingRect.right = getWidth() - getPaddingRight();
        }
        this.mClippingRect.bottom = top + headerHeight;
        if (this.mClippingToPadding) {
            this.mClippingRect.top = getPaddingTop();
        } else {
            this.mClippingRect.top = 0;
        }
        canvas.save();
        canvas.clipRect(this.mClippingRect);
        if (this.mHeadersIgnorePadding) {
            canvas.translate(0.0f, (float) top);
        } else {
            canvas.translate((float) getPaddingLeft(), (float) top);
        }
        if (!(getStickyHeaderIsTranscluent() || this.mHeaderBottomPosition == headerHeight)) {
            canvas.saveLayerAlpha(0.0f, 0.0f, (float) canvas.getWidth(), (float) canvas.getHeight(), (this.mHeaderBottomPosition * 255) / headerHeight, 31);
        }
        this.mStickiedHeader.draw(canvas);
        if (!(getStickyHeaderIsTranscluent() || this.mHeaderBottomPosition == headerHeight)) {
            canvas.restore();
        }
        canvas.restore();
    }

    public void addHeaderView(View v, Object data) {
        int len = this.mHeaderViewInfos.size();
        int i = 0;
        while (i < len) {
            if (((FixedViewInfo) this.mHeaderViewInfos.get(i)).view != v) {
                i++;
            } else {
                return;
            }
        }
        FixedViewInfo info = new FixedViewInfo();
        info.view = v;
        info.data = data;
        this.mHeaderViewInfos.add(info);
        attachHeader(v);
        if (this.mAdapter != null) {
            this.mAdapter.setHeader(this.mHeaderViewInfos);
            this.mAdapter.notifyDataSetChanged();
        }
    }

    public void addHeaderView(View v) {
        addHeaderView(v, null);
    }

    public int getHeaderViewCount() {
        return this.mHeaderViewInfos.size();
    }

    public boolean removeHeaderView(View v) {
        if (this.mHeaderViewInfos.isEmpty()) {
            return false;
        }
        if (this.mAdapter == null || !removeFixedViewInfo(v, this.mHeaderViewInfos)) {
            return false;
        }
        this.mAdapter.setHeader(this.mHeaderViewInfos);
        this.mAdapter.notifyDataSetChanged();
        return true;
    }

    public void addFooterView(View v, Object data) {
        int len = this.mFooterViewInfos.size();
        int i = 0;
        while (i < len) {
            if (((FixedViewInfo) this.mFooterViewInfos.get(i)).view != v) {
                i++;
            } else {
                return;
            }
        }
        FixedViewInfo info = new FixedViewInfo();
        info.view = v;
        info.data = data;
        this.mFooterViewInfos.add(info);
        attachHeader(v);
        if (this.mAdapter != null) {
            this.mAdapter.setFooter(this.mFooterViewInfos);
            this.mAdapter.notifyDataSetChanged();
        }
    }

    public void addFooterView(View v) {
        addFooterView(v, null);
    }

    public boolean removeFooterView(View v) {
        if (this.mFooterViewInfos.isEmpty()) {
            return false;
        }
        if (this.mAdapter == null || !removeFixedViewInfo(v, this.mFooterViewInfos)) {
            return false;
        }
        this.mAdapter.setFooter(this.mFooterViewInfos);
        this.mAdapter.notifyDataSetChanged();
        return true;
    }

    private boolean removeFixedViewInfo(View v, ArrayList<FixedViewInfo> where) {
        int len = where.size();
        for (int i = 0; i < len; i++) {
            if (((FixedViewInfo) where.get(i)).view == v) {
                where.remove(i);
                detachHeader(v);
                return true;
            }
        }
        return false;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Iterator it = this.mHeaderViewInfos.iterator();
        while (it.hasNext()) {
            attachHeader(((FixedViewInfo) it.next()).view);
        }
        it = this.mFooterViewInfos.iterator();
        while (it.hasNext()) {
            attachHeader(((FixedViewInfo) it.next()).view);
        }
        if (this.mGestureDetector == null) {
            this.mGestureDetector = new GestureDetector(getContext(), this.mGestureListener);
            this.mGestureDetector.setIsDoubleTapEnabled(false);
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Iterator it = this.mHeaderViewInfos.iterator();
        while (it.hasNext()) {
            detachHeader(((FixedViewInfo) it.next()).view);
        }
        it = this.mFooterViewInfos.iterator();
        while (it.hasNext()) {
            detachHeader(((FixedViewInfo) it.next()).view);
        }
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        measureHeader();
        int oldColumnNum = getNumColumns();
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int newColumnNum = getNumColumns();
        if (((oldColumnNum == -1 && newColumnNum != this.mRequestedNumColumns) || (oldColumnNum != -1 && newColumnNum != oldColumnNum)) && this.mAdapter != null) {
            this.mAdapter.onColumnChanged();
        }
    }

    void attachHeader(View header) {
        if (header != null && isAttachedToWindow()) {
            try {
                View.class.getDeclaredField("mAttachInfo").setAccessible(true);
                Method method = View.class.getDeclaredMethod("dispatchAttachedToWindow", new Class[]{Class.forName("android.view.View$AttachInfo"), Integer.TYPE});
                method.setAccessible(true);
                method.invoke(header, new Object[]{attachInfoField.get(this), Integer.valueOf(8)});
            } catch (NoSuchMethodException e) {
                throw new RuntimePlatformSupportException(e);
            } catch (ClassNotFoundException e2) {
                throw new RuntimePlatformSupportException(e2);
            } catch (IllegalArgumentException e3) {
                throw new RuntimePlatformSupportException(e3);
            } catch (IllegalAccessException e4) {
                throw new RuntimePlatformSupportException(e4);
            } catch (InvocationTargetException e5) {
                throw new RuntimePlatformSupportException(e5);
            } catch (NoSuchFieldException e6) {
                throw new RuntimePlatformSupportException(e6);
            }
        }
    }

    void detachHeader(View header) {
        if (header != null) {
            try {
                Method method = View.class.getDeclaredMethod("dispatchDetachedFromWindow", new Class[0]);
                method.setAccessible(true);
                method.invoke(header, new Object[0]);
            } catch (NoSuchMethodException e) {
                throw new RuntimePlatformSupportException(e);
            } catch (IllegalArgumentException e2) {
                throw new RuntimePlatformSupportException(e2);
            } catch (IllegalAccessException e3) {
                throw new RuntimePlatformSupportException(e3);
            } catch (InvocationTargetException e4) {
                throw new RuntimePlatformSupportException(e4);
            }
        }
    }

    public void viewToPosition(int position) {
        setSelection(Math.max(0, this.mAdapter.getItemPositionByItemIndex(position) - ((getLastVisiblePosition() - getFirstVisiblePosition()) / 3)));
    }
}
