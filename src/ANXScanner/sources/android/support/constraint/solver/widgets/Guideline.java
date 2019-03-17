package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.SolverVariable;
import android.support.constraint.solver.widgets.ConstraintAnchor.Type;
import android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour;
import java.util.ArrayList;

public class Guideline extends ConstraintWidget {
    public static final int HORIZONTAL = 0;
    public static final int RELATIVE_BEGIN = 1;
    public static final int RELATIVE_END = 2;
    public static final int RELATIVE_PERCENT = 0;
    public static final int RELATIVE_UNKNWON = -1;
    public static final int VERTICAL = 1;
    private ConstraintAnchor mAnchor = this.mTop;
    private Rectangle mHead = new Rectangle();
    private int mHeadSize = 8;
    private boolean mIsPositionRelaxed = false;
    private int mMinimumPosition = 0;
    private int mOrientation = 0;
    protected int mRelativeBegin = -1;
    protected int mRelativeEnd = -1;
    protected float mRelativePercent = -1.0f;

    public Guideline() {
        this.mAnchors.clear();
        this.mAnchors.add(this.mAnchor);
        int count = this.mListAnchors.length;
        for (int i = 0; i < count; i++) {
            this.mListAnchors[i] = this.mAnchor;
        }
    }

    public boolean allowedInBarrier() {
        return true;
    }

    public int getRelativeBehaviour() {
        if (this.mRelativePercent != -1.0f) {
            return 0;
        }
        if (this.mRelativeBegin != -1) {
            return 1;
        }
        if (this.mRelativeEnd != -1) {
            return 2;
        }
        return -1;
    }

    public Rectangle getHead() {
        this.mHead.setBounds(getDrawX() - this.mHeadSize, getDrawY() - (this.mHeadSize * 2), this.mHeadSize * 2, this.mHeadSize * 2);
        if (getOrientation() == 0) {
            this.mHead.setBounds(getDrawX() - (this.mHeadSize * 2), getDrawY() - this.mHeadSize, this.mHeadSize * 2, this.mHeadSize * 2);
        }
        return this.mHead;
    }

    public void setOrientation(int orientation) {
        if (this.mOrientation != orientation) {
            this.mOrientation = orientation;
            this.mAnchors.clear();
            if (this.mOrientation == 1) {
                this.mAnchor = this.mLeft;
            } else {
                this.mAnchor = this.mTop;
            }
            this.mAnchors.add(this.mAnchor);
            int count = this.mListAnchors.length;
            for (int i = 0; i < count; i++) {
                this.mListAnchors[i] = this.mAnchor;
            }
        }
    }

    public ConstraintAnchor getAnchor() {
        return this.mAnchor;
    }

    public String getType() {
        return "Guideline";
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public void setMinimumPosition(int minimum) {
        this.mMinimumPosition = minimum;
    }

    public void setPositionRelaxed(boolean value) {
        if (this.mIsPositionRelaxed != value) {
            this.mIsPositionRelaxed = value;
        }
    }

    public ConstraintAnchor getAnchor(Type anchorType) {
        switch (anchorType) {
            case LEFT:
            case RIGHT:
                if (this.mOrientation == 1) {
                    return this.mAnchor;
                }
                break;
            case TOP:
            case BOTTOM:
                if (this.mOrientation == 0) {
                    return this.mAnchor;
                }
                break;
            case BASELINE:
            case CENTER:
            case CENTER_X:
            case CENTER_Y:
            case NONE:
                return null;
        }
        throw new AssertionError(anchorType.name());
    }

    public ArrayList<ConstraintAnchor> getAnchors() {
        return this.mAnchors;
    }

    public void setGuidePercent(int value) {
        setGuidePercent(((float) value) / 100.0f);
    }

    public void setGuidePercent(float value) {
        if (value > -1.0f) {
            this.mRelativePercent = value;
            this.mRelativeBegin = -1;
            this.mRelativeEnd = -1;
        }
    }

    public void setGuideBegin(int value) {
        if (value > -1) {
            this.mRelativePercent = -1.0f;
            this.mRelativeBegin = value;
            this.mRelativeEnd = -1;
        }
    }

    public void setGuideEnd(int value) {
        if (value > -1) {
            this.mRelativePercent = -1.0f;
            this.mRelativeBegin = -1;
            this.mRelativeEnd = value;
        }
    }

    public float getRelativePercent() {
        return this.mRelativePercent;
    }

    public int getRelativeBegin() {
        return this.mRelativeBegin;
    }

    public int getRelativeEnd() {
        return this.mRelativeEnd;
    }

    public void analyze(int optimizationLevel) {
        ConstraintWidget constraintWidgetContainer = getParent();
        if (constraintWidgetContainer != null) {
            int position;
            if (getOrientation() == 1) {
                this.mTop.getResolutionNode().dependsOn(1, constraintWidgetContainer.mTop.getResolutionNode(), 0);
                this.mBottom.getResolutionNode().dependsOn(1, constraintWidgetContainer.mTop.getResolutionNode(), 0);
                if (this.mRelativeBegin != -1) {
                    this.mLeft.getResolutionNode().dependsOn(1, constraintWidgetContainer.mLeft.getResolutionNode(), this.mRelativeBegin);
                    this.mRight.getResolutionNode().dependsOn(1, constraintWidgetContainer.mLeft.getResolutionNode(), this.mRelativeBegin);
                    return;
                } else if (this.mRelativeEnd != -1) {
                    this.mLeft.getResolutionNode().dependsOn(1, constraintWidgetContainer.mRight.getResolutionNode(), -this.mRelativeEnd);
                    this.mRight.getResolutionNode().dependsOn(1, constraintWidgetContainer.mRight.getResolutionNode(), -this.mRelativeEnd);
                    return;
                } else if (this.mRelativePercent != -1.0f && constraintWidgetContainer.getHorizontalDimensionBehaviour() == DimensionBehaviour.FIXED) {
                    position = (int) (((float) constraintWidgetContainer.mWidth) * this.mRelativePercent);
                    this.mLeft.getResolutionNode().dependsOn(1, constraintWidgetContainer.mLeft.getResolutionNode(), position);
                    this.mRight.getResolutionNode().dependsOn(1, constraintWidgetContainer.mLeft.getResolutionNode(), position);
                    return;
                } else {
                    return;
                }
            }
            this.mLeft.getResolutionNode().dependsOn(1, constraintWidgetContainer.mLeft.getResolutionNode(), 0);
            this.mRight.getResolutionNode().dependsOn(1, constraintWidgetContainer.mLeft.getResolutionNode(), 0);
            if (this.mRelativeBegin != -1) {
                this.mTop.getResolutionNode().dependsOn(1, constraintWidgetContainer.mTop.getResolutionNode(), this.mRelativeBegin);
                this.mBottom.getResolutionNode().dependsOn(1, constraintWidgetContainer.mTop.getResolutionNode(), this.mRelativeBegin);
            } else if (this.mRelativeEnd != -1) {
                this.mTop.getResolutionNode().dependsOn(1, constraintWidgetContainer.mBottom.getResolutionNode(), -this.mRelativeEnd);
                this.mBottom.getResolutionNode().dependsOn(1, constraintWidgetContainer.mBottom.getResolutionNode(), -this.mRelativeEnd);
            } else if (this.mRelativePercent != -1.0f && constraintWidgetContainer.getVerticalDimensionBehaviour() == DimensionBehaviour.FIXED) {
                position = (int) (((float) constraintWidgetContainer.mHeight) * this.mRelativePercent);
                this.mTop.getResolutionNode().dependsOn(1, constraintWidgetContainer.mTop.getResolutionNode(), position);
                this.mBottom.getResolutionNode().dependsOn(1, constraintWidgetContainer.mTop.getResolutionNode(), position);
            }
        }
    }

    public void addToSolver(LinearSystem system) {
        ConstraintWidgetContainer parent = (ConstraintWidgetContainer) getParent();
        if (parent != null) {
            ConstraintAnchor begin = parent.getAnchor(Type.LEFT);
            ConstraintAnchor end = parent.getAnchor(Type.RIGHT);
            boolean parentWrapContent = this.mParent != null ? this.mParent.mListDimensionBehaviors[0] == DimensionBehaviour.WRAP_CONTENT : false;
            if (this.mOrientation == 0) {
                begin = parent.getAnchor(Type.TOP);
                end = parent.getAnchor(Type.BOTTOM);
                parentWrapContent = this.mParent != null ? this.mParent.mListDimensionBehaviors[1] == DimensionBehaviour.WRAP_CONTENT : false;
            }
            SolverVariable guide;
            if (this.mRelativeBegin != -1) {
                guide = system.createObjectVariable(this.mAnchor);
                system.addEquality(guide, system.createObjectVariable(begin), this.mRelativeBegin, 6);
                if (parentWrapContent) {
                    system.addGreaterThan(system.createObjectVariable(end), guide, 0, 5);
                }
            } else if (this.mRelativeEnd != -1) {
                guide = system.createObjectVariable(this.mAnchor);
                SolverVariable parentRight = system.createObjectVariable(end);
                system.addEquality(guide, parentRight, -this.mRelativeEnd, 6);
                if (parentWrapContent) {
                    system.addGreaterThan(guide, system.createObjectVariable(begin), 0, 5);
                    system.addGreaterThan(parentRight, guide, 0, 5);
                }
            } else if (this.mRelativePercent != -1.0f) {
                system.addConstraint(LinearSystem.createRowDimensionPercent(system, system.createObjectVariable(this.mAnchor), system.createObjectVariable(begin), system.createObjectVariable(end), this.mRelativePercent, this.mIsPositionRelaxed));
            }
        }
    }

    public void updateFromSolver(LinearSystem system) {
        if (getParent() != null) {
            int value = system.getObjectVariableValue(this.mAnchor);
            if (this.mOrientation == 1) {
                setX(value);
                setY(0);
                setHeight(getParent().getHeight());
                setWidth(0);
                return;
            }
            setX(0);
            setY(value);
            setWidth(getParent().getWidth());
            setHeight(0);
        }
    }

    public void setDrawOrigin(int x, int y) {
        int position;
        if (this.mOrientation == 1) {
            position = x - this.mOffsetX;
            if (this.mRelativeBegin != -1) {
                setGuideBegin(position);
                return;
            } else if (this.mRelativeEnd != -1) {
                setGuideEnd(getParent().getWidth() - position);
                return;
            } else if (this.mRelativePercent != -1.0f) {
                setGuidePercent(((float) position) / ((float) getParent().getWidth()));
                return;
            } else {
                return;
            }
        }
        position = y - this.mOffsetY;
        if (this.mRelativeBegin != -1) {
            setGuideBegin(position);
        } else if (this.mRelativeEnd != -1) {
            setGuideEnd(getParent().getHeight() - position);
        } else if (this.mRelativePercent != -1.0f) {
            setGuidePercent(((float) position) / ((float) getParent().getHeight()));
        }
    }

    void inferRelativePercentPosition() {
        float percent = ((float) getX()) / ((float) getParent().getWidth());
        if (this.mOrientation == 0) {
            percent = ((float) getY()) / ((float) getParent().getHeight());
        }
        setGuidePercent(percent);
    }

    void inferRelativeBeginPosition() {
        int position = getX();
        if (this.mOrientation == 0) {
            position = getY();
        }
        setGuideBegin(position);
    }

    void inferRelativeEndPosition() {
        int position = getParent().getWidth() - getX();
        if (this.mOrientation == 0) {
            position = getParent().getHeight() - getY();
        }
        setGuideEnd(position);
    }

    public void cyclePosition() {
        if (this.mRelativeBegin != -1) {
            inferRelativePercentPosition();
        } else if (this.mRelativePercent != -1.0f) {
            inferRelativeEndPosition();
        } else if (this.mRelativeEnd != -1) {
            inferRelativeBeginPosition();
        }
    }
}
