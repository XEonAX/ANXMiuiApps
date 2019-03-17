.class public Landroid/support/constraint/solver/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    }
.end annotation


# static fields
.field public static DEFAULT_BIAS:F


# instance fields
.field protected mAnchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mBaselineDistance:I

.field mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

.field mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mCircleConstraintAngle:F

.field private mCompanionWidget:Ljava/lang/Object;

.field private mContainerItemSkip:I

.field private mDebugName:Ljava/lang/String;

.field protected mDimensionRatio:F

.field protected mDimensionRatioSide:I

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mDrawX:I

.field private mDrawY:I

.field mGroupsToSolver:Z

.field mHeight:I

.field mHorizontalBiasPercent:F

.field mHorizontalChainFixedPosition:Z

.field mHorizontalChainStyle:I

.field mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field public mHorizontalResolution:I

.field mHorizontalWrapVisited:Z

.field mIsHeightWrapContent:Z

.field mIsWidthWrapContent:Z

.field mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field protected mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field protected mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field protected mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field mMatchConstraintDefaultHeight:I

.field mMatchConstraintDefaultWidth:I

.field mMatchConstraintMaxHeight:I

.field mMatchConstraintMaxWidth:I

.field mMatchConstraintMinHeight:I

.field mMatchConstraintMinWidth:I

.field mMatchConstraintPercentHeight:F

.field mMatchConstraintPercentWidth:F

.field private mMaxDimension:[I

.field protected mMinHeight:I

.field protected mMinWidth:I

.field protected mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field protected mOffsetX:I

.field protected mOffsetY:I

.field mOptimizerMeasurable:Z

.field mOptimizerMeasured:Z

.field mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field mRelX:I

.field mRelY:I

.field mResolutionHeight:Landroid/support/constraint/solver/widgets/ResolutionDimension;

.field mResolutionWidth:Landroid/support/constraint/solver/widgets/ResolutionDimension;

.field mResolvedDimensionRatio:F

.field mResolvedDimensionRatioSide:I

.field mResolvedMatchConstraintDefault:[I

.field mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mType:Ljava/lang/String;

.field mVerticalBiasPercent:F

.field mVerticalChainFixedPosition:Z

.field mVerticalChainStyle:I

.field mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field public mVerticalResolution:I

.field mVerticalWrapVisited:Z

.field private mVisibility:I

.field mWeight:[F

.field mWidth:I

.field private mWrapHeight:I

.field private mWrapWidth:I

.field protected mX:I

.field protected mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 69
    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 76
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 77
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 78
    new-array v0, v5, [I

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 80
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 81
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 82
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 83
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 84
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 85
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 89
    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 90
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 95
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    .line 97
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 148
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 149
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 150
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 151
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 152
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 153
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 154
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 155
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 163
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v1, v0, v7

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 169
    new-array v0, v5, [Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v1, v0, v7

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 172
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 175
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 176
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 178
    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 181
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 182
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 183
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRelX:I

    .line 184
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRelY:I

    .line 187
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 188
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 189
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 190
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 193
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 194
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 197
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 210
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 211
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 219
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 222
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 224
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 225
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 237
    iput-boolean v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    .line 238
    iput-boolean v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    .line 239
    iput-boolean v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 242
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 243
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 247
    new-array v0, v5, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    .line 249
    new-array v0, v5, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v4, v0, v3

    aput-object v4, v0, v7

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 250
    new-array v0, v5, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v4, v0, v3

    aput-object v4, v0, v7

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 252
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 253
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 408
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addAnchors()V

    .line 409
    return-void

    .line 97
    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    .line 247
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private addAnchors()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    return-void
.end method

.method private applyConstraints(Landroid/support/constraint/solver/LinearSystem;ZLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZIIIFZ)V
    .locals 34
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "parentWrapContent"    # Z
    .param p3, "parentMin"    # Landroid/support/constraint/solver/SolverVariable;
    .param p4, "parentMax"    # Landroid/support/constraint/solver/SolverVariable;
    .param p5, "dimensionBehaviour"    # Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .param p6, "wrapContent"    # Z
    .param p7, "beginAnchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p8, "endAnchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p9, "beginPosition"    # I
    .param p10, "dimension"    # I
    .param p11, "minDimension"    # I
    .param p12, "maxDimension"    # I
    .param p13, "bias"    # F
    .param p14, "useRatio"    # Z
    .param p15, "inChain"    # Z
    .param p16, "matchConstraintDefault"    # I
    .param p17, "matchMinDimension"    # I
    .param p18, "matchMaxDimension"    # I
    .param p19, "matchPercentDimension"    # F
    .param p20, "applyPosition"    # Z

    .prologue
    .line 2612
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 2613
    .local v4, "begin":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 2614
    .local v3, "end":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v9

    .line 2615
    .local v9, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v12

    .line 2617
    .local v12, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/support/constraint/solver/LinearSystem;->graphOptimizer:Z

    if-eqz v2, :cond_2

    .line 2618
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget v2, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_2

    .line 2619
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget v2, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_2

    .line 2620
    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2621
    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v2

    iget-wide v10, v2, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    const-wide/16 v32, 0x1

    add-long v10, v10, v32

    iput-wide v10, v2, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 2623
    :cond_0
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 2624
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 2625
    if-nez p15, :cond_1

    if-eqz p2, :cond_1

    .line 2626
    const/4 v2, 0x0

    const/4 v7, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2857
    :cond_1
    :goto_0
    return-void

    .line 2631
    :cond_2
    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2632
    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v2

    iget-wide v10, v2, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    const-wide/16 v32, 0x1

    add-long v10, v10, v32

    iput-wide v10, v2, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 2635
    :cond_3
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v23

    .line 2636
    .local v23, "isBeginConnected":Z
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v26

    .line 2637
    .local v26, "isEndConnected":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v24

    .line 2639
    .local v24, "isCenterConnected":Z
    const/16 v30, 0x0

    .line 2641
    .local v30, "variableSize":Z
    const/16 v27, 0x0

    .line 2642
    .local v27, "numConnections":I
    if-eqz v23, :cond_4

    add-int/lit8 v27, v27, 0x1

    .line 2643
    :cond_4
    if-eqz v26, :cond_5

    add-int/lit8 v27, v27, 0x1

    .line 2644
    :cond_5
    if-eqz v24, :cond_6

    add-int/lit8 v27, v27, 0x1

    .line 2646
    :cond_6
    if-eqz p14, :cond_7

    .line 2647
    const/16 p16, 0x3

    .line 2649
    :cond_7
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual/range {p5 .. p5}, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v7

    aget v2, v2, v7

    packed-switch v2, :pswitch_data_0

    .line 2667
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v7, 0x8

    if-ne v2, v7, :cond_9

    .line 2668
    const/16 p10, 0x0

    .line 2669
    const/16 v30, 0x0

    .line 2673
    :cond_9
    if-eqz p20, :cond_a

    .line 2674
    if-nez v23, :cond_e

    if-nez v26, :cond_e

    if-nez v24, :cond_e

    .line 2675
    move-object/from16 v0, p1

    move/from16 v1, p9

    invoke-virtual {v0, v4, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 2682
    :cond_a
    :goto_2
    if-nez v30, :cond_10

    .line 2683
    if-eqz p6, :cond_f

    .line 2684
    const/4 v2, 0x0

    const/4 v7, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2685
    if-lez p11, :cond_b

    .line 2686
    const/4 v2, 0x6

    move-object/from16 v0, p1

    move/from16 v1, p11

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2688
    :cond_b
    const v2, 0x7fffffff

    move/from16 v0, p12

    if-ge v0, v2, :cond_c

    .line 2689
    const/4 v2, 0x6

    move-object/from16 v0, p1

    move/from16 v1, p12

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2743
    :cond_c
    :goto_3
    if-eqz p20, :cond_d

    if-eqz p15, :cond_1c

    .line 2749
    :cond_d
    const/4 v2, 0x2

    move/from16 v0, v27

    if-ge v0, v2, :cond_1

    if-eqz p2, :cond_1

    .line 2750
    const/4 v2, 0x0

    const/4 v7, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2751
    const/4 v2, 0x0

    const/4 v7, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto/16 :goto_0

    .line 2651
    :pswitch_0
    const/16 v30, 0x0

    .line 2652
    goto :goto_1

    .line 2654
    :pswitch_1
    const/16 v30, 0x0

    .line 2655
    goto :goto_1

    .line 2657
    :pswitch_2
    const/16 v30, 0x0

    .line 2658
    goto :goto_1

    .line 2660
    :pswitch_3
    const/16 v30, 0x1

    .line 2661
    const/4 v2, 0x4

    move/from16 v0, p16

    if-ne v0, v2, :cond_8

    .line 2662
    const/16 v30, 0x0

    goto :goto_1

    .line 2676
    :cond_e
    if-eqz v23, :cond_a

    if-nez v26, :cond_a

    .line 2677
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    const/4 v7, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v9, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_2

    .line 2692
    :cond_f
    const/4 v2, 0x6

    move-object/from16 v0, p1

    move/from16 v1, p10

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_3

    .line 2695
    :cond_10
    const/4 v2, -0x2

    move/from16 v0, p17

    if-ne v0, v2, :cond_11

    .line 2696
    move/from16 p17, p10

    .line 2698
    :cond_11
    const/4 v2, -0x2

    move/from16 v0, p18

    if-ne v0, v2, :cond_12

    .line 2699
    move/from16 p18, p10

    .line 2702
    :cond_12
    if-lez p17, :cond_13

    .line 2703
    const/4 v2, 0x6

    move-object/from16 v0, p1

    move/from16 v1, p17

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2704
    move/from16 v0, p10

    move/from16 v1, p17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p10

    .line 2706
    :cond_13
    if-lez p18, :cond_14

    .line 2707
    const/4 v2, 0x6

    move-object/from16 v0, p1

    move/from16 v1, p18

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2708
    move/from16 v0, p10

    move/from16 v1, p18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p10

    .line 2710
    :cond_14
    const/4 v2, 0x1

    move/from16 v0, p16

    if-ne v0, v2, :cond_19

    .line 2711
    if-eqz p2, :cond_17

    .line 2712
    const/4 v2, 0x6

    move-object/from16 v0, p1

    move/from16 v1, p10

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2733
    :cond_15
    :goto_4
    if-eqz v30, :cond_c

    const/4 v2, 0x2

    move/from16 v0, v27

    if-eq v0, v2, :cond_c

    if-nez p14, :cond_c

    .line 2734
    const/16 v30, 0x0

    .line 2735
    move/from16 v0, p17

    move/from16 v1, p10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 2736
    .local v20, "d":I
    if-lez p18, :cond_16

    .line 2737
    move/from16 v0, p18

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 2739
    :cond_16
    const/4 v2, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto/16 :goto_3

    .line 2713
    .end local v20    # "d":I
    :cond_17
    if-eqz p15, :cond_18

    .line 2714
    const/4 v2, 0x4

    move-object/from16 v0, p1

    move/from16 v1, p10

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_4

    .line 2716
    :cond_18
    const/4 v2, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p10

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_4

    .line 2718
    :cond_19
    const/4 v2, 0x2

    move/from16 v0, p16

    if-ne v0, v2, :cond_15

    .line 2719
    const/4 v6, 0x0

    .line 2720
    .local v6, "percentBegin":Landroid/support/constraint/solver/SolverVariable;
    const/4 v5, 0x0

    .line 2721
    .local v5, "percentEnd":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v2

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v2, v7, :cond_1a

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v2

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v2, v7, :cond_1b

    .line 2723
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 2724
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    .line 2729
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v2

    move/from16 v7, p19

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/solver/ArrayRow;->createRowDimensionRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2730
    const/16 v30, 0x0

    goto/16 :goto_4

    .line 2726
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 2727
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    goto :goto_5

    .line 2758
    .end local v5    # "percentEnd":Landroid/support/constraint/solver/SolverVariable;
    .end local v6    # "percentBegin":Landroid/support/constraint/solver/SolverVariable;
    :cond_1c
    if-nez v23, :cond_1e

    if-nez v26, :cond_1e

    if-nez v24, :cond_1e

    .line 2760
    if-eqz p2, :cond_1d

    .line 2761
    const/4 v2, 0x0

    const/4 v7, 0x5

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2854
    :cond_1d
    :goto_6
    if-eqz p2, :cond_1

    .line 2855
    const/4 v2, 0x0

    const/4 v7, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto/16 :goto_0

    .line 2763
    :cond_1e
    if-eqz v23, :cond_1f

    if-nez v26, :cond_1f

    .line 2765
    if-eqz p2, :cond_1d

    .line 2766
    const/4 v2, 0x0

    const/4 v7, 0x5

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_6

    .line 2768
    :cond_1f
    if-nez v23, :cond_20

    if-eqz v26, :cond_20

    .line 2769
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    const/4 v7, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v12, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2770
    if-eqz p2, :cond_1d

    .line 2771
    const/4 v2, 0x0

    const/4 v7, 0x5

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_6

    .line 2773
    :cond_20
    if-eqz v23, :cond_1d

    if-eqz v26, :cond_1d

    .line 2777
    const/16 v16, 0x0

    .line 2778
    .local v16, "applyBoundsCheck":Z
    const/16 v17, 0x0

    .line 2779
    .local v17, "applyCentering":Z
    const/4 v15, 0x5

    .line 2781
    .local v15, "centeringStrength":I
    if-eqz v30, :cond_31

    .line 2783
    if-eqz p2, :cond_21

    if-nez p11, :cond_21

    .line 2784
    const/4 v2, 0x0

    const/4 v7, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2787
    :cond_21
    if-nez p16, :cond_2e

    .line 2788
    const/16 v29, 0x6

    .line 2789
    .local v29, "strength":I
    if-gtz p18, :cond_22

    if-lez p17, :cond_23

    .line 2790
    :cond_22
    const/16 v29, 0x4

    .line 2791
    const/16 v16, 0x1

    .line 2793
    :cond_23
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v4, v9, v2, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2794
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v3, v12, v2, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2795
    if-gtz p18, :cond_24

    if-lez p17, :cond_25

    .line 2796
    :cond_24
    const/16 v17, 0x1

    .line 2819
    .end local v29    # "strength":I
    :cond_25
    :goto_7
    const/16 v28, 0x5

    .line 2820
    .local v28, "startStrength":I
    const/16 v21, 0x5

    .line 2821
    .local v21, "endStrength":I
    move/from16 v19, p2

    .line 2822
    .local v19, "applyStartConstraint":Z
    move/from16 v18, p2

    .line 2823
    .local v18, "applyEndConstraint":Z
    if-eqz v17, :cond_26

    .line 2824
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    .line 2825
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    move-object/from16 v7, p1

    move-object v8, v4

    move/from16 v11, p13

    move-object v13, v3

    .line 2824
    invoke-virtual/range {v7 .. v15}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2826
    move-object/from16 v0, p7

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    instance-of v0, v2, Landroid/support/constraint/solver/widgets/Barrier;

    move/from16 v22, v0

    .line 2827
    .local v22, "isBeginAnchorBarrier":Z
    move-object/from16 v0, p8

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    instance-of v0, v2, Landroid/support/constraint/solver/widgets/Barrier;

    move/from16 v25, v0

    .line 2829
    .local v25, "isEndAnchorBarrier":Z
    if-eqz v22, :cond_32

    if-nez v25, :cond_32

    .line 2830
    const/16 v21, 0x6

    .line 2831
    const/16 v18, 0x1

    .line 2837
    .end local v22    # "isBeginAnchorBarrier":Z
    .end local v25    # "isEndAnchorBarrier":Z
    :cond_26
    :goto_8
    if-eqz v16, :cond_27

    .line 2838
    const/16 v28, 0x6

    .line 2839
    const/16 v21, 0x6

    .line 2842
    :cond_27
    if-nez v30, :cond_28

    if-nez v19, :cond_29

    :cond_28
    if-eqz v16, :cond_2a

    .line 2843
    :cond_29
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v4, v9, v2, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2845
    :cond_2a
    if-nez v30, :cond_2b

    if-nez v18, :cond_2c

    :cond_2b
    if-eqz v16, :cond_2d

    .line 2846
    :cond_2c
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v3, v12, v2, v1}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2849
    :cond_2d
    if-eqz p2, :cond_1d

    .line 2850
    const/4 v2, 0x0

    const/4 v7, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto/16 :goto_6

    .line 2798
    .end local v18    # "applyEndConstraint":Z
    .end local v19    # "applyStartConstraint":Z
    .end local v21    # "endStrength":I
    .end local v28    # "startStrength":I
    :cond_2e
    const/4 v2, 0x1

    move/from16 v0, p16

    if-ne v0, v2, :cond_2f

    .line 2799
    const/16 v17, 0x1

    .line 2800
    const/16 v16, 0x1

    .line 2801
    const/4 v15, 0x6

    goto :goto_7

    .line 2802
    :cond_2f
    const/4 v2, 0x3

    move/from16 v0, p16

    if-ne v0, v2, :cond_25

    .line 2803
    const/16 v17, 0x1

    .line 2804
    const/16 v16, 0x1

    .line 2805
    const/16 v29, 0x4

    .line 2806
    .restart local v29    # "strength":I
    if-nez p14, :cond_30

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v7, -0x1

    if-eq v2, v7, :cond_30

    if-gtz p18, :cond_30

    .line 2809
    const/16 v29, 0x6

    .line 2811
    :cond_30
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v4, v9, v2, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2812
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v3, v12, v2, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto/16 :goto_7

    .line 2816
    .end local v29    # "strength":I
    :cond_31
    const/16 v17, 0x1

    goto/16 :goto_7

    .line 2832
    .restart local v18    # "applyEndConstraint":Z
    .restart local v19    # "applyStartConstraint":Z
    .restart local v21    # "endStrength":I
    .restart local v22    # "isBeginAnchorBarrier":Z
    .restart local v25    # "isEndAnchorBarrier":Z
    .restart local v28    # "startStrength":I
    :cond_32
    if-nez v22, :cond_26

    if-eqz v25, :cond_26

    .line 2833
    const/16 v28, 0x6

    .line 2834
    const/16 v19, 0x1

    goto :goto_8

    .line 2649
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isChainHead(I)Z
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 2313
    mul-int/lit8 v0, p1, 0x2

    .line 2314
    .local v0, "offset":I
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addToSolver(Landroid/support/constraint/solver/LinearSystem;)V
    .locals 58
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;

    .prologue
    .line 2337
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v51

    .line 2338
    .local v51, "left":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v54

    .line 2339
    .local v54, "right":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v55

    .line 2340
    .local v55, "top":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v49

    .line 2341
    .local v49, "bottom":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v46

    .line 2343
    .local v46, "baseline":Landroid/support/constraint/solver/SolverVariable;
    const/16 v19, 0x0

    .line 2344
    .local v19, "inHorizontalChain":Z
    const/16 v40, 0x0

    .line 2345
    .local v40, "inVerticalChain":Z
    const/4 v6, 0x0

    .line 2346
    .local v6, "horizontalParentWrapContent":Z
    const/16 v27, 0x0

    .line 2348
    .local v27, "verticalParentWrapContent":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v4, :cond_1

    .line 2349
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_b

    const/4 v6, 0x1

    .line 2350
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_d

    const/16 v27, 0x1

    .line 2353
    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isChainHead(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2354
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 2355
    const/16 v19, 0x1

    .line 2361
    :goto_2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isChainHead(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2362
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 2363
    const/16 v40, 0x1

    .line 2368
    :goto_3
    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_0

    .line 2370
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v53

    .line 2371
    .local v53, "parentRight":Landroid/support/constraint/solver/SolverVariable;
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2374
    .end local v53    # "parentRight":Landroid/support/constraint/solver/SolverVariable;
    :cond_0
    if-eqz v27, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_1

    .line 2376
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v52

    .line 2377
    .local v52, "parentBottom":Landroid/support/constraint/solver/SolverVariable;
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2381
    .end local v52    # "parentBottom":Landroid/support/constraint/solver/SolverVariable;
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 2382
    .local v14, "width":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v14, v4, :cond_2

    .line 2383
    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 2385
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    move/from16 v35, v0

    .line 2386
    .local v35, "height":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    move/from16 v0, v35

    if-ge v0, v4, :cond_3

    .line 2387
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    move/from16 v35, v0

    .line 2391
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_11

    const/16 v50, 0x1

    .line 2393
    .local v50, "horizontalDimensionFixed":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_12

    const/16 v57, 0x1

    .line 2398
    .local v57, "verticalDimensionFixed":Z
    :goto_5
    const/16 v56, 0x0

    .line 2399
    .local v56, "useRatio":Z
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2400
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2402
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    move/from16 v20, v0

    .line 2403
    .local v20, "matchConstraintDefaultWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    move/from16 v41, v0

    .line 2405
    .local v41, "matchConstraintDefaultHeight":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_6

    .line 2406
    const/16 v56, 0x1

    .line 2407
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_4

    if-nez v20, :cond_4

    .line 2409
    const/16 v20, 0x3

    .line 2411
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_5

    if-nez v41, :cond_5

    .line 2413
    const/16 v41, 0x3

    .line 2416
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_13

    const/4 v4, 0x3

    move/from16 v0, v20

    if-ne v0, v4, :cond_13

    const/4 v4, 0x3

    move/from16 v0, v41

    if-ne v0, v4, :cond_13

    .line 2420
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v50

    move/from16 v3, v57

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setupDimensionRatio(ZZZZ)V

    .line 2444
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v5, 0x0

    aput v20, v4, v5

    .line 2445
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v5, 0x1

    aput v41, v4, v5

    .line 2447
    if-eqz v56, :cond_16

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_16

    :cond_7
    const/16 v18, 0x1

    .line 2451
    .local v18, "useHorizontalRatio":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_17

    move-object/from16 v0, p0

    instance-of v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v4, :cond_17

    const/4 v10, 0x1

    .line 2454
    .local v10, "wrapContent":Z
    :goto_8
    const/16 v24, 0x1

    .line 2455
    .local v24, "applyPosition":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2456
    const/16 v24, 0x0

    .line 2459
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_9

    .line 2460
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    .line 2461
    .local v8, "parentMax":Landroid/support/constraint/solver/SolverVariable;
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v7

    .line 2462
    .local v7, "parentMin":Landroid/support/constraint/solver/SolverVariable;
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x0

    aget-object v9, v4, v5

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v5, 0x0

    aget v16, v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    move/from16 v23, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v24}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->applyConstraints(Landroid/support/constraint/solver/LinearSystem;ZLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZIIIFZ)V

    .line 2468
    .end local v7    # "parentMin":Landroid/support/constraint/solver/SolverVariable;
    .end local v8    # "parentMax":Landroid/support/constraint/solver/SolverVariable;
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1a

    .line 2522
    :cond_a
    :goto_b
    return-void

    .line 2349
    .end local v10    # "wrapContent":Z
    .end local v14    # "width":I
    .end local v18    # "useHorizontalRatio":Z
    .end local v20    # "matchConstraintDefaultWidth":I
    .end local v24    # "applyPosition":Z
    .end local v35    # "height":I
    .end local v41    # "matchConstraintDefaultHeight":I
    .end local v50    # "horizontalDimensionFixed":Z
    .end local v56    # "useRatio":Z
    .end local v57    # "verticalDimensionFixed":Z
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2350
    :cond_d
    const/16 v27, 0x0

    goto/16 :goto_1

    :cond_e
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 2357
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v19

    goto/16 :goto_2

    .line 2365
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v40

    goto/16 :goto_3

    .line 2391
    .restart local v14    # "width":I
    .restart local v35    # "height":I
    :cond_11
    const/16 v50, 0x0

    goto/16 :goto_4

    .line 2393
    .restart local v50    # "horizontalDimensionFixed":Z
    :cond_12
    const/16 v57, 0x0

    goto/16 :goto_5

    .line 2421
    .restart local v20    # "matchConstraintDefaultWidth":I
    .restart local v41    # "matchConstraintDefaultHeight":I
    .restart local v56    # "useRatio":Z
    .restart local v57    # "verticalDimensionFixed":Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_14

    const/4 v4, 0x3

    move/from16 v0, v20

    if-ne v0, v4, :cond_14

    .line 2423
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2424
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v14, v4

    .line 2425
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_6

    .line 2426
    const/16 v20, 0x4

    .line 2427
    const/16 v56, 0x0

    goto/16 :goto_6

    .line 2429
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_6

    const/4 v4, 0x3

    move/from16 v0, v41

    if-ne v0, v4, :cond_6

    .line 2431
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2432
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_15

    .line 2434
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2436
    :cond_15
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v35, v0

    .line 2437
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_6

    .line 2438
    const/16 v41, 0x4

    .line 2439
    const/16 v56, 0x0

    goto/16 :goto_6

    .line 2447
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 2451
    .restart local v18    # "useHorizontalRatio":Z
    :cond_17
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 2460
    .restart local v10    # "wrapContent":Z
    .restart local v24    # "applyPosition":Z
    :cond_18
    const/4 v8, 0x0

    goto/16 :goto_9

    .line 2461
    .restart local v8    # "parentMax":Landroid/support/constraint/solver/SolverVariable;
    :cond_19
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 2478
    .end local v8    # "parentMax":Landroid/support/constraint/solver/SolverVariable;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_1e

    move-object/from16 v0, p0

    instance-of v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v4, :cond_1e

    const/4 v10, 0x1

    .line 2481
    :goto_c
    if-eqz v56, :cond_1f

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1b

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1f

    :cond_1b
    const/16 v39, 0x1

    .line 2484
    .local v39, "useVerticalRatio":Z
    :goto_d
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v4, :cond_1c

    .line 2485
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v4

    iget v4, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_20

    .line 2486
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 2497
    :cond_1c
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    .line 2498
    .restart local v8    # "parentMax":Landroid/support/constraint/solver/SolverVariable;
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v7

    .line 2499
    .restart local v7    # "parentMin":Landroid/support/constraint/solver/SolverVariable;
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x1

    aget-object v30, v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v5, 0x1

    aget v37, v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    move/from16 v44, v0

    move-object/from16 v25, p0

    move-object/from16 v26, p1

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move/from16 v31, v10

    move/from16 v45, v24

    invoke-direct/range {v25 .. v45}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->applyConstraints(Landroid/support/constraint/solver/LinearSystem;ZLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZIIIFZ)V

    .line 2504
    if-eqz v56, :cond_1d

    .line 2505
    const/16 v34, 0x6

    .line 2506
    .local v34, "strength":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    .line 2507
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move/from16 v33, v0

    move-object/from16 v28, p1

    move-object/from16 v29, v49

    move-object/from16 v30, v55

    move-object/from16 v31, v54

    move-object/from16 v32, v51

    invoke-virtual/range {v28 .. v34}, Landroid/support/constraint/solver/LinearSystem;->addRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FI)V

    .line 2513
    .end local v34    # "strength":I
    :cond_1d
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2514
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    const/high16 v9, 0x42b40000    # 90.0f

    add-float/2addr v5, v9

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    double-to-float v5, v12

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4, v5, v9}, Landroid/support/constraint/solver/LinearSystem;->addCenterPoint(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V

    goto/16 :goto_b

    .line 2478
    .end local v7    # "parentMin":Landroid/support/constraint/solver/SolverVariable;
    .end local v8    # "parentMax":Landroid/support/constraint/solver/SolverVariable;
    .end local v39    # "useVerticalRatio":Z
    :cond_1e
    const/4 v10, 0x0

    goto/16 :goto_c

    .line 2481
    :cond_1f
    const/16 v39, 0x0

    goto/16 :goto_d

    .line 2488
    .restart local v39    # "useVerticalRatio":Z
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v4

    const/4 v5, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2489
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_1c

    .line 2490
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v48

    .line 2491
    .local v48, "baselineTarget":Landroid/support/constraint/solver/SolverVariable;
    const/16 v47, 0x0

    .line 2492
    .local v47, "baselineMargin":I
    const/4 v4, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    move-object/from16 v2, v48

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2493
    const/16 v24, 0x0

    goto/16 :goto_e

    .line 2497
    .end local v47    # "baselineMargin":I
    .end local v48    # "baselineTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_21
    const/4 v8, 0x0

    goto/16 :goto_f

    .line 2498
    .restart local v8    # "parentMax":Landroid/support/constraint/solver/SolverVariable;
    :cond_22
    const/4 v7, 0x0

    goto/16 :goto_10

    .line 2509
    .restart local v7    # "parentMin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v34    # "strength":I
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move/from16 v33, v0

    move-object/from16 v28, p1

    move-object/from16 v29, v54

    move-object/from16 v30, v51

    move-object/from16 v31, v49

    move-object/from16 v32, v55

    invoke-virtual/range {v28 .. v34}, Landroid/support/constraint/solver/LinearSystem;->addRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FI)V

    goto/16 :goto_11
.end method

.method public allowedInBarrier()Z
    .locals 2

    .prologue
    .line 1677
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public analyze(I)V
    .locals 0
    .param p1, "optimizationLevel"    # I

    .prologue
    .line 353
    invoke-static {p1, p0}, Landroid/support/constraint/solver/widgets/Optimizer;->analyze(ILandroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 354
    return-void
.end method

.method public connectCircularConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V
    .locals 6
    .param p1, "target"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "angle"    # F
    .param p3, "radius"    # I

    .prologue
    .line 605
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 607
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 608
    return-void
.end method

.method public createObjectVariables(Landroid/support/constraint/solver/LinearSystem;)V
    .locals 5
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;

    .prologue
    .line 700
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 701
    .local v1, "left":Landroid/support/constraint/solver/SolverVariable;
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 702
    .local v3, "top":Landroid/support/constraint/solver/SolverVariable;
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 703
    .local v2, "right":Landroid/support/constraint/solver/SolverVariable;
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 704
    .local v0, "bottom":Landroid/support/constraint/solver/SolverVariable;
    iget v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v4, :cond_0

    .line 705
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    .line 707
    :cond_0
    return-void
.end method

.method public getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .locals 2
    .param p1, "anchorType"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .prologue
    .line 2132
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2160
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2134
    :pswitch_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 2158
    :goto_0
    return-object v0

    .line 2137
    :pswitch_1
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_0

    .line 2140
    :pswitch_2
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_0

    .line 2143
    :pswitch_3
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_0

    .line 2146
    :pswitch_4
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_0

    .line 2149
    :pswitch_5
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_0

    .line 2152
    :pswitch_6
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_0

    .line 2155
    :pswitch_7
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_0

    .line 2158
    :pswitch_8
    const/4 v0, 0x0

    goto :goto_0

    .line 2132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public getAnchors()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1050
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBaselineDistance()I
    .locals 1

    .prologue
    .line 1031
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    return v0
.end method

.method public getBiasPercent(I)F
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1007
    if-nez p1, :cond_0

    .line 1008
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1012
    :goto_0
    return v0

    .line 1009
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1010
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_0

    .line 1012
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public getBottom()I
    .locals 2

    .prologue
    .line 976
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCompanionWidget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    return-object v0
.end method

.method public getDebugName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    return-object v0
.end method

.method public getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 2188
    if-nez p1, :cond_0

    .line 2189
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    .line 2193
    :goto_0
    return-object v0

    .line 2190
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2191
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    goto :goto_0

    .line 2193
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawX()I
    .locals 2

    .prologue
    .line 867
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDrawY()I
    .locals 2

    .prologue
    .line 876
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 830
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 831
    const/4 v0, 0x0

    .line 833
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    goto :goto_0
.end method

.method public getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .prologue
    .line 2169
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLength(I)I
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 852
    if-nez p1, :cond_0

    .line 853
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    .line 857
    :goto_0
    return v0

    .line 854
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 855
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    goto :goto_0

    .line 857
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method getRelativePositioning(I)I
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1548
    if-nez p1, :cond_0

    .line 1549
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRelX:I

    .line 1553
    :goto_0
    return v0

    .line 1550
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1551
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRelY:I

    goto :goto_0

    .line 1553
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Landroid/support/constraint/solver/widgets/ResolutionDimension;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    .line 397
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    return-object v0
.end method

.method public getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Landroid/support/constraint/solver/widgets/ResolutionDimension;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    .line 386
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    return-object v0
.end method

.method public getRight()I
    .locals 2

    .prologue
    .line 967
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getRootX()I
    .locals 2

    .prologue
    .line 912
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getRootY()I
    .locals 2

    .prologue
    .line 922
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .prologue
    .line 2178
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 773
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 774
    const/4 v0, 0x0

    .line 776
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    goto :goto_0
.end method

.method public getWrapHeight()I
    .locals 1

    .prologue
    .line 842
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    return v0
.end method

.method public getWrapWidth()I
    .locals 1

    .prologue
    .line 821
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    return v0
.end method

.method public hasBaseline()Z
    .locals 1

    .prologue
    .line 1022
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V
    .locals 7
    .param p1, "startType"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .param p2, "target"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p3, "endType"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .param p4, "margin"    # I
    .param p5, "goneMargin"    # I

    .prologue
    .line 1704
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1705
    .local v0, "startAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1706
    .local v1, "endAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p4

    move v3, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    .line 1708
    return-void
.end method

.method public isFullyResolved()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 369
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v1, v1, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 370
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v1, v1, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 371
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v1, v1, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 372
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v1, v1, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-ne v1, v0, :cond_0

    .line 375
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInHorizontalChain()Z
    .locals 2

    .prologue
    .line 2227
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_2

    .line 2229
    :cond_1
    const/4 v0, 0x1

    .line 2231
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInVerticalChain()Z
    .locals 2

    .prologue
    .line 2270
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_2

    .line 2272
    :cond_1
    const/4 v0, 0x1

    .line 2274
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpreadHeight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 125
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpreadWidth()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 117
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public reset()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const v5, 0x7fffffff

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 257
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 258
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 259
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 260
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 261
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 262
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 263
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 264
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 265
    iput-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 267
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 268
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 269
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 270
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 271
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 272
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 273
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 274
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 275
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 276
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 277
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 278
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 279
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 280
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 281
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 282
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    .line 283
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    .line 284
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 285
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 286
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v1, v0, v3

    .line 287
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v2, v0, v1

    .line 288
    iput-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 289
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 290
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 291
    iput-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 292
    iput-boolean v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 293
    iput-boolean v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 294
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 295
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 296
    iput-boolean v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    .line 297
    iput-boolean v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    .line 298
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    const/high16 v1, -0x40800000    # -1.0f

    aput v1, v0, v3

    .line 299
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    aput v2, v0, v1

    .line 300
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 301
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 302
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    aput v5, v0, v3

    .line 303
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x1

    aput v5, v0, v1

    .line 304
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 305
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 306
    iput v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 307
    iput v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 308
    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 309
    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 310
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 311
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 312
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 313
    iput v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 314
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->reset()V

    .line 317
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->reset()V

    .line 320
    :cond_1
    iput-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    .line 321
    iput-boolean v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    .line 322
    iput-boolean v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    .line 323
    iput-boolean v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 324
    return-void
.end method

.method public resetAnchors()V
    .locals 6

    .prologue
    .line 2057
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    .line 2058
    .local v3, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v3, :cond_1

    instance-of v5, v3, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_1

    .line 2059
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2060
    .local v4, "parentContainer":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2068
    .end local v4    # "parentContainer":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    :cond_0
    return-void

    .line 2064
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "mAnchorsSize":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2065
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 2066
    .local v0, "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 2064
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public resetResolutionNodes()V
    .locals 2

    .prologue
    .line 334
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 335
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->reset()V

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_0
    return-void
.end method

.method public resetSolverVariables(Landroid/support/constraint/solver/Cache;)V
    .locals 1
    .param p1, "cache"    # Landroid/support/constraint/solver/Cache;

    .prologue
    .line 442
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 443
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 444
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 445
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 446
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 447
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 448
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 449
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 450
    return-void
.end method

.method public resolve()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public setBaselineDistance(I)V
    .locals 0
    .param p1, "baseline"    # I

    .prologue
    .line 1577
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 1578
    return-void
.end method

.method public setCompanionWidget(Ljava/lang/Object;)V
    .locals 0
    .param p1, "companion"    # Ljava/lang/Object;

    .prologue
    .line 1587
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 1588
    return-void
.end method

.method public setDebugName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 659
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 660
    return-void
.end method

.method public setDimensionRatio(Ljava/lang/String;)V
    .locals 13
    .param p1, "ratio"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 1287
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_2

    .line 1288
    :cond_0
    iput v12, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1341
    :cond_1
    :goto_0
    return-void

    .line 1291
    :cond_2
    const/4 v6, -0x1

    .line 1292
    .local v6, "dimensionRatioSide":I
    const/4 v5, 0x0

    .line 1293
    .local v5, "dimensionRatio":F
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 1294
    .local v7, "len":I
    const/16 v11, 0x2c

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1295
    .local v1, "commaIndex":I
    if-lez v1, :cond_6

    add-int/lit8 v11, v7, -0x1

    if-ge v1, v11, :cond_6

    .line 1296
    const/4 v11, 0x0

    invoke-virtual {p1, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1297
    .local v4, "dimension":Ljava/lang/String;
    const-string v11, "W"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1298
    const/4 v6, 0x0

    .line 1302
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 1306
    .end local v4    # "dimension":Ljava/lang/String;
    :goto_2
    const/16 v11, 0x3a

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1308
    .local v0, "colonIndex":I
    if-ltz v0, :cond_8

    add-int/lit8 v11, v7, -0x1

    if-ge v0, v11, :cond_8

    .line 1309
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1310
    .local v8, "nominator":Ljava/lang/String;
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1311
    .local v2, "denominator":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 1313
    :try_start_0
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 1314
    .local v9, "nominatorValue":F
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 1315
    .local v3, "denominatorValue":F
    cmpl-float v11, v9, v12

    if-lez v11, :cond_4

    cmpl-float v11, v3, v12

    if-lez v11, :cond_4

    .line 1316
    const/4 v11, 0x1

    if-ne v6, v11, :cond_7

    .line 1317
    div-float v11, v3, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 1337
    .end local v2    # "denominator":Ljava/lang/String;
    .end local v3    # "denominatorValue":F
    .end local v8    # "nominator":Ljava/lang/String;
    .end local v9    # "nominatorValue":F
    :cond_4
    :goto_3
    cmpl-float v11, v5, v12

    if-lez v11, :cond_1

    .line 1338
    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1339
    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    goto :goto_0

    .line 1299
    .end local v0    # "colonIndex":I
    .restart local v4    # "dimension":Ljava/lang/String;
    :cond_5
    const-string v11, "H"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1300
    const/4 v6, 0x1

    goto :goto_1

    .line 1304
    .end local v4    # "dimension":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 1319
    .restart local v0    # "colonIndex":I
    .restart local v2    # "denominator":Ljava/lang/String;
    .restart local v3    # "denominatorValue":F
    .restart local v8    # "nominator":Ljava/lang/String;
    .restart local v9    # "nominatorValue":F
    :cond_7
    div-float v11, v9, v3

    :try_start_1
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    goto :goto_3

    .line 1327
    .end local v2    # "denominator":Ljava/lang/String;
    .end local v3    # "denominatorValue":F
    .end local v8    # "nominator":Ljava/lang/String;
    .end local v9    # "nominatorValue":F
    :cond_8
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1328
    .local v10, "r":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 1330
    :try_start_2
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    goto :goto_3

    .line 1331
    :catch_0
    move-exception v11

    goto :goto_3

    .line 1322
    .end local v10    # "r":Ljava/lang/String;
    .restart local v2    # "denominator":Ljava/lang/String;
    .restart local v8    # "nominator":Ljava/lang/String;
    :catch_1
    move-exception v11

    goto :goto_3
.end method

.method public setFrame(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 1505
    if-nez p3, :cond_1

    .line 1506
    invoke-virtual {p0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    .line 1510
    :cond_0
    :goto_0
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    .line 1511
    return-void

    .line 1507
    :cond_1
    if-ne p3, v0, :cond_0

    .line 1508
    invoke-virtual {p0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    goto :goto_0
.end method

.method public setFrame(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1461
    sub-int v1, p3, p1

    .line 1462
    .local v1, "w":I
    sub-int v0, p4, p2

    .line 1464
    .local v0, "h":I
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 1465
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 1467
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 1468
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1469
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1495
    :goto_0
    return-void

    .line 1474
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v4

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    if-ge v1, v2, :cond_1

    .line 1475
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1477
    :cond_1
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v5

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    if-ge v0, v2, :cond_2

    .line 1478
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1481
    :cond_2
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1482
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1484
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v2, v3, :cond_3

    .line 1485
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1487
    :cond_3
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v2, v3, :cond_4

    .line 1488
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1494
    :cond_4
    iput-boolean v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 1225
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1226
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v0, v1, :cond_0

    .line 1227
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1229
    :cond_0
    return-void
.end method

.method public setHeightWrapContent(Z)V
    .locals 0
    .param p1, "heightWrapContent"    # Z

    .prologue
    .line 588
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    .line 589
    return-void
.end method

.method public setHorizontalBiasPercent(F)V
    .locals 0
    .param p1, "horizontalBiasPercent"    # F

    .prologue
    .line 1378
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1379
    return-void
.end method

.method public setHorizontalChainStyle(I)V
    .locals 0
    .param p1, "horizontalChainStyle"    # I

    .prologue
    .line 1640
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 1641
    return-void
.end method

.method public setHorizontalDimension(II)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1520
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 1521
    sub-int v0, p2, p1

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1522
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, v1, :cond_0

    .line 1523
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1525
    :cond_0
    return-void
.end method

.method public setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2
    .param p1, "behaviour"    # Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .prologue
    .line 2203
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2204
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v0, :cond_0

    .line 2205
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 2207
    :cond_0
    return-void
.end method

.method public setHorizontalMatchStyle(IIIF)V
    .locals 1
    .param p1, "horizontalMatchStyle"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "percent"    # F

    .prologue
    .line 1254
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1255
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 1256
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 1257
    iput p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 1258
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v0, :cond_0

    .line 1259
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1261
    :cond_0
    return-void
.end method

.method public setHorizontalWeight(F)V
    .locals 2
    .param p1, "horizontalWeight"    # F

    .prologue
    .line 1621
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1622
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 2
    .param p1, "maxHeight"    # I

    .prologue
    .line 113
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 114
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 2
    .param p1, "maxWidth"    # I

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 110
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "h"    # I

    .prologue
    .line 1410
    if-gez p1, :cond_0

    .line 1411
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 1415
    :goto_0
    return-void

    .line 1413
    :cond_0
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    goto :goto_0
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "w"    # I

    .prologue
    .line 1397
    if-gez p1, :cond_0

    .line 1398
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 1402
    :goto_0
    return-void

    .line 1400
    :cond_0
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    goto :goto_0
.end method

.method public setOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1089
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 1090
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 1091
    return-void
.end method

.method public setOrigin(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1078
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 1079
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 1080
    return-void
.end method

.method public setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 0
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .prologue
    .line 564
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 565
    return-void
.end method

.method setRelativePositioning(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 1564
    if-nez p2, :cond_1

    .line 1565
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRelX:I

    .line 1569
    :cond_0
    :goto_0
    return-void

    .line 1566
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1567
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRelY:I

    goto :goto_0
.end method

.method public setVerticalBiasPercent(F)V
    .locals 0
    .param p1, "verticalBiasPercent"    # F

    .prologue
    .line 1388
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 1389
    return-void
.end method

.method public setVerticalChainStyle(I)V
    .locals 0
    .param p1, "verticalChainStyle"    # I

    .prologue
    .line 1660
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 1661
    return-void
.end method

.method public setVerticalDimension(II)V
    .locals 2
    .param p1, "top"    # I
    .param p2, "bottom"    # I

    .prologue
    .line 1534
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 1535
    sub-int v0, p2, p1

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1536
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v0, v1, :cond_0

    .line 1537
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1539
    :cond_0
    return-void
.end method

.method public setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2
    .param p1, "behaviour"    # Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .prologue
    .line 2215
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2216
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v0, :cond_0

    .line 2217
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 2219
    :cond_0
    return-void
.end method

.method public setVerticalMatchStyle(IIIF)V
    .locals 1
    .param p1, "verticalMatchStyle"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "percent"    # F

    .prologue
    .line 1272
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1273
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 1274
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 1275
    iput p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 1276
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v0, :cond_0

    .line 1277
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1279
    :cond_0
    return-void
.end method

.method public setVerticalWeight(F)V
    .locals 2
    .param p1, "verticalWeight"    # F

    .prologue
    .line 1630
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 1631
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 634
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 635
    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .param p1, "w"    # I

    .prologue
    .line 1213
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1214
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, v1, :cond_0

    .line 1215
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1217
    :cond_0
    return-void
.end method

.method public setWidthWrapContent(Z)V
    .locals 0
    .param p1, "widthWrapContent"    # Z

    .prologue
    .line 572
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    .line 573
    return-void
.end method

.method public setWrapHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 1432
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    .line 1433
    return-void
.end method

.method public setWrapWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 1423
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    .line 1424
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 1059
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 1060
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 1068
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 1069
    return-void
.end method

.method public setupDimensionRatio(ZZZZ)V
    .locals 5
    .param p1, "hparentWrapContent"    # Z
    .param p2, "vparentWrapContent"    # Z
    .param p3, "horizontalDimensionFixed"    # Z
    .param p4, "verticalDimensionFixed"    # Z

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 2534
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v2, :cond_0

    .line 2535
    if-eqz p3, :cond_8

    if-nez p4, :cond_8

    .line 2536
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2546
    :cond_0
    :goto_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2547
    :cond_1
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2553
    :cond_2
    :goto_1
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v2, :cond_4

    .line 2554
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 2555
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2557
    :cond_3
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2558
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2566
    :cond_4
    :goto_2
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v2, :cond_5

    .line 2567
    if-eqz p1, :cond_c

    if-nez p2, :cond_c

    .line 2568
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2575
    :cond_5
    :goto_3
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v2, :cond_6

    .line 2576
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v0, :cond_d

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v0, :cond_d

    .line 2577
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2584
    :cond_6
    :goto_4
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v2, :cond_7

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 2585
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float v0, v3, v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2586
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2588
    :cond_7
    return-void

    .line 2537
    :cond_8
    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    .line 2538
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2539
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    if-ne v0, v2, :cond_0

    .line 2541
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float v0, v3, v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    goto/16 :goto_0

    .line 2548
    :cond_9
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2549
    :cond_a
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto/16 :goto_1

    .line 2559
    :cond_b
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2560
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float v0, v3, v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2561
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_2

    .line 2569
    :cond_c
    if-nez p1, :cond_5

    if-eqz p2, :cond_5

    .line 2570
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float v0, v3, v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2571
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_3

    .line 2578
    :cond_d
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v0, :cond_6

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v0, :cond_6

    .line 2579
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float v0, v3, v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2580
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") wrap: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public updateDrawPosition()V
    .locals 6

    .prologue
    .line 1132
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 1133
    .local v1, "left":I
    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 1134
    .local v3, "top":I
    iget v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    iget v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    add-int v2, v4, v5

    .line 1135
    .local v2, "right":I
    iget v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    iget v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    add-int v0, v4, v5

    .line 1136
    .local v0, "bottom":I
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 1137
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 1138
    sub-int v4, v2, v1

    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 1139
    sub-int v4, v0, v3

    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 1140
    return-void
.end method

.method public updateFromSolver(Landroid/support/constraint/solver/LinearSystem;)V
    .locals 9
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;

    .prologue
    const v8, 0x7fffffff

    const/high16 v7, -0x80000000

    .line 2865
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v2

    .line 2866
    .local v2, "left":I
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v4

    .line 2867
    .local v4, "top":I
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v3

    .line 2868
    .local v3, "right":I
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    .line 2869
    .local v0, "bottom":I
    sub-int v5, v3, v2

    .line 2870
    .local v5, "w":I
    sub-int v1, v0, v4

    .line 2871
    .local v1, "h":I
    if-ltz v5, :cond_0

    if-ltz v1, :cond_0

    if-eq v2, v7, :cond_0

    if-eq v2, v8, :cond_0

    if-eq v4, v7, :cond_0

    if-eq v4, v8, :cond_0

    if-eq v3, v7, :cond_0

    if-eq v3, v8, :cond_0

    if-eq v0, v7, :cond_0

    if-ne v0, v8, :cond_1

    .line 2876
    :cond_0
    const/4 v2, 0x0

    .line 2877
    const/4 v4, 0x0

    .line 2878
    const/4 v3, 0x0

    .line 2879
    const/4 v0, 0x0

    .line 2881
    :cond_1
    invoke-virtual {p0, v2, v4, v3, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFrame(IIII)V

    .line 2882
    return-void
.end method

.method public updateResolutionNodes()V
    .locals 2

    .prologue
    .line 343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 344
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->update()V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    return-void
.end method
