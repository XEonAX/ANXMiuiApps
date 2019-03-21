package android.support.constraint.solver.widgets;

import android.support.constraint.solver.ArrayRow;
import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.SolverVariable;
import android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour;
import java.util.ArrayList;

class Chain {
    static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem system, int orientation) {
        int offset;
        int chainsSize;
        ChainHead[] chainsArray;
        if (orientation == 0) {
            offset = 0;
            chainsSize = constraintWidgetContainer.mHorizontalChainsSize;
            chainsArray = constraintWidgetContainer.mHorizontalChainsArray;
        } else {
            offset = 2;
            chainsSize = constraintWidgetContainer.mVerticalChainsSize;
            chainsArray = constraintWidgetContainer.mVerticalChainsArray;
        }
        for (int i = 0; i < chainsSize; i++) {
            ChainHead first = chainsArray[i];
            first.define();
            if (!constraintWidgetContainer.optimizeFor(4)) {
                applyChainConstraints(constraintWidgetContainer, system, orientation, offset, first);
            } else if (!Optimizer.applyChainOptimized(constraintWidgetContainer, system, orientation, offset, first)) {
                applyChainConstraints(constraintWidgetContainer, system, orientation, offset, first);
            }
        }
    }

    static void applyChainConstraints(ConstraintWidgetContainer container, LinearSystem system, int orientation, int offset, ChainHead chainHead) {
        boolean isChainSpread;
        boolean isChainSpreadInside;
        boolean isChainPacked;
        ConstraintAnchor begin;
        int strength;
        ConstraintWidget next;
        ConstraintAnchor end;
        SolverVariable begin2;
        SolverVariable beginTarget;
        SolverVariable endTarget;
        int beginMargin;
        ConstraintWidget first = chainHead.mFirst;
        ConstraintWidget last = chainHead.mLast;
        ConstraintWidget firstVisibleWidget = chainHead.mFirstVisibleWidget;
        ConstraintWidget lastVisibleWidget = chainHead.mLastVisibleWidget;
        ConstraintWidget head = chainHead.mHead;
        ConstraintWidget widget = first;
        boolean done = false;
        float totalWeights = chainHead.mTotalWeight;
        ConstraintWidget firstMatchConstraintsWidget = chainHead.mFirstMatchConstraintWidget;
        ConstraintWidget previousMatchConstraintsWidget = chainHead.mLastMatchConstraintWidget;
        boolean isWrapContent = container.mListDimensionBehaviors[orientation] == DimensionBehaviour.WRAP_CONTENT;
        if (orientation == 0) {
            isChainSpread = head.mHorizontalChainStyle == 0;
            isChainSpreadInside = head.mHorizontalChainStyle == 1;
            isChainPacked = head.mHorizontalChainStyle == 2;
        } else {
            isChainSpread = head.mVerticalChainStyle == 0;
            isChainSpreadInside = head.mVerticalChainStyle == 1;
            isChainPacked = head.mVerticalChainStyle == 2;
        }
        while (!done) {
            begin = widget.mListAnchors[offset];
            strength = 4;
            if (isWrapContent || isChainPacked) {
                strength = 1;
            }
            int margin = begin.getMargin();
            if (!(begin.mTarget == null || widget == first)) {
                margin += begin.mTarget.getMargin();
            }
            if (isChainPacked && widget != first && widget != firstVisibleWidget) {
                strength = 6;
            } else if (isChainSpread && isWrapContent) {
                strength = 4;
            }
            if (begin.mTarget != null) {
                if (widget == firstVisibleWidget) {
                    system.addGreaterThan(begin.mSolverVariable, begin.mTarget.mSolverVariable, margin, 5);
                } else {
                    system.addGreaterThan(begin.mSolverVariable, begin.mTarget.mSolverVariable, margin, 6);
                }
                system.addEquality(begin.mSolverVariable, begin.mTarget.mSolverVariable, margin, strength);
            }
            if (isWrapContent) {
                if (widget.getVisibility() != 8 && widget.mListDimensionBehaviors[orientation] == DimensionBehaviour.MATCH_CONSTRAINT) {
                    system.addGreaterThan(widget.mListAnchors[offset + 1].mSolverVariable, widget.mListAnchors[offset].mSolverVariable, 0, 5);
                }
                system.addGreaterThan(widget.mListAnchors[offset].mSolverVariable, container.mListAnchors[offset].mSolverVariable, 0, 6);
            }
            ConstraintAnchor nextAnchor = widget.mListAnchors[offset + 1].mTarget;
            if (nextAnchor != null) {
                next = nextAnchor.mOwner;
                if (next.mListAnchors[offset].mTarget == null || next.mListAnchors[offset].mTarget.mOwner != widget) {
                    next = null;
                }
            } else {
                next = null;
            }
            if (next != null) {
                widget = next;
            } else {
                done = true;
            }
        }
        if (!(lastVisibleWidget == null || last.mListAnchors[offset + 1].mTarget == null)) {
            end = lastVisibleWidget.mListAnchors[offset + 1];
            system.addLowerThan(end.mSolverVariable, last.mListAnchors[offset + 1].mTarget.mSolverVariable, -end.getMargin(), 5);
        }
        if (isWrapContent) {
            system.addGreaterThan(container.mListAnchors[offset + 1].mSolverVariable, last.mListAnchors[offset + 1].mSolverVariable, last.mListAnchors[offset + 1].getMargin(), 6);
        }
        ArrayList<ConstraintWidget> listMatchConstraints = chainHead.mWeightedMatchConstraintsWidgets;
        if (listMatchConstraints != null) {
            int count = listMatchConstraints.size();
            if (count > 1) {
                ConstraintWidget lastMatch = null;
                float lastWeight = 0.0f;
                if (chainHead.mHasUndefinedWeights && !chainHead.mHasComplexMatchWeights) {
                    totalWeights = (float) chainHead.mWidgetsMatchCount;
                }
                for (int i = 0; i < count; i++) {
                    ConstraintWidget match = (ConstraintWidget) listMatchConstraints.get(i);
                    float currentWeight = match.mWeight[orientation];
                    if (currentWeight < 0.0f) {
                        if (chainHead.mHasComplexMatchWeights) {
                            system.addEquality(match.mListAnchors[offset + 1].mSolverVariable, match.mListAnchors[offset].mSolverVariable, 0, 4);
                        } else {
                            currentWeight = 1.0f;
                        }
                    }
                    if (currentWeight == 0.0f) {
                        system.addEquality(match.mListAnchors[offset + 1].mSolverVariable, match.mListAnchors[offset].mSolverVariable, 0, 6);
                    } else {
                        if (lastMatch != null) {
                            begin2 = lastMatch.mListAnchors[offset].mSolverVariable;
                            SolverVariable end2 = lastMatch.mListAnchors[offset + 1].mSolverVariable;
                            SolverVariable nextBegin = match.mListAnchors[offset].mSolverVariable;
                            SolverVariable nextEnd = match.mListAnchors[offset + 1].mSolverVariable;
                            ArrayRow row = system.createRow();
                            row.createRowEqualMatchDimensions(lastWeight, totalWeights, currentWeight, begin2, end2, nextBegin, nextEnd);
                            system.addConstraint(row);
                        }
                        lastMatch = match;
                        lastWeight = currentWeight;
                    }
                }
            }
        }
        ConstraintWidget previousVisibleWidget;
        boolean applyFixedEquality;
        ConstraintAnchor beginAnchor;
        SolverVariable beginNext;
        int nextMargin;
        ConstraintAnchor beginNextAnchor;
        SolverVariable beginNextTarget;
        if (firstVisibleWidget != null && (firstVisibleWidget == lastVisibleWidget || isChainPacked)) {
            begin = first.mListAnchors[offset];
            end = last.mListAnchors[offset + 1];
            beginTarget = first.mListAnchors[offset].mTarget != null ? first.mListAnchors[offset].mTarget.mSolverVariable : null;
            endTarget = last.mListAnchors[offset + 1].mTarget != null ? last.mListAnchors[offset + 1].mTarget.mSolverVariable : null;
            if (firstVisibleWidget == lastVisibleWidget) {
                begin = firstVisibleWidget.mListAnchors[offset];
                end = firstVisibleWidget.mListAnchors[offset + 1];
            }
            if (!(beginTarget == null || endTarget == null)) {
                float bias;
                if (orientation == 0) {
                    bias = head.mHorizontalBiasPercent;
                } else {
                    bias = head.mVerticalBiasPercent;
                }
                system.addCentering(begin.mSolverVariable, beginTarget, begin.getMargin(), bias, endTarget, end.mSolverVariable, end.getMargin(), 5);
            }
        } else if (isChainSpread && firstVisibleWidget != null) {
            widget = firstVisibleWidget;
            previousVisibleWidget = firstVisibleWidget;
            applyFixedEquality = chainHead.mWidgetsMatchCount > 0 && chainHead.mWidgetsCount == chainHead.mWidgetsMatchCount;
            while (widget != null) {
                next = widget.mNextChainWidget[orientation];
                while (next != null && next.getVisibility() == 8) {
                    next = next.mNextChainWidget[orientation];
                }
                if (next != null || widget == lastVisibleWidget) {
                    beginAnchor = widget.mListAnchors[offset];
                    begin2 = beginAnchor.mSolverVariable;
                    beginTarget = beginAnchor.mTarget != null ? beginAnchor.mTarget.mSolverVariable : null;
                    if (previousVisibleWidget != widget) {
                        beginTarget = previousVisibleWidget.mListAnchors[offset + 1].mSolverVariable;
                    } else if (widget == firstVisibleWidget && previousVisibleWidget == widget) {
                        beginTarget = first.mListAnchors[offset].mTarget != null ? first.mListAnchors[offset].mTarget.mSolverVariable : null;
                    }
                    beginNext = null;
                    beginMargin = beginAnchor.getMargin();
                    nextMargin = widget.mListAnchors[offset + 1].getMargin();
                    if (next != null) {
                        beginNextAnchor = next.mListAnchors[offset];
                        beginNext = beginNextAnchor.mSolverVariable;
                        beginNextTarget = widget.mListAnchors[offset + 1].mSolverVariable;
                    } else {
                        beginNextAnchor = last.mListAnchors[offset + 1].mTarget;
                        if (beginNextAnchor != null) {
                            beginNext = beginNextAnchor.mSolverVariable;
                        }
                        beginNextTarget = widget.mListAnchors[offset + 1].mSolverVariable;
                    }
                    if (beginNextAnchor != null) {
                        nextMargin += beginNextAnchor.getMargin();
                    }
                    if (previousVisibleWidget != null) {
                        beginMargin += previousVisibleWidget.mListAnchors[offset + 1].getMargin();
                    }
                    if (!(begin2 == null || beginTarget == null || beginNext == null || beginNextTarget == null)) {
                        int margin1 = beginMargin;
                        if (widget == firstVisibleWidget) {
                            margin1 = firstVisibleWidget.mListAnchors[offset].getMargin();
                        }
                        int margin2 = nextMargin;
                        if (widget == lastVisibleWidget) {
                            margin2 = lastVisibleWidget.mListAnchors[offset + 1].getMargin();
                        }
                        strength = 4;
                        if (applyFixedEquality) {
                            strength = 6;
                        }
                        system.addCentering(begin2, beginTarget, margin1, 0.5f, beginNext, beginNextTarget, margin2, strength);
                    }
                }
                if (widget.getVisibility() != 8) {
                    previousVisibleWidget = widget;
                }
                widget = next;
            }
        } else if (isChainSpreadInside && firstVisibleWidget != null) {
            widget = firstVisibleWidget;
            previousVisibleWidget = firstVisibleWidget;
            applyFixedEquality = chainHead.mWidgetsMatchCount > 0 && chainHead.mWidgetsCount == chainHead.mWidgetsMatchCount;
            while (widget != null) {
                next = widget.mNextChainWidget[orientation];
                while (next != null && next.getVisibility() == 8) {
                    next = next.mNextChainWidget[orientation];
                }
                if (!(widget == firstVisibleWidget || widget == lastVisibleWidget || next == null)) {
                    if (next == lastVisibleWidget) {
                        next = null;
                    }
                    beginAnchor = widget.mListAnchors[offset];
                    begin2 = beginAnchor.mSolverVariable;
                    if (beginAnchor.mTarget != null) {
                        beginTarget = beginAnchor.mTarget.mSolverVariable;
                    }
                    beginTarget = previousVisibleWidget.mListAnchors[offset + 1].mSolverVariable;
                    beginNext = null;
                    beginMargin = beginAnchor.getMargin();
                    nextMargin = widget.mListAnchors[offset + 1].getMargin();
                    if (next != null) {
                        beginNextAnchor = next.mListAnchors[offset];
                        beginNext = beginNextAnchor.mSolverVariable;
                        beginNextTarget = beginNextAnchor.mTarget != null ? beginNextAnchor.mTarget.mSolverVariable : null;
                    } else {
                        beginNextAnchor = widget.mListAnchors[offset + 1].mTarget;
                        if (beginNextAnchor != null) {
                            beginNext = beginNextAnchor.mSolverVariable;
                        }
                        beginNextTarget = widget.mListAnchors[offset + 1].mSolverVariable;
                    }
                    if (beginNextAnchor != null) {
                        nextMargin += beginNextAnchor.getMargin();
                    }
                    if (previousVisibleWidget != null) {
                        beginMargin += previousVisibleWidget.mListAnchors[offset + 1].getMargin();
                    }
                    strength = 4;
                    if (applyFixedEquality) {
                        strength = 6;
                    }
                    if (!(begin2 == null || beginTarget == null || beginNext == null || beginNextTarget == null)) {
                        system.addCentering(begin2, beginTarget, beginMargin, 0.5f, beginNext, beginNextTarget, nextMargin, strength);
                    }
                }
                if (widget.getVisibility() != 8) {
                    previousVisibleWidget = widget;
                }
                widget = next;
            }
            begin = firstVisibleWidget.mListAnchors[offset];
            ConstraintAnchor beginTarget2 = first.mListAnchors[offset].mTarget;
            end = lastVisibleWidget.mListAnchors[offset + 1];
            ConstraintAnchor endTarget2 = last.mListAnchors[offset + 1].mTarget;
            if (beginTarget2 != null) {
                if (firstVisibleWidget != lastVisibleWidget) {
                    system.addEquality(begin.mSolverVariable, beginTarget2.mSolverVariable, begin.getMargin(), 5);
                } else if (endTarget2 != null) {
                    system.addCentering(begin.mSolverVariable, beginTarget2.mSolverVariable, begin.getMargin(), 0.5f, end.mSolverVariable, endTarget2.mSolverVariable, end.getMargin(), 5);
                }
            }
            if (!(endTarget2 == null || firstVisibleWidget == lastVisibleWidget)) {
                system.addEquality(end.mSolverVariable, endTarget2.mSolverVariable, -end.getMargin(), 5);
            }
        }
        if ((isChainSpread || isChainSpreadInside) && firstVisibleWidget != null) {
            begin = firstVisibleWidget.mListAnchors[offset];
            end = lastVisibleWidget.mListAnchors[offset + 1];
            beginTarget = begin.mTarget != null ? begin.mTarget.mSolverVariable : null;
            endTarget = end.mTarget != null ? end.mTarget.mSolverVariable : null;
            if (last != lastVisibleWidget) {
                ConstraintAnchor realEnd = last.mListAnchors[offset + 1];
                endTarget = realEnd.mTarget != null ? realEnd.mTarget.mSolverVariable : null;
            }
            if (firstVisibleWidget == lastVisibleWidget) {
                begin = firstVisibleWidget.mListAnchors[offset];
                end = firstVisibleWidget.mListAnchors[offset + 1];
            }
            if (beginTarget != null && endTarget != null) {
                beginMargin = begin.getMargin();
                if (lastVisibleWidget == null) {
                    lastVisibleWidget = last;
                }
                system.addCentering(begin.mSolverVariable, beginTarget, beginMargin, 0.5f, endTarget, end.mSolverVariable, lastVisibleWidget.mListAnchors[offset + 1].getMargin(), 5);
            }
        }
    }
}
