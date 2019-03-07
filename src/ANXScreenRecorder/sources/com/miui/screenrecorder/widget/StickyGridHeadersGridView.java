package com.miui.screenrecorder.widget;

import android.annotation.TargetApi;
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
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.MotionEvent.PointerCoords;
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
import com.miui.screenrecorder.compat.Lists;
import com.miui.screenrecorder.tools.LogUtil;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

public class StickyGridHeadersGridView extends GridView implements OnScrollListener, OnItemClickListener, OnItemSelectedListener, OnItemLongClickListener {
    private static final String ERROR_PLATFORM = ("Error supporting platform " + VERSION.SDK_INT + ".");
    private static final int MATCHED_STICKIED_HEADER = -2;
    private static final int NO_MATCHED_HEADER = -1;
    static final String TAG = StickyGridHeadersGridView.class.getSimpleName();
    protected static final int TOUCH_MODE_DONE_WAITING = 2;
    protected static final int TOUCH_MODE_DOWN = 0;
    protected static final int TOUCH_MODE_FINISHED_LONG_PRESS = -2;
    protected static final int TOUCH_MODE_REST = -1;
    protected static final int TOUCH_MODE_TAP = 1;
    protected StickyGridHeadersBaseAdapterWrapper mAdapter;
    private boolean mAreHeadersSticky;
    private boolean mClipToPaddingHasBeenSet;
    private final Rect mClippingRect;
    private boolean mClippingToPadding;
    private long mCurrentHeaderId;
    protected boolean mDataChanged;
    private DataSetObserver mDataSetObserver;
    private ArrayList<FixedViewInfo> mFooterViewInfos;
    private int mHeaderBottomPosition;
    boolean mHeaderChildBeingPressed;
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
        boolean onHeaderLongClick(AdapterView<?> adapterView, View view, long j);
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
                if (VERSION.SDK_INT >= 24) {
                    return new SavedState(in, SavedState.class.getClassLoader(), null);
                }
                return new SavedState(in, null);
            }

            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        };
        boolean areHeadersSticky;

        /* synthetic */ SavedState(Parcel x0, ClassLoader x1, AnonymousClass1 x2) {
            this(x0, x1);
        }

        public SavedState(Parcelable superState) {
            super(superState);
        }

        private SavedState(Parcel in) {
            super(in);
            this.areHeadersSticky = in.readByte() != (byte) 0;
        }

        @TargetApi(24)
        private SavedState(Parcel in, ClassLoader loader) {
            super(in, loader);
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

    private static PointerCoords[] getPointerCoords(MotionEvent e) {
        int n = e.getPointerCount();
        PointerCoords[] r = new PointerCoords[n];
        for (int i = 0; i < n; i++) {
            r[i] = new PointerCoords();
            e.getPointerCoords(i, r[i]);
        }
        return r;
    }

    private static int[] getPointerIds(MotionEvent e) {
        int n = e.getPointerCount();
        int[] r = new int[n];
        for (int i = 0; i < n; i++) {
            r[i] = e.getPointerId(i);
        }
        return r;
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
        this.mScrollState = 0;
        this.mHeaderChildBeingPressed = false;
        this.mFooterViewInfos = Lists.newArrayList();
        super.setOnScrollListener(this);
        setVerticalFadingEdgeEnabled(false);
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    public boolean areHeadersSticky() {
        return this.mAreHeadersSticky;
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

    public boolean getStickyHeaderIsTranslucent() {
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
            LogUtil.d(TAG, "position is invalid, skip");
        } else {
            this.mOnItemClickListener.onItemClick(parent, view, pos, id);
        }
    }

    public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id) {
        int pos = this.mAdapter.translatePosition(position).mPosition;
        if (pos >= 0) {
            return this.mOnItemLongClickListener.onItemLongClick(parent, view, pos, id);
        }
        LogUtil.d(TAG, "position is invalid, skip");
        return true;
    }

    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
        int pos = this.mAdapter.translatePosition(position).mPosition;
        if (pos < 0) {
            LogUtil.d(TAG, "position is invalid, skip");
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
        if (this.mScrollListener != null) {
            this.mScrollListener.onScroll(view, firstVisibleItem, visibleItemCount, totalItemCount);
        }
        if (VERSION.SDK_INT >= 8) {
            scrollChanged(firstVisibleItem);
        }
    }

    public void onScrollStateChanged(AbsListView view, int scrollState) {
        if (this.mScrollListener != null) {
            this.mScrollListener.onScrollStateChanged(view, scrollState);
        }
        this.mScrollState = scrollState;
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
                    if (!(wasHeaderChildBeingPressed || header == null)) {
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
        return super.onTouchEvent(ev);
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

    public boolean performHeaderLongPress(View view, long id) {
        boolean handled = false;
        if (this.mOnHeaderLongClickListener != null) {
            handled = this.mOnHeaderLongClickListener.onHeaderLongClick(this, view, id);
        }
        if (handled) {
            if (view != null) {
                view.sendAccessibilityEvent(2);
            }
            performHapticFeedback(0);
        }
        return handled;
    }

    public void setAdapter(ListAdapter adapter) {
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
        this.mAdapter = new StickyGridHeadersBaseAdapterWrapper(getContext().getApplicationContext(), this, baseAdapter);
        if (this.mFooterViewInfos != null && this.mFooterViewInfos.size() > 0) {
            this.mAdapter.setFooter(this.mFooterViewInfos);
        }
        this.mAdapter.registerDataSetObserver(this.mDataSetObserver);
        reset();
        super.setAdapter(this.mAdapter);
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
        super.setOnItemClickListener(this);
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
    }

    private MotionEvent transformEvent(MotionEvent e, int headerPosition) {
        if (headerPosition == -2) {
            return e;
        }
        long downTime = e.getDownTime();
        long eventTime = e.getEventTime();
        int action = e.getAction();
        int pointerCount = e.getPointerCount();
        int[] pointerIds = getPointerIds(e);
        PointerCoords[] pointerCoords = getPointerCoords(e);
        int metaState = e.getMetaState();
        float xPrecision = e.getXPrecision();
        float yPrecision = e.getYPrecision();
        int deviceId = e.getDeviceId();
        int edgeFlags = e.getEdgeFlags();
        int source = e.getSource();
        int flags = e.getFlags();
        View headerHolder = getChildAt(headerPosition);
        for (int i = 0; i < pointerCount; i++) {
            PointerCoords pointerCoords2 = pointerCoords[i];
            pointerCoords2.y -= (float) headerHolder.getTop();
        }
        return MotionEvent.obtain(downTime, eventTime, action, pointerCount, pointerIds, pointerCoords, metaState, xPrecision, yPrecision, deviceId, edgeFlags, source, flags);
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
        List<Integer> headerPositions = new ArrayList();
        int vi = 0;
        int i = getFirstVisiblePosition();
        while (i <= getLastVisiblePosition()) {
            if (getItemIdAtPosition(i) == -1) {
                headerPositions.add(Integer.valueOf(vi));
            }
            i += columns;
            vi += columns;
        }
        i = 0;
        while (i < headerPositions.size()) {
            View frame = getChildAt(((Integer) headerPositions.get(i)).intValue());
            try {
                View header = (View) frame.getTag();
                boolean headerIsStickied = ((long) ((HeaderFillerView) frame).getHeaderId()) == this.mCurrentHeaderId && frame.getTop() < 0 && this.mAreHeadersSticky;
                if (header.getVisibility() == 0 && !headerIsStickied) {
                    if (this.mHeadersIgnorePadding) {
                        widthMeasureSpec = MeasureSpec.makeMeasureSpec(getWidth(), 1073741824);
                    } else {
                        widthMeasureSpec = MeasureSpec.makeMeasureSpec((getWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824);
                    }
                    heightMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
                    header.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
                    header.measure(widthMeasureSpec, heightMeasureSpec);
                    if (this.mHeadersIgnorePadding) {
                        header.layout(getLeft(), 0, getRight(), frame.getHeight());
                    } else {
                        header.layout(getLeft() + getPaddingLeft(), 0, getRight() - getPaddingRight(), frame.getHeight());
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
                    header.draw(canvas);
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
            heightMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
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
        if (!(getStickyHeaderIsTranslucent() || this.mHeaderBottomPosition == headerHeight)) {
            canvas.saveLayerAlpha(0.0f, 0.0f, (float) canvas.getWidth(), (float) canvas.getHeight(), (this.mHeaderBottomPosition * 255) / headerHeight, 31);
        }
        this.mStickiedHeader.draw(canvas);
        if (!(getStickyHeaderIsTranslucent() || this.mHeaderBottomPosition == headerHeight)) {
            canvas.restore();
        }
        canvas.restore();
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
        if (this.mAdapter != null) {
            this.mAdapter.setFooter(this.mFooterViewInfos);
            this.mAdapter.notifyDataSetChanged();
        }
    }

    public void addFooterView(View v) {
        addFooterView(v, null);
    }

    public boolean removeFooterView(View v) {
        if (this.mFooterViewInfos.size() <= 0) {
            return false;
        }
        if (this.mAdapter == null || !removeFixedViewInfo(v, this.mFooterViewInfos)) {
            return false;
        }
        this.mAdapter.notifyDataSetChanged();
        return true;
    }

    private boolean removeFixedViewInfo(View v, ArrayList<FixedViewInfo> where) {
        int len = where.size();
        for (int i = 0; i < len; i++) {
            if (((FixedViewInfo) where.get(i)).view == v) {
                where.remove(i);
                return true;
            }
        }
        return false;
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        try {
            measureHeader();
            int oldColumnNum = getNumColumns();
            setMeasuredDimension(getDefaultSize(0, widthMeasureSpec), getDefaultSize(0, heightMeasureSpec));
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            int newColumnNum = getNumColumns();
            if ((oldColumnNum == -1 && newColumnNum != this.mRequestedNumColumns) || (oldColumnNum != -1 && newColumnNum != oldColumnNum)) {
                this.mAdapter.onColumnChanged();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    void attachHeader(View header) {
        if (header != null) {
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

    public boolean isInScrollingContainer() {
        return false;
    }
}
