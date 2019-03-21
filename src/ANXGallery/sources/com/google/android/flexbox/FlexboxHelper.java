package com.google.android.flexbox;

import android.support.v4.view.MarginLayoutParamsCompat;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

class FlexboxHelper {
    static final /* synthetic */ boolean $assertionsDisabled = (!FlexboxHelper.class.desiredAssertionStatus());
    private boolean[] mChildrenFrozen;
    private final FlexContainer mFlexContainer;
    int[] mIndexToFlexLine;
    long[] mMeasureSpecCache;
    private long[] mMeasuredSizeCache;

    static class FlexLinesResult {
        int mChildState;
        List<FlexLine> mFlexLines;

        FlexLinesResult() {
        }

        void reset() {
            this.mFlexLines = null;
            this.mChildState = 0;
        }
    }

    FlexboxHelper(FlexContainer flexContainer) {
        this.mFlexContainer = flexContainer;
    }

    void calculateHorizontalFlexLines(FlexLinesResult result, int widthMeasureSpec, int heightMeasureSpec, int needsCalcAmount, int fromIndex, List<FlexLine> existingLines) {
        calculateFlexLines(result, widthMeasureSpec, heightMeasureSpec, needsCalcAmount, fromIndex, -1, existingLines);
    }

    void calculateHorizontalFlexLinesToIndex(FlexLinesResult result, int widthMeasureSpec, int heightMeasureSpec, int needsCalcAmount, int toIndex, List<FlexLine> existingLines) {
        calculateFlexLines(result, widthMeasureSpec, heightMeasureSpec, needsCalcAmount, 0, toIndex, existingLines);
    }

    void calculateVerticalFlexLines(FlexLinesResult result, int widthMeasureSpec, int heightMeasureSpec, int needsCalcAmount, int fromIndex, List<FlexLine> existingLines) {
        calculateFlexLines(result, heightMeasureSpec, widthMeasureSpec, needsCalcAmount, fromIndex, -1, existingLines);
    }

    void calculateVerticalFlexLinesToIndex(FlexLinesResult result, int widthMeasureSpec, int heightMeasureSpec, int needsCalcAmount, int toIndex, List<FlexLine> existingLines) {
        calculateFlexLines(result, heightMeasureSpec, widthMeasureSpec, needsCalcAmount, 0, toIndex, existingLines);
    }

    void calculateFlexLines(FlexLinesResult result, int mainMeasureSpec, int crossMeasureSpec, int needsCalcAmount, int fromIndex, int toIndex, List<FlexLine> existingLines) {
        List<FlexLine> flexLines;
        boolean isMainHorizontal = this.mFlexContainer.isMainAxisDirectionHorizontal();
        int mainMode = MeasureSpec.getMode(mainMeasureSpec);
        int mainSize = MeasureSpec.getSize(mainMeasureSpec);
        int childState = 0;
        if (existingLines == null) {
            flexLines = new ArrayList();
        } else {
            flexLines = existingLines;
        }
        result.mFlexLines = flexLines;
        boolean reachedToIndex = toIndex == -1;
        int mainPaddingStart = getPaddingStartMain(isMainHorizontal);
        int mainPaddingEnd = getPaddingEndMain(isMainHorizontal);
        int crossPaddingStart = getPaddingStartCross(isMainHorizontal);
        int crossPaddingEnd = getPaddingEndCross(isMainHorizontal);
        int largestSizeInCross = Integer.MIN_VALUE;
        int sumCrossSize = 0;
        int indexInFlexLine = 0;
        FlexLine flexLine = new FlexLine();
        flexLine.mFirstIndex = fromIndex;
        flexLine.mMainSize = mainPaddingStart + mainPaddingEnd;
        int childCount = this.mFlexContainer.getFlexItemCount();
        int i = fromIndex;
        while (i < childCount) {
            View child = this.mFlexContainer.getReorderedFlexItemAt(i);
            if (child != null) {
                if (child.getVisibility() != 8) {
                    int childMainMeasureSpec;
                    FlexItem flexItem = (FlexItem) child.getLayoutParams();
                    if (flexItem.getAlignSelf() == 4) {
                        flexLine.mIndicesAlignSelfStretch.add(Integer.valueOf(i));
                    }
                    int childMainSize = getFlexItemSizeMain(flexItem, isMainHorizontal);
                    if (flexItem.getFlexBasisPercent() != -1.0f && mainMode == 1073741824) {
                        childMainSize = Math.round(((float) mainSize) * flexItem.getFlexBasisPercent());
                    }
                    int childCrossMeasureSpec;
                    if (isMainHorizontal) {
                        childMainMeasureSpec = this.mFlexContainer.getChildWidthMeasureSpec(mainMeasureSpec, ((mainPaddingStart + mainPaddingEnd) + getFlexItemMarginStartMain(flexItem, true)) + getFlexItemMarginEndMain(flexItem, true), childMainSize);
                        childCrossMeasureSpec = this.mFlexContainer.getChildHeightMeasureSpec(crossMeasureSpec, (((crossPaddingStart + crossPaddingEnd) + getFlexItemMarginStartCross(flexItem, true)) + getFlexItemMarginEndCross(flexItem, true)) + sumCrossSize, getFlexItemSizeCross(flexItem, true));
                        child.measure(childMainMeasureSpec, childCrossMeasureSpec);
                        updateMeasureCache(i, childMainMeasureSpec, childCrossMeasureSpec, child);
                    } else {
                        childCrossMeasureSpec = this.mFlexContainer.getChildWidthMeasureSpec(crossMeasureSpec, (((crossPaddingStart + crossPaddingEnd) + getFlexItemMarginStartCross(flexItem, false)) + getFlexItemMarginEndCross(flexItem, false)) + sumCrossSize, getFlexItemSizeCross(flexItem, false));
                        childMainMeasureSpec = this.mFlexContainer.getChildHeightMeasureSpec(mainMeasureSpec, ((mainPaddingStart + mainPaddingEnd) + getFlexItemMarginStartMain(flexItem, false)) + getFlexItemMarginEndMain(flexItem, false), childMainSize);
                        child.measure(childCrossMeasureSpec, childMainMeasureSpec);
                        updateMeasureCache(i, childCrossMeasureSpec, childMainMeasureSpec, child);
                    }
                    this.mFlexContainer.updateViewCache(i, child);
                    checkSizeConstraints(child, i);
                    childState = View.combineMeasuredStates(childState, child.getMeasuredState());
                    if (isWrapRequired(child, mainMode, mainSize, flexLine.mMainSize, getFlexItemMarginEndMain(flexItem, isMainHorizontal) + (getViewMeasuredSizeMain(child, isMainHorizontal) + getFlexItemMarginStartMain(flexItem, isMainHorizontal)), flexItem, i, indexInFlexLine)) {
                        if (flexLine.getItemCountNotGone() > 0) {
                            addFlexLine(flexLines, flexLine, i > 0 ? i - 1 : 0, sumCrossSize);
                            sumCrossSize += flexLine.mCrossSize;
                        }
                        if (isMainHorizontal) {
                            if (flexItem.getHeight() == -1) {
                                child.measure(childMainMeasureSpec, this.mFlexContainer.getChildHeightMeasureSpec(crossMeasureSpec, (((this.mFlexContainer.getPaddingTop() + this.mFlexContainer.getPaddingBottom()) + flexItem.getMarginTop()) + flexItem.getMarginBottom()) + sumCrossSize, flexItem.getHeight()));
                                checkSizeConstraints(child, i);
                            }
                        } else if (flexItem.getWidth() == -1) {
                            child.measure(this.mFlexContainer.getChildWidthMeasureSpec(crossMeasureSpec, (((this.mFlexContainer.getPaddingLeft() + this.mFlexContainer.getPaddingRight()) + flexItem.getMarginLeft()) + flexItem.getMarginRight()) + sumCrossSize, flexItem.getWidth()), childMainMeasureSpec);
                            checkSizeConstraints(child, i);
                        }
                        flexLine = new FlexLine();
                        flexLine.mItemCount = 1;
                        flexLine.mMainSize = mainPaddingStart + mainPaddingEnd;
                        flexLine.mFirstIndex = i;
                        indexInFlexLine = 0;
                        largestSizeInCross = Integer.MIN_VALUE;
                    } else {
                        flexLine.mItemCount++;
                        indexInFlexLine++;
                    }
                    if (this.mIndexToFlexLine != null) {
                        this.mIndexToFlexLine[i] = flexLines.size();
                    }
                    flexLine.mMainSize += (getViewMeasuredSizeMain(child, isMainHorizontal) + getFlexItemMarginStartMain(flexItem, isMainHorizontal)) + getFlexItemMarginEndMain(flexItem, isMainHorizontal);
                    flexLine.mTotalFlexGrow += flexItem.getFlexGrow();
                    flexLine.mTotalFlexShrink += flexItem.getFlexShrink();
                    this.mFlexContainer.onNewFlexItemAdded(child, i, indexInFlexLine, flexLine);
                    largestSizeInCross = Math.max(largestSizeInCross, ((getViewMeasuredSizeCross(child, isMainHorizontal) + getFlexItemMarginStartCross(flexItem, isMainHorizontal)) + getFlexItemMarginEndCross(flexItem, isMainHorizontal)) + this.mFlexContainer.getDecorationLengthCrossAxis(child));
                    flexLine.mCrossSize = Math.max(flexLine.mCrossSize, largestSizeInCross);
                    if (isMainHorizontal) {
                        if (this.mFlexContainer.getFlexWrap() != 2) {
                            flexLine.mMaxBaseline = Math.max(flexLine.mMaxBaseline, child.getBaseline() + flexItem.getMarginTop());
                        } else {
                            flexLine.mMaxBaseline = Math.max(flexLine.mMaxBaseline, (child.getMeasuredHeight() - child.getBaseline()) + flexItem.getMarginBottom());
                        }
                    }
                    if (isLastFlexItem(i, childCount, flexLine)) {
                        addFlexLine(flexLines, flexLine, i, sumCrossSize);
                        sumCrossSize += flexLine.mCrossSize;
                    }
                    if (toIndex != -1 && flexLines.size() > 0) {
                        if (((FlexLine) flexLines.get(flexLines.size() - 1)).mLastIndex >= toIndex && i >= toIndex && !reachedToIndex) {
                            sumCrossSize = -flexLine.getCrossSize();
                            reachedToIndex = true;
                        }
                    }
                    if (sumCrossSize > needsCalcAmount && reachedToIndex) {
                        break;
                    }
                }
                flexLine.mGoneItemCount++;
                flexLine.mItemCount++;
                if (isLastFlexItem(i, childCount, flexLine)) {
                    addFlexLine(flexLines, flexLine, i, sumCrossSize);
                }
            } else if (isLastFlexItem(i, childCount, flexLine)) {
                addFlexLine(flexLines, flexLine, i, sumCrossSize);
            }
            i++;
        }
        result.mChildState = childState;
    }

    private int getPaddingStartMain(boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return this.mFlexContainer.getPaddingStart();
        }
        return this.mFlexContainer.getPaddingTop();
    }

    private int getPaddingEndMain(boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return this.mFlexContainer.getPaddingEnd();
        }
        return this.mFlexContainer.getPaddingBottom();
    }

    private int getPaddingStartCross(boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return this.mFlexContainer.getPaddingTop();
        }
        return this.mFlexContainer.getPaddingStart();
    }

    private int getPaddingEndCross(boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return this.mFlexContainer.getPaddingBottom();
        }
        return this.mFlexContainer.getPaddingEnd();
    }

    private int getViewMeasuredSizeMain(View view, boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return view.getMeasuredWidth();
        }
        return view.getMeasuredHeight();
    }

    private int getViewMeasuredSizeCross(View view, boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return view.getMeasuredHeight();
        }
        return view.getMeasuredWidth();
    }

    private int getFlexItemSizeMain(FlexItem flexItem, boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return flexItem.getWidth();
        }
        return flexItem.getHeight();
    }

    private int getFlexItemSizeCross(FlexItem flexItem, boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return flexItem.getHeight();
        }
        return flexItem.getWidth();
    }

    private int getFlexItemMarginStartMain(FlexItem flexItem, boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return flexItem.getMarginLeft();
        }
        return flexItem.getMarginTop();
    }

    private int getFlexItemMarginEndMain(FlexItem flexItem, boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return flexItem.getMarginRight();
        }
        return flexItem.getMarginBottom();
    }

    private int getFlexItemMarginStartCross(FlexItem flexItem, boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return flexItem.getMarginTop();
        }
        return flexItem.getMarginLeft();
    }

    private int getFlexItemMarginEndCross(FlexItem flexItem, boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return flexItem.getMarginBottom();
        }
        return flexItem.getMarginRight();
    }

    private boolean isWrapRequired(View view, int mode, int maxSize, int currentLength, int childLength, FlexItem flexItem, int index, int indexInFlexLine) {
        boolean z = true;
        if (this.mFlexContainer.getFlexWrap() == 0) {
            return false;
        }
        if (flexItem.isWrapBefore()) {
            return true;
        }
        if (mode == 0) {
            return false;
        }
        int decorationLength = this.mFlexContainer.getDecorationLengthMainAxis(view, index, indexInFlexLine);
        if (decorationLength > 0) {
            childLength += decorationLength;
        }
        if (maxSize >= currentLength + childLength) {
            z = false;
        }
        return z;
    }

    private boolean isLastFlexItem(int childIndex, int childCount, FlexLine flexLine) {
        return childIndex == childCount + -1 && flexLine.getItemCountNotGone() != 0;
    }

    private void addFlexLine(List<FlexLine> flexLines, FlexLine flexLine, int viewIndex, int usedCrossSizeSoFar) {
        flexLine.mSumCrossSizeBefore = usedCrossSizeSoFar;
        this.mFlexContainer.onNewFlexLineAdded(flexLine);
        flexLine.mLastIndex = viewIndex;
        flexLines.add(flexLine);
    }

    private void checkSizeConstraints(View view, int index) {
        boolean needsMeasure = false;
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int childWidth = view.getMeasuredWidth();
        int childHeight = view.getMeasuredHeight();
        if (childWidth < flexItem.getMinWidth()) {
            needsMeasure = true;
            childWidth = flexItem.getMinWidth();
        } else if (childWidth > flexItem.getMaxWidth()) {
            needsMeasure = true;
            childWidth = flexItem.getMaxWidth();
        }
        if (childHeight < flexItem.getMinHeight()) {
            needsMeasure = true;
            childHeight = flexItem.getMinHeight();
        } else if (childHeight > flexItem.getMaxHeight()) {
            needsMeasure = true;
            childHeight = flexItem.getMaxHeight();
        }
        if (needsMeasure) {
            int widthSpec = MeasureSpec.makeMeasureSpec(childWidth, 1073741824);
            int heightSpec = MeasureSpec.makeMeasureSpec(childHeight, 1073741824);
            view.measure(widthSpec, heightSpec);
            updateMeasureCache(index, widthSpec, heightSpec, view);
            this.mFlexContainer.updateViewCache(index, view);
        }
    }

    void determineMainSize(int widthMeasureSpec, int heightMeasureSpec) {
        determineMainSize(widthMeasureSpec, heightMeasureSpec, 0);
    }

    void determineMainSize(int widthMeasureSpec, int heightMeasureSpec, int fromIndex) {
        ensureChildrenFrozen(this.mFlexContainer.getFlexItemCount());
        if (fromIndex < this.mFlexContainer.getFlexItemCount()) {
            int mainSize;
            int paddingAlongMainAxis;
            int flexDirection = this.mFlexContainer.getFlexDirection();
            switch (this.mFlexContainer.getFlexDirection()) {
                case 0:
                case 1:
                    int widthMode = MeasureSpec.getMode(widthMeasureSpec);
                    int widthSize = MeasureSpec.getSize(widthMeasureSpec);
                    if (widthMode == 1073741824) {
                        mainSize = widthSize;
                    } else {
                        mainSize = this.mFlexContainer.getLargestMainSize();
                    }
                    paddingAlongMainAxis = this.mFlexContainer.getPaddingLeft() + this.mFlexContainer.getPaddingRight();
                    break;
                case 2:
                case 3:
                    int heightMode = MeasureSpec.getMode(heightMeasureSpec);
                    int heightSize = MeasureSpec.getSize(heightMeasureSpec);
                    if (heightMode == 1073741824) {
                        mainSize = heightSize;
                    } else {
                        mainSize = this.mFlexContainer.getLargestMainSize();
                    }
                    paddingAlongMainAxis = this.mFlexContainer.getPaddingTop() + this.mFlexContainer.getPaddingBottom();
                    break;
                default:
                    throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
            }
            int flexLineIndex = 0;
            if (this.mIndexToFlexLine != null) {
                flexLineIndex = this.mIndexToFlexLine[fromIndex];
            }
            List<FlexLine> flexLines = this.mFlexContainer.getFlexLinesInternal();
            int size = flexLines.size();
            for (int i = flexLineIndex; i < size; i++) {
                FlexLine flexLine = (FlexLine) flexLines.get(i);
                if (flexLine.mMainSize < mainSize) {
                    expandFlexItems(widthMeasureSpec, heightMeasureSpec, flexLine, mainSize, paddingAlongMainAxis, false);
                } else {
                    shrinkFlexItems(widthMeasureSpec, heightMeasureSpec, flexLine, mainSize, paddingAlongMainAxis, false);
                }
            }
        }
    }

    private void ensureChildrenFrozen(int size) {
        if (this.mChildrenFrozen == null) {
            if (size < 10) {
                size = 10;
            }
            this.mChildrenFrozen = new boolean[size];
        } else if (this.mChildrenFrozen.length < size) {
            int newCapacity = this.mChildrenFrozen.length * 2;
            if (newCapacity < size) {
                newCapacity = size;
            }
            this.mChildrenFrozen = new boolean[newCapacity];
        } else {
            Arrays.fill(this.mChildrenFrozen, false);
        }
    }

    private void expandFlexItems(int widthMeasureSpec, int heightMeasureSpec, FlexLine flexLine, int maxMainSize, int paddingAlongMainAxis, boolean calledRecursively) {
        if (flexLine.mTotalFlexGrow > 0.0f && maxMainSize >= flexLine.mMainSize) {
            int sizeBeforeExpand = flexLine.mMainSize;
            boolean needsReexpand = false;
            float unitSpace = ((float) (maxMainSize - flexLine.mMainSize)) / flexLine.mTotalFlexGrow;
            flexLine.mMainSize = flexLine.mDividerLengthInMainSize + paddingAlongMainAxis;
            int largestCrossSize = 0;
            if (!calledRecursively) {
                flexLine.mCrossSize = Integer.MIN_VALUE;
            }
            float accumulatedRoundError = 0.0f;
            for (int i = 0; i < flexLine.mItemCount; i++) {
                int index = flexLine.mFirstIndex + i;
                View child = this.mFlexContainer.getReorderedFlexItemAt(index);
                if (!(child == null || child.getVisibility() == 8)) {
                    FlexItem flexItem = (FlexItem) child.getLayoutParams();
                    int flexDirection = this.mFlexContainer.getFlexDirection();
                    int childMeasuredWidth;
                    int childMeasuredHeight;
                    int childHeightMeasureSpec;
                    int childWidthMeasureSpec;
                    if (flexDirection == 0 || flexDirection == 1) {
                        childMeasuredWidth = child.getMeasuredWidth();
                        if (this.mMeasuredSizeCache != null) {
                            childMeasuredWidth = extractLowerInt(this.mMeasuredSizeCache[index]);
                        }
                        childMeasuredHeight = child.getMeasuredHeight();
                        if (this.mMeasuredSizeCache != null) {
                            childMeasuredHeight = extractHigherInt(this.mMeasuredSizeCache[index]);
                        }
                        if (!this.mChildrenFrozen[index] && flexItem.getFlexGrow() > 0.0f) {
                            float rawCalculatedWidth = ((float) childMeasuredWidth) + (flexItem.getFlexGrow() * unitSpace);
                            if (i == flexLine.mItemCount - 1) {
                                rawCalculatedWidth += accumulatedRoundError;
                                accumulatedRoundError = 0.0f;
                            }
                            int newWidth = Math.round(rawCalculatedWidth);
                            if (newWidth > flexItem.getMaxWidth()) {
                                needsReexpand = true;
                                newWidth = flexItem.getMaxWidth();
                                this.mChildrenFrozen[index] = true;
                                flexLine.mTotalFlexGrow -= flexItem.getFlexGrow();
                            } else {
                                accumulatedRoundError += rawCalculatedWidth - ((float) newWidth);
                                if (((double) accumulatedRoundError) > 1.0d) {
                                    newWidth++;
                                    accumulatedRoundError = (float) (((double) accumulatedRoundError) - 1.0d);
                                } else if (((double) accumulatedRoundError) < -1.0d) {
                                    newWidth--;
                                    accumulatedRoundError = (float) (((double) accumulatedRoundError) + 1.0d);
                                }
                            }
                            childHeightMeasureSpec = getChildHeightMeasureSpecInternal(heightMeasureSpec, flexItem, flexLine.mSumCrossSizeBefore);
                            childWidthMeasureSpec = MeasureSpec.makeMeasureSpec(newWidth, 1073741824);
                            child.measure(childWidthMeasureSpec, childHeightMeasureSpec);
                            childMeasuredWidth = child.getMeasuredWidth();
                            childMeasuredHeight = child.getMeasuredHeight();
                            updateMeasureCache(index, childWidthMeasureSpec, childHeightMeasureSpec, child);
                            this.mFlexContainer.updateViewCache(index, child);
                        }
                        largestCrossSize = Math.max(largestCrossSize, ((flexItem.getMarginTop() + childMeasuredHeight) + flexItem.getMarginBottom()) + this.mFlexContainer.getDecorationLengthCrossAxis(child));
                        flexLine.mMainSize += (flexItem.getMarginLeft() + childMeasuredWidth) + flexItem.getMarginRight();
                    } else {
                        childMeasuredHeight = child.getMeasuredHeight();
                        if (this.mMeasuredSizeCache != null) {
                            childMeasuredHeight = extractHigherInt(this.mMeasuredSizeCache[index]);
                        }
                        childMeasuredWidth = child.getMeasuredWidth();
                        if (this.mMeasuredSizeCache != null) {
                            childMeasuredWidth = extractLowerInt(this.mMeasuredSizeCache[index]);
                        }
                        if (!this.mChildrenFrozen[index] && flexItem.getFlexGrow() > 0.0f) {
                            float rawCalculatedHeight = ((float) childMeasuredHeight) + (flexItem.getFlexGrow() * unitSpace);
                            if (i == flexLine.mItemCount - 1) {
                                rawCalculatedHeight += accumulatedRoundError;
                                accumulatedRoundError = 0.0f;
                            }
                            int newHeight = Math.round(rawCalculatedHeight);
                            if (newHeight > flexItem.getMaxHeight()) {
                                needsReexpand = true;
                                newHeight = flexItem.getMaxHeight();
                                this.mChildrenFrozen[index] = true;
                                flexLine.mTotalFlexGrow -= flexItem.getFlexGrow();
                            } else {
                                accumulatedRoundError += rawCalculatedHeight - ((float) newHeight);
                                if (((double) accumulatedRoundError) > 1.0d) {
                                    newHeight++;
                                    accumulatedRoundError = (float) (((double) accumulatedRoundError) - 1.0d);
                                } else if (((double) accumulatedRoundError) < -1.0d) {
                                    newHeight--;
                                    accumulatedRoundError = (float) (((double) accumulatedRoundError) + 1.0d);
                                }
                            }
                            childWidthMeasureSpec = getChildWidthMeasureSpecInternal(widthMeasureSpec, flexItem, flexLine.mSumCrossSizeBefore);
                            childHeightMeasureSpec = MeasureSpec.makeMeasureSpec(newHeight, 1073741824);
                            child.measure(childWidthMeasureSpec, childHeightMeasureSpec);
                            childMeasuredWidth = child.getMeasuredWidth();
                            childMeasuredHeight = child.getMeasuredHeight();
                            updateMeasureCache(index, childWidthMeasureSpec, childHeightMeasureSpec, child);
                            this.mFlexContainer.updateViewCache(index, child);
                        }
                        largestCrossSize = Math.max(largestCrossSize, ((flexItem.getMarginLeft() + childMeasuredWidth) + flexItem.getMarginRight()) + this.mFlexContainer.getDecorationLengthCrossAxis(child));
                        flexLine.mMainSize += (flexItem.getMarginTop() + childMeasuredHeight) + flexItem.getMarginBottom();
                    }
                    flexLine.mCrossSize = Math.max(flexLine.mCrossSize, largestCrossSize);
                }
            }
            if (needsReexpand && sizeBeforeExpand != flexLine.mMainSize) {
                expandFlexItems(widthMeasureSpec, heightMeasureSpec, flexLine, maxMainSize, paddingAlongMainAxis, true);
            }
        }
    }

    private void shrinkFlexItems(int widthMeasureSpec, int heightMeasureSpec, FlexLine flexLine, int maxMainSize, int paddingAlongMainAxis, boolean calledRecursively) {
        int sizeBeforeShrink = flexLine.mMainSize;
        if (flexLine.mTotalFlexShrink > 0.0f && maxMainSize <= flexLine.mMainSize) {
            boolean needsReshrink = false;
            float unitShrink = ((float) (flexLine.mMainSize - maxMainSize)) / flexLine.mTotalFlexShrink;
            float accumulatedRoundError = 0.0f;
            flexLine.mMainSize = flexLine.mDividerLengthInMainSize + paddingAlongMainAxis;
            int largestCrossSize = 0;
            if (!calledRecursively) {
                flexLine.mCrossSize = Integer.MIN_VALUE;
            }
            for (int i = 0; i < flexLine.mItemCount; i++) {
                int index = flexLine.mFirstIndex + i;
                View child = this.mFlexContainer.getReorderedFlexItemAt(index);
                if (!(child == null || child.getVisibility() == 8)) {
                    FlexItem flexItem = (FlexItem) child.getLayoutParams();
                    int flexDirection = this.mFlexContainer.getFlexDirection();
                    int childMeasuredWidth;
                    int childMeasuredHeight;
                    int childHeightMeasureSpec;
                    int childWidthMeasureSpec;
                    if (flexDirection == 0 || flexDirection == 1) {
                        childMeasuredWidth = child.getMeasuredWidth();
                        if (this.mMeasuredSizeCache != null) {
                            childMeasuredWidth = extractLowerInt(this.mMeasuredSizeCache[index]);
                        }
                        childMeasuredHeight = child.getMeasuredHeight();
                        if (this.mMeasuredSizeCache != null) {
                            childMeasuredHeight = extractHigherInt(this.mMeasuredSizeCache[index]);
                        }
                        if (!this.mChildrenFrozen[index] && flexItem.getFlexShrink() > 0.0f) {
                            float rawCalculatedWidth = ((float) childMeasuredWidth) - (flexItem.getFlexShrink() * unitShrink);
                            if (i == flexLine.mItemCount - 1) {
                                rawCalculatedWidth += accumulatedRoundError;
                                accumulatedRoundError = 0.0f;
                            }
                            int newWidth = Math.round(rawCalculatedWidth);
                            if (newWidth < flexItem.getMinWidth()) {
                                needsReshrink = true;
                                newWidth = flexItem.getMinWidth();
                                this.mChildrenFrozen[index] = true;
                                flexLine.mTotalFlexShrink -= flexItem.getFlexShrink();
                            } else {
                                accumulatedRoundError += rawCalculatedWidth - ((float) newWidth);
                                if (((double) accumulatedRoundError) > 1.0d) {
                                    newWidth++;
                                    accumulatedRoundError -= 1.0f;
                                } else if (((double) accumulatedRoundError) < -1.0d) {
                                    newWidth--;
                                    accumulatedRoundError += 1.0f;
                                }
                            }
                            childHeightMeasureSpec = getChildHeightMeasureSpecInternal(heightMeasureSpec, flexItem, flexLine.mSumCrossSizeBefore);
                            childWidthMeasureSpec = MeasureSpec.makeMeasureSpec(newWidth, 1073741824);
                            child.measure(childWidthMeasureSpec, childHeightMeasureSpec);
                            childMeasuredWidth = child.getMeasuredWidth();
                            childMeasuredHeight = child.getMeasuredHeight();
                            updateMeasureCache(index, childWidthMeasureSpec, childHeightMeasureSpec, child);
                            this.mFlexContainer.updateViewCache(index, child);
                        }
                        largestCrossSize = Math.max(largestCrossSize, ((flexItem.getMarginTop() + childMeasuredHeight) + flexItem.getMarginBottom()) + this.mFlexContainer.getDecorationLengthCrossAxis(child));
                        flexLine.mMainSize += (flexItem.getMarginLeft() + childMeasuredWidth) + flexItem.getMarginRight();
                    } else {
                        childMeasuredHeight = child.getMeasuredHeight();
                        if (this.mMeasuredSizeCache != null) {
                            childMeasuredHeight = extractHigherInt(this.mMeasuredSizeCache[index]);
                        }
                        childMeasuredWidth = child.getMeasuredWidth();
                        if (this.mMeasuredSizeCache != null) {
                            childMeasuredWidth = extractLowerInt(this.mMeasuredSizeCache[index]);
                        }
                        if (!this.mChildrenFrozen[index] && flexItem.getFlexShrink() > 0.0f) {
                            float rawCalculatedHeight = ((float) childMeasuredHeight) - (flexItem.getFlexShrink() * unitShrink);
                            if (i == flexLine.mItemCount - 1) {
                                rawCalculatedHeight += accumulatedRoundError;
                                accumulatedRoundError = 0.0f;
                            }
                            int newHeight = Math.round(rawCalculatedHeight);
                            if (newHeight < flexItem.getMinHeight()) {
                                needsReshrink = true;
                                newHeight = flexItem.getMinHeight();
                                this.mChildrenFrozen[index] = true;
                                flexLine.mTotalFlexShrink -= flexItem.getFlexShrink();
                            } else {
                                accumulatedRoundError += rawCalculatedHeight - ((float) newHeight);
                                if (((double) accumulatedRoundError) > 1.0d) {
                                    newHeight++;
                                    accumulatedRoundError -= 1.0f;
                                } else if (((double) accumulatedRoundError) < -1.0d) {
                                    newHeight--;
                                    accumulatedRoundError += 1.0f;
                                }
                            }
                            childWidthMeasureSpec = getChildWidthMeasureSpecInternal(widthMeasureSpec, flexItem, flexLine.mSumCrossSizeBefore);
                            childHeightMeasureSpec = MeasureSpec.makeMeasureSpec(newHeight, 1073741824);
                            child.measure(childWidthMeasureSpec, childHeightMeasureSpec);
                            childMeasuredWidth = child.getMeasuredWidth();
                            childMeasuredHeight = child.getMeasuredHeight();
                            updateMeasureCache(index, childWidthMeasureSpec, childHeightMeasureSpec, child);
                            this.mFlexContainer.updateViewCache(index, child);
                        }
                        largestCrossSize = Math.max(largestCrossSize, ((flexItem.getMarginLeft() + childMeasuredWidth) + flexItem.getMarginRight()) + this.mFlexContainer.getDecorationLengthCrossAxis(child));
                        flexLine.mMainSize += (flexItem.getMarginTop() + childMeasuredHeight) + flexItem.getMarginBottom();
                    }
                    flexLine.mCrossSize = Math.max(flexLine.mCrossSize, largestCrossSize);
                }
            }
            if (needsReshrink && sizeBeforeShrink != flexLine.mMainSize) {
                shrinkFlexItems(widthMeasureSpec, heightMeasureSpec, flexLine, maxMainSize, paddingAlongMainAxis, true);
            }
        }
    }

    private int getChildWidthMeasureSpecInternal(int widthMeasureSpec, FlexItem flexItem, int padding) {
        int childWidthMeasureSpec = this.mFlexContainer.getChildWidthMeasureSpec(widthMeasureSpec, (((this.mFlexContainer.getPaddingLeft() + this.mFlexContainer.getPaddingRight()) + flexItem.getMarginLeft()) + flexItem.getMarginRight()) + padding, flexItem.getWidth());
        int childWidth = MeasureSpec.getSize(childWidthMeasureSpec);
        if (childWidth > flexItem.getMaxWidth()) {
            return MeasureSpec.makeMeasureSpec(flexItem.getMaxWidth(), MeasureSpec.getMode(childWidthMeasureSpec));
        }
        if (childWidth < flexItem.getMinWidth()) {
            return MeasureSpec.makeMeasureSpec(flexItem.getMinWidth(), MeasureSpec.getMode(childWidthMeasureSpec));
        }
        return childWidthMeasureSpec;
    }

    private int getChildHeightMeasureSpecInternal(int heightMeasureSpec, FlexItem flexItem, int padding) {
        int childHeightMeasureSpec = this.mFlexContainer.getChildHeightMeasureSpec(heightMeasureSpec, (((this.mFlexContainer.getPaddingTop() + this.mFlexContainer.getPaddingBottom()) + flexItem.getMarginTop()) + flexItem.getMarginBottom()) + padding, flexItem.getHeight());
        int childHeight = MeasureSpec.getSize(childHeightMeasureSpec);
        if (childHeight > flexItem.getMaxHeight()) {
            return MeasureSpec.makeMeasureSpec(flexItem.getMaxHeight(), MeasureSpec.getMode(childHeightMeasureSpec));
        }
        if (childHeight < flexItem.getMinHeight()) {
            return MeasureSpec.makeMeasureSpec(flexItem.getMinHeight(), MeasureSpec.getMode(childHeightMeasureSpec));
        }
        return childHeightMeasureSpec;
    }

    void stretchViews() {
        stretchViews(0);
    }

    void stretchViews(int fromIndex) {
        if (fromIndex < this.mFlexContainer.getFlexItemCount()) {
            int flexDirection = this.mFlexContainer.getFlexDirection();
            FlexLine flexLine;
            View view;
            if (this.mFlexContainer.getAlignItems() == 4) {
                int flexLineIndex = 0;
                if (this.mIndexToFlexLine != null) {
                    flexLineIndex = this.mIndexToFlexLine[fromIndex];
                }
                List<FlexLine> flexLines = this.mFlexContainer.getFlexLinesInternal();
                int size = flexLines.size();
                for (int i = flexLineIndex; i < size; i++) {
                    flexLine = (FlexLine) flexLines.get(i);
                    int itemCount = flexLine.mItemCount;
                    for (int j = 0; j < itemCount; j++) {
                        int viewIndex = flexLine.mFirstIndex + j;
                        if (j < this.mFlexContainer.getFlexItemCount()) {
                            view = this.mFlexContainer.getReorderedFlexItemAt(viewIndex);
                            if (!(view == null || view.getVisibility() == 8)) {
                                FlexItem flexItem = (FlexItem) view.getLayoutParams();
                                if (flexItem.getAlignSelf() == -1 || flexItem.getAlignSelf() == 4) {
                                    switch (flexDirection) {
                                        case 0:
                                        case 1:
                                            stretchViewVertically(view, flexLine.mCrossSize, viewIndex);
                                            break;
                                        case 2:
                                        case 3:
                                            stretchViewHorizontally(view, flexLine.mCrossSize, viewIndex);
                                            break;
                                        default:
                                            throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                                    }
                                }
                            }
                        }
                    }
                }
                return;
            }
            for (FlexLine flexLine2 : this.mFlexContainer.getFlexLinesInternal()) {
                for (Integer index : flexLine2.mIndicesAlignSelfStretch) {
                    view = this.mFlexContainer.getReorderedFlexItemAt(index.intValue());
                    switch (flexDirection) {
                        case 0:
                        case 1:
                            stretchViewVertically(view, flexLine2.mCrossSize, index.intValue());
                            break;
                        case 2:
                        case 3:
                            stretchViewHorizontally(view, flexLine2.mCrossSize, index.intValue());
                            break;
                        default:
                            throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                    }
                }
            }
        }
    }

    private void stretchViewVertically(View view, int crossSize, int index) {
        int measuredWidth;
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int newHeight = Math.min(Math.max(((crossSize - flexItem.getMarginTop()) - flexItem.getMarginBottom()) - this.mFlexContainer.getDecorationLengthCrossAxis(view), flexItem.getMinHeight()), flexItem.getMaxHeight());
        if (this.mMeasuredSizeCache != null) {
            measuredWidth = extractLowerInt(this.mMeasuredSizeCache[index]);
        } else {
            measuredWidth = view.getMeasuredWidth();
        }
        int childWidthSpec = MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        int childHeightSpec = MeasureSpec.makeMeasureSpec(newHeight, 1073741824);
        view.measure(childWidthSpec, childHeightSpec);
        updateMeasureCache(index, childWidthSpec, childHeightSpec, view);
        this.mFlexContainer.updateViewCache(index, view);
    }

    private void stretchViewHorizontally(View view, int crossSize, int index) {
        int measuredHeight;
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int newWidth = Math.min(Math.max(((crossSize - flexItem.getMarginLeft()) - flexItem.getMarginRight()) - this.mFlexContainer.getDecorationLengthCrossAxis(view), flexItem.getMinWidth()), flexItem.getMaxWidth());
        if (this.mMeasuredSizeCache != null) {
            measuredHeight = extractHigherInt(this.mMeasuredSizeCache[index]);
        } else {
            measuredHeight = view.getMeasuredHeight();
        }
        int childHeightSpec = MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        int childWidthSpec = MeasureSpec.makeMeasureSpec(newWidth, 1073741824);
        view.measure(childWidthSpec, childHeightSpec);
        updateMeasureCache(index, childWidthSpec, childHeightSpec, view);
        this.mFlexContainer.updateViewCache(index, view);
    }

    void layoutSingleChildHorizontal(View view, FlexLine flexLine, int left, int top, int right, int bottom) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.mFlexContainer.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int crossSize = flexLine.mCrossSize;
        switch (alignItems) {
            case 0:
            case 4:
                if (this.mFlexContainer.getFlexWrap() != 2) {
                    view.layout(left, flexItem.getMarginTop() + top, right, flexItem.getMarginTop() + bottom);
                    return;
                } else {
                    view.layout(left, top - flexItem.getMarginBottom(), right, bottom - flexItem.getMarginBottom());
                    return;
                }
            case 1:
                if (this.mFlexContainer.getFlexWrap() != 2) {
                    view.layout(left, ((top + crossSize) - view.getMeasuredHeight()) - flexItem.getMarginBottom(), right, (top + crossSize) - flexItem.getMarginBottom());
                    return;
                } else {
                    view.layout(left, ((top - crossSize) + view.getMeasuredHeight()) + flexItem.getMarginTop(), right, ((bottom - crossSize) + view.getMeasuredHeight()) + flexItem.getMarginTop());
                    return;
                }
            case 2:
                int topFromCrossAxis = (((crossSize - view.getMeasuredHeight()) + flexItem.getMarginTop()) - flexItem.getMarginBottom()) / 2;
                if (this.mFlexContainer.getFlexWrap() != 2) {
                    view.layout(left, top + topFromCrossAxis, right, (top + topFromCrossAxis) + view.getMeasuredHeight());
                    return;
                } else {
                    view.layout(left, top - topFromCrossAxis, right, (top - topFromCrossAxis) + view.getMeasuredHeight());
                    return;
                }
            case 3:
                if (this.mFlexContainer.getFlexWrap() != 2) {
                    int marginTop = Math.max(flexLine.mMaxBaseline - view.getBaseline(), flexItem.getMarginTop());
                    view.layout(left, top + marginTop, right, bottom + marginTop);
                    return;
                }
                int marginBottom = Math.max((flexLine.mMaxBaseline - view.getMeasuredHeight()) + view.getBaseline(), flexItem.getMarginBottom());
                view.layout(left, top - marginBottom, right, bottom - marginBottom);
                return;
            default:
                return;
        }
    }

    void layoutSingleChildVertical(View view, FlexLine flexLine, boolean isRtl, int left, int top, int right, int bottom) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.mFlexContainer.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int crossSize = flexLine.mCrossSize;
        switch (alignItems) {
            case 0:
            case 3:
            case 4:
                if (isRtl) {
                    view.layout(left - flexItem.getMarginRight(), top, right - flexItem.getMarginRight(), bottom);
                    return;
                } else {
                    view.layout(flexItem.getMarginLeft() + left, top, flexItem.getMarginLeft() + right, bottom);
                    return;
                }
            case 1:
                if (isRtl) {
                    view.layout(((left - crossSize) + view.getMeasuredWidth()) + flexItem.getMarginLeft(), top, ((right - crossSize) + view.getMeasuredWidth()) + flexItem.getMarginLeft(), bottom);
                    return;
                } else {
                    view.layout(((left + crossSize) - view.getMeasuredWidth()) - flexItem.getMarginRight(), top, ((right + crossSize) - view.getMeasuredWidth()) - flexItem.getMarginRight(), bottom);
                    return;
                }
            case 2:
                MarginLayoutParams lp = (MarginLayoutParams) view.getLayoutParams();
                int leftFromCrossAxis = (((crossSize - view.getMeasuredWidth()) + MarginLayoutParamsCompat.getMarginStart(lp)) - MarginLayoutParamsCompat.getMarginEnd(lp)) / 2;
                if (isRtl) {
                    view.layout(left - leftFromCrossAxis, top, right - leftFromCrossAxis, bottom);
                    return;
                } else {
                    view.layout(left + leftFromCrossAxis, top, right + leftFromCrossAxis, bottom);
                    return;
                }
            default:
                return;
        }
    }

    void ensureMeasuredSizeCache(int size) {
        if (this.mMeasuredSizeCache == null) {
            if (size < 10) {
                size = 10;
            }
            this.mMeasuredSizeCache = new long[size];
        } else if (this.mMeasuredSizeCache.length < size) {
            int newCapacity = this.mMeasuredSizeCache.length * 2;
            if (newCapacity < size) {
                newCapacity = size;
            }
            this.mMeasuredSizeCache = Arrays.copyOf(this.mMeasuredSizeCache, newCapacity);
        }
    }

    void ensureMeasureSpecCache(int size) {
        if (this.mMeasureSpecCache == null) {
            if (size < 10) {
                size = 10;
            }
            this.mMeasureSpecCache = new long[size];
        } else if (this.mMeasureSpecCache.length < size) {
            int newCapacity = this.mMeasureSpecCache.length * 2;
            if (newCapacity < size) {
                newCapacity = size;
            }
            this.mMeasureSpecCache = Arrays.copyOf(this.mMeasureSpecCache, newCapacity);
        }
    }

    int extractLowerInt(long longValue) {
        return (int) longValue;
    }

    int extractHigherInt(long longValue) {
        return (int) (longValue >> 32);
    }

    long makeCombinedLong(int widthMeasureSpec, int heightMeasureSpec) {
        return (((long) heightMeasureSpec) << 32) | (((long) widthMeasureSpec) & 4294967295L);
    }

    private void updateMeasureCache(int index, int widthMeasureSpec, int heightMeasureSpec, View view) {
        if (this.mMeasureSpecCache != null) {
            this.mMeasureSpecCache[index] = makeCombinedLong(widthMeasureSpec, heightMeasureSpec);
        }
        if (this.mMeasuredSizeCache != null) {
            this.mMeasuredSizeCache[index] = makeCombinedLong(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    void ensureIndexToFlexLine(int size) {
        if (this.mIndexToFlexLine == null) {
            if (size < 10) {
                size = 10;
            }
            this.mIndexToFlexLine = new int[size];
        } else if (this.mIndexToFlexLine.length < size) {
            int newCapacity = this.mIndexToFlexLine.length * 2;
            if (newCapacity < size) {
                newCapacity = size;
            }
            this.mIndexToFlexLine = Arrays.copyOf(this.mIndexToFlexLine, newCapacity);
        }
    }

    void clearFlexLines(List<FlexLine> flexLines, int fromFlexItem) {
        if (!$assertionsDisabled && this.mIndexToFlexLine == null) {
            throw new AssertionError();
        } else if ($assertionsDisabled || this.mMeasureSpecCache != null) {
            int fromFlexLine = this.mIndexToFlexLine[fromFlexItem];
            if (fromFlexLine == -1) {
                fromFlexLine = 0;
            }
            for (int i = flexLines.size() - 1; i >= fromFlexLine; i--) {
                flexLines.remove(i);
            }
            int fillTo = this.mIndexToFlexLine.length - 1;
            if (fromFlexItem > fillTo) {
                Arrays.fill(this.mIndexToFlexLine, -1);
            } else {
                Arrays.fill(this.mIndexToFlexLine, fromFlexItem, fillTo, -1);
            }
            fillTo = this.mMeasureSpecCache.length - 1;
            if (fromFlexItem > fillTo) {
                Arrays.fill(this.mMeasureSpecCache, 0);
            } else {
                Arrays.fill(this.mMeasureSpecCache, fromFlexItem, fillTo, 0);
            }
        } else {
            throw new AssertionError();
        }
    }
}
