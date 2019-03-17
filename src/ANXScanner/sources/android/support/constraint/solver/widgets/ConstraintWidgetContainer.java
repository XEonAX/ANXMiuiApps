package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.Metrics;
import android.support.constraint.solver.widgets.ConstraintAnchor.Type;
import android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ConstraintWidgetContainer extends WidgetContainer {
    private static final boolean DEBUG = false;
    static final boolean DEBUG_GRAPH = false;
    private static final boolean DEBUG_LAYOUT = false;
    private static final int MAX_ITERATIONS = 8;
    private static final boolean USE_SNAPSHOT = true;
    int mDebugSolverPassCount;
    public boolean mGroupsWrapOptimized;
    private boolean mHeightMeasuredTooSmall;
    ChainHead[] mHorizontalChainsArray;
    int mHorizontalChainsSize;
    public boolean mHorizontalWrapOptimized;
    private boolean mIsRtl;
    private int mOptimizationLevel;
    int mPaddingBottom;
    int mPaddingLeft;
    int mPaddingRight;
    int mPaddingTop;
    public boolean mSkipSolver;
    private Snapshot mSnapshot;
    protected LinearSystem mSystem;
    ChainHead[] mVerticalChainsArray;
    int mVerticalChainsSize;
    public boolean mVerticalWrapOptimized;
    public List<ConstraintWidgetGroup> mWidgetGroups;
    private boolean mWidthMeasuredTooSmall;
    public int mWrapFixedHeight;
    public int mWrapFixedWidth;

    public void fillMetrics(Metrics metrics) {
        this.mSystem.fillMetrics(metrics);
    }

    public ConstraintWidgetContainer() {
        this.mIsRtl = false;
        this.mSystem = new LinearSystem();
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mVerticalChainsArray = new ChainHead[4];
        this.mHorizontalChainsArray = new ChainHead[4];
        this.mWidgetGroups = new ArrayList();
        this.mGroupsWrapOptimized = false;
        this.mHorizontalWrapOptimized = false;
        this.mVerticalWrapOptimized = false;
        this.mWrapFixedWidth = 0;
        this.mWrapFixedHeight = 0;
        this.mOptimizationLevel = 7;
        this.mSkipSolver = false;
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        this.mDebugSolverPassCount = 0;
    }

    public ConstraintWidgetContainer(int x, int y, int width, int height) {
        super(x, y, width, height);
        this.mIsRtl = false;
        this.mSystem = new LinearSystem();
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mVerticalChainsArray = new ChainHead[4];
        this.mHorizontalChainsArray = new ChainHead[4];
        this.mWidgetGroups = new ArrayList();
        this.mGroupsWrapOptimized = false;
        this.mHorizontalWrapOptimized = false;
        this.mVerticalWrapOptimized = false;
        this.mWrapFixedWidth = 0;
        this.mWrapFixedHeight = 0;
        this.mOptimizationLevel = 7;
        this.mSkipSolver = false;
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        this.mDebugSolverPassCount = 0;
    }

    public ConstraintWidgetContainer(int width, int height) {
        super(width, height);
        this.mIsRtl = false;
        this.mSystem = new LinearSystem();
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mVerticalChainsArray = new ChainHead[4];
        this.mHorizontalChainsArray = new ChainHead[4];
        this.mWidgetGroups = new ArrayList();
        this.mGroupsWrapOptimized = false;
        this.mHorizontalWrapOptimized = false;
        this.mVerticalWrapOptimized = false;
        this.mWrapFixedWidth = 0;
        this.mWrapFixedHeight = 0;
        this.mOptimizationLevel = 7;
        this.mSkipSolver = false;
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        this.mDebugSolverPassCount = 0;
    }

    public void setOptimizationLevel(int value) {
        this.mOptimizationLevel = value;
    }

    public int getOptimizationLevel() {
        return this.mOptimizationLevel;
    }

    public boolean optimizeFor(int feature) {
        return (this.mOptimizationLevel & feature) == feature ? USE_SNAPSHOT : false;
    }

    public String getType() {
        return "ConstraintLayout";
    }

    public void reset() {
        this.mSystem.reset();
        this.mPaddingLeft = 0;
        this.mPaddingRight = 0;
        this.mPaddingTop = 0;
        this.mPaddingBottom = 0;
        this.mWidgetGroups.clear();
        this.mSkipSolver = false;
        super.reset();
    }

    public boolean isWidthMeasuredTooSmall() {
        return this.mWidthMeasuredTooSmall;
    }

    public boolean isHeightMeasuredTooSmall() {
        return this.mHeightMeasuredTooSmall;
    }

    public boolean addChildrenToSolver(LinearSystem system) {
        addToSolver(system);
        int count = this.mChildren.size();
        for (int i = 0; i < count; i++) {
            ConstraintWidget widget = (ConstraintWidget) this.mChildren.get(i);
            if (widget instanceof ConstraintWidgetContainer) {
                DimensionBehaviour horizontalBehaviour = widget.mListDimensionBehaviors[0];
                DimensionBehaviour verticalBehaviour = widget.mListDimensionBehaviors[1];
                if (horizontalBehaviour == DimensionBehaviour.WRAP_CONTENT) {
                    widget.setHorizontalDimensionBehaviour(DimensionBehaviour.FIXED);
                }
                if (verticalBehaviour == DimensionBehaviour.WRAP_CONTENT) {
                    widget.setVerticalDimensionBehaviour(DimensionBehaviour.FIXED);
                }
                widget.addToSolver(system);
                if (horizontalBehaviour == DimensionBehaviour.WRAP_CONTENT) {
                    widget.setHorizontalDimensionBehaviour(horizontalBehaviour);
                }
                if (verticalBehaviour == DimensionBehaviour.WRAP_CONTENT) {
                    widget.setVerticalDimensionBehaviour(verticalBehaviour);
                }
            } else {
                Optimizer.checkMatchParent(this, system, widget);
                widget.addToSolver(system);
            }
        }
        if (this.mHorizontalChainsSize > 0) {
            Chain.applyChainConstraints(this, system, 0);
        }
        if (this.mVerticalChainsSize > 0) {
            Chain.applyChainConstraints(this, system, 1);
        }
        return USE_SNAPSHOT;
    }

    public void updateChildrenFromSolver(LinearSystem system, boolean[] flags) {
        flags[2] = false;
        updateFromSolver(system);
        int count = this.mChildren.size();
        for (int i = 0; i < count; i++) {
            ConstraintWidget widget = (ConstraintWidget) this.mChildren.get(i);
            widget.updateFromSolver(system);
            if (widget.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT && widget.getWidth() < widget.getWrapWidth()) {
                flags[2] = USE_SNAPSHOT;
            }
            if (widget.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT && widget.getHeight() < widget.getWrapHeight()) {
                flags[2] = USE_SNAPSHOT;
            }
        }
    }

    public void setPadding(int left, int top, int right, int bottom) {
        this.mPaddingLeft = left;
        this.mPaddingTop = top;
        this.mPaddingRight = right;
        this.mPaddingBottom = bottom;
    }

    public void setRtl(boolean isRtl) {
        this.mIsRtl = isRtl;
    }

    public boolean isRtl() {
        return this.mIsRtl;
    }

    public void analyze(int optimizationLevel) {
        super.analyze(optimizationLevel);
        int count = this.mChildren.size();
        for (int i = 0; i < count; i++) {
            ((ConstraintWidget) this.mChildren.get(i)).analyze(optimizationLevel);
        }
    }

    public void layout() {
        int width;
        int height;
        int prex = this.mX;
        int prey = this.mY;
        int prew = Math.max(0, getWidth());
        int preh = Math.max(0, getHeight());
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        if (this.mParent != null) {
            if (this.mSnapshot == null) {
                this.mSnapshot = new Snapshot(this);
            }
            this.mSnapshot.updateFrom(this);
            setX(this.mPaddingLeft);
            setY(this.mPaddingTop);
            resetAnchors();
            resetSolverVariables(this.mSystem.getCache());
        } else {
            this.mX = 0;
            this.mY = 0;
        }
        if (this.mOptimizationLevel != 0) {
            if (!optimizeFor(8)) {
                optimizeReset();
            }
            if (!optimizeFor(32)) {
                optimize();
            }
            this.mSystem.graphOptimizer = USE_SNAPSHOT;
        } else {
            this.mSystem.graphOptimizer = false;
        }
        boolean wrap_override = false;
        DimensionBehaviour originalVerticalDimensionBehaviour = this.mListDimensionBehaviors[1];
        DimensionBehaviour originalHorizontalDimensionBehaviour = this.mListDimensionBehaviors[0];
        resetChains();
        if (this.mWidgetGroups.size() == 0) {
            this.mWidgetGroups.clear();
            this.mWidgetGroups.add(0, new ConstraintWidgetGroup(this.mChildren));
        }
        int groupSize = this.mWidgetGroups.size();
        List<ConstraintWidget> allChildren = this.mChildren;
        boolean hasWrapContent = (getHorizontalDimensionBehaviour() == DimensionBehaviour.WRAP_CONTENT || getVerticalDimensionBehaviour() == DimensionBehaviour.WRAP_CONTENT) ? USE_SNAPSHOT : false;
        for (int groupIndex = 0; groupIndex < groupSize && !this.mSkipSolver; groupIndex++) {
            if (!((ConstraintWidgetGroup) this.mWidgetGroups.get(groupIndex)).mSkipSolver) {
                int i;
                ConstraintWidget widget;
                if (optimizeFor(32)) {
                    if (getHorizontalDimensionBehaviour() == DimensionBehaviour.FIXED && getVerticalDimensionBehaviour() == DimensionBehaviour.FIXED) {
                        this.mChildren = (ArrayList) ((ConstraintWidgetGroup) this.mWidgetGroups.get(groupIndex)).getWidgetsToSolve();
                    } else {
                        this.mChildren = (ArrayList) ((ConstraintWidgetGroup) this.mWidgetGroups.get(groupIndex)).mConstrainedGroup;
                    }
                }
                resetChains();
                int count = this.mChildren.size();
                int countSolve = 0;
                for (i = 0; i < count; i++) {
                    widget = (ConstraintWidget) this.mChildren.get(i);
                    if (widget instanceof WidgetContainer) {
                        ((WidgetContainer) widget).layout();
                    }
                }
                boolean needsSolving = USE_SNAPSHOT;
                while (needsSolving) {
                    countSolve++;
                    try {
                        this.mSystem.reset();
                        resetChains();
                        createObjectVariables(this.mSystem);
                        for (i = 0; i < count; i++) {
                            ((ConstraintWidget) this.mChildren.get(i)).createObjectVariables(this.mSystem);
                        }
                        needsSolving = addChildrenToSolver(this.mSystem);
                        if (needsSolving) {
                            this.mSystem.minimize();
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        System.out.println("EXCEPTION : " + e);
                    }
                    if (!needsSolving) {
                        updateFromSolver(this.mSystem);
                        for (i = 0; i < count; i++) {
                            widget = (ConstraintWidget) this.mChildren.get(i);
                            if (widget.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT && widget.getWidth() < widget.getWrapWidth()) {
                                Optimizer.flags[2] = USE_SNAPSHOT;
                                break;
                            }
                            if (widget.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT && widget.getHeight() < widget.getWrapHeight()) {
                                Optimizer.flags[2] = USE_SNAPSHOT;
                                break;
                            }
                        }
                    } else {
                        updateChildrenFromSolver(this.mSystem, Optimizer.flags);
                    }
                    needsSolving = false;
                    if (hasWrapContent && countSolve < 8 && Optimizer.flags[2]) {
                        int maxX = 0;
                        int maxY = 0;
                        for (i = 0; i < count; i++) {
                            widget = (ConstraintWidget) this.mChildren.get(i);
                            maxX = Math.max(maxX, widget.mX + widget.getWidth());
                            maxY = Math.max(maxY, widget.mY + widget.getHeight());
                        }
                        maxX = Math.max(this.mMinWidth, maxX);
                        maxY = Math.max(this.mMinHeight, maxY);
                        if (originalHorizontalDimensionBehaviour == DimensionBehaviour.WRAP_CONTENT && getWidth() < maxX) {
                            setWidth(maxX);
                            this.mListDimensionBehaviors[0] = DimensionBehaviour.WRAP_CONTENT;
                            wrap_override = USE_SNAPSHOT;
                            needsSolving = USE_SNAPSHOT;
                        }
                        if (originalVerticalDimensionBehaviour == DimensionBehaviour.WRAP_CONTENT && getHeight() < maxY) {
                            setHeight(maxY);
                            this.mListDimensionBehaviors[1] = DimensionBehaviour.WRAP_CONTENT;
                            wrap_override = USE_SNAPSHOT;
                            needsSolving = USE_SNAPSHOT;
                        }
                    }
                    width = Math.max(this.mMinWidth, getWidth());
                    if (width > getWidth()) {
                        setWidth(width);
                        this.mListDimensionBehaviors[0] = DimensionBehaviour.FIXED;
                        wrap_override = USE_SNAPSHOT;
                        needsSolving = USE_SNAPSHOT;
                    }
                    height = Math.max(this.mMinHeight, getHeight());
                    if (height > getHeight()) {
                        setHeight(height);
                        this.mListDimensionBehaviors[1] = DimensionBehaviour.FIXED;
                        wrap_override = USE_SNAPSHOT;
                        needsSolving = USE_SNAPSHOT;
                    }
                    if (!wrap_override) {
                        if (this.mListDimensionBehaviors[0] == DimensionBehaviour.WRAP_CONTENT && prew > 0 && getWidth() > prew) {
                            this.mWidthMeasuredTooSmall = USE_SNAPSHOT;
                            wrap_override = USE_SNAPSHOT;
                            this.mListDimensionBehaviors[0] = DimensionBehaviour.FIXED;
                            setWidth(prew);
                            needsSolving = USE_SNAPSHOT;
                        }
                        if (this.mListDimensionBehaviors[1] == DimensionBehaviour.WRAP_CONTENT && preh > 0 && getHeight() > preh) {
                            this.mHeightMeasuredTooSmall = USE_SNAPSHOT;
                            wrap_override = USE_SNAPSHOT;
                            this.mListDimensionBehaviors[1] = DimensionBehaviour.FIXED;
                            setHeight(preh);
                            needsSolving = USE_SNAPSHOT;
                        }
                    }
                }
                ((ConstraintWidgetGroup) this.mWidgetGroups.get(groupIndex)).updateUnresolvedWidgets();
            }
        }
        this.mChildren = (ArrayList) allChildren;
        if (this.mParent != null) {
            width = Math.max(this.mMinWidth, getWidth());
            height = Math.max(this.mMinHeight, getHeight());
            this.mSnapshot.applyTo(this);
            setWidth((this.mPaddingLeft + width) + this.mPaddingRight);
            setHeight((this.mPaddingTop + height) + this.mPaddingBottom);
        } else {
            this.mX = prex;
            this.mY = prey;
        }
        if (wrap_override) {
            this.mListDimensionBehaviors[0] = originalHorizontalDimensionBehaviour;
            this.mListDimensionBehaviors[1] = originalVerticalDimensionBehaviour;
        }
        resetSolverVariables(this.mSystem.getCache());
        if (this == getRootConstraintContainer()) {
            updateDrawPosition();
        }
    }

    public void preOptimize() {
        optimizeReset();
        analyze(this.mOptimizationLevel);
    }

    public void solveGraph() {
        ResolutionAnchor leftNode = getAnchor(Type.LEFT).getResolutionNode();
        ResolutionAnchor topNode = getAnchor(Type.TOP).getResolutionNode();
        leftNode.resolve(null, 0.0f);
        topNode.resolve(null, 0.0f);
    }

    public void resetGraph() {
        ResolutionAnchor leftNode = getAnchor(Type.LEFT).getResolutionNode();
        ResolutionAnchor topNode = getAnchor(Type.TOP).getResolutionNode();
        leftNode.invalidateAnchors();
        topNode.invalidateAnchors();
        leftNode.resolve(null, 0.0f);
        topNode.resolve(null, 0.0f);
    }

    public void optimizeForDimensions(int width, int height) {
        if (!(this.mListDimensionBehaviors[0] == DimensionBehaviour.WRAP_CONTENT || this.mResolutionWidth == null)) {
            this.mResolutionWidth.resolve(width);
        }
        if (this.mListDimensionBehaviors[1] != DimensionBehaviour.WRAP_CONTENT && this.mResolutionHeight != null) {
            this.mResolutionHeight.resolve(height);
        }
    }

    public void optimizeReset() {
        int count = this.mChildren.size();
        resetResolutionNodes();
        for (int i = 0; i < count; i++) {
            ((ConstraintWidget) this.mChildren.get(i)).resetResolutionNodes();
        }
    }

    public void optimize() {
        if (!optimizeFor(8)) {
            analyze(this.mOptimizationLevel);
        }
        solveGraph();
    }

    public boolean handlesInternalConstraints() {
        return false;
    }

    public ArrayList<Guideline> getVerticalGuidelines() {
        ArrayList<Guideline> guidelines = new ArrayList();
        int mChildrenSize = this.mChildren.size();
        for (int i = 0; i < mChildrenSize; i++) {
            ConstraintWidget widget = (ConstraintWidget) this.mChildren.get(i);
            if (widget instanceof Guideline) {
                Guideline guideline = (Guideline) widget;
                if (guideline.getOrientation() == 1) {
                    guidelines.add(guideline);
                }
            }
        }
        return guidelines;
    }

    public ArrayList<Guideline> getHorizontalGuidelines() {
        ArrayList<Guideline> guidelines = new ArrayList();
        int mChildrenSize = this.mChildren.size();
        for (int i = 0; i < mChildrenSize; i++) {
            ConstraintWidget widget = (ConstraintWidget) this.mChildren.get(i);
            if (widget instanceof Guideline) {
                Guideline guideline = (Guideline) widget;
                if (guideline.getOrientation() == 0) {
                    guidelines.add(guideline);
                }
            }
        }
        return guidelines;
    }

    public LinearSystem getSystem() {
        return this.mSystem;
    }

    private void resetChains() {
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
    }

    void addChain(ConstraintWidget constraintWidget, int type) {
        ConstraintWidget widget = constraintWidget;
        if (type == 0) {
            addHorizontalChain(widget);
        } else if (type == 1) {
            addVerticalChain(widget);
        }
    }

    private void addHorizontalChain(ConstraintWidget widget) {
        if (this.mHorizontalChainsSize + 1 >= this.mHorizontalChainsArray.length) {
            this.mHorizontalChainsArray = (ChainHead[]) Arrays.copyOf(this.mHorizontalChainsArray, this.mHorizontalChainsArray.length * 2);
        }
        this.mHorizontalChainsArray[this.mHorizontalChainsSize] = new ChainHead(widget, 0, isRtl());
        this.mHorizontalChainsSize++;
    }

    private void addVerticalChain(ConstraintWidget widget) {
        if (this.mVerticalChainsSize + 1 >= this.mVerticalChainsArray.length) {
            this.mVerticalChainsArray = (ChainHead[]) Arrays.copyOf(this.mVerticalChainsArray, this.mVerticalChainsArray.length * 2);
        }
        this.mVerticalChainsArray[this.mVerticalChainsSize] = new ChainHead(widget, 1, isRtl());
        this.mVerticalChainsSize++;
    }

    public List<ConstraintWidgetGroup> getWidgetGroups() {
        return this.mWidgetGroups;
    }
}
