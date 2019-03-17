package android.support.constraint.solver.widgets;

import android.support.constraint.solver.widgets.ConstraintAnchor.Type;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class ConstraintWidgetGroup {
    public List<ConstraintWidget> mConstrainedGroup;
    public final int[] mGroupDimensions = new int[]{this.mGroupWidth, this.mGroupHeight};
    int mGroupHeight = -1;
    int mGroupWidth = -1;
    public boolean mSkipSolver = false;
    List<ConstraintWidget> mStartHorizontalWidgets = new ArrayList();
    List<ConstraintWidget> mStartVerticalWidgets = new ArrayList();
    List<ConstraintWidget> mUnresolvedWidgets = new ArrayList();
    HashSet<ConstraintWidget> mWidgetsToSetHorizontal = new HashSet();
    HashSet<ConstraintWidget> mWidgetsToSetVertical = new HashSet();
    List<ConstraintWidget> mWidgetsToSolve = new ArrayList();

    ConstraintWidgetGroup(List<ConstraintWidget> widgets) {
        this.mConstrainedGroup = widgets;
    }

    ConstraintWidgetGroup(List<ConstraintWidget> widgets, boolean skipSolver) {
        this.mConstrainedGroup = widgets;
        this.mSkipSolver = skipSolver;
    }

    public List<ConstraintWidget> getStartWidgets(int orientation) {
        if (orientation == 0) {
            return this.mStartHorizontalWidgets;
        }
        if (orientation == 1) {
            return this.mStartVerticalWidgets;
        }
        return null;
    }

    Set<ConstraintWidget> getWidgetsToSet(int orientation) {
        if (orientation == 0) {
            return this.mWidgetsToSetHorizontal;
        }
        if (orientation == 1) {
            return this.mWidgetsToSetVertical;
        }
        return null;
    }

    void addWidgetsToSet(ConstraintWidget widget, int orientation) {
        if (orientation == 0) {
            this.mWidgetsToSetHorizontal.add(widget);
        } else if (orientation == 1) {
            this.mWidgetsToSetVertical.add(widget);
        }
    }

    List<ConstraintWidget> getWidgetsToSolve() {
        if (!this.mWidgetsToSolve.isEmpty()) {
            return this.mWidgetsToSolve;
        }
        int size = this.mConstrainedGroup.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget widget = (ConstraintWidget) this.mConstrainedGroup.get(i);
            if (!widget.mOptimizerMeasurable) {
                getWidgetsToSolveTraversal((ArrayList) this.mWidgetsToSolve, widget);
            }
        }
        this.mUnresolvedWidgets.clear();
        this.mUnresolvedWidgets.addAll(this.mConstrainedGroup);
        this.mUnresolvedWidgets.removeAll(this.mWidgetsToSolve);
        return this.mWidgetsToSolve;
    }

    private void getWidgetsToSolveTraversal(ArrayList<ConstraintWidget> widgetsToSolve, ConstraintWidget widget) {
        if (!widget.mGroupsToSolver) {
            widgetsToSolve.add(widget);
            widget.mGroupsToSolver = true;
            if (!widget.isFullyResolved()) {
                int i;
                if (widget instanceof Helper) {
                    Helper helper = (Helper) widget;
                    int widgetCount = helper.mWidgetsCount;
                    for (i = 0; i < widgetCount; i++) {
                        getWidgetsToSolveTraversal(widgetsToSolve, helper.mWidgets[i]);
                    }
                }
                for (ConstraintAnchor constraintAnchor : widget.mListAnchors) {
                    ConstraintAnchor targetAnchor = constraintAnchor.mTarget;
                    if (targetAnchor != null) {
                        ConstraintWidget targetWidget = targetAnchor.mOwner;
                        if (!(targetAnchor == null || targetWidget == widget.getParent())) {
                            getWidgetsToSolveTraversal(widgetsToSolve, targetWidget);
                        }
                    }
                }
            }
        }
    }

    void updateUnresolvedWidgets() {
        int size = this.mUnresolvedWidgets.size();
        for (int i = 0; i < size; i++) {
            updateResolvedDimension((ConstraintWidget) this.mUnresolvedWidgets.get(i));
        }
    }

    private void updateResolvedDimension(ConstraintWidget widget) {
        boolean bottomSide = false;
        int end = 0;
        if (widget.mOptimizerMeasurable && !widget.isFullyResolved()) {
            boolean rightSide;
            ConstraintAnchor targetAnchor;
            if (widget.mRight.mTarget != null) {
                rightSide = true;
            } else {
                rightSide = false;
            }
            if (rightSide) {
                targetAnchor = widget.mRight.mTarget;
            } else {
                targetAnchor = widget.mLeft.mTarget;
            }
            if (targetAnchor != null) {
                if (!targetAnchor.mOwner.mOptimizerMeasured) {
                    updateResolvedDimension(targetAnchor.mOwner);
                }
                if (targetAnchor.mType == Type.RIGHT) {
                    end = targetAnchor.mOwner.mX + targetAnchor.mOwner.getWidth();
                } else if (targetAnchor.mType == Type.LEFT) {
                    end = targetAnchor.mOwner.mX;
                }
            }
            if (rightSide) {
                end -= widget.mRight.getMargin();
            } else {
                end += widget.mLeft.getMargin() + widget.getWidth();
            }
            widget.setHorizontalDimension(end - widget.getWidth(), end);
            if (widget.mBaseline.mTarget != null) {
                targetAnchor = widget.mBaseline.mTarget;
                if (!targetAnchor.mOwner.mOptimizerMeasured) {
                    updateResolvedDimension(targetAnchor.mOwner);
                }
                int start = (targetAnchor.mOwner.mY + targetAnchor.mOwner.mBaselineDistance) - widget.mBaselineDistance;
                widget.setVerticalDimension(start, start + widget.mHeight);
                widget.mOptimizerMeasured = true;
                return;
            }
            if (widget.mBottom.mTarget != null) {
                bottomSide = true;
            }
            if (bottomSide) {
                targetAnchor = widget.mBottom.mTarget;
            } else {
                targetAnchor = widget.mTop.mTarget;
            }
            if (targetAnchor != null) {
                if (!targetAnchor.mOwner.mOptimizerMeasured) {
                    updateResolvedDimension(targetAnchor.mOwner);
                }
                if (targetAnchor.mType == Type.BOTTOM) {
                    end = targetAnchor.mOwner.mY + targetAnchor.mOwner.getHeight();
                } else if (targetAnchor.mType == Type.TOP) {
                    end = targetAnchor.mOwner.mY;
                }
            }
            if (bottomSide) {
                end -= widget.mBottom.getMargin();
            } else {
                end += widget.mTop.getMargin() + widget.getHeight();
            }
            widget.setVerticalDimension(end - widget.getHeight(), end);
            widget.mOptimizerMeasured = true;
        }
    }
}
