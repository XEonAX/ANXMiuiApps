package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.Metrics;
import android.support.constraint.solver.SolverVariable;
import android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour;
import java.util.ArrayList;

public class Barrier extends Helper {
    private boolean mAllowsGoneWidget = true;
    private int mBarrierType = 0;
    private ArrayList<ResolutionAnchor> mNodes = new ArrayList(4);

    public boolean allowedInBarrier() {
        return true;
    }

    public void setBarrierType(int barrierType) {
        this.mBarrierType = barrierType;
    }

    public void setAllowsGoneWidget(boolean allowsGoneWidget) {
        this.mAllowsGoneWidget = allowsGoneWidget;
    }

    public void resetResolutionNodes() {
        super.resetResolutionNodes();
        this.mNodes.clear();
    }

    public void analyze(int optimizationLevel) {
        if (this.mParent != null && ((ConstraintWidgetContainer) this.mParent).optimizeFor(2)) {
            ResolutionAnchor node;
            switch (this.mBarrierType) {
                case 0:
                    node = this.mLeft.getResolutionNode();
                    break;
                case 1:
                    node = this.mRight.getResolutionNode();
                    break;
                case 2:
                    node = this.mTop.getResolutionNode();
                    break;
                case 3:
                    node = this.mBottom.getResolutionNode();
                    break;
                default:
                    return;
            }
            node.setType(5);
            if (this.mBarrierType == 0 || this.mBarrierType == 1) {
                this.mTop.getResolutionNode().resolve(null, 0.0f);
                this.mBottom.getResolutionNode().resolve(null, 0.0f);
            } else {
                this.mLeft.getResolutionNode().resolve(null, 0.0f);
                this.mRight.getResolutionNode().resolve(null, 0.0f);
            }
            this.mNodes.clear();
            for (int i = 0; i < this.mWidgetsCount; i++) {
                ConstraintWidget widget = this.mWidgets[i];
                if (this.mAllowsGoneWidget || widget.allowedInBarrier()) {
                    ResolutionAnchor depends = null;
                    switch (this.mBarrierType) {
                        case 0:
                            depends = widget.mLeft.getResolutionNode();
                            break;
                        case 1:
                            depends = widget.mRight.getResolutionNode();
                            break;
                        case 2:
                            depends = widget.mTop.getResolutionNode();
                            break;
                        case 3:
                            depends = widget.mBottom.getResolutionNode();
                            break;
                    }
                    if (depends != null) {
                        this.mNodes.add(depends);
                        depends.addDependent(node);
                    }
                }
            }
        }
    }

    public void resolve() {
        ResolutionAnchor node;
        float value = 0.0f;
        switch (this.mBarrierType) {
            case 0:
                node = this.mLeft.getResolutionNode();
                value = Float.MAX_VALUE;
                break;
            case 1:
                node = this.mRight.getResolutionNode();
                break;
            case 2:
                node = this.mTop.getResolutionNode();
                value = Float.MAX_VALUE;
                break;
            case 3:
                node = this.mBottom.getResolutionNode();
                break;
            default:
                return;
        }
        int count = this.mNodes.size();
        ResolutionAnchor resolvedTarget = null;
        int i = 0;
        while (i < count) {
            ResolutionAnchor n = (ResolutionAnchor) this.mNodes.get(i);
            if (n.state == 1) {
                if (this.mBarrierType == 0 || this.mBarrierType == 2) {
                    if (n.resolvedOffset < value) {
                        value = n.resolvedOffset;
                        resolvedTarget = n.resolvedTarget;
                    }
                } else if (n.resolvedOffset > value) {
                    value = n.resolvedOffset;
                    resolvedTarget = n.resolvedTarget;
                }
                i++;
            } else {
                return;
            }
        }
        if (LinearSystem.getMetrics() != null) {
            Metrics metrics = LinearSystem.getMetrics();
            metrics.barrierConnectionResolved++;
        }
        node.resolvedTarget = resolvedTarget;
        node.resolvedOffset = value;
        node.didResolve();
        switch (this.mBarrierType) {
            case 0:
                this.mRight.getResolutionNode().resolve(resolvedTarget, value);
                return;
            case 1:
                this.mLeft.getResolutionNode().resolve(resolvedTarget, value);
                return;
            case 2:
                this.mBottom.getResolutionNode().resolve(resolvedTarget, value);
                return;
            case 3:
                this.mTop.getResolutionNode().resolve(resolvedTarget, value);
                return;
            default:
                return;
        }
    }

    public void addToSolver(LinearSystem system) {
        int i;
        this.mListAnchors[0] = this.mLeft;
        this.mListAnchors[2] = this.mTop;
        this.mListAnchors[1] = this.mRight;
        this.mListAnchors[3] = this.mBottom;
        for (i = 0; i < this.mListAnchors.length; i++) {
            this.mListAnchors[i].mSolverVariable = system.createObjectVariable(this.mListAnchors[i]);
        }
        if (this.mBarrierType >= 0 && this.mBarrierType < 4) {
            ConstraintWidget widget;
            ConstraintAnchor position = this.mListAnchors[this.mBarrierType];
            boolean hasMatchConstraintWidgets = false;
            for (i = 0; i < this.mWidgetsCount; i++) {
                widget = this.mWidgets[i];
                if (this.mAllowsGoneWidget || widget.allowedInBarrier()) {
                    if ((this.mBarrierType != 0 && this.mBarrierType != 1) || widget.getHorizontalDimensionBehaviour() != DimensionBehaviour.MATCH_CONSTRAINT) {
                        if ((this.mBarrierType == 2 || this.mBarrierType == 3) && widget.getVerticalDimensionBehaviour() == DimensionBehaviour.MATCH_CONSTRAINT) {
                            hasMatchConstraintWidgets = true;
                            break;
                        }
                    }
                    hasMatchConstraintWidgets = true;
                    break;
                }
            }
            if (this.mBarrierType == 0 || this.mBarrierType == 1) {
                if (getParent().getHorizontalDimensionBehaviour() == DimensionBehaviour.WRAP_CONTENT) {
                    hasMatchConstraintWidgets = false;
                }
            } else if (getParent().getVerticalDimensionBehaviour() == DimensionBehaviour.WRAP_CONTENT) {
                hasMatchConstraintWidgets = false;
            }
            for (i = 0; i < this.mWidgetsCount; i++) {
                widget = this.mWidgets[i];
                if (this.mAllowsGoneWidget || widget.allowedInBarrier()) {
                    SolverVariable target = system.createObjectVariable(widget.mListAnchors[this.mBarrierType]);
                    widget.mListAnchors[this.mBarrierType].mSolverVariable = target;
                    if (this.mBarrierType == 0 || this.mBarrierType == 2) {
                        system.addLowerBarrier(position.mSolverVariable, target, hasMatchConstraintWidgets);
                    } else {
                        system.addGreaterBarrier(position.mSolverVariable, target, hasMatchConstraintWidgets);
                    }
                }
            }
            if (this.mBarrierType == 0) {
                system.addEquality(this.mRight.mSolverVariable, this.mLeft.mSolverVariable, 0, 6);
                if (!hasMatchConstraintWidgets) {
                    system.addEquality(this.mLeft.mSolverVariable, this.mParent.mRight.mSolverVariable, 0, 5);
                }
            } else if (this.mBarrierType == 1) {
                system.addEquality(this.mLeft.mSolverVariable, this.mRight.mSolverVariable, 0, 6);
                if (!hasMatchConstraintWidgets) {
                    system.addEquality(this.mLeft.mSolverVariable, this.mParent.mLeft.mSolverVariable, 0, 5);
                }
            } else if (this.mBarrierType == 2) {
                system.addEquality(this.mBottom.mSolverVariable, this.mTop.mSolverVariable, 0, 6);
                if (!hasMatchConstraintWidgets) {
                    system.addEquality(this.mTop.mSolverVariable, this.mParent.mBottom.mSolverVariable, 0, 5);
                }
            } else if (this.mBarrierType == 3) {
                system.addEquality(this.mTop.mSolverVariable, this.mBottom.mSolverVariable, 0, 6);
                if (!hasMatchConstraintWidgets) {
                    system.addEquality(this.mTop.mSolverVariable, this.mParent.mTop.mSolverVariable, 0, 5);
                }
            }
        }
    }
}
