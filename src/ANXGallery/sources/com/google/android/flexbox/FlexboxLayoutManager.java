package com.google.android.flexbox;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v7.widget.LinearSmoothScroller;
import android.support.v7.widget.OrientationHelper;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.LayoutManager.Properties;
import android.support.v7.widget.RecyclerView.Recycler;
import android.support.v7.widget.RecyclerView.SmoothScroller.ScrollVectorProvider;
import android.support.v7.widget.RecyclerView.State;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.View.MeasureSpec;
import java.util.ArrayList;
import java.util.List;

public class FlexboxLayoutManager extends LayoutManager implements ScrollVectorProvider, FlexContainer {
    static final /* synthetic */ boolean $assertionsDisabled = (!FlexboxLayoutManager.class.desiredAssertionStatus());
    private static final Rect TEMP_RECT = new Rect();
    private int mAlignItems;
    private AnchorInfo mAnchorInfo;
    private final Context mContext;
    private int mDirtyPosition;
    private int mFlexDirection;
    private List<FlexLine> mFlexLines;
    private FlexLinesResult mFlexLinesResult;
    private int mFlexWrap;
    private final FlexboxHelper mFlexboxHelper;
    private boolean mFromBottomToTop;
    private boolean mIsRtl;
    private int mJustifyContent;
    private int mLastHeight;
    private int mLastWidth;
    private LayoutState mLayoutState;
    private OrientationHelper mOrientationHelper;
    private View mParent;
    private SavedState mPendingSavedState;
    private int mPendingScrollPosition;
    private int mPendingScrollPositionOffset;
    private boolean mRecycleChildrenOnDetach;
    private Recycler mRecycler;
    private State mState;
    private OrientationHelper mSubOrientationHelper;
    private SparseArray<View> mViewCache;

    private class AnchorInfo {
        static final /* synthetic */ boolean $assertionsDisabled = (!FlexboxLayoutManager.class.desiredAssertionStatus());
        private boolean mAssignedFromSavedState;
        private int mCoordinate;
        private int mFlexLinePosition;
        private boolean mLayoutFromEnd;
        private int mPerpendicularCoordinate;
        private int mPosition;
        private boolean mValid;

        private AnchorInfo() {
            this.mPerpendicularCoordinate = 0;
        }

        private void reset() {
            boolean z = true;
            this.mPosition = -1;
            this.mFlexLinePosition = -1;
            this.mCoordinate = Integer.MIN_VALUE;
            this.mValid = false;
            this.mAssignedFromSavedState = false;
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal()) {
                if (FlexboxLayoutManager.this.mFlexWrap == 0) {
                    if (FlexboxLayoutManager.this.mFlexDirection != 1) {
                        z = false;
                    }
                    this.mLayoutFromEnd = z;
                    return;
                }
                if (FlexboxLayoutManager.this.mFlexWrap != 2) {
                    z = false;
                }
                this.mLayoutFromEnd = z;
            } else if (FlexboxLayoutManager.this.mFlexWrap == 0) {
                if (FlexboxLayoutManager.this.mFlexDirection != 3) {
                    z = false;
                }
                this.mLayoutFromEnd = z;
            } else {
                if (FlexboxLayoutManager.this.mFlexWrap != 2) {
                    z = false;
                }
                this.mLayoutFromEnd = z;
            }
        }

        private void assignCoordinateFromPadding() {
            int endAfterPadding;
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal() || !FlexboxLayoutManager.this.mIsRtl) {
                if (this.mLayoutFromEnd) {
                    endAfterPadding = FlexboxLayoutManager.this.mOrientationHelper.getEndAfterPadding();
                } else {
                    endAfterPadding = FlexboxLayoutManager.this.mOrientationHelper.getStartAfterPadding();
                }
                this.mCoordinate = endAfterPadding;
                return;
            }
            if (this.mLayoutFromEnd) {
                endAfterPadding = FlexboxLayoutManager.this.mOrientationHelper.getEndAfterPadding();
            } else {
                endAfterPadding = FlexboxLayoutManager.this.getWidth() - FlexboxLayoutManager.this.mOrientationHelper.getStartAfterPadding();
            }
            this.mCoordinate = endAfterPadding;
        }

        private void assignFromView(View anchor) {
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal() || !FlexboxLayoutManager.this.mIsRtl) {
                if (this.mLayoutFromEnd) {
                    this.mCoordinate = FlexboxLayoutManager.this.mOrientationHelper.getDecoratedEnd(anchor) + FlexboxLayoutManager.this.mOrientationHelper.getTotalSpaceChange();
                } else {
                    this.mCoordinate = FlexboxLayoutManager.this.mOrientationHelper.getDecoratedStart(anchor);
                }
            } else if (this.mLayoutFromEnd) {
                this.mCoordinate = FlexboxLayoutManager.this.mOrientationHelper.getDecoratedStart(anchor) + FlexboxLayoutManager.this.mOrientationHelper.getTotalSpaceChange();
            } else {
                this.mCoordinate = FlexboxLayoutManager.this.mOrientationHelper.getDecoratedEnd(anchor);
            }
            this.mPosition = FlexboxLayoutManager.this.getPosition(anchor);
            this.mAssignedFromSavedState = false;
            if ($assertionsDisabled || FlexboxLayoutManager.this.mFlexboxHelper.mIndexToFlexLine != null) {
                int flexLinePosition = FlexboxLayoutManager.this.mFlexboxHelper.mIndexToFlexLine[this.mPosition];
                if (flexLinePosition == -1) {
                    flexLinePosition = 0;
                }
                this.mFlexLinePosition = flexLinePosition;
                if (FlexboxLayoutManager.this.mFlexLines.size() > this.mFlexLinePosition) {
                    this.mPosition = ((FlexLine) FlexboxLayoutManager.this.mFlexLines.get(this.mFlexLinePosition)).mFirstIndex;
                    return;
                }
                return;
            }
            throw new AssertionError();
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.mPosition + ", mFlexLinePosition=" + this.mFlexLinePosition + ", mCoordinate=" + this.mCoordinate + ", mPerpendicularCoordinate=" + this.mPerpendicularCoordinate + ", mLayoutFromEnd=" + this.mLayoutFromEnd + ", mValid=" + this.mValid + ", mAssignedFromSavedState=" + this.mAssignedFromSavedState + '}';
        }
    }

    public static class LayoutParams extends android.support.v7.widget.RecyclerView.LayoutParams implements FlexItem {
        public static final Creator<LayoutParams> CREATOR = new Creator<LayoutParams>() {
            public LayoutParams createFromParcel(Parcel source) {
                return new LayoutParams(source);
            }

            public LayoutParams[] newArray(int size) {
                return new LayoutParams[size];
            }
        };
        private int mAlignSelf = -1;
        private float mFlexBasisPercent = -1.0f;
        private float mFlexGrow = 0.0f;
        private float mFlexShrink = 1.0f;
        private int mMaxHeight = 16777215;
        private int mMaxWidth = 16777215;
        private int mMinHeight;
        private int mMinWidth;
        private boolean mWrapBefore;

        public int getWidth() {
            return this.width;
        }

        public void setWidth(int width) {
            this.width = width;
        }

        public int getHeight() {
            return this.height;
        }

        public void setHeight(int height) {
            this.height = height;
        }

        public float getFlexGrow() {
            return this.mFlexGrow;
        }

        public void setFlexGrow(float flexGrow) {
            this.mFlexGrow = flexGrow;
        }

        public float getFlexShrink() {
            return this.mFlexShrink;
        }

        public int getAlignSelf() {
            return this.mAlignSelf;
        }

        public int getMinWidth() {
            return this.mMinWidth;
        }

        public int getMinHeight() {
            return this.mMinHeight;
        }

        public int getMaxWidth() {
            return this.mMaxWidth;
        }

        public int getMaxHeight() {
            return this.mMaxHeight;
        }

        public boolean isWrapBefore() {
            return this.mWrapBefore;
        }

        public float getFlexBasisPercent() {
            return this.mFlexBasisPercent;
        }

        public int getMarginLeft() {
            return this.leftMargin;
        }

        public int getMarginTop() {
            return this.topMargin;
        }

        public int getMarginRight() {
            return this.rightMargin;
        }

        public int getMarginBottom() {
            return this.bottomMargin;
        }

        public LayoutParams(Context c, AttributeSet attrs) {
            super(c, attrs);
        }

        public LayoutParams(int width, int height) {
            super(width, height);
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel dest, int flags) {
            dest.writeFloat(this.mFlexGrow);
            dest.writeFloat(this.mFlexShrink);
            dest.writeInt(this.mAlignSelf);
            dest.writeFloat(this.mFlexBasisPercent);
            dest.writeInt(this.mMinWidth);
            dest.writeInt(this.mMinHeight);
            dest.writeInt(this.mMaxWidth);
            dest.writeInt(this.mMaxHeight);
            dest.writeByte(this.mWrapBefore ? (byte) 1 : (byte) 0);
            dest.writeInt(this.bottomMargin);
            dest.writeInt(this.leftMargin);
            dest.writeInt(this.rightMargin);
            dest.writeInt(this.topMargin);
            dest.writeInt(this.height);
            dest.writeInt(this.width);
        }

        protected LayoutParams(Parcel in) {
            super(-2, -2);
            this.mFlexGrow = in.readFloat();
            this.mFlexShrink = in.readFloat();
            this.mAlignSelf = in.readInt();
            this.mFlexBasisPercent = in.readFloat();
            this.mMinWidth = in.readInt();
            this.mMinHeight = in.readInt();
            this.mMaxWidth = in.readInt();
            this.mMaxHeight = in.readInt();
            this.mWrapBefore = in.readByte() != (byte) 0;
            this.bottomMargin = in.readInt();
            this.leftMargin = in.readInt();
            this.rightMargin = in.readInt();
            this.topMargin = in.readInt();
            this.height = in.readInt();
            this.width = in.readInt();
        }
    }

    private static class LayoutState {
        private int mAvailable;
        private int mFlexLinePosition;
        private boolean mInfinite;
        private int mItemDirection;
        private int mLastScrollDelta;
        private int mLayoutDirection;
        private int mOffset;
        private int mPosition;
        private int mScrollingOffset;
        private boolean mShouldRecycle;

        private LayoutState() {
            this.mItemDirection = 1;
            this.mLayoutDirection = 1;
        }

        private boolean hasMore(State state, List<FlexLine> flexLines) {
            return this.mPosition >= 0 && this.mPosition < state.getItemCount() && this.mFlexLinePosition >= 0 && this.mFlexLinePosition < flexLines.size();
        }

        public String toString() {
            return "LayoutState{mAvailable=" + this.mAvailable + ", mFlexLinePosition=" + this.mFlexLinePosition + ", mPosition=" + this.mPosition + ", mOffset=" + this.mOffset + ", mScrollingOffset=" + this.mScrollingOffset + ", mLastScrollDelta=" + this.mLastScrollDelta + ", mItemDirection=" + this.mItemDirection + ", mLayoutDirection=" + this.mLayoutDirection + '}';
        }
    }

    private static class SavedState implements Parcelable {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            public SavedState createFromParcel(Parcel source) {
                return new SavedState(source, null);
            }

            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        };
        private int mAnchorOffset;
        private int mAnchorPosition;

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel dest, int flags) {
            dest.writeInt(this.mAnchorPosition);
            dest.writeInt(this.mAnchorOffset);
        }

        SavedState() {
        }

        private SavedState(Parcel in) {
            this.mAnchorPosition = in.readInt();
            this.mAnchorOffset = in.readInt();
        }

        private SavedState(SavedState savedState) {
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mAnchorOffset = savedState.mAnchorOffset;
        }

        private void invalidateAnchor() {
            this.mAnchorPosition = -1;
        }

        private boolean hasValidAnchor(int itemCount) {
            return this.mAnchorPosition >= 0 && this.mAnchorPosition < itemCount;
        }

        public String toString() {
            return "SavedState{mAnchorPosition=" + this.mAnchorPosition + ", mAnchorOffset=" + this.mAnchorOffset + '}';
        }
    }

    public FlexboxLayoutManager(Context context) {
        this(context, 0, 1);
    }

    public FlexboxLayoutManager(Context context, int flexDirection) {
        this(context, flexDirection, 1);
    }

    public FlexboxLayoutManager(Context context, int flexDirection, int flexWrap) {
        this.mFlexLines = new ArrayList();
        this.mFlexboxHelper = new FlexboxHelper(this);
        this.mAnchorInfo = new AnchorInfo();
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mLastWidth = Integer.MIN_VALUE;
        this.mLastHeight = Integer.MIN_VALUE;
        this.mViewCache = new SparseArray();
        this.mDirtyPosition = -1;
        this.mFlexLinesResult = new FlexLinesResult();
        setFlexDirection(flexDirection);
        setFlexWrap(flexWrap);
        setAlignItems(4);
        setAutoMeasureEnabled(true);
        this.mContext = context;
    }

    public FlexboxLayoutManager(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        this.mFlexLines = new ArrayList();
        this.mFlexboxHelper = new FlexboxHelper(this);
        this.mAnchorInfo = new AnchorInfo();
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mLastWidth = Integer.MIN_VALUE;
        this.mLastHeight = Integer.MIN_VALUE;
        this.mViewCache = new SparseArray();
        this.mDirtyPosition = -1;
        this.mFlexLinesResult = new FlexLinesResult();
        Properties properties = LayoutManager.getProperties(context, attrs, defStyleAttr, defStyleRes);
        switch (properties.orientation) {
            case 0:
                if (!properties.reverseLayout) {
                    setFlexDirection(0);
                    break;
                } else {
                    setFlexDirection(1);
                    break;
                }
            case 1:
                if (!properties.reverseLayout) {
                    setFlexDirection(2);
                    break;
                } else {
                    setFlexDirection(3);
                    break;
                }
        }
        setFlexWrap(1);
        setAlignItems(4);
        setAutoMeasureEnabled(true);
        this.mContext = context;
    }

    public int getFlexDirection() {
        return this.mFlexDirection;
    }

    public void setFlexDirection(int flexDirection) {
        if (this.mFlexDirection != flexDirection) {
            removeAllViews();
            this.mFlexDirection = flexDirection;
            this.mOrientationHelper = null;
            this.mSubOrientationHelper = null;
            clearFlexLines();
            requestLayout();
        }
    }

    public int getFlexWrap() {
        return this.mFlexWrap;
    }

    public void setFlexWrap(int flexWrap) {
        if (flexWrap == 2) {
            throw new UnsupportedOperationException("wrap_reverse is not supported in FlexboxLayoutManager");
        } else if (this.mFlexWrap != flexWrap) {
            if (this.mFlexWrap == 0 || flexWrap == 0) {
                removeAllViews();
                clearFlexLines();
            }
            this.mFlexWrap = flexWrap;
            this.mOrientationHelper = null;
            this.mSubOrientationHelper = null;
            requestLayout();
        }
    }

    public int getAlignItems() {
        return this.mAlignItems;
    }

    public void setAlignItems(int alignItems) {
        if (this.mAlignItems != alignItems) {
            if (this.mAlignItems == 4 || alignItems == 4) {
                removeAllViews();
                clearFlexLines();
            }
            this.mAlignItems = alignItems;
            requestLayout();
        }
    }

    public List<FlexLine> getFlexLines() {
        List<FlexLine> result = new ArrayList(this.mFlexLines.size());
        int size = this.mFlexLines.size();
        for (int i = 0; i < size; i++) {
            FlexLine flexLine = (FlexLine) this.mFlexLines.get(i);
            if (flexLine.getItemCount() != 0) {
                result.add(flexLine);
            }
        }
        return result;
    }

    public int getDecorationLengthMainAxis(View view, int index, int indexInFlexLine) {
        if (isMainAxisDirectionHorizontal()) {
            return getLeftDecorationWidth(view) + getRightDecorationWidth(view);
        }
        return getTopDecorationHeight(view) + getBottomDecorationHeight(view);
    }

    public int getDecorationLengthCrossAxis(View view) {
        if (isMainAxisDirectionHorizontal()) {
            return getTopDecorationHeight(view) + getBottomDecorationHeight(view);
        }
        return getLeftDecorationWidth(view) + getRightDecorationWidth(view);
    }

    public void onNewFlexItemAdded(View view, int index, int indexInFlexLine, FlexLine flexLine) {
        calculateItemDecorationsForChild(view, TEMP_RECT);
        if (isMainAxisDirectionHorizontal()) {
            int decorationWidth = getLeftDecorationWidth(view) + getRightDecorationWidth(view);
            flexLine.mMainSize += decorationWidth;
            flexLine.mDividerLengthInMainSize += decorationWidth;
            return;
        }
        int decorationHeight = getTopDecorationHeight(view) + getBottomDecorationHeight(view);
        flexLine.mMainSize += decorationHeight;
        flexLine.mDividerLengthInMainSize += decorationHeight;
    }

    public int getFlexItemCount() {
        return this.mState.getItemCount();
    }

    public View getFlexItemAt(int index) {
        View cachedView = (View) this.mViewCache.get(index);
        return cachedView != null ? cachedView : this.mRecycler.getViewForPosition(index);
    }

    public View getReorderedFlexItemAt(int index) {
        return getFlexItemAt(index);
    }

    public void onNewFlexLineAdded(FlexLine flexLine) {
    }

    public int getChildWidthMeasureSpec(int widthSpec, int padding, int childDimension) {
        return LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), padding, childDimension, canScrollHorizontally());
    }

    public int getChildHeightMeasureSpec(int heightSpec, int padding, int childDimension) {
        return LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), padding, childDimension, canScrollVertically());
    }

    public int getLargestMainSize() {
        if (this.mFlexLines.size() == 0) {
            return 0;
        }
        int largestSize = Integer.MIN_VALUE;
        int size = this.mFlexLines.size();
        for (int i = 0; i < size; i++) {
            largestSize = Math.max(largestSize, ((FlexLine) this.mFlexLines.get(i)).mMainSize);
        }
        return largestSize;
    }

    public List<FlexLine> getFlexLinesInternal() {
        return this.mFlexLines;
    }

    public void updateViewCache(int position, View view) {
        this.mViewCache.put(position, view);
    }

    public PointF computeScrollVectorForPosition(int targetPosition) {
        if (getChildCount() == 0) {
            return null;
        }
        int direction = targetPosition < getPosition(getChildAt(0)) ? -1 : 1;
        if (isMainAxisDirectionHorizontal()) {
            return new PointF(0.0f, (float) direction);
        }
        return new PointF((float) direction, 0.0f);
    }

    public android.support.v7.widget.RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    public android.support.v7.widget.RecyclerView.LayoutParams generateLayoutParams(Context c, AttributeSet attrs) {
        return new LayoutParams(c, attrs);
    }

    public boolean checkLayoutParams(android.support.v7.widget.RecyclerView.LayoutParams lp) {
        return lp instanceof LayoutParams;
    }

    public void onAdapterChanged(Adapter oldAdapter, Adapter newAdapter) {
        removeAllViews();
    }

    public Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState != null) {
            return new SavedState(this.mPendingSavedState, null);
        }
        Parcelable savedState = new SavedState();
        if (getChildCount() > 0) {
            View firstView = getChildClosestToStart();
            savedState.mAnchorPosition = getPosition(firstView);
            savedState.mAnchorOffset = this.mOrientationHelper.getDecoratedStart(firstView) - this.mOrientationHelper.getStartAfterPadding();
            return savedState;
        }
        savedState.invalidateAnchor();
        return savedState;
    }

    public void onRestoreInstanceState(Parcelable state) {
        if (state instanceof SavedState) {
            this.mPendingSavedState = (SavedState) state;
            requestLayout();
        }
    }

    public void onItemsAdded(RecyclerView recyclerView, int positionStart, int itemCount) {
        super.onItemsAdded(recyclerView, positionStart, itemCount);
        updateDirtyPosition(positionStart);
    }

    public void onItemsUpdated(RecyclerView recyclerView, int positionStart, int itemCount, Object payload) {
        super.onItemsUpdated(recyclerView, positionStart, itemCount, payload);
        updateDirtyPosition(positionStart);
    }

    public void onItemsUpdated(RecyclerView recyclerView, int positionStart, int itemCount) {
        super.onItemsUpdated(recyclerView, positionStart, itemCount);
        updateDirtyPosition(positionStart);
    }

    public void onItemsRemoved(RecyclerView recyclerView, int positionStart, int itemCount) {
        super.onItemsRemoved(recyclerView, positionStart, itemCount);
        updateDirtyPosition(positionStart);
    }

    public void onItemsMoved(RecyclerView recyclerView, int from, int to, int itemCount) {
        super.onItemsMoved(recyclerView, from, to, itemCount);
        updateDirtyPosition(Math.min(from, to));
    }

    private void updateDirtyPosition(int positionStart) {
        int firstVisiblePosition = findFirstVisibleItemPosition();
        int lastVisiblePosition = findLastVisibleItemPosition();
        if (positionStart < lastVisiblePosition) {
            int childCount = getChildCount();
            this.mFlexboxHelper.ensureMeasureSpecCache(childCount);
            this.mFlexboxHelper.ensureMeasuredSizeCache(childCount);
            this.mFlexboxHelper.ensureIndexToFlexLine(childCount);
            if (!$assertionsDisabled && this.mFlexboxHelper.mIndexToFlexLine == null) {
                throw new AssertionError();
            } else if (positionStart < this.mFlexboxHelper.mIndexToFlexLine.length) {
                this.mDirtyPosition = positionStart;
                View firstView = getChildClosestToStart();
                if (firstView == null) {
                    return;
                }
                if (firstVisiblePosition > positionStart || positionStart > lastVisiblePosition) {
                    this.mPendingScrollPosition = getPosition(firstView);
                    if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
                        this.mPendingScrollPositionOffset = this.mOrientationHelper.getDecoratedStart(firstView) - this.mOrientationHelper.getStartAfterPadding();
                    } else {
                        this.mPendingScrollPositionOffset = this.mOrientationHelper.getDecoratedEnd(firstView) + this.mOrientationHelper.getEndPadding();
                    }
                }
            }
        }
    }

    public void onLayoutChildren(Recycler recycler, State state) {
        this.mRecycler = recycler;
        this.mState = state;
        int childCount = state.getItemCount();
        if (childCount != 0 || !state.isPreLayout()) {
            int startOffset;
            int endOffset;
            resolveLayoutDirection();
            ensureOrientationHelper();
            ensureLayoutState();
            this.mFlexboxHelper.ensureMeasureSpecCache(childCount);
            this.mFlexboxHelper.ensureMeasuredSizeCache(childCount);
            this.mFlexboxHelper.ensureIndexToFlexLine(childCount);
            this.mLayoutState.mShouldRecycle = false;
            if (this.mPendingSavedState != null && this.mPendingSavedState.hasValidAnchor(childCount)) {
                this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition;
            }
            if (!(this.mAnchorInfo.mValid && this.mPendingScrollPosition == -1 && this.mPendingSavedState == null)) {
                this.mAnchorInfo.reset();
                updateAnchorInfoForLayout(state, this.mAnchorInfo);
                this.mAnchorInfo.mValid = true;
            }
            detachAndScrapAttachedViews(recycler);
            if (this.mAnchorInfo.mLayoutFromEnd) {
                updateLayoutStateToFillStart(this.mAnchorInfo, false, true);
            } else {
                updateLayoutStateToFillEnd(this.mAnchorInfo, false, true);
            }
            updateFlexLines(childCount);
            int filledToEnd;
            int filledToStart;
            if (this.mAnchorInfo.mLayoutFromEnd) {
                filledToEnd = fill(recycler, state, this.mLayoutState);
                startOffset = this.mLayoutState.mOffset;
                updateLayoutStateToFillEnd(this.mAnchorInfo, true, false);
                filledToStart = fill(recycler, state, this.mLayoutState);
                endOffset = this.mLayoutState.mOffset;
            } else {
                filledToEnd = fill(recycler, state, this.mLayoutState);
                endOffset = this.mLayoutState.mOffset;
                updateLayoutStateToFillStart(this.mAnchorInfo, true, false);
                filledToStart = fill(recycler, state, this.mLayoutState);
                startOffset = this.mLayoutState.mOffset;
            }
            if (getChildCount() <= 0) {
                return;
            }
            if (this.mAnchorInfo.mLayoutFromEnd) {
                fixLayoutStartGap(startOffset + fixLayoutEndGap(endOffset, recycler, state, true), recycler, state, false);
            } else {
                fixLayoutEndGap(endOffset + fixLayoutStartGap(startOffset, recycler, state, true), recycler, state, false);
            }
        }
    }

    private int fixLayoutStartGap(int startOffset, Recycler recycler, State state, boolean canOffsetChildren) {
        int gap;
        int fixOffset;
        if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
            gap = startOffset - this.mOrientationHelper.getStartAfterPadding();
            if (gap <= 0) {
                return 0;
            }
            fixOffset = -handleScrollingCrossAxis(gap, recycler, state);
        } else {
            gap = this.mOrientationHelper.getEndAfterPadding() - startOffset;
            if (gap <= 0) {
                return 0;
            }
            fixOffset = handleScrollingCrossAxis(-gap, recycler, state);
        }
        startOffset += fixOffset;
        if (!canOffsetChildren) {
            return fixOffset;
        }
        gap = startOffset - this.mOrientationHelper.getStartAfterPadding();
        if (gap <= 0) {
            return fixOffset;
        }
        this.mOrientationHelper.offsetChildren(-gap);
        return fixOffset - gap;
    }

    private int fixLayoutEndGap(int endOffset, Recycler recycler, State state, boolean canOffsetChildren) {
        boolean columnAndRtl;
        int gap;
        int fixOffset;
        if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
            columnAndRtl = false;
        } else {
            columnAndRtl = true;
        }
        if (columnAndRtl) {
            gap = endOffset - this.mOrientationHelper.getStartAfterPadding();
            if (gap <= 0) {
                return 0;
            }
            fixOffset = handleScrollingCrossAxis(gap, recycler, state);
        } else {
            gap = this.mOrientationHelper.getEndAfterPadding() - endOffset;
            if (gap <= 0) {
                return 0;
            }
            fixOffset = -handleScrollingCrossAxis(-gap, recycler, state);
        }
        endOffset += fixOffset;
        if (!canOffsetChildren) {
            return fixOffset;
        }
        gap = this.mOrientationHelper.getEndAfterPadding() - endOffset;
        if (gap <= 0) {
            return fixOffset;
        }
        this.mOrientationHelper.offsetChildren(gap);
        return fixOffset + gap;
    }

    private void updateFlexLines(int childCount) {
        int needsToFill;
        int widthMeasureSpec = MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int heightMeasureSpec = MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        int width = getWidth();
        int height = getHeight();
        boolean isMainSizeChanged;
        if (isMainAxisDirectionHorizontal()) {
            isMainSizeChanged = (this.mLastWidth == Integer.MIN_VALUE || this.mLastWidth == width) ? false : true;
            if (this.mLayoutState.mInfinite) {
                needsToFill = this.mContext.getResources().getDisplayMetrics().heightPixels;
            } else {
                needsToFill = this.mLayoutState.mAvailable;
            }
        } else {
            isMainSizeChanged = (this.mLastHeight == Integer.MIN_VALUE || this.mLastHeight == height) ? false : true;
            if (this.mLayoutState.mInfinite) {
                needsToFill = this.mContext.getResources().getDisplayMetrics().widthPixels;
            } else {
                needsToFill = this.mLayoutState.mAvailable;
            }
        }
        this.mLastWidth = width;
        this.mLastHeight = height;
        if (this.mDirtyPosition != -1 || (this.mPendingScrollPosition == -1 && !isMainSizeChanged)) {
            int fromIndex;
            if (this.mDirtyPosition != -1) {
                fromIndex = Math.min(this.mDirtyPosition, this.mAnchorInfo.mPosition);
            } else {
                fromIndex = this.mAnchorInfo.mPosition;
            }
            this.mFlexLinesResult.reset();
            if (isMainAxisDirectionHorizontal()) {
                if (this.mFlexLines.size() > 0) {
                    this.mFlexboxHelper.clearFlexLines(this.mFlexLines, fromIndex);
                    this.mFlexboxHelper.calculateFlexLines(this.mFlexLinesResult, widthMeasureSpec, heightMeasureSpec, needsToFill, fromIndex, this.mAnchorInfo.mPosition, this.mFlexLines);
                } else {
                    this.mFlexboxHelper.ensureIndexToFlexLine(childCount);
                    this.mFlexboxHelper.calculateHorizontalFlexLines(this.mFlexLinesResult, widthMeasureSpec, heightMeasureSpec, needsToFill, 0, this.mFlexLines);
                }
            } else if (this.mFlexLines.size() > 0) {
                this.mFlexboxHelper.clearFlexLines(this.mFlexLines, fromIndex);
                this.mFlexboxHelper.calculateFlexLines(this.mFlexLinesResult, heightMeasureSpec, widthMeasureSpec, needsToFill, fromIndex, this.mAnchorInfo.mPosition, this.mFlexLines);
            } else {
                this.mFlexboxHelper.ensureIndexToFlexLine(childCount);
                this.mFlexboxHelper.calculateVerticalFlexLines(this.mFlexLinesResult, widthMeasureSpec, heightMeasureSpec, needsToFill, 0, this.mFlexLines);
            }
            this.mFlexLines = this.mFlexLinesResult.mFlexLines;
            this.mFlexboxHelper.determineMainSize(widthMeasureSpec, heightMeasureSpec, fromIndex);
            this.mFlexboxHelper.stretchViews(fromIndex);
        } else if (!this.mAnchorInfo.mLayoutFromEnd) {
            this.mFlexLines.clear();
            if ($assertionsDisabled || this.mFlexboxHelper.mIndexToFlexLine != null) {
                this.mFlexLinesResult.reset();
                if (isMainAxisDirectionHorizontal()) {
                    this.mFlexboxHelper.calculateHorizontalFlexLinesToIndex(this.mFlexLinesResult, widthMeasureSpec, heightMeasureSpec, needsToFill, this.mAnchorInfo.mPosition, this.mFlexLines);
                } else {
                    this.mFlexboxHelper.calculateVerticalFlexLinesToIndex(this.mFlexLinesResult, widthMeasureSpec, heightMeasureSpec, needsToFill, this.mAnchorInfo.mPosition, this.mFlexLines);
                }
                this.mFlexLines = this.mFlexLinesResult.mFlexLines;
                this.mFlexboxHelper.determineMainSize(widthMeasureSpec, heightMeasureSpec);
                this.mFlexboxHelper.stretchViews();
                this.mAnchorInfo.mFlexLinePosition = this.mFlexboxHelper.mIndexToFlexLine[this.mAnchorInfo.mPosition];
                this.mLayoutState.mFlexLinePosition = this.mAnchorInfo.mFlexLinePosition;
                return;
            }
            throw new AssertionError();
        }
    }

    public void onLayoutCompleted(State state) {
        super.onLayoutCompleted(state);
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mDirtyPosition = -1;
        this.mAnchorInfo.reset();
        this.mViewCache.clear();
    }

    boolean isLayoutRtl() {
        return this.mIsRtl;
    }

    private void resolveLayoutDirection() {
        boolean z = false;
        boolean z2 = true;
        int layoutDirection = getLayoutDirection();
        boolean z3;
        switch (this.mFlexDirection) {
            case 0:
                if (layoutDirection == 1) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                this.mIsRtl = z3;
                if (this.mFlexWrap != 2) {
                    z2 = false;
                }
                this.mFromBottomToTop = z2;
                return;
            case 1:
                if (layoutDirection != 1) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                this.mIsRtl = z3;
                if (this.mFlexWrap != 2) {
                    z2 = false;
                }
                this.mFromBottomToTop = z2;
                return;
            case 2:
                if (layoutDirection == 1) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                this.mIsRtl = z3;
                if (this.mFlexWrap == 2) {
                    if (this.mIsRtl) {
                        z2 = false;
                    }
                    this.mIsRtl = z2;
                }
                this.mFromBottomToTop = false;
                return;
            case 3:
                if (layoutDirection == 1) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                this.mIsRtl = z3;
                if (this.mFlexWrap == 2) {
                    if (!this.mIsRtl) {
                        z = true;
                    }
                    this.mIsRtl = z;
                }
                this.mFromBottomToTop = true;
                return;
            default:
                this.mIsRtl = false;
                this.mFromBottomToTop = false;
                return;
        }
    }

    private void updateAnchorInfoForLayout(State state, AnchorInfo anchorInfo) {
        if (!updateAnchorFromPendingState(state, anchorInfo, this.mPendingSavedState) && !updateAnchorFromChildren(state, anchorInfo)) {
            anchorInfo.assignCoordinateFromPadding();
            anchorInfo.mPosition = 0;
            anchorInfo.mFlexLinePosition = 0;
        }
    }

    private boolean updateAnchorFromPendingState(State state, AnchorInfo anchorInfo, SavedState savedState) {
        boolean z = false;
        if (!$assertionsDisabled && this.mFlexboxHelper.mIndexToFlexLine == null) {
            throw new AssertionError();
        } else if (state.isPreLayout() || this.mPendingScrollPosition == -1) {
            return false;
        } else {
            if (this.mPendingScrollPosition < 0 || this.mPendingScrollPosition >= state.getItemCount()) {
                this.mPendingScrollPosition = -1;
                this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
                return false;
            }
            anchorInfo.mPosition = this.mPendingScrollPosition;
            anchorInfo.mFlexLinePosition = this.mFlexboxHelper.mIndexToFlexLine[anchorInfo.mPosition];
            if (this.mPendingSavedState != null && this.mPendingSavedState.hasValidAnchor(state.getItemCount())) {
                anchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding() + savedState.mAnchorOffset;
                anchorInfo.mAssignedFromSavedState = true;
                anchorInfo.mFlexLinePosition = -1;
                return true;
            } else if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
                View anchorView = findViewByPosition(this.mPendingScrollPosition);
                if (anchorView == null) {
                    if (getChildCount() > 0) {
                        if (this.mPendingScrollPosition < getPosition(getChildAt(0))) {
                            z = true;
                        }
                        anchorInfo.mLayoutFromEnd = z;
                    }
                    anchorInfo.assignCoordinateFromPadding();
                    return true;
                } else if (this.mOrientationHelper.getDecoratedMeasurement(anchorView) > this.mOrientationHelper.getTotalSpace()) {
                    anchorInfo.assignCoordinateFromPadding();
                    return true;
                } else if (this.mOrientationHelper.getDecoratedStart(anchorView) - this.mOrientationHelper.getStartAfterPadding() < 0) {
                    anchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding();
                    anchorInfo.mLayoutFromEnd = false;
                    return true;
                } else if (this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(anchorView) < 0) {
                    anchorInfo.mCoordinate = this.mOrientationHelper.getEndAfterPadding();
                    anchorInfo.mLayoutFromEnd = true;
                    return true;
                } else {
                    int decoratedEnd;
                    if (anchorInfo.mLayoutFromEnd) {
                        decoratedEnd = this.mOrientationHelper.getDecoratedEnd(anchorView) + this.mOrientationHelper.getTotalSpaceChange();
                    } else {
                        decoratedEnd = this.mOrientationHelper.getDecoratedStart(anchorView);
                    }
                    anchorInfo.mCoordinate = decoratedEnd;
                    return true;
                }
            } else if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
                anchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding() + this.mPendingScrollPositionOffset;
                return true;
            } else {
                anchorInfo.mCoordinate = this.mPendingScrollPositionOffset - this.mOrientationHelper.getEndPadding();
                return true;
            }
        }
    }

    private boolean updateAnchorFromChildren(State state, AnchorInfo anchorInfo) {
        if (getChildCount() == 0) {
            return false;
        }
        View referenceChild;
        if (anchorInfo.mLayoutFromEnd) {
            referenceChild = findLastReferenceChild(state.getItemCount());
        } else {
            referenceChild = findFirstReferenceChild(state.getItemCount());
        }
        if (referenceChild == null) {
            return false;
        }
        anchorInfo.assignFromView(referenceChild);
        if (!state.isPreLayout() && supportsPredictiveItemAnimations()) {
            boolean notVisible;
            if (this.mOrientationHelper.getDecoratedStart(referenceChild) >= this.mOrientationHelper.getEndAfterPadding() || this.mOrientationHelper.getDecoratedEnd(referenceChild) < this.mOrientationHelper.getStartAfterPadding()) {
                notVisible = true;
            } else {
                notVisible = false;
            }
            if (notVisible) {
                int endAfterPadding;
                if (anchorInfo.mLayoutFromEnd) {
                    endAfterPadding = this.mOrientationHelper.getEndAfterPadding();
                } else {
                    endAfterPadding = this.mOrientationHelper.getStartAfterPadding();
                }
                anchorInfo.mCoordinate = endAfterPadding;
            }
        }
        return true;
    }

    private View findFirstReferenceChild(int itemCount) {
        if ($assertionsDisabled || this.mFlexboxHelper.mIndexToFlexLine != null) {
            View firstFound = findReferenceChild(0, getChildCount(), itemCount);
            if (firstFound == null) {
                return null;
            }
            int firstFoundLinePosition = this.mFlexboxHelper.mIndexToFlexLine[getPosition(firstFound)];
            if (firstFoundLinePosition != -1) {
                return findFirstReferenceViewInLine(firstFound, (FlexLine) this.mFlexLines.get(firstFoundLinePosition));
            }
            return null;
        }
        throw new AssertionError();
    }

    private View findLastReferenceChild(int itemCount) {
        if ($assertionsDisabled || this.mFlexboxHelper.mIndexToFlexLine != null) {
            View lastFound = findReferenceChild(getChildCount() - 1, -1, itemCount);
            if (lastFound == null) {
                return null;
            }
            return findLastReferenceViewInLine(lastFound, (FlexLine) this.mFlexLines.get(this.mFlexboxHelper.mIndexToFlexLine[getPosition(lastFound)]));
        }
        throw new AssertionError();
    }

    private View findReferenceChild(int start, int end, int itemCount) {
        ensureOrientationHelper();
        ensureLayoutState();
        View invalidMatch = null;
        View outOfBoundsMatch = null;
        int boundStart = this.mOrientationHelper.getStartAfterPadding();
        int boundEnd = this.mOrientationHelper.getEndAfterPadding();
        int diff = end > start ? 1 : -1;
        for (int i = start; i != end; i += diff) {
            View childAt = getChildAt(i);
            int position = getPosition(childAt);
            if (position >= 0 && position < itemCount) {
                if (((android.support.v7.widget.RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    if (invalidMatch == null) {
                        invalidMatch = childAt;
                    }
                } else if (this.mOrientationHelper.getDecoratedStart(childAt) >= boundStart && this.mOrientationHelper.getDecoratedEnd(childAt) <= boundEnd) {
                    return childAt;
                } else {
                    if (outOfBoundsMatch == null) {
                        outOfBoundsMatch = childAt;
                    }
                }
            }
        }
        if (outOfBoundsMatch == null) {
            outOfBoundsMatch = invalidMatch;
        }
        return outOfBoundsMatch;
    }

    private View getChildClosestToStart() {
        return getChildAt(0);
    }

    private int fill(Recycler recycler, State state, LayoutState layoutState) {
        if (layoutState.mScrollingOffset != Integer.MIN_VALUE) {
            if (layoutState.mAvailable < 0) {
                layoutState.mScrollingOffset = layoutState.mScrollingOffset + layoutState.mAvailable;
            }
            recycleByLayoutState(recycler, layoutState);
        }
        int start = layoutState.mAvailable;
        int remainingSpace = layoutState.mAvailable;
        int consumed = 0;
        boolean mainAxisHorizontal = isMainAxisDirectionHorizontal();
        while (true) {
            if ((remainingSpace > 0 || this.mLayoutState.mInfinite) && layoutState.hasMore(state, this.mFlexLines)) {
                FlexLine flexLine = (FlexLine) this.mFlexLines.get(layoutState.mFlexLinePosition);
                layoutState.mPosition = flexLine.mFirstIndex;
                consumed += layoutFlexLine(flexLine, layoutState);
                if (mainAxisHorizontal || !this.mIsRtl) {
                    layoutState.mOffset = layoutState.mOffset + (flexLine.getCrossSize() * layoutState.mLayoutDirection);
                } else {
                    layoutState.mOffset = layoutState.mOffset - (flexLine.getCrossSize() * layoutState.mLayoutDirection);
                }
                remainingSpace -= flexLine.getCrossSize();
            }
        }
        layoutState.mAvailable = layoutState.mAvailable - consumed;
        if (layoutState.mScrollingOffset != Integer.MIN_VALUE) {
            layoutState.mScrollingOffset = layoutState.mScrollingOffset + consumed;
            if (layoutState.mAvailable < 0) {
                layoutState.mScrollingOffset = layoutState.mScrollingOffset + layoutState.mAvailable;
            }
            recycleByLayoutState(recycler, layoutState);
        }
        return start - layoutState.mAvailable;
    }

    private void recycleByLayoutState(Recycler recycler, LayoutState layoutState) {
        if (!layoutState.mShouldRecycle) {
            return;
        }
        if (layoutState.mLayoutDirection == -1) {
            recycleFlexLinesFromEnd(recycler, layoutState);
        } else {
            recycleFlexLinesFromStart(recycler, layoutState);
        }
    }

    private void recycleFlexLinesFromStart(Recycler recycler, LayoutState layoutState) {
        if (layoutState.mScrollingOffset >= 0) {
            if ($assertionsDisabled || this.mFlexboxHelper.mIndexToFlexLine != null) {
                int childCount = getChildCount();
                if (childCount != 0) {
                    int currentLineIndex = this.mFlexboxHelper.mIndexToFlexLine[getPosition(getChildAt(0))];
                    if (currentLineIndex != -1) {
                        FlexLine flexLine = (FlexLine) this.mFlexLines.get(currentLineIndex);
                        int recycleTo = -1;
                        for (int i = 0; i < childCount; i++) {
                            View view = getChildAt(i);
                            if (!canViewBeRecycledFromStart(view, layoutState.mScrollingOffset)) {
                                break;
                            }
                            if (flexLine.mLastIndex == getPosition(view)) {
                                recycleTo = i;
                                if (currentLineIndex >= this.mFlexLines.size() - 1) {
                                    break;
                                }
                                currentLineIndex += layoutState.mLayoutDirection;
                                flexLine = (FlexLine) this.mFlexLines.get(currentLineIndex);
                            }
                        }
                        recycleChildren(recycler, 0, recycleTo);
                        return;
                    }
                    return;
                }
                return;
            }
            throw new AssertionError();
        }
    }

    private boolean canViewBeRecycledFromStart(View view, int scrollingOffset) {
        if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
            if (this.mOrientationHelper.getDecoratedEnd(view) > scrollingOffset) {
                return false;
            }
            return true;
        } else if (this.mOrientationHelper.getEnd() - this.mOrientationHelper.getDecoratedStart(view) <= scrollingOffset) {
            return true;
        } else {
            return false;
        }
    }

    private void recycleFlexLinesFromEnd(Recycler recycler, LayoutState layoutState) {
        if (layoutState.mScrollingOffset >= 0) {
            if ($assertionsDisabled || this.mFlexboxHelper.mIndexToFlexLine != null) {
                int limit = this.mOrientationHelper.getEnd() - layoutState.mScrollingOffset;
                int childCount = getChildCount();
                if (childCount != 0) {
                    int currentLineIndex = this.mFlexboxHelper.mIndexToFlexLine[getPosition(getChildAt(childCount - 1))];
                    if (currentLineIndex != -1) {
                        int recycleTo = childCount - 1;
                        int recycleFrom = childCount;
                        FlexLine flexLine = (FlexLine) this.mFlexLines.get(currentLineIndex);
                        for (int i = childCount - 1; i >= 0; i--) {
                            View view = getChildAt(i);
                            if (!canViewBeRecycledFromEnd(view, layoutState.mScrollingOffset)) {
                                break;
                            }
                            if (flexLine.mFirstIndex == getPosition(view)) {
                                recycleFrom = i;
                                if (currentLineIndex <= 0) {
                                    break;
                                }
                                currentLineIndex += layoutState.mLayoutDirection;
                                flexLine = (FlexLine) this.mFlexLines.get(currentLineIndex);
                            }
                        }
                        recycleChildren(recycler, recycleFrom, recycleTo);
                        return;
                    }
                    return;
                }
                return;
            }
            throw new AssertionError();
        }
    }

    private boolean canViewBeRecycledFromEnd(View view, int scrollingOffset) {
        if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
            if (this.mOrientationHelper.getDecoratedStart(view) < this.mOrientationHelper.getEnd() - scrollingOffset) {
                return false;
            }
            return true;
        } else if (this.mOrientationHelper.getDecoratedEnd(view) <= scrollingOffset) {
            return true;
        } else {
            return false;
        }
    }

    private void recycleChildren(Recycler recycler, int startIndex, int endIndex) {
        for (int i = endIndex; i >= startIndex; i--) {
            removeAndRecycleViewAt(i, recycler);
        }
    }

    private int layoutFlexLine(FlexLine flexLine, LayoutState layoutState) {
        if (isMainAxisDirectionHorizontal()) {
            return layoutFlexLineMainAxisHorizontal(flexLine, layoutState);
        }
        return layoutFlexLineMainAxisVertical(flexLine, layoutState);
    }

    private int layoutFlexLineMainAxisHorizontal(FlexLine flexLine, LayoutState layoutState) {
        if ($assertionsDisabled || this.mFlexboxHelper.mMeasureSpecCache != null) {
            float childLeft;
            float childRight;
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int parentWidth = getWidth();
            int childTop = layoutState.mOffset;
            if (layoutState.mLayoutDirection == -1) {
                childTop -= flexLine.mCrossSize;
            }
            int startPosition = layoutState.mPosition;
            float spaceBetweenItem = 0.0f;
            switch (this.mJustifyContent) {
                case 0:
                    childLeft = (float) paddingLeft;
                    childRight = (float) (parentWidth - paddingRight);
                    break;
                case 1:
                    childLeft = (float) ((parentWidth - flexLine.mMainSize) + paddingRight);
                    childRight = (float) (flexLine.mMainSize - paddingLeft);
                    break;
                case 2:
                    childLeft = ((float) paddingLeft) + (((float) (parentWidth - flexLine.mMainSize)) / 2.0f);
                    childRight = ((float) (parentWidth - paddingRight)) - (((float) (parentWidth - flexLine.mMainSize)) / 2.0f);
                    break;
                case 3:
                    childLeft = (float) paddingLeft;
                    spaceBetweenItem = ((float) (parentWidth - flexLine.mMainSize)) / (flexLine.mItemCount != 1 ? (float) (flexLine.mItemCount - 1) : 1.0f);
                    childRight = (float) (parentWidth - paddingRight);
                    break;
                case 4:
                    if (flexLine.mItemCount != 0) {
                        spaceBetweenItem = ((float) (parentWidth - flexLine.mMainSize)) / ((float) flexLine.mItemCount);
                    }
                    childLeft = ((float) paddingLeft) + (spaceBetweenItem / 2.0f);
                    childRight = ((float) (parentWidth - paddingRight)) - (spaceBetweenItem / 2.0f);
                    break;
                case 5:
                    if (flexLine.mItemCount != 0) {
                        spaceBetweenItem = ((float) (parentWidth - flexLine.mMainSize)) / ((float) (flexLine.mItemCount + 1));
                    }
                    childLeft = ((float) paddingLeft) + spaceBetweenItem;
                    childRight = ((float) (parentWidth - paddingRight)) - spaceBetweenItem;
                    break;
                default:
                    throw new IllegalStateException("Invalid justifyContent is set: " + this.mJustifyContent);
            }
            childLeft -= (float) this.mAnchorInfo.mPerpendicularCoordinate;
            childRight -= (float) this.mAnchorInfo.mPerpendicularCoordinate;
            spaceBetweenItem = Math.max(spaceBetweenItem, 0.0f);
            int indexInFlexLine = 0;
            int itemCount = flexLine.getItemCount();
            for (int i = startPosition; i < startPosition + itemCount; i++) {
                View view = getFlexItemAt(i);
                if (view != null) {
                    if (layoutState.mLayoutDirection == 1) {
                        calculateItemDecorationsForChild(view, TEMP_RECT);
                        addView(view);
                    } else {
                        calculateItemDecorationsForChild(view, TEMP_RECT);
                        addView(view, indexInFlexLine);
                        indexInFlexLine++;
                    }
                    long measureSpec = this.mFlexboxHelper.mMeasureSpecCache[i];
                    int widthSpec = this.mFlexboxHelper.extractLowerInt(measureSpec);
                    int heightSpec = this.mFlexboxHelper.extractHigherInt(measureSpec);
                    android.support.v7.widget.RecyclerView.LayoutParams lp = (LayoutParams) view.getLayoutParams();
                    if (shouldMeasureChild(view, widthSpec, heightSpec, lp)) {
                        view.measure(widthSpec, heightSpec);
                    }
                    childLeft += (float) (lp.leftMargin + getLeftDecorationWidth(view));
                    childRight -= (float) (lp.rightMargin + getRightDecorationWidth(view));
                    int topWithDecoration = childTop + getTopDecorationHeight(view);
                    if (this.mIsRtl) {
                        this.mFlexboxHelper.layoutSingleChildHorizontal(view, flexLine, Math.round(childRight) - view.getMeasuredWidth(), topWithDecoration, Math.round(childRight), topWithDecoration + view.getMeasuredHeight());
                    } else {
                        this.mFlexboxHelper.layoutSingleChildHorizontal(view, flexLine, Math.round(childLeft), topWithDecoration, view.getMeasuredWidth() + Math.round(childLeft), topWithDecoration + view.getMeasuredHeight());
                    }
                    childLeft += ((float) ((view.getMeasuredWidth() + lp.rightMargin) + getRightDecorationWidth(view))) + spaceBetweenItem;
                    childRight -= ((float) ((view.getMeasuredWidth() + lp.leftMargin) + getLeftDecorationWidth(view))) + spaceBetweenItem;
                }
            }
            layoutState.mFlexLinePosition = layoutState.mFlexLinePosition + this.mLayoutState.mLayoutDirection;
            return flexLine.getCrossSize();
        }
        throw new AssertionError();
    }

    private int layoutFlexLineMainAxisVertical(FlexLine flexLine, LayoutState layoutState) {
        if ($assertionsDisabled || this.mFlexboxHelper.mMeasureSpecCache != null) {
            float childTop;
            float childBottom;
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int parentHeight = getHeight();
            int childLeft = layoutState.mOffset;
            int childRight = layoutState.mOffset;
            if (layoutState.mLayoutDirection == -1) {
                childLeft -= flexLine.mCrossSize;
                childRight += flexLine.mCrossSize;
            }
            int startPosition = layoutState.mPosition;
            float spaceBetweenItem = 0.0f;
            switch (this.mJustifyContent) {
                case 0:
                    childTop = (float) paddingTop;
                    childBottom = (float) (parentHeight - paddingBottom);
                    break;
                case 1:
                    childTop = (float) ((parentHeight - flexLine.mMainSize) + paddingBottom);
                    childBottom = (float) (flexLine.mMainSize - paddingTop);
                    break;
                case 2:
                    childTop = ((float) paddingTop) + (((float) (parentHeight - flexLine.mMainSize)) / 2.0f);
                    childBottom = ((float) (parentHeight - paddingBottom)) - (((float) (parentHeight - flexLine.mMainSize)) / 2.0f);
                    break;
                case 3:
                    childTop = (float) paddingTop;
                    spaceBetweenItem = ((float) (parentHeight - flexLine.mMainSize)) / (flexLine.mItemCount != 1 ? (float) (flexLine.mItemCount - 1) : 1.0f);
                    childBottom = (float) (parentHeight - paddingBottom);
                    break;
                case 4:
                    if (flexLine.mItemCount != 0) {
                        spaceBetweenItem = ((float) (parentHeight - flexLine.mMainSize)) / ((float) flexLine.mItemCount);
                    }
                    childTop = ((float) paddingTop) + (spaceBetweenItem / 2.0f);
                    childBottom = ((float) (parentHeight - paddingBottom)) - (spaceBetweenItem / 2.0f);
                    break;
                case 5:
                    if (flexLine.mItemCount != 0) {
                        spaceBetweenItem = ((float) (parentHeight - flexLine.mMainSize)) / ((float) (flexLine.mItemCount + 1));
                    }
                    childTop = ((float) paddingTop) + spaceBetweenItem;
                    childBottom = ((float) (parentHeight - paddingBottom)) - spaceBetweenItem;
                    break;
                default:
                    throw new IllegalStateException("Invalid justifyContent is set: " + this.mJustifyContent);
            }
            childTop -= (float) this.mAnchorInfo.mPerpendicularCoordinate;
            childBottom -= (float) this.mAnchorInfo.mPerpendicularCoordinate;
            spaceBetweenItem = Math.max(spaceBetweenItem, 0.0f);
            int indexInFlexLine = 0;
            int itemCount = flexLine.getItemCount();
            for (int i = startPosition; i < startPosition + itemCount; i++) {
                View view = getFlexItemAt(i);
                if (view != null) {
                    long measureSpec = this.mFlexboxHelper.mMeasureSpecCache[i];
                    int widthSpec = this.mFlexboxHelper.extractLowerInt(measureSpec);
                    int heightSpec = this.mFlexboxHelper.extractHigherInt(measureSpec);
                    android.support.v7.widget.RecyclerView.LayoutParams lp = (LayoutParams) view.getLayoutParams();
                    if (shouldMeasureChild(view, widthSpec, heightSpec, lp)) {
                        view.measure(widthSpec, heightSpec);
                    }
                    childTop += (float) (lp.topMargin + getTopDecorationHeight(view));
                    childBottom -= (float) (lp.rightMargin + getBottomDecorationHeight(view));
                    if (layoutState.mLayoutDirection == 1) {
                        calculateItemDecorationsForChild(view, TEMP_RECT);
                        addView(view);
                    } else {
                        calculateItemDecorationsForChild(view, TEMP_RECT);
                        addView(view, indexInFlexLine);
                        indexInFlexLine++;
                    }
                    int leftWithDecoration = childLeft + getLeftDecorationWidth(view);
                    int rightWithDecoration = childRight - getRightDecorationWidth(view);
                    if (this.mIsRtl) {
                        if (this.mFromBottomToTop) {
                            this.mFlexboxHelper.layoutSingleChildVertical(view, flexLine, this.mIsRtl, rightWithDecoration - view.getMeasuredWidth(), Math.round(childBottom) - view.getMeasuredHeight(), rightWithDecoration, Math.round(childBottom));
                        } else {
                            this.mFlexboxHelper.layoutSingleChildVertical(view, flexLine, this.mIsRtl, rightWithDecoration - view.getMeasuredWidth(), Math.round(childTop), rightWithDecoration, view.getMeasuredHeight() + Math.round(childTop));
                        }
                    } else if (this.mFromBottomToTop) {
                        this.mFlexboxHelper.layoutSingleChildVertical(view, flexLine, this.mIsRtl, leftWithDecoration, Math.round(childBottom) - view.getMeasuredHeight(), leftWithDecoration + view.getMeasuredWidth(), Math.round(childBottom));
                    } else {
                        this.mFlexboxHelper.layoutSingleChildVertical(view, flexLine, this.mIsRtl, leftWithDecoration, Math.round(childTop), leftWithDecoration + view.getMeasuredWidth(), Math.round(childTop) + view.getMeasuredHeight());
                    }
                    childTop += ((float) ((view.getMeasuredHeight() + lp.topMargin) + getBottomDecorationHeight(view))) + spaceBetweenItem;
                    childBottom -= ((float) ((view.getMeasuredHeight() + lp.bottomMargin) + getTopDecorationHeight(view))) + spaceBetweenItem;
                }
            }
            layoutState.mFlexLinePosition = layoutState.mFlexLinePosition + this.mLayoutState.mLayoutDirection;
            return flexLine.getCrossSize();
        }
        throw new AssertionError();
    }

    public boolean isMainAxisDirectionHorizontal() {
        return this.mFlexDirection == 0 || this.mFlexDirection == 1;
    }

    private void updateLayoutStateToFillEnd(AnchorInfo anchorInfo, boolean fromNextLine, boolean considerInfinite) {
        if (considerInfinite) {
            resolveInfiniteAmount();
        } else {
            this.mLayoutState.mInfinite = false;
        }
        if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
            this.mLayoutState.mAvailable = this.mOrientationHelper.getEndAfterPadding() - anchorInfo.mCoordinate;
        } else {
            this.mLayoutState.mAvailable = anchorInfo.mCoordinate - getPaddingRight();
        }
        this.mLayoutState.mPosition = anchorInfo.mPosition;
        this.mLayoutState.mItemDirection = 1;
        this.mLayoutState.mLayoutDirection = 1;
        this.mLayoutState.mOffset = anchorInfo.mCoordinate;
        this.mLayoutState.mScrollingOffset = Integer.MIN_VALUE;
        this.mLayoutState.mFlexLinePosition = anchorInfo.mFlexLinePosition;
        if (fromNextLine && this.mFlexLines.size() > 1 && anchorInfo.mFlexLinePosition >= 0 && anchorInfo.mFlexLinePosition < this.mFlexLines.size() - 1) {
            FlexLine currentLine = (FlexLine) this.mFlexLines.get(anchorInfo.mFlexLinePosition);
            this.mLayoutState.mFlexLinePosition = this.mLayoutState.mFlexLinePosition + 1;
            LayoutState layoutState = this.mLayoutState;
            layoutState.mPosition = layoutState.mPosition + currentLine.getItemCount();
        }
    }

    private void updateLayoutStateToFillStart(AnchorInfo anchorInfo, boolean fromPreviousLine, boolean considerInfinite) {
        if (considerInfinite) {
            resolveInfiniteAmount();
        } else {
            this.mLayoutState.mInfinite = false;
        }
        if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
            this.mLayoutState.mAvailable = anchorInfo.mCoordinate - this.mOrientationHelper.getStartAfterPadding();
        } else {
            this.mLayoutState.mAvailable = (this.mParent.getWidth() - anchorInfo.mCoordinate) - this.mOrientationHelper.getStartAfterPadding();
        }
        this.mLayoutState.mPosition = anchorInfo.mPosition;
        this.mLayoutState.mItemDirection = 1;
        this.mLayoutState.mLayoutDirection = -1;
        this.mLayoutState.mOffset = anchorInfo.mCoordinate;
        this.mLayoutState.mScrollingOffset = Integer.MIN_VALUE;
        this.mLayoutState.mFlexLinePosition = anchorInfo.mFlexLinePosition;
        if (fromPreviousLine && anchorInfo.mFlexLinePosition > 0 && this.mFlexLines.size() > anchorInfo.mFlexLinePosition) {
            FlexLine currentLine = (FlexLine) this.mFlexLines.get(anchorInfo.mFlexLinePosition);
            this.mLayoutState.mFlexLinePosition = this.mLayoutState.mFlexLinePosition - 1;
            LayoutState layoutState = this.mLayoutState;
            layoutState.mPosition = layoutState.mPosition - currentLine.getItemCount();
        }
    }

    private void resolveInfiniteAmount() {
        int crossMode;
        if (isMainAxisDirectionHorizontal()) {
            crossMode = getHeightMode();
        } else {
            crossMode = getWidthMode();
        }
        LayoutState layoutState = this.mLayoutState;
        boolean z = crossMode == 0 || crossMode == Integer.MIN_VALUE;
        layoutState.mInfinite = z;
    }

    private void ensureOrientationHelper() {
        if (this.mOrientationHelper == null) {
            if (isMainAxisDirectionHorizontal()) {
                if (this.mFlexWrap == 0) {
                    this.mOrientationHelper = OrientationHelper.createHorizontalHelper(this);
                    this.mSubOrientationHelper = OrientationHelper.createVerticalHelper(this);
                    return;
                }
                this.mOrientationHelper = OrientationHelper.createVerticalHelper(this);
                this.mSubOrientationHelper = OrientationHelper.createHorizontalHelper(this);
            } else if (this.mFlexWrap == 0) {
                this.mOrientationHelper = OrientationHelper.createVerticalHelper(this);
                this.mSubOrientationHelper = OrientationHelper.createHorizontalHelper(this);
            } else {
                this.mOrientationHelper = OrientationHelper.createHorizontalHelper(this);
                this.mSubOrientationHelper = OrientationHelper.createVerticalHelper(this);
            }
        }
    }

    private void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = new LayoutState();
        }
    }

    public void scrollToPosition(int position) {
        this.mPendingScrollPosition = position;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        if (this.mPendingSavedState != null) {
            this.mPendingSavedState.invalidateAnchor();
        }
        requestLayout();
    }

    public void smoothScrollToPosition(RecyclerView recyclerView, State state, int position) {
        LinearSmoothScroller smoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        smoothScroller.setTargetPosition(position);
        startSmoothScroll(smoothScroller);
    }

    public void setRecycleChildrenOnDetach(boolean recycleChildrenOnDetach) {
        this.mRecycleChildrenOnDetach = recycleChildrenOnDetach;
    }

    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.mParent = (View) recyclerView.getParent();
    }

    public void onDetachedFromWindow(RecyclerView view, Recycler recycler) {
        super.onDetachedFromWindow(view, recycler);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(recycler);
            recycler.clear();
        }
    }

    public boolean canScrollHorizontally() {
        return !isMainAxisDirectionHorizontal() || getWidth() > this.mParent.getWidth();
    }

    public boolean canScrollVertically() {
        return isMainAxisDirectionHorizontal() || getHeight() > this.mParent.getHeight();
    }

    public int scrollHorizontallyBy(int dx, Recycler recycler, State state) {
        int scrolled;
        if (isMainAxisDirectionHorizontal()) {
            scrolled = handleScrollingMainAxis(dx);
            AnchorInfo anchorInfo = this.mAnchorInfo;
            anchorInfo.mPerpendicularCoordinate = anchorInfo.mPerpendicularCoordinate + scrolled;
            this.mSubOrientationHelper.offsetChildren(-scrolled);
            return scrolled;
        }
        scrolled = handleScrollingCrossAxis(dx, recycler, state);
        this.mViewCache.clear();
        return scrolled;
    }

    public int scrollVerticallyBy(int dy, Recycler recycler, State state) {
        int scrolled;
        if (isMainAxisDirectionHorizontal()) {
            scrolled = handleScrollingCrossAxis(dy, recycler, state);
            this.mViewCache.clear();
            return scrolled;
        }
        scrolled = handleScrollingMainAxis(dy);
        AnchorInfo anchorInfo = this.mAnchorInfo;
        anchorInfo.mPerpendicularCoordinate = anchorInfo.mPerpendicularCoordinate + scrolled;
        this.mSubOrientationHelper.offsetChildren(-scrolled);
        return scrolled;
    }

    private int handleScrollingCrossAxis(int delta, Recycler recycler, State state) {
        int scrolled = 0;
        int layoutDirection = 1;
        if (!(getChildCount() == 0 || delta == 0)) {
            boolean columnAndRtl;
            ensureOrientationHelper();
            this.mLayoutState.mShouldRecycle = true;
            if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
                columnAndRtl = false;
            } else {
                columnAndRtl = true;
            }
            if (columnAndRtl) {
                if (delta >= 0) {
                    layoutDirection = -1;
                }
            } else if (delta <= 0) {
                layoutDirection = -1;
            }
            int absDelta = Math.abs(delta);
            updateLayoutState(layoutDirection, absDelta);
            int consumed = this.mLayoutState.mScrollingOffset + fill(recycler, state, this.mLayoutState);
            if (consumed >= 0) {
                scrolled = columnAndRtl ? absDelta > consumed ? (-layoutDirection) * consumed : delta : absDelta > consumed ? layoutDirection * consumed : delta;
                this.mOrientationHelper.offsetChildren(-scrolled);
                this.mLayoutState.mLastScrollDelta = scrolled;
            }
        }
        return scrolled;
    }

    private int handleScrollingMainAxis(int delta) {
        boolean layoutRtl = true;
        if (getChildCount() == 0 || delta == 0) {
            return 0;
        }
        ensureOrientationHelper();
        boolean isMainAxisHorizontal = isMainAxisDirectionHorizontal();
        int parentLength = isMainAxisHorizontal ? this.mParent.getWidth() : this.mParent.getHeight();
        int mainAxisLength = isMainAxisHorizontal ? getWidth() : getHeight();
        if (getLayoutDirection() != 1) {
            layoutRtl = false;
        }
        if (layoutRtl) {
            int absDelta = Math.abs(delta);
            if (delta < 0) {
                delta = -Math.min((this.mAnchorInfo.mPerpendicularCoordinate + mainAxisLength) - parentLength, absDelta);
            } else if (this.mAnchorInfo.mPerpendicularCoordinate + delta > 0) {
                delta = -this.mAnchorInfo.mPerpendicularCoordinate;
            }
        } else if (delta > 0) {
            delta = Math.min((mainAxisLength - this.mAnchorInfo.mPerpendicularCoordinate) - parentLength, delta);
        } else if (this.mAnchorInfo.mPerpendicularCoordinate + delta < 0) {
            delta = -this.mAnchorInfo.mPerpendicularCoordinate;
        }
        return delta;
    }

    private void updateLayoutState(int layoutDirection, int absDelta) {
        if ($assertionsDisabled || this.mFlexboxHelper.mIndexToFlexLine != null) {
            this.mLayoutState.mLayoutDirection = layoutDirection;
            boolean mainAxisHorizontal = isMainAxisDirectionHorizontal();
            int widthMeasureSpec = MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
            int heightMeasureSpec = MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
            boolean columnAndRtl = !mainAxisHorizontal && this.mIsRtl;
            View referenceView;
            if (layoutDirection == 1) {
                View lastVisible = getChildAt(getChildCount() - 1);
                this.mLayoutState.mOffset = this.mOrientationHelper.getDecoratedEnd(lastVisible);
                int lastVisiblePosition = getPosition(lastVisible);
                referenceView = findLastReferenceViewInLine(lastVisible, (FlexLine) this.mFlexLines.get(this.mFlexboxHelper.mIndexToFlexLine[lastVisiblePosition]));
                this.mLayoutState.mItemDirection = 1;
                this.mLayoutState.mPosition = this.mLayoutState.mItemDirection + lastVisiblePosition;
                if (this.mFlexboxHelper.mIndexToFlexLine.length <= this.mLayoutState.mPosition) {
                    this.mLayoutState.mFlexLinePosition = -1;
                } else {
                    this.mLayoutState.mFlexLinePosition = this.mFlexboxHelper.mIndexToFlexLine[this.mLayoutState.mPosition];
                }
                if (columnAndRtl) {
                    this.mLayoutState.mOffset = this.mOrientationHelper.getDecoratedStart(referenceView);
                    this.mLayoutState.mScrollingOffset = (-this.mOrientationHelper.getDecoratedStart(referenceView)) + this.mOrientationHelper.getStartAfterPadding();
                    this.mLayoutState.mScrollingOffset = this.mLayoutState.mScrollingOffset >= 0 ? this.mLayoutState.mScrollingOffset : 0;
                } else {
                    this.mLayoutState.mOffset = this.mOrientationHelper.getDecoratedEnd(referenceView);
                    this.mLayoutState.mScrollingOffset = this.mOrientationHelper.getDecoratedEnd(referenceView) - this.mOrientationHelper.getEndAfterPadding();
                }
                if ((this.mLayoutState.mFlexLinePosition == -1 || this.mLayoutState.mFlexLinePosition > this.mFlexLines.size() - 1) && this.mLayoutState.mPosition <= getFlexItemCount()) {
                    int needsToFill = absDelta - this.mLayoutState.mScrollingOffset;
                    this.mFlexLinesResult.reset();
                    if (needsToFill > 0) {
                        if (mainAxisHorizontal) {
                            this.mFlexboxHelper.calculateHorizontalFlexLines(this.mFlexLinesResult, widthMeasureSpec, heightMeasureSpec, needsToFill, this.mLayoutState.mPosition, this.mFlexLines);
                        } else {
                            this.mFlexboxHelper.calculateVerticalFlexLines(this.mFlexLinesResult, widthMeasureSpec, heightMeasureSpec, needsToFill, this.mLayoutState.mPosition, this.mFlexLines);
                        }
                        this.mFlexboxHelper.determineMainSize(widthMeasureSpec, heightMeasureSpec, this.mLayoutState.mPosition);
                        this.mFlexboxHelper.stretchViews(this.mLayoutState.mPosition);
                    }
                }
            } else {
                View firstVisible = getChildAt(0);
                this.mLayoutState.mOffset = this.mOrientationHelper.getDecoratedStart(firstVisible);
                int firstVisiblePosition = getPosition(firstVisible);
                referenceView = findFirstReferenceViewInLine(firstVisible, (FlexLine) this.mFlexLines.get(this.mFlexboxHelper.mIndexToFlexLine[firstVisiblePosition]));
                this.mLayoutState.mItemDirection = 1;
                int flexLinePosition = this.mFlexboxHelper.mIndexToFlexLine[firstVisiblePosition];
                if (flexLinePosition == -1) {
                    flexLinePosition = 0;
                }
                if (flexLinePosition > 0) {
                    this.mLayoutState.mPosition = firstVisiblePosition - ((FlexLine) this.mFlexLines.get(flexLinePosition - 1)).getItemCount();
                } else {
                    this.mLayoutState.mPosition = -1;
                }
                this.mLayoutState.mFlexLinePosition = flexLinePosition > 0 ? flexLinePosition - 1 : 0;
                if (columnAndRtl) {
                    this.mLayoutState.mOffset = this.mOrientationHelper.getDecoratedEnd(referenceView);
                    this.mLayoutState.mScrollingOffset = this.mOrientationHelper.getDecoratedEnd(referenceView) - this.mOrientationHelper.getEndAfterPadding();
                    this.mLayoutState.mScrollingOffset = this.mLayoutState.mScrollingOffset >= 0 ? this.mLayoutState.mScrollingOffset : 0;
                } else {
                    this.mLayoutState.mOffset = this.mOrientationHelper.getDecoratedStart(referenceView);
                    this.mLayoutState.mScrollingOffset = (-this.mOrientationHelper.getDecoratedStart(referenceView)) + this.mOrientationHelper.getStartAfterPadding();
                }
            }
            this.mLayoutState.mAvailable = absDelta - this.mLayoutState.mScrollingOffset;
            return;
        }
        throw new AssertionError();
    }

    private View findFirstReferenceViewInLine(View firstView, FlexLine firstVisibleLine) {
        boolean mainAxisHorizontal = isMainAxisDirectionHorizontal();
        View referenceView = firstView;
        int to = firstVisibleLine.mItemCount;
        for (int i = 1; i < to; i++) {
            View viewInSameLine = getChildAt(i);
            if (!(viewInSameLine == null || viewInSameLine.getVisibility() == 8)) {
                if (!this.mIsRtl || mainAxisHorizontal) {
                    if (this.mOrientationHelper.getDecoratedStart(referenceView) > this.mOrientationHelper.getDecoratedStart(viewInSameLine)) {
                        referenceView = viewInSameLine;
                    }
                } else if (this.mOrientationHelper.getDecoratedEnd(referenceView) < this.mOrientationHelper.getDecoratedEnd(viewInSameLine)) {
                    referenceView = viewInSameLine;
                }
            }
        }
        return referenceView;
    }

    private View findLastReferenceViewInLine(View lastView, FlexLine lastVisibleLine) {
        boolean mainAxisHorizontal = isMainAxisDirectionHorizontal();
        View referenceView = lastView;
        int to = (getChildCount() - lastVisibleLine.mItemCount) - 1;
        for (int i = getChildCount() - 2; i > to; i--) {
            View viewInSameLine = getChildAt(i);
            if (!(viewInSameLine == null || viewInSameLine.getVisibility() == 8)) {
                if (!this.mIsRtl || mainAxisHorizontal) {
                    if (this.mOrientationHelper.getDecoratedEnd(referenceView) < this.mOrientationHelper.getDecoratedEnd(viewInSameLine)) {
                        referenceView = viewInSameLine;
                    }
                } else if (this.mOrientationHelper.getDecoratedStart(referenceView) > this.mOrientationHelper.getDecoratedStart(viewInSameLine)) {
                    referenceView = viewInSameLine;
                }
            }
        }
        return referenceView;
    }

    public int computeHorizontalScrollExtent(State state) {
        return computeScrollExtent(state);
    }

    public int computeVerticalScrollExtent(State state) {
        return computeScrollExtent(state);
    }

    private int computeScrollExtent(State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int allChildrenCount = state.getItemCount();
        ensureOrientationHelper();
        View firstReferenceView = findFirstReferenceChild(allChildrenCount);
        View lastReferenceView = findLastReferenceChild(allChildrenCount);
        if (state.getItemCount() == 0 || firstReferenceView == null || lastReferenceView == null) {
            return 0;
        }
        return Math.min(this.mOrientationHelper.getTotalSpace(), this.mOrientationHelper.getDecoratedEnd(lastReferenceView) - this.mOrientationHelper.getDecoratedStart(firstReferenceView));
    }

    public int computeHorizontalScrollOffset(State state) {
        int scrollOffset = computeScrollOffset(state);
        return computeScrollOffset(state);
    }

    public int computeVerticalScrollOffset(State state) {
        return computeScrollOffset(state);
    }

    private int computeScrollOffset(State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int allChildrenCount = state.getItemCount();
        View firstReferenceView = findFirstReferenceChild(allChildrenCount);
        View lastReferenceView = findLastReferenceChild(allChildrenCount);
        if (state.getItemCount() == 0 || firstReferenceView == null || lastReferenceView == null) {
            return 0;
        }
        if ($assertionsDisabled || this.mFlexboxHelper.mIndexToFlexLine != null) {
            int minPosition = getPosition(firstReferenceView);
            int maxPosition = getPosition(lastReferenceView);
            int laidOutArea = Math.abs(this.mOrientationHelper.getDecoratedEnd(lastReferenceView) - this.mOrientationHelper.getDecoratedStart(firstReferenceView));
            int firstLinePosition = this.mFlexboxHelper.mIndexToFlexLine[minPosition];
            if (firstLinePosition == 0 || firstLinePosition == -1) {
                return 0;
            }
            return Math.round((((float) firstLinePosition) * (((float) laidOutArea) / ((float) ((this.mFlexboxHelper.mIndexToFlexLine[maxPosition] - firstLinePosition) + 1)))) + ((float) (this.mOrientationHelper.getStartAfterPadding() - this.mOrientationHelper.getDecoratedStart(firstReferenceView))));
        }
        throw new AssertionError();
    }

    public int computeHorizontalScrollRange(State state) {
        return computeScrollRange(state);
    }

    public int computeVerticalScrollRange(State state) {
        return computeScrollRange(state);
    }

    private int computeScrollRange(State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int allItemCount = state.getItemCount();
        View firstReferenceView = findFirstReferenceChild(allItemCount);
        View lastReferenceView = findLastReferenceChild(allItemCount);
        if (state.getItemCount() == 0 || firstReferenceView == null || lastReferenceView == null) {
            return 0;
        }
        if ($assertionsDisabled || this.mFlexboxHelper.mIndexToFlexLine != null) {
            int firstVisiblePosition = findFirstVisibleItemPosition();
            int lastVisiblePosition = findLastVisibleItemPosition();
            return (int) ((((float) Math.abs(this.mOrientationHelper.getDecoratedEnd(lastReferenceView) - this.mOrientationHelper.getDecoratedStart(firstReferenceView))) / ((float) ((lastVisiblePosition - firstVisiblePosition) + 1))) * ((float) state.getItemCount()));
        }
        throw new AssertionError();
    }

    private boolean shouldMeasureChild(View child, int widthSpec, int heightSpec, android.support.v7.widget.RecyclerView.LayoutParams lp) {
        return (!child.isLayoutRequested() && isMeasurementCacheEnabled() && isMeasurementUpToDate(child.getWidth(), widthSpec, lp.width) && isMeasurementUpToDate(child.getHeight(), heightSpec, lp.height)) ? false : true;
    }

    private static boolean isMeasurementUpToDate(int childSize, int spec, int dimension) {
        int specMode = MeasureSpec.getMode(spec);
        int specSize = MeasureSpec.getSize(spec);
        if (dimension > 0 && childSize != dimension) {
            return false;
        }
        switch (specMode) {
            case Integer.MIN_VALUE:
                if (specSize < childSize) {
                    return false;
                }
                return true;
            case 0:
                return true;
            case 1073741824:
                if (specSize != childSize) {
                    return false;
                }
                return true;
            default:
                return false;
        }
    }

    private void clearFlexLines() {
        this.mFlexLines.clear();
        this.mAnchorInfo.reset();
        this.mAnchorInfo.mPerpendicularCoordinate = 0;
    }

    private int getChildLeft(View view) {
        return getDecoratedLeft(view) - ((android.support.v7.widget.RecyclerView.LayoutParams) view.getLayoutParams()).leftMargin;
    }

    private int getChildRight(View view) {
        return getDecoratedRight(view) + ((android.support.v7.widget.RecyclerView.LayoutParams) view.getLayoutParams()).rightMargin;
    }

    private int getChildTop(View view) {
        return getDecoratedTop(view) - ((android.support.v7.widget.RecyclerView.LayoutParams) view.getLayoutParams()).topMargin;
    }

    private int getChildBottom(View view) {
        return getDecoratedBottom(view) + ((android.support.v7.widget.RecyclerView.LayoutParams) view.getLayoutParams()).bottomMargin;
    }

    private boolean isViewVisible(View view, boolean completelyVisible) {
        int left = getPaddingLeft();
        int top = getPaddingTop();
        int right = getWidth() - getPaddingRight();
        int bottom = getHeight() - getPaddingBottom();
        int childLeft = getChildLeft(view);
        int childTop = getChildTop(view);
        int childRight = getChildRight(view);
        int childBottom = getChildBottom(view);
        boolean horizontalCompletelyVisible = false;
        boolean horizontalPartiallyVisible = false;
        boolean verticalCompletelyVisible = false;
        boolean verticalPartiallyVisible = false;
        if (left <= childLeft && right >= childRight) {
            horizontalCompletelyVisible = true;
        }
        if (childLeft >= right || childRight >= left) {
            horizontalPartiallyVisible = true;
        }
        if (top <= childTop && bottom >= childBottom) {
            verticalCompletelyVisible = true;
        }
        if (childTop >= bottom || childBottom >= top) {
            verticalPartiallyVisible = true;
        }
        return completelyVisible ? horizontalCompletelyVisible && verticalCompletelyVisible : horizontalPartiallyVisible && verticalPartiallyVisible;
    }

    public int findFirstVisibleItemPosition() {
        View child = findOneVisibleChild(0, getChildCount(), false);
        return child == null ? -1 : getPosition(child);
    }

    public int findLastVisibleItemPosition() {
        View child = findOneVisibleChild(getChildCount() - 1, -1, false);
        if (child == null) {
            return -1;
        }
        return getPosition(child);
    }

    private View findOneVisibleChild(int fromIndex, int toIndex, boolean completelyVisible) {
        int next = toIndex > fromIndex ? 1 : -1;
        for (int i = fromIndex; i != toIndex; i += next) {
            View view = getChildAt(i);
            if (isViewVisible(view, completelyVisible)) {
                return view;
            }
        }
        return null;
    }

    int getPositionToFlexLineIndex(int position) {
        if ($assertionsDisabled || this.mFlexboxHelper.mIndexToFlexLine != null) {
            return this.mFlexboxHelper.mIndexToFlexLine[position];
        }
        throw new AssertionError();
    }
}
