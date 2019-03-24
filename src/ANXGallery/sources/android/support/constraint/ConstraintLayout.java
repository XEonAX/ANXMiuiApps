package android.support.constraint;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build.VERSION;
import android.support.constraint.solver.Metrics;
import android.support.constraint.solver.widgets.Analyzer;
import android.support.constraint.solver.widgets.ConstraintAnchor.Strength;
import android.support.constraint.solver.widgets.ConstraintAnchor.Type;
import android.support.constraint.solver.widgets.ConstraintWidget;
import android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour;
import android.support.constraint.solver.widgets.ConstraintWidgetContainer;
import android.support.constraint.solver.widgets.Guideline;
import android.support.constraint.solver.widgets.ResolutionAnchor;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import com.miui.internal.view.menu.MenuBuilder;
import com.nexstreaming.nexeditorsdk.nexEngine;
import java.util.ArrayList;
import java.util.HashMap;

public class ConstraintLayout extends ViewGroup {
    SparseArray<View> mChildrenByIds = new SparseArray();
    private ArrayList<ConstraintHelper> mConstraintHelpers = new ArrayList(4);
    private ConstraintSet mConstraintSet = null;
    private int mConstraintSetId = -1;
    private HashMap<String, Integer> mDesignIds = new HashMap();
    private boolean mDirtyHierarchy = true;
    private int mLastMeasureHeight = -1;
    int mLastMeasureHeightMode = 0;
    int mLastMeasureHeightSize = -1;
    private int mLastMeasureWidth = -1;
    int mLastMeasureWidthMode = 0;
    int mLastMeasureWidthSize = -1;
    ConstraintWidgetContainer mLayoutWidget = new ConstraintWidgetContainer();
    private int mMaxHeight = Integer.MAX_VALUE;
    private int mMaxWidth = Integer.MAX_VALUE;
    private Metrics mMetrics;
    private int mMinHeight = 0;
    private int mMinWidth = 0;
    private int mOptimizationLevel = 7;
    private final ArrayList<ConstraintWidget> mVariableDimensionsWidgets = new ArrayList(100);

    public static class LayoutParams extends MarginLayoutParams {
        public int baselineToBaseline = -1;
        public int bottomToBottom = -1;
        public int bottomToTop = -1;
        public float circleAngle = 0.0f;
        public int circleConstraint = -1;
        public int circleRadius = 0;
        public boolean constrainedHeight = false;
        public boolean constrainedWidth = false;
        public String dimensionRatio = null;
        int dimensionRatioSide = 1;
        float dimensionRatioValue = 0.0f;
        public int editorAbsoluteX = -1;
        public int editorAbsoluteY = -1;
        public int endToEnd = -1;
        public int endToStart = -1;
        public int goneBottomMargin = -1;
        public int goneEndMargin = -1;
        public int goneLeftMargin = -1;
        public int goneRightMargin = -1;
        public int goneStartMargin = -1;
        public int goneTopMargin = -1;
        public int guideBegin = -1;
        public int guideEnd = -1;
        public float guidePercent = -1.0f;
        public boolean helped = false;
        public float horizontalBias = 0.5f;
        public int horizontalChainStyle = 0;
        boolean horizontalDimensionFixed = true;
        public float horizontalWeight = -1.0f;
        boolean isGuideline = false;
        boolean isHelper = false;
        boolean isInPlaceholder = false;
        public int leftToLeft = -1;
        public int leftToRight = -1;
        public int matchConstraintDefaultHeight = 0;
        public int matchConstraintDefaultWidth = 0;
        public int matchConstraintMaxHeight = 0;
        public int matchConstraintMaxWidth = 0;
        public int matchConstraintMinHeight = 0;
        public int matchConstraintMinWidth = 0;
        public float matchConstraintPercentHeight = 1.0f;
        public float matchConstraintPercentWidth = 1.0f;
        boolean needsBaseline = false;
        public int orientation = -1;
        int resolveGoneLeftMargin = -1;
        int resolveGoneRightMargin = -1;
        int resolvedGuideBegin;
        int resolvedGuideEnd;
        float resolvedGuidePercent;
        float resolvedHorizontalBias = 0.5f;
        int resolvedLeftToLeft = -1;
        int resolvedLeftToRight = -1;
        int resolvedRightToLeft = -1;
        int resolvedRightToRight = -1;
        public int rightToLeft = -1;
        public int rightToRight = -1;
        public int startToEnd = -1;
        public int startToStart = -1;
        public int topToBottom = -1;
        public int topToTop = -1;
        public float verticalBias = 0.5f;
        public int verticalChainStyle = 0;
        boolean verticalDimensionFixed = true;
        public float verticalWeight = -1.0f;
        ConstraintWidget widget = new ConstraintWidget();

        private static class Table {
            public static final SparseIntArray map = new SparseIntArray();

            static {
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircle, 2);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                map.append(R.styleable.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                map.append(R.styleable.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                map.append(R.styleable.ConstraintLayout_Layout_android_orientation, 1);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                map.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                map.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                map.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                map.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                map.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                map.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                map.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
            }
        }

        public LayoutParams(Context c, AttributeSet attrs) {
            super(c, attrs);
            TypedArray a = c.obtainStyledAttributes(attrs, R.styleable.ConstraintLayout_Layout);
            int N = a.getIndexCount();
            for (int i = 0; i < N; i++) {
                int attr = a.getIndex(i);
                switch (Table.map.get(attr)) {
                    case 1:
                        this.orientation = a.getInt(attr, this.orientation);
                        break;
                    case 2:
                        this.circleConstraint = a.getResourceId(attr, this.circleConstraint);
                        if (this.circleConstraint != -1) {
                            break;
                        }
                        this.circleConstraint = a.getInt(attr, -1);
                        break;
                    case 3:
                        this.circleRadius = a.getDimensionPixelSize(attr, this.circleRadius);
                        break;
                    case 4:
                        this.circleAngle = a.getFloat(attr, this.circleAngle) % 360.0f;
                        if (this.circleAngle >= 0.0f) {
                            break;
                        }
                        this.circleAngle = (360.0f - this.circleAngle) % 360.0f;
                        break;
                    case 5:
                        this.guideBegin = a.getDimensionPixelOffset(attr, this.guideBegin);
                        break;
                    case 6:
                        this.guideEnd = a.getDimensionPixelOffset(attr, this.guideEnd);
                        break;
                    case 7:
                        this.guidePercent = a.getFloat(attr, this.guidePercent);
                        break;
                    case 8:
                        this.leftToLeft = a.getResourceId(attr, this.leftToLeft);
                        if (this.leftToLeft != -1) {
                            break;
                        }
                        this.leftToLeft = a.getInt(attr, -1);
                        break;
                    case 9:
                        this.leftToRight = a.getResourceId(attr, this.leftToRight);
                        if (this.leftToRight != -1) {
                            break;
                        }
                        this.leftToRight = a.getInt(attr, -1);
                        break;
                    case 10:
                        this.rightToLeft = a.getResourceId(attr, this.rightToLeft);
                        if (this.rightToLeft != -1) {
                            break;
                        }
                        this.rightToLeft = a.getInt(attr, -1);
                        break;
                    case 11:
                        this.rightToRight = a.getResourceId(attr, this.rightToRight);
                        if (this.rightToRight != -1) {
                            break;
                        }
                        this.rightToRight = a.getInt(attr, -1);
                        break;
                    case 12:
                        this.topToTop = a.getResourceId(attr, this.topToTop);
                        if (this.topToTop != -1) {
                            break;
                        }
                        this.topToTop = a.getInt(attr, -1);
                        break;
                    case 13:
                        this.topToBottom = a.getResourceId(attr, this.topToBottom);
                        if (this.topToBottom != -1) {
                            break;
                        }
                        this.topToBottom = a.getInt(attr, -1);
                        break;
                    case 14:
                        this.bottomToTop = a.getResourceId(attr, this.bottomToTop);
                        if (this.bottomToTop != -1) {
                            break;
                        }
                        this.bottomToTop = a.getInt(attr, -1);
                        break;
                    case 15:
                        this.bottomToBottom = a.getResourceId(attr, this.bottomToBottom);
                        if (this.bottomToBottom != -1) {
                            break;
                        }
                        this.bottomToBottom = a.getInt(attr, -1);
                        break;
                    case 16:
                        this.baselineToBaseline = a.getResourceId(attr, this.baselineToBaseline);
                        if (this.baselineToBaseline != -1) {
                            break;
                        }
                        this.baselineToBaseline = a.getInt(attr, -1);
                        break;
                    case 17:
                        this.startToEnd = a.getResourceId(attr, this.startToEnd);
                        if (this.startToEnd != -1) {
                            break;
                        }
                        this.startToEnd = a.getInt(attr, -1);
                        break;
                    case 18:
                        this.startToStart = a.getResourceId(attr, this.startToStart);
                        if (this.startToStart != -1) {
                            break;
                        }
                        this.startToStart = a.getInt(attr, -1);
                        break;
                    case 19:
                        this.endToStart = a.getResourceId(attr, this.endToStart);
                        if (this.endToStart != -1) {
                            break;
                        }
                        this.endToStart = a.getInt(attr, -1);
                        break;
                    case 20:
                        this.endToEnd = a.getResourceId(attr, this.endToEnd);
                        if (this.endToEnd != -1) {
                            break;
                        }
                        this.endToEnd = a.getInt(attr, -1);
                        break;
                    case 21:
                        this.goneLeftMargin = a.getDimensionPixelSize(attr, this.goneLeftMargin);
                        break;
                    case 22:
                        this.goneTopMargin = a.getDimensionPixelSize(attr, this.goneTopMargin);
                        break;
                    case 23:
                        this.goneRightMargin = a.getDimensionPixelSize(attr, this.goneRightMargin);
                        break;
                    case 24:
                        this.goneBottomMargin = a.getDimensionPixelSize(attr, this.goneBottomMargin);
                        break;
                    case 25:
                        this.goneStartMargin = a.getDimensionPixelSize(attr, this.goneStartMargin);
                        break;
                    case 26:
                        this.goneEndMargin = a.getDimensionPixelSize(attr, this.goneEndMargin);
                        break;
                    case 27:
                        this.constrainedWidth = a.getBoolean(attr, this.constrainedWidth);
                        break;
                    case 28:
                        this.constrainedHeight = a.getBoolean(attr, this.constrainedHeight);
                        break;
                    case 29:
                        this.horizontalBias = a.getFloat(attr, this.horizontalBias);
                        break;
                    case 30:
                        this.verticalBias = a.getFloat(attr, this.verticalBias);
                        break;
                    case 31:
                        this.matchConstraintDefaultWidth = a.getInt(attr, 0);
                        if (this.matchConstraintDefaultWidth != 1) {
                            break;
                        }
                        Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                        break;
                    case 32:
                        this.matchConstraintDefaultHeight = a.getInt(attr, 0);
                        if (this.matchConstraintDefaultHeight != 1) {
                            break;
                        }
                        Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                        break;
                    case 33:
                        try {
                            this.matchConstraintMinWidth = a.getDimensionPixelSize(attr, this.matchConstraintMinWidth);
                            break;
                        } catch (Exception e) {
                            if (a.getInt(attr, this.matchConstraintMinWidth) != -2) {
                                break;
                            }
                            this.matchConstraintMinWidth = -2;
                            break;
                        }
                    case 34:
                        try {
                            this.matchConstraintMaxWidth = a.getDimensionPixelSize(attr, this.matchConstraintMaxWidth);
                            break;
                        } catch (Exception e2) {
                            if (a.getInt(attr, this.matchConstraintMaxWidth) != -2) {
                                break;
                            }
                            this.matchConstraintMaxWidth = -2;
                            break;
                        }
                    case 35:
                        this.matchConstraintPercentWidth = Math.max(0.0f, a.getFloat(attr, this.matchConstraintPercentWidth));
                        break;
                    case 36:
                        try {
                            this.matchConstraintMinHeight = a.getDimensionPixelSize(attr, this.matchConstraintMinHeight);
                            break;
                        } catch (Exception e3) {
                            if (a.getInt(attr, this.matchConstraintMinHeight) != -2) {
                                break;
                            }
                            this.matchConstraintMinHeight = -2;
                            break;
                        }
                    case 37:
                        try {
                            this.matchConstraintMaxHeight = a.getDimensionPixelSize(attr, this.matchConstraintMaxHeight);
                            break;
                        } catch (Exception e4) {
                            if (a.getInt(attr, this.matchConstraintMaxHeight) != -2) {
                                break;
                            }
                            this.matchConstraintMaxHeight = -2;
                            break;
                        }
                    case 38:
                        this.matchConstraintPercentHeight = Math.max(0.0f, a.getFloat(attr, this.matchConstraintPercentHeight));
                        break;
                    case 44:
                        this.dimensionRatio = a.getString(attr);
                        this.dimensionRatioValue = Float.NaN;
                        this.dimensionRatioSide = -1;
                        if (this.dimensionRatio == null) {
                            break;
                        }
                        int len = this.dimensionRatio.length();
                        int commaIndex = this.dimensionRatio.indexOf(44);
                        if (commaIndex <= 0 || commaIndex >= len - 1) {
                            commaIndex = 0;
                        } else {
                            String dimension = this.dimensionRatio.substring(0, commaIndex);
                            if (dimension.equalsIgnoreCase("W")) {
                                this.dimensionRatioSide = 0;
                            } else if (dimension.equalsIgnoreCase("H")) {
                                this.dimensionRatioSide = 1;
                            }
                            commaIndex++;
                        }
                        int colonIndex = this.dimensionRatio.indexOf(58);
                        if (colonIndex >= 0 && colonIndex < len - 1) {
                            String nominator = this.dimensionRatio.substring(commaIndex, colonIndex);
                            String denominator = this.dimensionRatio.substring(colonIndex + 1);
                            if (nominator.length() > 0 && denominator.length() > 0) {
                                try {
                                    float nominatorValue = Float.parseFloat(nominator);
                                    float denominatorValue = Float.parseFloat(denominator);
                                    if (nominatorValue > 0.0f && denominatorValue > 0.0f) {
                                        if (this.dimensionRatioSide != 1) {
                                            this.dimensionRatioValue = Math.abs(nominatorValue / denominatorValue);
                                            break;
                                        } else {
                                            this.dimensionRatioValue = Math.abs(denominatorValue / nominatorValue);
                                            break;
                                        }
                                    }
                                } catch (NumberFormatException e5) {
                                    break;
                                }
                            }
                        }
                        String r = this.dimensionRatio.substring(commaIndex);
                        if (r.length() <= 0) {
                            break;
                        }
                        try {
                            this.dimensionRatioValue = Float.parseFloat(r);
                            break;
                        } catch (NumberFormatException e6) {
                            break;
                        }
                        break;
                    case 45:
                        this.horizontalWeight = a.getFloat(attr, this.horizontalWeight);
                        break;
                    case 46:
                        this.verticalWeight = a.getFloat(attr, this.verticalWeight);
                        break;
                    case 47:
                        this.horizontalChainStyle = a.getInt(attr, 0);
                        break;
                    case 48:
                        this.verticalChainStyle = a.getInt(attr, 0);
                        break;
                    case 49:
                        this.editorAbsoluteX = a.getDimensionPixelOffset(attr, this.editorAbsoluteX);
                        break;
                    case 50:
                        this.editorAbsoluteY = a.getDimensionPixelOffset(attr, this.editorAbsoluteY);
                        break;
                    default:
                        break;
                }
            }
            a.recycle();
            validate();
        }

        public void validate() {
            this.isGuideline = false;
            this.horizontalDimensionFixed = true;
            this.verticalDimensionFixed = true;
            if (this.width == -2 && this.constrainedWidth) {
                this.horizontalDimensionFixed = false;
                this.matchConstraintDefaultWidth = 1;
            }
            if (this.height == -2 && this.constrainedHeight) {
                this.verticalDimensionFixed = false;
                this.matchConstraintDefaultHeight = 1;
            }
            if (this.width == 0 || this.width == -1) {
                this.horizontalDimensionFixed = false;
                if (this.width == 0 && this.matchConstraintDefaultWidth == 1) {
                    this.width = -2;
                    this.constrainedWidth = true;
                }
            }
            if (this.height == 0 || this.height == -1) {
                this.verticalDimensionFixed = false;
                if (this.height == 0 && this.matchConstraintDefaultHeight == 1) {
                    this.height = -2;
                    this.constrainedHeight = true;
                }
            }
            if (this.guidePercent != -1.0f || this.guideBegin != -1 || this.guideEnd != -1) {
                this.isGuideline = true;
                this.horizontalDimensionFixed = true;
                this.verticalDimensionFixed = true;
                if (!(this.widget instanceof Guideline)) {
                    this.widget = new Guideline();
                }
                ((Guideline) this.widget).setOrientation(this.orientation);
            }
        }

        public LayoutParams(int width, int height) {
            super(width, height);
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams source) {
            super(source);
        }

        @TargetApi(17)
        public void resolveLayoutDirection(int layoutDirection) {
            int preLeftMargin = this.leftMargin;
            int preRightMargin = this.rightMargin;
            super.resolveLayoutDirection(layoutDirection);
            this.resolvedRightToLeft = -1;
            this.resolvedRightToRight = -1;
            this.resolvedLeftToLeft = -1;
            this.resolvedLeftToRight = -1;
            this.resolveGoneLeftMargin = -1;
            this.resolveGoneRightMargin = -1;
            this.resolveGoneLeftMargin = this.goneLeftMargin;
            this.resolveGoneRightMargin = this.goneRightMargin;
            this.resolvedHorizontalBias = this.horizontalBias;
            this.resolvedGuideBegin = this.guideBegin;
            this.resolvedGuideEnd = this.guideEnd;
            this.resolvedGuidePercent = this.guidePercent;
            if (1 == getLayoutDirection()) {
                boolean startEndDefined = false;
                if (this.startToEnd != -1) {
                    this.resolvedRightToLeft = this.startToEnd;
                    startEndDefined = true;
                } else if (this.startToStart != -1) {
                    this.resolvedRightToRight = this.startToStart;
                    startEndDefined = true;
                }
                if (this.endToStart != -1) {
                    this.resolvedLeftToRight = this.endToStart;
                    startEndDefined = true;
                }
                if (this.endToEnd != -1) {
                    this.resolvedLeftToLeft = this.endToEnd;
                    startEndDefined = true;
                }
                if (this.goneStartMargin != -1) {
                    this.resolveGoneRightMargin = this.goneStartMargin;
                }
                if (this.goneEndMargin != -1) {
                    this.resolveGoneLeftMargin = this.goneEndMargin;
                }
                if (startEndDefined) {
                    this.resolvedHorizontalBias = 1.0f - this.horizontalBias;
                }
                if (this.isGuideline && this.orientation == 1) {
                    if (this.guidePercent != -1.0f) {
                        this.resolvedGuidePercent = 1.0f - this.guidePercent;
                        this.resolvedGuideBegin = -1;
                        this.resolvedGuideEnd = -1;
                    } else if (this.guideBegin != -1) {
                        this.resolvedGuideEnd = this.guideBegin;
                        this.resolvedGuideBegin = -1;
                        this.resolvedGuidePercent = -1.0f;
                    } else if (this.guideEnd != -1) {
                        this.resolvedGuideBegin = this.guideEnd;
                        this.resolvedGuideEnd = -1;
                        this.resolvedGuidePercent = -1.0f;
                    }
                }
            } else {
                if (this.startToEnd != -1) {
                    this.resolvedLeftToRight = this.startToEnd;
                }
                if (this.startToStart != -1) {
                    this.resolvedLeftToLeft = this.startToStart;
                }
                if (this.endToStart != -1) {
                    this.resolvedRightToLeft = this.endToStart;
                }
                if (this.endToEnd != -1) {
                    this.resolvedRightToRight = this.endToEnd;
                }
                if (this.goneStartMargin != -1) {
                    this.resolveGoneLeftMargin = this.goneStartMargin;
                }
                if (this.goneEndMargin != -1) {
                    this.resolveGoneRightMargin = this.goneEndMargin;
                }
            }
            if (this.endToStart == -1 && this.endToEnd == -1 && this.startToStart == -1 && this.startToEnd == -1) {
                if (this.rightToLeft != -1) {
                    this.resolvedRightToLeft = this.rightToLeft;
                    if (this.rightMargin <= 0 && preRightMargin > 0) {
                        this.rightMargin = preRightMargin;
                    }
                } else if (this.rightToRight != -1) {
                    this.resolvedRightToRight = this.rightToRight;
                    if (this.rightMargin <= 0 && preRightMargin > 0) {
                        this.rightMargin = preRightMargin;
                    }
                }
                if (this.leftToLeft != -1) {
                    this.resolvedLeftToLeft = this.leftToLeft;
                    if (this.leftMargin <= 0 && preLeftMargin > 0) {
                        this.leftMargin = preLeftMargin;
                    }
                } else if (this.leftToRight != -1) {
                    this.resolvedLeftToRight = this.leftToRight;
                    if (this.leftMargin <= 0 && preLeftMargin > 0) {
                        this.leftMargin = preLeftMargin;
                    }
                }
            }
        }
    }

    public void setDesignInformation(int type, Object value1, Object value2) {
        if (type == 0 && (value1 instanceof String) && (value2 instanceof Integer)) {
            if (this.mDesignIds == null) {
                this.mDesignIds = new HashMap();
            }
            String name = (String) value1;
            int index = name.indexOf("/");
            if (index != -1) {
                name = name.substring(index + 1);
            }
            this.mDesignIds.put(name, Integer.valueOf(((Integer) value2).intValue()));
        }
    }

    public Object getDesignInformation(int type, Object value) {
        if (type == 0 && (value instanceof String)) {
            String name = (String) value;
            if (this.mDesignIds != null && this.mDesignIds.containsKey(name)) {
                return this.mDesignIds.get(name);
            }
        }
        return null;
    }

    public ConstraintLayout(Context context) {
        super(context);
        init(null);
    }

    public ConstraintLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(attrs);
    }

    public ConstraintLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(attrs);
    }

    public void setId(int id) {
        this.mChildrenByIds.remove(getId());
        super.setId(id);
        this.mChildrenByIds.put(getId(), this);
    }

    private void init(AttributeSet attrs) {
        this.mLayoutWidget.setCompanionWidget(this);
        this.mChildrenByIds.put(getId(), this);
        this.mConstraintSet = null;
        if (attrs != null) {
            TypedArray a = getContext().obtainStyledAttributes(attrs, R.styleable.ConstraintLayout_Layout);
            int N = a.getIndexCount();
            for (int i = 0; i < N; i++) {
                int attr = a.getIndex(i);
                if (attr == R.styleable.ConstraintLayout_Layout_android_minWidth) {
                    this.mMinWidth = a.getDimensionPixelOffset(attr, this.mMinWidth);
                } else if (attr == R.styleable.ConstraintLayout_Layout_android_minHeight) {
                    this.mMinHeight = a.getDimensionPixelOffset(attr, this.mMinHeight);
                } else if (attr == R.styleable.ConstraintLayout_Layout_android_maxWidth) {
                    this.mMaxWidth = a.getDimensionPixelOffset(attr, this.mMaxWidth);
                } else if (attr == R.styleable.ConstraintLayout_Layout_android_maxHeight) {
                    this.mMaxHeight = a.getDimensionPixelOffset(attr, this.mMaxHeight);
                } else if (attr == R.styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.mOptimizationLevel = a.getInt(attr, this.mOptimizationLevel);
                } else if (attr == R.styleable.ConstraintLayout_Layout_constraintSet) {
                    int id = a.getResourceId(attr, 0);
                    try {
                        this.mConstraintSet = new ConstraintSet();
                        this.mConstraintSet.load(getContext(), id);
                    } catch (NotFoundException e) {
                        this.mConstraintSet = null;
                    }
                    this.mConstraintSetId = id;
                }
            }
            a.recycle();
        }
        this.mLayoutWidget.setOptimizationLevel(this.mOptimizationLevel);
    }

    public void addView(View child, int index, android.view.ViewGroup.LayoutParams params) {
        super.addView(child, index, params);
        if (VERSION.SDK_INT < 14) {
            onViewAdded(child);
        }
    }

    public void removeView(View view) {
        super.removeView(view);
        if (VERSION.SDK_INT < 14) {
            onViewRemoved(view);
        }
    }

    public void onViewAdded(View view) {
        if (VERSION.SDK_INT >= 14) {
            super.onViewAdded(view);
        }
        ConstraintWidget widget = getViewWidget(view);
        if ((view instanceof Guideline) && !(widget instanceof Guideline)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.widget = new Guideline();
            layoutParams.isGuideline = true;
            ((Guideline) layoutParams.widget).setOrientation(layoutParams.orientation);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper helper = (ConstraintHelper) view;
            helper.validateParams();
            ((LayoutParams) view.getLayoutParams()).isHelper = true;
            if (!this.mConstraintHelpers.contains(helper)) {
                this.mConstraintHelpers.add(helper);
            }
        }
        this.mChildrenByIds.put(view.getId(), view);
        this.mDirtyHierarchy = true;
    }

    public void onViewRemoved(View view) {
        if (VERSION.SDK_INT >= 14) {
            super.onViewRemoved(view);
        }
        this.mChildrenByIds.remove(view.getId());
        ConstraintWidget widget = getViewWidget(view);
        this.mLayoutWidget.remove(widget);
        this.mConstraintHelpers.remove(view);
        this.mVariableDimensionsWidgets.remove(widget);
        this.mDirtyHierarchy = true;
    }

    public void setMinWidth(int value) {
        if (value != this.mMinWidth) {
            this.mMinWidth = value;
            requestLayout();
        }
    }

    public void setMinHeight(int value) {
        if (value != this.mMinHeight) {
            this.mMinHeight = value;
            requestLayout();
        }
    }

    public int getMinWidth() {
        return this.mMinWidth;
    }

    public int getMinHeight() {
        return this.mMinHeight;
    }

    public void setMaxWidth(int value) {
        if (value != this.mMaxWidth) {
            this.mMaxWidth = value;
            requestLayout();
        }
    }

    public void setMaxHeight(int value) {
        if (value != this.mMaxHeight) {
            this.mMaxHeight = value;
            requestLayout();
        }
    }

    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    public int getMaxHeight() {
        return this.mMaxHeight;
    }

    private void updateHierarchy() {
        int count = getChildCount();
        boolean recompute = false;
        for (int i = 0; i < count; i++) {
            if (getChildAt(i).isLayoutRequested()) {
                recompute = true;
                break;
            }
        }
        if (recompute) {
            this.mVariableDimensionsWidgets.clear();
            setChildrenConstraints();
        }
    }

    private void setChildrenConstraints() {
        int i;
        View view;
        String IdAsString;
        ConstraintWidget widget;
        View child;
        boolean isInEditMode = isInEditMode();
        int count = getChildCount();
        if (isInEditMode) {
            for (i = 0; i < count; i++) {
                view = getChildAt(i);
                try {
                    IdAsString = getResources().getResourceName(view.getId());
                    setDesignInformation(0, IdAsString, Integer.valueOf(view.getId()));
                    int slashIndex = IdAsString.indexOf(47);
                    if (slashIndex != -1) {
                        IdAsString = IdAsString.substring(slashIndex + 1);
                    }
                    getTargetWidget(view.getId()).setDebugName(IdAsString);
                } catch (NotFoundException e) {
                }
            }
        }
        for (i = 0; i < count; i++) {
            widget = getViewWidget(getChildAt(i));
            if (widget != null) {
                widget.reset();
            }
        }
        if (this.mConstraintSetId != -1) {
            for (i = 0; i < count; i++) {
                child = getChildAt(i);
                if (child.getId() == this.mConstraintSetId && (child instanceof Constraints)) {
                    this.mConstraintSet = ((Constraints) child).getConstraintSet();
                }
            }
        }
        if (this.mConstraintSet != null) {
            this.mConstraintSet.applyToInternal(this);
        }
        this.mLayoutWidget.removeAllChildren();
        int helperCount = this.mConstraintHelpers.size();
        if (helperCount > 0) {
            for (i = 0; i < helperCount; i++) {
                ((ConstraintHelper) this.mConstraintHelpers.get(i)).updatePreLayout(this);
            }
        }
        for (i = 0; i < count; i++) {
            child = getChildAt(i);
            if (child instanceof Placeholder) {
                ((Placeholder) child).updatePreLayout(this);
            }
        }
        for (i = 0; i < count; i++) {
            child = getChildAt(i);
            widget = getViewWidget(child);
            if (widget != null) {
                LayoutParams layoutParams = (LayoutParams) child.getLayoutParams();
                layoutParams.validate();
                if (layoutParams.helped) {
                    layoutParams.helped = false;
                } else if (isInEditMode) {
                    try {
                        IdAsString = getResources().getResourceName(child.getId());
                        setDesignInformation(0, IdAsString, Integer.valueOf(child.getId()));
                        String str = IdAsString;
                        getTargetWidget(child.getId()).setDebugName(str.substring(IdAsString.indexOf("id/") + 3));
                    } catch (NotFoundException e2) {
                    }
                }
                widget.setVisibility(child.getVisibility());
                if (layoutParams.isInPlaceholder) {
                    widget.setVisibility(8);
                }
                widget.setCompanionWidget(child);
                this.mLayoutWidget.add(widget);
                if (!(layoutParams.verticalDimensionFixed && layoutParams.horizontalDimensionFixed)) {
                    this.mVariableDimensionsWidgets.add(widget);
                }
                if (layoutParams.isGuideline) {
                    Guideline guideline = (Guideline) widget;
                    int resolvedGuideBegin = layoutParams.resolvedGuideBegin;
                    int resolvedGuideEnd = layoutParams.resolvedGuideEnd;
                    float resolvedGuidePercent = layoutParams.resolvedGuidePercent;
                    if (VERSION.SDK_INT < 17) {
                        resolvedGuideBegin = layoutParams.guideBegin;
                        resolvedGuideEnd = layoutParams.guideEnd;
                        resolvedGuidePercent = layoutParams.guidePercent;
                    }
                    if (resolvedGuidePercent != -1.0f) {
                        guideline.setGuidePercent(resolvedGuidePercent);
                    } else if (resolvedGuideBegin != -1) {
                        guideline.setGuideBegin(resolvedGuideBegin);
                    } else if (resolvedGuideEnd != -1) {
                        guideline.setGuideEnd(resolvedGuideEnd);
                    }
                } else if (layoutParams.leftToLeft != -1 || layoutParams.leftToRight != -1 || layoutParams.rightToLeft != -1 || layoutParams.rightToRight != -1 || layoutParams.startToStart != -1 || layoutParams.startToEnd != -1 || layoutParams.endToStart != -1 || layoutParams.endToEnd != -1 || layoutParams.topToTop != -1 || layoutParams.topToBottom != -1 || layoutParams.bottomToTop != -1 || layoutParams.bottomToBottom != -1 || layoutParams.baselineToBaseline != -1 || layoutParams.editorAbsoluteX != -1 || layoutParams.editorAbsoluteY != -1 || layoutParams.circleConstraint != -1 || layoutParams.width == -1 || layoutParams.height == -1) {
                    int resolvedLeftToLeft = layoutParams.resolvedLeftToLeft;
                    int resolvedLeftToRight = layoutParams.resolvedLeftToRight;
                    int resolvedRightToLeft = layoutParams.resolvedRightToLeft;
                    int resolvedRightToRight = layoutParams.resolvedRightToRight;
                    int resolveGoneLeftMargin = layoutParams.resolveGoneLeftMargin;
                    int resolveGoneRightMargin = layoutParams.resolveGoneRightMargin;
                    float resolvedHorizontalBias = layoutParams.resolvedHorizontalBias;
                    if (VERSION.SDK_INT < 17) {
                        resolvedLeftToLeft = layoutParams.leftToLeft;
                        resolvedLeftToRight = layoutParams.leftToRight;
                        resolvedRightToLeft = layoutParams.rightToLeft;
                        resolvedRightToRight = layoutParams.rightToRight;
                        resolveGoneLeftMargin = layoutParams.goneLeftMargin;
                        resolveGoneRightMargin = layoutParams.goneRightMargin;
                        resolvedHorizontalBias = layoutParams.horizontalBias;
                        if (resolvedLeftToLeft == -1 && resolvedLeftToRight == -1) {
                            if (layoutParams.startToStart != -1) {
                                resolvedLeftToLeft = layoutParams.startToStart;
                            } else if (layoutParams.startToEnd != -1) {
                                resolvedLeftToRight = layoutParams.startToEnd;
                            }
                        }
                        if (resolvedRightToLeft == -1 && resolvedRightToRight == -1) {
                            if (layoutParams.endToStart != -1) {
                                resolvedRightToLeft = layoutParams.endToStart;
                            } else if (layoutParams.endToEnd != -1) {
                                resolvedRightToRight = layoutParams.endToEnd;
                            }
                        }
                    }
                    ConstraintWidget target;
                    if (layoutParams.circleConstraint != -1) {
                        target = getTargetWidget(layoutParams.circleConstraint);
                        if (target != null) {
                            widget.connectCircularConstraint(target, layoutParams.circleAngle, layoutParams.circleRadius);
                        }
                    } else {
                        if (resolvedLeftToLeft != -1) {
                            target = getTargetWidget(resolvedLeftToLeft);
                            if (target != null) {
                                widget.immediateConnect(Type.LEFT, target, Type.LEFT, layoutParams.leftMargin, resolveGoneLeftMargin);
                            }
                        } else if (resolvedLeftToRight != -1) {
                            target = getTargetWidget(resolvedLeftToRight);
                            if (target != null) {
                                widget.immediateConnect(Type.LEFT, target, Type.RIGHT, layoutParams.leftMargin, resolveGoneLeftMargin);
                            }
                        }
                        if (resolvedRightToLeft != -1) {
                            target = getTargetWidget(resolvedRightToLeft);
                            if (target != null) {
                                widget.immediateConnect(Type.RIGHT, target, Type.LEFT, layoutParams.rightMargin, resolveGoneRightMargin);
                            }
                        } else if (resolvedRightToRight != -1) {
                            target = getTargetWidget(resolvedRightToRight);
                            if (target != null) {
                                widget.immediateConnect(Type.RIGHT, target, Type.RIGHT, layoutParams.rightMargin, resolveGoneRightMargin);
                            }
                        }
                        if (layoutParams.topToTop != -1) {
                            target = getTargetWidget(layoutParams.topToTop);
                            if (target != null) {
                                widget.immediateConnect(Type.TOP, target, Type.TOP, layoutParams.topMargin, layoutParams.goneTopMargin);
                            }
                        } else if (layoutParams.topToBottom != -1) {
                            target = getTargetWidget(layoutParams.topToBottom);
                            if (target != null) {
                                widget.immediateConnect(Type.TOP, target, Type.BOTTOM, layoutParams.topMargin, layoutParams.goneTopMargin);
                            }
                        }
                        if (layoutParams.bottomToTop != -1) {
                            target = getTargetWidget(layoutParams.bottomToTop);
                            if (target != null) {
                                widget.immediateConnect(Type.BOTTOM, target, Type.TOP, layoutParams.bottomMargin, layoutParams.goneBottomMargin);
                            }
                        } else if (layoutParams.bottomToBottom != -1) {
                            target = getTargetWidget(layoutParams.bottomToBottom);
                            if (target != null) {
                                widget.immediateConnect(Type.BOTTOM, target, Type.BOTTOM, layoutParams.bottomMargin, layoutParams.goneBottomMargin);
                            }
                        }
                        if (layoutParams.baselineToBaseline != -1) {
                            view = (View) this.mChildrenByIds.get(layoutParams.baselineToBaseline);
                            target = getTargetWidget(layoutParams.baselineToBaseline);
                            if (!(target == null || view == null || !(view.getLayoutParams() instanceof LayoutParams))) {
                                LayoutParams targetParams = (LayoutParams) view.getLayoutParams();
                                layoutParams.needsBaseline = true;
                                targetParams.needsBaseline = true;
                                widget.getAnchor(Type.BASELINE).connect(target.getAnchor(Type.BASELINE), 0, -1, Strength.STRONG, 0, true);
                                widget.getAnchor(Type.TOP).reset();
                                widget.getAnchor(Type.BOTTOM).reset();
                            }
                        }
                        if (resolvedHorizontalBias >= 0.0f && resolvedHorizontalBias != 0.5f) {
                            widget.setHorizontalBiasPercent(resolvedHorizontalBias);
                        }
                        if (layoutParams.verticalBias >= 0.0f && layoutParams.verticalBias != 0.5f) {
                            widget.setVerticalBiasPercent(layoutParams.verticalBias);
                        }
                    }
                    if (isInEditMode && !(layoutParams.editorAbsoluteX == -1 && layoutParams.editorAbsoluteY == -1)) {
                        widget.setOrigin(layoutParams.editorAbsoluteX, layoutParams.editorAbsoluteY);
                    }
                    if (layoutParams.horizontalDimensionFixed) {
                        widget.setHorizontalDimensionBehaviour(DimensionBehaviour.FIXED);
                        widget.setWidth(layoutParams.width);
                    } else if (layoutParams.width == -1) {
                        widget.setHorizontalDimensionBehaviour(DimensionBehaviour.MATCH_PARENT);
                        widget.getAnchor(Type.LEFT).mMargin = layoutParams.leftMargin;
                        widget.getAnchor(Type.RIGHT).mMargin = layoutParams.rightMargin;
                    } else {
                        widget.setHorizontalDimensionBehaviour(DimensionBehaviour.MATCH_CONSTRAINT);
                        widget.setWidth(0);
                    }
                    if (layoutParams.verticalDimensionFixed) {
                        widget.setVerticalDimensionBehaviour(DimensionBehaviour.FIXED);
                        widget.setHeight(layoutParams.height);
                    } else if (layoutParams.height == -1) {
                        widget.setVerticalDimensionBehaviour(DimensionBehaviour.MATCH_PARENT);
                        widget.getAnchor(Type.TOP).mMargin = layoutParams.topMargin;
                        widget.getAnchor(Type.BOTTOM).mMargin = layoutParams.bottomMargin;
                    } else {
                        widget.setVerticalDimensionBehaviour(DimensionBehaviour.MATCH_CONSTRAINT);
                        widget.setHeight(0);
                    }
                    if (layoutParams.dimensionRatio != null) {
                        widget.setDimensionRatio(layoutParams.dimensionRatio);
                    }
                    widget.setHorizontalWeight(layoutParams.horizontalWeight);
                    widget.setVerticalWeight(layoutParams.verticalWeight);
                    widget.setHorizontalChainStyle(layoutParams.horizontalChainStyle);
                    widget.setVerticalChainStyle(layoutParams.verticalChainStyle);
                    widget.setHorizontalMatchStyle(layoutParams.matchConstraintDefaultWidth, layoutParams.matchConstraintMinWidth, layoutParams.matchConstraintMaxWidth, layoutParams.matchConstraintPercentWidth);
                    widget.setVerticalMatchStyle(layoutParams.matchConstraintDefaultHeight, layoutParams.matchConstraintMinHeight, layoutParams.matchConstraintMaxHeight, layoutParams.matchConstraintPercentHeight);
                }
            }
        }
    }

    private final ConstraintWidget getTargetWidget(int id) {
        if (id == 0) {
            return this.mLayoutWidget;
        }
        View view = (View) this.mChildrenByIds.get(id);
        if (view == null) {
            view = findViewById(id);
            if (!(view == null || view == this || view.getParent() != this)) {
                onViewAdded(view);
            }
        }
        if (view == this) {
            return this.mLayoutWidget;
        }
        return view == null ? null : ((LayoutParams) view.getLayoutParams()).widget;
    }

    public final ConstraintWidget getViewWidget(View view) {
        if (view == this) {
            return this.mLayoutWidget;
        }
        return view == null ? null : ((LayoutParams) view.getLayoutParams()).widget;
    }

    private void internalMeasureChildren(int parentWidthSpec, int parentHeightSpec) {
        int heightPadding = getPaddingTop() + getPaddingBottom();
        int widthPadding = getPaddingLeft() + getPaddingRight();
        int widgetsCount = getChildCount();
        for (int i = 0; i < widgetsCount; i++) {
            View child = getChildAt(i);
            if (child.getVisibility() != 8) {
                LayoutParams params = (LayoutParams) child.getLayoutParams();
                ConstraintWidget widget = params.widget;
                if (!(params.isGuideline || params.isHelper)) {
                    widget.setVisibility(child.getVisibility());
                    int width = params.width;
                    int height = params.height;
                    boolean doMeasure = params.horizontalDimensionFixed || params.verticalDimensionFixed || ((!params.horizontalDimensionFixed && params.matchConstraintDefaultWidth == 1) || params.width == -1 || (!params.verticalDimensionFixed && (params.matchConstraintDefaultHeight == 1 || params.height == -1)));
                    boolean didWrapMeasureWidth = false;
                    boolean didWrapMeasureHeight = false;
                    if (doMeasure) {
                        int childWidthMeasureSpec;
                        int childHeightMeasureSpec;
                        if (width == 0) {
                            childWidthMeasureSpec = getChildMeasureSpec(parentWidthSpec, widthPadding, -2);
                            didWrapMeasureWidth = true;
                        } else if (width == -1) {
                            childWidthMeasureSpec = getChildMeasureSpec(parentWidthSpec, widthPadding, -1);
                        } else {
                            if (width == -2) {
                                didWrapMeasureWidth = true;
                            }
                            childWidthMeasureSpec = getChildMeasureSpec(parentWidthSpec, widthPadding, width);
                        }
                        if (height == 0) {
                            childHeightMeasureSpec = getChildMeasureSpec(parentHeightSpec, heightPadding, -2);
                            didWrapMeasureHeight = true;
                        } else if (height == -1) {
                            childHeightMeasureSpec = getChildMeasureSpec(parentHeightSpec, heightPadding, -1);
                        } else {
                            if (height == -2) {
                                didWrapMeasureHeight = true;
                            }
                            childHeightMeasureSpec = getChildMeasureSpec(parentHeightSpec, heightPadding, height);
                        }
                        child.measure(childWidthMeasureSpec, childHeightMeasureSpec);
                        if (this.mMetrics != null) {
                            Metrics metrics = this.mMetrics;
                            metrics.measures++;
                        }
                        widget.setWidthWrapContent(width == -2);
                        widget.setHeightWrapContent(height == -2);
                        width = child.getMeasuredWidth();
                        height = child.getMeasuredHeight();
                    }
                    widget.setWidth(width);
                    widget.setHeight(height);
                    if (didWrapMeasureWidth) {
                        widget.setWrapWidth(width);
                    }
                    if (didWrapMeasureHeight) {
                        widget.setWrapHeight(height);
                    }
                    if (params.needsBaseline) {
                        int baseline = child.getBaseline();
                        if (baseline != -1) {
                            widget.setBaselineDistance(baseline);
                        }
                    }
                }
            }
        }
    }

    private void updatePostMeasures() {
        int i;
        int widgetsCount = getChildCount();
        for (i = 0; i < widgetsCount; i++) {
            View child = getChildAt(i);
            if (child instanceof Placeholder) {
                ((Placeholder) child).updatePostMeasure(this);
            }
        }
        int helperCount = this.mConstraintHelpers.size();
        if (helperCount > 0) {
            for (i = 0; i < helperCount; i++) {
                ((ConstraintHelper) this.mConstraintHelpers.get(i)).updatePostMeasure(this);
            }
        }
    }

    private void internalMeasureDimensions(int parentWidthSpec, int parentHeightSpec) {
        int i;
        View child;
        LayoutParams params;
        ConstraintWidget widget;
        int width;
        int height;
        boolean didWrapMeasureWidth;
        boolean didWrapMeasureHeight;
        int childWidthMeasureSpec;
        Metrics metrics;
        int baseline;
        int heightPadding = getPaddingTop() + getPaddingBottom();
        int widthPadding = getPaddingLeft() + getPaddingRight();
        int widgetsCount = getChildCount();
        for (i = 0; i < widgetsCount; i++) {
            child = getChildAt(i);
            if (child.getVisibility() != 8) {
                params = (LayoutParams) child.getLayoutParams();
                widget = params.widget;
                if (!(params.isGuideline || params.isHelper)) {
                    widget.setVisibility(child.getVisibility());
                    width = params.width;
                    height = params.height;
                    if (width == 0 || height == 0) {
                        widget.getResolutionWidth().invalidate();
                        widget.getResolutionHeight().invalidate();
                    } else {
                        didWrapMeasureWidth = false;
                        didWrapMeasureHeight = false;
                        if (width == -2) {
                            didWrapMeasureWidth = true;
                        }
                        childWidthMeasureSpec = getChildMeasureSpec(parentWidthSpec, widthPadding, width);
                        if (height == -2) {
                            didWrapMeasureHeight = true;
                        }
                        child.measure(childWidthMeasureSpec, getChildMeasureSpec(parentHeightSpec, heightPadding, height));
                        if (this.mMetrics != null) {
                            metrics = this.mMetrics;
                            metrics.measures++;
                        }
                        widget.setWidthWrapContent(width == -2);
                        widget.setHeightWrapContent(height == -2);
                        width = child.getMeasuredWidth();
                        height = child.getMeasuredHeight();
                        widget.setWidth(width);
                        widget.setHeight(height);
                        if (didWrapMeasureWidth) {
                            widget.setWrapWidth(width);
                        }
                        if (didWrapMeasureHeight) {
                            widget.setWrapHeight(height);
                        }
                        if (params.needsBaseline) {
                            baseline = child.getBaseline();
                            if (baseline != -1) {
                                widget.setBaselineDistance(baseline);
                            }
                        }
                        if (params.horizontalDimensionFixed && params.verticalDimensionFixed) {
                            widget.getResolutionWidth().resolve(width);
                            widget.getResolutionHeight().resolve(height);
                        }
                    }
                }
            }
        }
        this.mLayoutWidget.solveGraph();
        for (i = 0; i < widgetsCount; i++) {
            child = getChildAt(i);
            if (child.getVisibility() != 8) {
                params = (LayoutParams) child.getLayoutParams();
                widget = params.widget;
                if (!(params.isGuideline || params.isHelper)) {
                    widget.setVisibility(child.getVisibility());
                    width = params.width;
                    height = params.height;
                    if (width == 0 || height == 0) {
                        ResolutionAnchor left = widget.getAnchor(Type.LEFT).getResolutionNode();
                        ResolutionAnchor right = widget.getAnchor(Type.RIGHT).getResolutionNode();
                        boolean bothHorizontal = (widget.getAnchor(Type.LEFT).getTarget() == null || widget.getAnchor(Type.RIGHT).getTarget() == null) ? false : true;
                        ResolutionAnchor top = widget.getAnchor(Type.TOP).getResolutionNode();
                        ResolutionAnchor bottom = widget.getAnchor(Type.BOTTOM).getResolutionNode();
                        boolean bothVertical = (widget.getAnchor(Type.TOP).getTarget() == null || widget.getAnchor(Type.BOTTOM).getTarget() == null) ? false : true;
                        if (width != 0 || height != 0 || !bothHorizontal || !bothVertical) {
                            int childHeightMeasureSpec;
                            didWrapMeasureWidth = false;
                            didWrapMeasureHeight = false;
                            boolean resolveWidth = this.mLayoutWidget.getHorizontalDimensionBehaviour() != DimensionBehaviour.WRAP_CONTENT;
                            boolean resolveHeight = this.mLayoutWidget.getVerticalDimensionBehaviour() != DimensionBehaviour.WRAP_CONTENT;
                            if (!resolveWidth) {
                                widget.getResolutionWidth().invalidate();
                            }
                            if (!resolveHeight) {
                                widget.getResolutionHeight().invalidate();
                            }
                            if (width == 0) {
                                if (resolveWidth && widget.isSpreadWidth() && bothHorizontal && left.isResolved() && right.isResolved()) {
                                    width = (int) (right.getResolvedValue() - left.getResolvedValue());
                                    widget.getResolutionWidth().resolve(width);
                                    childWidthMeasureSpec = getChildMeasureSpec(parentWidthSpec, widthPadding, width);
                                } else {
                                    childWidthMeasureSpec = getChildMeasureSpec(parentWidthSpec, widthPadding, -2);
                                    didWrapMeasureWidth = true;
                                    resolveWidth = false;
                                }
                            } else if (width == -1) {
                                childWidthMeasureSpec = getChildMeasureSpec(parentWidthSpec, widthPadding, -1);
                            } else {
                                if (width == -2) {
                                    didWrapMeasureWidth = true;
                                }
                                childWidthMeasureSpec = getChildMeasureSpec(parentWidthSpec, widthPadding, width);
                            }
                            if (height == 0) {
                                if (resolveHeight && widget.isSpreadHeight() && bothVertical && top.isResolved() && bottom.isResolved()) {
                                    height = (int) (bottom.getResolvedValue() - top.getResolvedValue());
                                    widget.getResolutionHeight().resolve(height);
                                    childHeightMeasureSpec = getChildMeasureSpec(parentHeightSpec, heightPadding, height);
                                } else {
                                    childHeightMeasureSpec = getChildMeasureSpec(parentHeightSpec, heightPadding, -2);
                                    didWrapMeasureHeight = true;
                                    resolveHeight = false;
                                }
                            } else if (height == -1) {
                                childHeightMeasureSpec = getChildMeasureSpec(parentHeightSpec, heightPadding, -1);
                            } else {
                                if (height == -2) {
                                    didWrapMeasureHeight = true;
                                }
                                childHeightMeasureSpec = getChildMeasureSpec(parentHeightSpec, heightPadding, height);
                            }
                            child.measure(childWidthMeasureSpec, childHeightMeasureSpec);
                            if (this.mMetrics != null) {
                                metrics = this.mMetrics;
                                metrics.measures++;
                            }
                            widget.setWidthWrapContent(width == -2);
                            widget.setHeightWrapContent(height == -2);
                            width = child.getMeasuredWidth();
                            height = child.getMeasuredHeight();
                            widget.setWidth(width);
                            widget.setHeight(height);
                            if (didWrapMeasureWidth) {
                                widget.setWrapWidth(width);
                            }
                            if (didWrapMeasureHeight) {
                                widget.setWrapHeight(height);
                            }
                            if (resolveWidth) {
                                widget.getResolutionWidth().resolve(width);
                            } else {
                                widget.getResolutionWidth().remove();
                            }
                            if (resolveHeight) {
                                widget.getResolutionHeight().resolve(height);
                            } else {
                                widget.getResolutionHeight().remove();
                            }
                            if (params.needsBaseline) {
                                baseline = child.getBaseline();
                                if (baseline != -1) {
                                    widget.setBaselineDistance(baseline);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        long time = System.currentTimeMillis();
        int REMEASURES_A = 0;
        int REMEASURES_B = 0;
        int widthMode = MeasureSpec.getMode(widthMeasureSpec);
        int widthSize = MeasureSpec.getSize(widthMeasureSpec);
        int heightMode = MeasureSpec.getMode(heightMeasureSpec);
        int heightSize = MeasureSpec.getSize(heightMeasureSpec);
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        this.mLayoutWidget.setX(paddingLeft);
        this.mLayoutWidget.setY(paddingTop);
        this.mLayoutWidget.setMaxWidth(this.mMaxWidth);
        this.mLayoutWidget.setMaxHeight(this.mMaxHeight);
        if (VERSION.SDK_INT >= 17) {
            this.mLayoutWidget.setRtl(getLayoutDirection() == 1);
        }
        setSelfDimensionBehaviour(widthMeasureSpec, heightMeasureSpec);
        int startingWidth = this.mLayoutWidget.getWidth();
        int startingHeight = this.mLayoutWidget.getHeight();
        boolean runAnalyzer = false;
        if (this.mDirtyHierarchy) {
            this.mDirtyHierarchy = false;
            updateHierarchy();
            runAnalyzer = true;
        }
        boolean optimiseDimensions = (this.mOptimizationLevel & 8) == 8;
        if (optimiseDimensions) {
            this.mLayoutWidget.preOptimize();
            this.mLayoutWidget.optimizeForDimensions(startingWidth, startingHeight);
            internalMeasureDimensions(widthMeasureSpec, heightMeasureSpec);
        } else {
            internalMeasureChildren(widthMeasureSpec, heightMeasureSpec);
        }
        updatePostMeasures();
        if (getChildCount() > 0 && runAnalyzer) {
            Analyzer.determineGroups(this.mLayoutWidget);
        }
        if (this.mLayoutWidget.mGroupsWrapOptimized) {
            if (this.mLayoutWidget.mHorizontalWrapOptimized && widthMode == Integer.MIN_VALUE) {
                if (this.mLayoutWidget.mWrapFixedWidth < widthSize) {
                    this.mLayoutWidget.setWidth(this.mLayoutWidget.mWrapFixedWidth);
                }
                this.mLayoutWidget.setHorizontalDimensionBehaviour(DimensionBehaviour.FIXED);
            }
            if (this.mLayoutWidget.mVerticalWrapOptimized && heightMode == Integer.MIN_VALUE) {
                if (this.mLayoutWidget.mWrapFixedHeight < heightSize) {
                    this.mLayoutWidget.setHeight(this.mLayoutWidget.mWrapFixedHeight);
                }
                this.mLayoutWidget.setVerticalDimensionBehaviour(DimensionBehaviour.FIXED);
            }
        }
        if ((this.mOptimizationLevel & 32) == 32) {
            int width = this.mLayoutWidget.getWidth();
            int height = this.mLayoutWidget.getHeight();
            if (this.mLastMeasureWidth != width && widthMode == 1073741824) {
                Analyzer.setPosition(this.mLayoutWidget.mWidgetGroups, 0, width);
            }
            if (this.mLastMeasureHeight != height && heightMode == 1073741824) {
                Analyzer.setPosition(this.mLayoutWidget.mWidgetGroups, 1, height);
            }
            if (this.mLayoutWidget.mHorizontalWrapOptimized && this.mLayoutWidget.mWrapFixedWidth > widthSize) {
                Analyzer.setPosition(this.mLayoutWidget.mWidgetGroups, 0, widthSize);
            }
            if (this.mLayoutWidget.mVerticalWrapOptimized && this.mLayoutWidget.mWrapFixedHeight > heightSize) {
                Analyzer.setPosition(this.mLayoutWidget.mWidgetGroups, 1, heightSize);
            }
        }
        if (getChildCount() > 0) {
            solveLinearSystem("First pass");
        }
        int childState = 0;
        int sizeDependentWidgetsCount = this.mVariableDimensionsWidgets.size();
        int heightPadding = paddingTop + getPaddingBottom();
        int widthPadding = paddingLeft + getPaddingRight();
        if (sizeDependentWidgetsCount > 0) {
            int i;
            ConstraintWidget widget;
            View child;
            Metrics metrics;
            boolean needSolverPass = false;
            boolean containerWrapWidth = this.mLayoutWidget.getHorizontalDimensionBehaviour() == DimensionBehaviour.WRAP_CONTENT;
            boolean containerWrapHeight = this.mLayoutWidget.getVerticalDimensionBehaviour() == DimensionBehaviour.WRAP_CONTENT;
            int minWidth = Math.max(this.mLayoutWidget.getWidth(), this.mMinWidth);
            int minHeight = Math.max(this.mLayoutWidget.getHeight(), this.mMinHeight);
            for (i = 0; i < sizeDependentWidgetsCount; i++) {
                widget = (ConstraintWidget) this.mVariableDimensionsWidgets.get(i);
                child = (View) widget.getCompanionWidget();
                if (child != null) {
                    LayoutParams params = (LayoutParams) child.getLayoutParams();
                    if (!(params.isHelper || params.isGuideline || child.getVisibility() == 8 || (optimiseDimensions && widget.getResolutionWidth().isResolved() && widget.getResolutionHeight().isResolved()))) {
                        int widthSpec;
                        int heightSpec;
                        if (params.width == -2 && params.horizontalDimensionFixed) {
                            widthSpec = getChildMeasureSpec(widthMeasureSpec, widthPadding, params.width);
                        } else {
                            widthSpec = MeasureSpec.makeMeasureSpec(widget.getWidth(), 1073741824);
                        }
                        if (params.height == -2 && params.verticalDimensionFixed) {
                            heightSpec = getChildMeasureSpec(heightMeasureSpec, heightPadding, params.height);
                        } else {
                            heightSpec = MeasureSpec.makeMeasureSpec(widget.getHeight(), 1073741824);
                        }
                        child.measure(widthSpec, heightSpec);
                        if (this.mMetrics != null) {
                            metrics = this.mMetrics;
                            metrics.additionalMeasures++;
                        }
                        REMEASURES_A++;
                        int measuredWidth = child.getMeasuredWidth();
                        int measuredHeight = child.getMeasuredHeight();
                        if (measuredWidth != widget.getWidth()) {
                            widget.setWidth(measuredWidth);
                            if (optimiseDimensions) {
                                widget.getResolutionWidth().resolve(measuredWidth);
                            }
                            if (containerWrapWidth && widget.getRight() > minWidth) {
                                minWidth = Math.max(minWidth, widget.getRight() + widget.getAnchor(Type.RIGHT).getMargin());
                            }
                            needSolverPass = true;
                        }
                        if (measuredHeight != widget.getHeight()) {
                            widget.setHeight(measuredHeight);
                            if (optimiseDimensions) {
                                widget.getResolutionHeight().resolve(measuredHeight);
                            }
                            if (containerWrapHeight && widget.getBottom() > minHeight) {
                                minHeight = Math.max(minHeight, widget.getBottom() + widget.getAnchor(Type.BOTTOM).getMargin());
                            }
                            needSolverPass = true;
                        }
                        if (params.needsBaseline) {
                            int baseline = child.getBaseline();
                            if (!(baseline == -1 || baseline == widget.getBaselineDistance())) {
                                widget.setBaselineDistance(baseline);
                                needSolverPass = true;
                            }
                        }
                        if (VERSION.SDK_INT >= 11) {
                            childState = combineMeasuredStates(childState, child.getMeasuredState());
                        }
                    }
                }
            }
            if (needSolverPass) {
                this.mLayoutWidget.setWidth(startingWidth);
                this.mLayoutWidget.setHeight(startingHeight);
                if (optimiseDimensions) {
                    this.mLayoutWidget.solveGraph();
                }
                solveLinearSystem("2nd pass");
                needSolverPass = false;
                if (this.mLayoutWidget.getWidth() < minWidth) {
                    this.mLayoutWidget.setWidth(minWidth);
                    needSolverPass = true;
                }
                if (this.mLayoutWidget.getHeight() < minHeight) {
                    this.mLayoutWidget.setHeight(minHeight);
                    needSolverPass = true;
                }
                if (needSolverPass) {
                    solveLinearSystem("3rd pass");
                }
            }
            for (i = 0; i < sizeDependentWidgetsCount; i++) {
                widget = (ConstraintWidget) this.mVariableDimensionsWidgets.get(i);
                child = (View) widget.getCompanionWidget();
                if (!(child == null || ((child.getMeasuredWidth() == widget.getWidth() && child.getMeasuredHeight() == widget.getHeight()) || widget.getVisibility() == 8))) {
                    child.measure(MeasureSpec.makeMeasureSpec(widget.getWidth(), 1073741824), MeasureSpec.makeMeasureSpec(widget.getHeight(), 1073741824));
                    if (this.mMetrics != null) {
                        metrics = this.mMetrics;
                        metrics.additionalMeasures++;
                    }
                    REMEASURES_B++;
                }
            }
        }
        int androidLayoutWidth = this.mLayoutWidget.getWidth() + widthPadding;
        int androidLayoutHeight = this.mLayoutWidget.getHeight() + heightPadding;
        if (VERSION.SDK_INT >= 11) {
            int resolvedHeightSize = resolveSizeAndState(androidLayoutHeight, heightMeasureSpec, childState << 16) & 16777215;
            int resolvedWidthSize = Math.min(this.mMaxWidth, resolveSizeAndState(androidLayoutWidth, widthMeasureSpec, childState) & 16777215);
            resolvedHeightSize = Math.min(this.mMaxHeight, resolvedHeightSize);
            if (this.mLayoutWidget.isWidthMeasuredTooSmall()) {
                resolvedWidthSize |= nexEngine.ExportHEVCMainTierLevel62;
            }
            if (this.mLayoutWidget.isHeightMeasuredTooSmall()) {
                resolvedHeightSize |= nexEngine.ExportHEVCMainTierLevel62;
            }
            setMeasuredDimension(resolvedWidthSize, resolvedHeightSize);
            this.mLastMeasureWidth = resolvedWidthSize;
            this.mLastMeasureHeight = resolvedHeightSize;
            return;
        }
        setMeasuredDimension(androidLayoutWidth, androidLayoutHeight);
        this.mLastMeasureWidth = androidLayoutWidth;
        this.mLastMeasureHeight = androidLayoutHeight;
    }

    private void setSelfDimensionBehaviour(int widthMeasureSpec, int heightMeasureSpec) {
        int widthMode = MeasureSpec.getMode(widthMeasureSpec);
        int widthSize = MeasureSpec.getSize(widthMeasureSpec);
        int heightMode = MeasureSpec.getMode(heightMeasureSpec);
        int heightSize = MeasureSpec.getSize(heightMeasureSpec);
        int heightPadding = getPaddingTop() + getPaddingBottom();
        int widthPadding = getPaddingLeft() + getPaddingRight();
        DimensionBehaviour widthBehaviour = DimensionBehaviour.FIXED;
        DimensionBehaviour heightBehaviour = DimensionBehaviour.FIXED;
        int desiredWidth = 0;
        int desiredHeight = 0;
        android.view.ViewGroup.LayoutParams params = getLayoutParams();
        switch (widthMode) {
            case Integer.MIN_VALUE:
                widthBehaviour = DimensionBehaviour.WRAP_CONTENT;
                desiredWidth = widthSize;
                break;
            case 0:
                widthBehaviour = DimensionBehaviour.WRAP_CONTENT;
                break;
            case 1073741824:
                desiredWidth = Math.min(this.mMaxWidth, widthSize) - widthPadding;
                break;
        }
        switch (heightMode) {
            case Integer.MIN_VALUE:
                heightBehaviour = DimensionBehaviour.WRAP_CONTENT;
                desiredHeight = heightSize;
                break;
            case 0:
                heightBehaviour = DimensionBehaviour.WRAP_CONTENT;
                break;
            case 1073741824:
                desiredHeight = Math.min(this.mMaxHeight, heightSize) - heightPadding;
                break;
        }
        this.mLayoutWidget.setMinWidth(0);
        this.mLayoutWidget.setMinHeight(0);
        this.mLayoutWidget.setHorizontalDimensionBehaviour(widthBehaviour);
        this.mLayoutWidget.setWidth(desiredWidth);
        this.mLayoutWidget.setVerticalDimensionBehaviour(heightBehaviour);
        this.mLayoutWidget.setHeight(desiredHeight);
        this.mLayoutWidget.setMinWidth((this.mMinWidth - getPaddingLeft()) - getPaddingRight());
        this.mLayoutWidget.setMinHeight((this.mMinHeight - getPaddingTop()) - getPaddingBottom());
    }

    protected void solveLinearSystem(String reason) {
        this.mLayoutWidget.layout();
        if (this.mMetrics != null) {
            Metrics metrics = this.mMetrics;
            metrics.resolutions++;
        }
    }

    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        int i;
        int widgetsCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (i = 0; i < widgetsCount; i++) {
            View child = getChildAt(i);
            LayoutParams params = (LayoutParams) child.getLayoutParams();
            ConstraintWidget widget = params.widget;
            if ((child.getVisibility() != 8 || params.isGuideline || params.isHelper || isInEditMode) && !params.isInPlaceholder) {
                int l = widget.getDrawX();
                int t = widget.getDrawY();
                int r = l + widget.getWidth();
                int b = t + widget.getHeight();
                child.layout(l, t, r, b);
                if (child instanceof Placeholder) {
                    View content = ((Placeholder) child).getContent();
                    if (content != null) {
                        content.setVisibility(0);
                        content.layout(l, t, r, b);
                    }
                }
            }
        }
        int helperCount = this.mConstraintHelpers.size();
        if (helperCount > 0) {
            for (i = 0; i < helperCount; i++) {
                ((ConstraintHelper) this.mConstraintHelpers.get(i)).updatePostLayout(this);
            }
        }
    }

    public void setOptimizationLevel(int level) {
        this.mLayoutWidget.setOptimizationLevel(level);
    }

    public int getOptimizationLevel() {
        return this.mLayoutWidget.getOptimizationLevel();
    }

    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(getContext(), attrs);
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams p) {
        return new LayoutParams(p);
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams p) {
        return p instanceof LayoutParams;
    }

    public void setConstraintSet(ConstraintSet set) {
        this.mConstraintSet = set;
    }

    public View getViewById(int id) {
        return (View) this.mChildrenByIds.get(id);
    }

    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int count = getChildCount();
            float cw = (float) getWidth();
            float ch = (float) getHeight();
            for (int i = 0; i < count; i++) {
                View child = getChildAt(i);
                if (child.getVisibility() != 8) {
                    String tag = child.getTag();
                    if (tag != null && (tag instanceof String)) {
                        String[] split = tag.split(",");
                        if (split.length == 4) {
                            int x = Integer.parseInt(split[0]);
                            int y = Integer.parseInt(split[1]);
                            int w = Integer.parseInt(split[2]);
                            x = (int) ((((float) x) / 1080.0f) * cw);
                            y = (int) ((((float) y) / 1920.0f) * ch);
                            w = (int) ((((float) w) / 1080.0f) * cw);
                            int h = (int) ((((float) Integer.parseInt(split[3])) / 1920.0f) * ch);
                            Paint paint = new Paint();
                            paint.setColor(MenuBuilder.CATEGORY_MASK);
                            canvas.drawLine((float) x, (float) y, (float) (x + w), (float) y, paint);
                            Canvas canvas2 = canvas;
                            canvas2.drawLine((float) (x + w), (float) y, (float) (x + w), (float) (y + h), paint);
                            canvas2 = canvas;
                            canvas2.drawLine((float) (x + w), (float) (y + h), (float) x, (float) (y + h), paint);
                            canvas.drawLine((float) x, (float) (y + h), (float) x, (float) y, paint);
                            paint.setColor(-16711936);
                            canvas2 = canvas;
                            canvas2.drawLine((float) x, (float) y, (float) (x + w), (float) (y + h), paint);
                            canvas.drawLine((float) x, (float) (y + h), (float) (x + w), (float) y, paint);
                        }
                    }
                }
            }
        }
    }

    public void requestLayout() {
        super.requestLayout();
        this.mDirtyHierarchy = true;
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
