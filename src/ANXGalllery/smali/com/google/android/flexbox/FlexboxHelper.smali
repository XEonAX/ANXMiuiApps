.class Lcom/google/android/flexbox/FlexboxHelper;
.super Ljava/lang/Object;
.source "FlexboxHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mChildrenFrozen:[Z

.field private final mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

.field mIndexToFlexLine:[I

.field mMeasureSpecCache:[J

.field private mMeasuredSizeCache:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/flexbox/FlexboxHelper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/android/flexbox/FlexContainer;)V
    .locals 0
    .param p1, "flexContainer"    # Lcom/google/android/flexbox/FlexContainer;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 98
    return-void
.end method

.method private addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V
    .locals 1
    .param p2, "flexLine"    # Lcom/google/android/flexbox/FlexLine;
    .param p3, "viewIndex"    # I
    .param p4, "usedCrossSizeSoFar"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;",
            "Lcom/google/android/flexbox/FlexLine;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 856
    .local p1, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    iput p4, p2, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    .line 857
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0, p2}, Lcom/google/android/flexbox/FlexContainer;->onNewFlexLineAdded(Lcom/google/android/flexbox/FlexLine;)V

    .line 858
    iput p3, p2, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    .line 859
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    return-void
.end method

.method private checkSizeConstraints(Landroid/view/View;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 871
    const/4 v4, 0x0

    .line 872
    .local v4, "needsMeasure":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexItem;

    .line 873
    .local v2, "flexItem":Lcom/google/android/flexbox/FlexItem;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 874
    .local v1, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 876
    .local v0, "childHeight":I
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 877
    const/4 v4, 0x1

    .line 878
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v1

    .line 884
    :cond_0
    :goto_0
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 885
    const/4 v4, 0x1

    .line 886
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v0

    .line 891
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 892
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 894
    .local v5, "widthSpec":I
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 895
    .local v3, "heightSpec":I
    invoke-virtual {p1, v5, v3}, Landroid/view/View;->measure(II)V

    .line 896
    invoke-direct {p0, p2, v5, v3, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 897
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v6, p2, p1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 899
    .end local v3    # "heightSpec":I
    .end local v5    # "widthSpec":I
    :cond_2
    return-void

    .line 879
    :cond_3
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v6

    if-le v1, v6, :cond_0

    .line 880
    const/4 v4, 0x1

    .line 881
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v1

    goto :goto_0

    .line 887
    :cond_4
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v6

    if-le v0, v6, :cond_1

    .line 888
    const/4 v4, 0x1

    .line 889
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v0

    goto :goto_1
.end method

.method private ensureChildrenFrozen(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    const/16 v1, 0xa

    .line 974
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    if-nez v2, :cond_1

    .line 975
    if-ge p1, v1, :cond_0

    move p1, v1

    .end local p1    # "size":I
    :cond_0
    new-array v1, p1, [Z

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    .line 982
    :goto_0
    return-void

    .line 976
    .restart local p1    # "size":I
    :cond_1
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    array-length v1, v1

    if-ge v1, p1, :cond_3

    .line 977
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    array-length v1, v1

    mul-int/lit8 v0, v1, 0x2

    .line 978
    .local v0, "newCapacity":I
    if-lt v0, p1, :cond_2

    .end local v0    # "newCapacity":I
    :goto_1
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    goto :goto_0

    .restart local v0    # "newCapacity":I
    :cond_2
    move v0, p1

    goto :goto_1

    .line 980
    .end local v0    # "newCapacity":I
    :cond_3
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([ZZ)V

    goto :goto_0
.end method

.method private expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .locals 29
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "flexLine"    # Lcom/google/android/flexbox/FlexLine;
    .param p4, "maxMainSize"    # I
    .param p5, "paddingAlongMainAxis"    # I
    .param p6, "calledRecursively"    # Z

    .prologue
    .line 999
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v0, p4

    if-ge v0, v4, :cond_1

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    move-object/from16 v0, p3

    iget v0, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v27, v0

    .line 1003
    .local v27, "sizeBeforeExpand":I
    const/16 v22, 0x0

    .line 1004
    .local v22, "needsReexpand":Z
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v4, p4, v4

    int-to-float v4, v4

    move-object/from16 v0, p3

    iget v5, v0, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    div-float v28, v4, v5

    .line 1005
    .local v28, "unitSpace":F
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int v4, v4, p5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1016
    const/16 v21, 0x0

    .line 1017
    .local v21, "largestCrossSize":I
    if-nez p6, :cond_2

    .line 1018
    const/high16 v4, -0x80000000

    move-object/from16 v0, p3

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1020
    :cond_2
    const/4 v11, 0x0

    .line 1021
    .local v11, "accumulatedRoundError":F
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    move/from16 v0, v19

    if-ge v0, v4, :cond_15

    .line 1022
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int v20, v4, v19

    .line 1023
    .local v20, "index":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    move/from16 v0, v20

    invoke-interface {v4, v0}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v12

    .line 1024
    .local v12, "child":Landroid/view/View;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    .line 1021
    :cond_3
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1027
    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/google/android/flexbox/FlexItem;

    .line 1028
    .local v18, "flexItem":Lcom/google/android/flexbox/FlexItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v17

    .line 1029
    .local v17, "flexDirection":I
    if-eqz v17, :cond_5

    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_d

    .line 1032
    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1033
    .local v15, "childMeasuredWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v4, :cond_6

    .line 1039
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v4, v4, v20

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v15

    .line 1041
    :cond_6
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 1042
    .local v14, "childMeasuredHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v4, :cond_7

    .line 1044
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v4, v4, v20

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v14

    .line 1046
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v4, v4, v20

    if-nez v4, :cond_a

    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    .line 1047
    int-to-float v4, v15

    .line 1048
    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v5

    mul-float v5, v5, v28

    add-float v26, v4, v5

    .line 1049
    .local v26, "rawCalculatedWidth":F
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_8

    .line 1050
    add-float v26, v26, v11

    .line 1051
    const/4 v11, 0x0

    .line 1053
    :cond_8
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v24

    .line 1054
    .local v24, "newWidth":I
    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v4

    move/from16 v0, v24

    if-le v0, v4, :cond_b

    .line 1061
    const/16 v22, 0x1

    .line 1062
    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v24

    .line 1063
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v20

    .line 1064
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 1075
    :cond_9
    :goto_3
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/flexbox/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v13

    .line 1077
    .local v13, "childHeightMeasureSpec":I
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v24

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 1079
    .local v16, "childWidthMeasureSpec":I
    move/from16 v0, v16

    invoke-virtual {v12, v0, v13}, Landroid/view/View;->measure(II)V

    .line 1080
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1081
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 1082
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v13, v12}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    move/from16 v0, v20

    invoke-interface {v4, v0, v12}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 1087
    .end local v13    # "childHeightMeasureSpec":I
    .end local v16    # "childWidthMeasureSpec":I
    .end local v24    # "newWidth":I
    .end local v26    # "rawCalculatedWidth":F
    :cond_a
    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v4

    add-int/2addr v4, v14

    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1088
    invoke-interface {v5, v12}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1086
    move/from16 v0, v21

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 1089
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v5

    add-int/2addr v5, v15

    .line 1090
    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1156
    :goto_4
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p3

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    goto/16 :goto_2

    .line 1066
    .restart local v24    # "newWidth":I
    .restart local v26    # "rawCalculatedWidth":F
    :cond_b
    move/from16 v0, v24

    int-to-float v4, v0

    sub-float v4, v26, v4

    add-float/2addr v11, v4

    .line 1067
    float-to-double v4, v11

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_c

    .line 1068
    add-int/lit8 v24, v24, 0x1

    .line 1069
    float-to-double v4, v11

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    double-to-float v11, v4

    goto/16 :goto_3

    .line 1070
    :cond_c
    float-to-double v4, v11

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_9

    .line 1071
    add-int/lit8 v24, v24, -0x1

    .line 1072
    float-to-double v4, v11

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    double-to-float v11, v4

    goto/16 :goto_3

    .line 1094
    .end local v14    # "childMeasuredHeight":I
    .end local v15    # "childMeasuredWidth":I
    .end local v24    # "newWidth":I
    .end local v26    # "rawCalculatedWidth":F
    :cond_d
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 1095
    .restart local v14    # "childMeasuredHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v4, :cond_e

    .line 1101
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v4, v4, v20

    .line 1102
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v14

    .line 1104
    :cond_e
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1105
    .restart local v15    # "childMeasuredWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v4, :cond_f

    .line 1107
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v4, v4, v20

    .line 1108
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v15

    .line 1110
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v4, v4, v20

    if-nez v4, :cond_12

    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_12

    .line 1111
    int-to-float v4, v14

    .line 1112
    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v5

    mul-float v5, v5, v28

    add-float v25, v4, v5

    .line 1113
    .local v25, "rawCalculatedHeight":F
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_10

    .line 1114
    add-float v25, v25, v11

    .line 1115
    const/4 v11, 0x0

    .line 1117
    :cond_10
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v23

    .line 1118
    .local v23, "newHeight":I
    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v4

    move/from16 v0, v23

    if-le v0, v4, :cond_13

    .line 1125
    const/16 v22, 0x1

    .line 1126
    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v23

    .line 1127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v20

    .line 1128
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 1139
    :cond_11
    :goto_5
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/flexbox/FlexboxHelper;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v16

    .line 1141
    .restart local v16    # "childWidthMeasureSpec":I
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v23

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1143
    .restart local v13    # "childHeightMeasureSpec":I
    move/from16 v0, v16

    invoke-virtual {v12, v0, v13}, Landroid/view/View;->measure(II)V

    .line 1144
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1145
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 1146
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v13, v12}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    move/from16 v0, v20

    invoke-interface {v4, v0, v12}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 1151
    .end local v13    # "childHeightMeasureSpec":I
    .end local v16    # "childWidthMeasureSpec":I
    .end local v23    # "newHeight":I
    .end local v25    # "rawCalculatedHeight":F
    :cond_12
    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v4

    add-int/2addr v4, v15

    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1152
    invoke-interface {v5, v12}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1150
    move/from16 v0, v21

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 1153
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v5

    add-int/2addr v5, v14

    .line 1154
    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    goto/16 :goto_4

    .line 1130
    .restart local v23    # "newHeight":I
    .restart local v25    # "rawCalculatedHeight":F
    :cond_13
    move/from16 v0, v23

    int-to-float v4, v0

    sub-float v4, v25, v4

    add-float/2addr v11, v4

    .line 1131
    float-to-double v4, v11

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_14

    .line 1132
    add-int/lit8 v23, v23, 0x1

    .line 1133
    float-to-double v4, v11

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    double-to-float v11, v4

    goto :goto_5

    .line 1134
    :cond_14
    float-to-double v4, v11

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_11

    .line 1135
    add-int/lit8 v23, v23, -0x1

    .line 1136
    float-to-double v4, v11

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    double-to-float v11, v4

    goto/16 :goto_5

    .line 1159
    .end local v12    # "child":Landroid/view/View;
    .end local v14    # "childMeasuredHeight":I
    .end local v15    # "childMeasuredWidth":I
    .end local v17    # "flexDirection":I
    .end local v18    # "flexItem":Lcom/google/android/flexbox/FlexItem;
    .end local v20    # "index":I
    .end local v23    # "newHeight":I
    .end local v25    # "rawCalculatedHeight":F
    :cond_15
    if-eqz v22, :cond_0

    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v0, v27

    if-eq v0, v4, :cond_0

    .line 1162
    const/4 v10, 0x1

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v4 .. v10}, Lcom/google/android/flexbox/FlexboxHelper;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    goto/16 :goto_0
.end method

.method private getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 5
    .param p1, "heightMeasureSpec"    # I
    .param p2, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p3, "padding"    # I

    .prologue
    .line 1366
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1367
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 1368
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    .line 1369
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v4

    .line 1366
    invoke-interface {v2, p1, v3, v4}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v1

    .line 1370
    .local v1, "childHeightMeasureSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1371
    .local v0, "childHeight":I
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 1372
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v2

    .line 1373
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1372
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1378
    :cond_0
    :goto_0
    return v1

    .line 1374
    :cond_1
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1375
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v2

    .line 1376
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1375
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0
.end method

.method private getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p3, "padding"    # I

    .prologue
    .line 1349
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1350
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 1351
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    .line 1352
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v4

    .line 1349
    invoke-interface {v2, p1, v3, v4}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v1

    .line 1353
    .local v1, "childWidthMeasureSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1354
    .local v0, "childWidth":I
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 1355
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v2

    .line 1356
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1355
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1361
    :cond_0
    :goto_0
    return v1

    .line 1357
    :cond_1
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1358
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v2

    .line 1359
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1358
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0
.end method

.method private getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p2, "isMainHorizontal"    # Z

    .prologue
    .line 809
    if-eqz p2, :cond_0

    .line 810
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v0

    .line 813
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v0

    goto :goto_0
.end method

.method private getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p2, "isMainHorizontal"    # Z

    .prologue
    .line 771
    if-eqz p2, :cond_0

    .line 772
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v0

    .line 775
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v0

    goto :goto_0
.end method

.method private getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p2, "isMainHorizontal"    # Z

    .prologue
    .line 790
    if-eqz p2, :cond_0

    .line 791
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v0

    .line 794
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v0

    goto :goto_0
.end method

.method private getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p2, "isMainHorizontal"    # Z

    .prologue
    .line 752
    if-eqz p2, :cond_0

    .line 753
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v0

    .line 756
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v0

    goto :goto_0
.end method

.method private getFlexItemSizeCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p2, "isMainHorizontal"    # Z

    .prologue
    .line 732
    if-eqz p2, :cond_0

    .line 733
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v0

    .line 736
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private getFlexItemSizeMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p2, "isMainHorizontal"    # Z

    .prologue
    .line 717
    if-eqz p2, :cond_0

    .line 718
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v0

    .line 721
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getPaddingEndCross(Z)I
    .locals 1
    .param p1, "isMainHorizontal"    # Z

    .prologue
    .line 672
    if-eqz p1, :cond_0

    .line 673
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v0

    .line 676
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingEnd()I

    move-result v0

    goto :goto_0
.end method

.method private getPaddingEndMain(Z)I
    .locals 1
    .param p1, "isMainHorizontal"    # Z

    .prologue
    .line 644
    if-eqz p1, :cond_0

    .line 645
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingEnd()I

    move-result v0

    .line 648
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v0

    goto :goto_0
.end method

.method private getPaddingStartCross(Z)I
    .locals 1
    .param p1, "isMainHorizontal"    # Z

    .prologue
    .line 658
    if-eqz p1, :cond_0

    .line 659
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v0

    .line 662
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingStart()I

    move-result v0

    goto :goto_0
.end method

.method private getPaddingStartMain(Z)I
    .locals 1
    .param p1, "isMainHorizontal"    # Z

    .prologue
    .line 630
    if-eqz p1, :cond_0

    .line 631
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingStart()I

    move-result v0

    .line 634
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v0

    goto :goto_0
.end method

.method private getViewMeasuredSizeCross(Landroid/view/View;Z)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isMainHorizontal"    # Z

    .prologue
    .line 702
    if-eqz p2, :cond_0

    .line 703
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 706
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0
.end method

.method private getViewMeasuredSizeMain(Landroid/view/View;Z)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isMainHorizontal"    # Z

    .prologue
    .line 687
    if-eqz p2, :cond_0

    .line 688
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 691
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "childCount"    # I
    .param p3, "flexLine"    # Lcom/google/android/flexbox/FlexLine;

    .prologue
    .line 851
    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWrapRequired(Landroid/view/View;IIIILcom/google/android/flexbox/FlexItem;II)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # I
    .param p3, "maxSize"    # I
    .param p4, "currentLength"    # I
    .param p5, "childLength"    # I
    .param p6, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p7, "index"    # I
    .param p8, "indexInFlexLine"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 832
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v3

    if-nez v3, :cond_1

    .line 846
    :cond_0
    :goto_0
    return v2

    .line 835
    :cond_1
    invoke-interface {p6}, Lcom/google/android/flexbox/FlexItem;->isWrapBefore()Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v1

    .line 836
    goto :goto_0

    .line 838
    :cond_2
    if-eqz p2, :cond_0

    .line 841
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 842
    invoke-interface {v3, p1, p7, p8}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthMainAxis(Landroid/view/View;II)I

    move-result v0

    .line 843
    .local v0, "decorationLength":I
    if-lez v0, :cond_3

    .line 844
    add-int/2addr p5, v0

    .line 846
    :cond_3
    add-int v3, p4, p5

    if-ge p3, v3, :cond_4

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .locals 29
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "flexLine"    # Lcom/google/android/flexbox/FlexLine;
    .param p4, "maxMainSize"    # I
    .param p5, "paddingAlongMainAxis"    # I
    .param p6, "calledRecursively"    # Z

    .prologue
    .line 1182
    move-object/from16 v0, p3

    iget v0, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v27, v0

    .line 1183
    .local v27, "sizeBeforeShrink":I
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v0, p4

    if-le v0, v4, :cond_1

    .line 1345
    :cond_0
    :goto_0
    return-void

    .line 1186
    :cond_1
    const/16 v22, 0x0

    .line 1187
    .local v22, "needsReshrink":Z
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v4, v4, p4

    int-to-float v4, v4

    move-object/from16 v0, p3

    iget v5, v0, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    div-float v28, v4, v5

    .line 1188
    .local v28, "unitShrink":F
    const/4 v11, 0x0

    .line 1189
    .local v11, "accumulatedRoundError":F
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int v4, v4, p5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1200
    const/16 v21, 0x0

    .line 1201
    .local v21, "largestCrossSize":I
    if-nez p6, :cond_2

    .line 1202
    const/high16 v4, -0x80000000

    move-object/from16 v0, p3

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1204
    :cond_2
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    move/from16 v0, v19

    if-ge v0, v4, :cond_15

    .line 1205
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int v20, v4, v19

    .line 1206
    .local v20, "index":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    move/from16 v0, v20

    invoke-interface {v4, v0}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v12

    .line 1207
    .local v12, "child":Landroid/view/View;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    .line 1204
    :cond_3
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1210
    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/google/android/flexbox/FlexItem;

    .line 1211
    .local v18, "flexItem":Lcom/google/android/flexbox/FlexItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v17

    .line 1212
    .local v17, "flexDirection":I
    if-eqz v17, :cond_5

    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_d

    .line 1215
    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1216
    .local v15, "childMeasuredWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v4, :cond_6

    .line 1222
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v4, v4, v20

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v15

    .line 1224
    :cond_6
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 1225
    .local v14, "childMeasuredHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v4, :cond_7

    .line 1227
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v4, v4, v20

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v14

    .line 1229
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v4, v4, v20

    if-nez v4, :cond_a

    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    .line 1230
    int-to-float v4, v15

    .line 1231
    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v5

    mul-float v5, v5, v28

    sub-float v26, v4, v5

    .line 1232
    .local v26, "rawCalculatedWidth":F
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_8

    .line 1233
    add-float v26, v26, v11

    .line 1234
    const/4 v11, 0x0

    .line 1236
    :cond_8
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v24

    .line 1237
    .local v24, "newWidth":I
    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v4

    move/from16 v0, v24

    if-ge v0, v4, :cond_b

    .line 1244
    const/16 v22, 0x1

    .line 1245
    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v24

    .line 1246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v20

    .line 1247
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 1258
    :cond_9
    :goto_3
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/flexbox/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v13

    .line 1260
    .local v13, "childHeightMeasureSpec":I
    const/high16 v4, 0x40000000    # 2.0f

    .line 1261
    move/from16 v0, v24

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 1262
    .local v16, "childWidthMeasureSpec":I
    move/from16 v0, v16

    invoke-virtual {v12, v0, v13}, Landroid/view/View;->measure(II)V

    .line 1264
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1265
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 1266
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v13, v12}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    move/from16 v0, v20

    invoke-interface {v4, v0, v12}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 1271
    .end local v13    # "childHeightMeasureSpec":I
    .end local v16    # "childWidthMeasureSpec":I
    .end local v24    # "newWidth":I
    .end local v26    # "rawCalculatedWidth":F
    :cond_a
    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v4

    add-int/2addr v4, v14

    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1272
    invoke-interface {v5, v12}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1270
    move/from16 v0, v21

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 1273
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v5

    add-int/2addr v5, v15

    .line 1274
    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1336
    :goto_4
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p3

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    goto/16 :goto_2

    .line 1249
    .restart local v24    # "newWidth":I
    .restart local v26    # "rawCalculatedWidth":F
    :cond_b
    move/from16 v0, v24

    int-to-float v4, v0

    sub-float v4, v26, v4

    add-float/2addr v11, v4

    .line 1250
    float-to-double v4, v11

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_c

    .line 1251
    add-int/lit8 v24, v24, 0x1

    .line 1252
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v11, v4

    goto/16 :goto_3

    .line 1253
    :cond_c
    float-to-double v4, v11

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_9

    .line 1254
    add-int/lit8 v24, v24, -0x1

    .line 1255
    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v11, v4

    goto/16 :goto_3

    .line 1278
    .end local v14    # "childMeasuredHeight":I
    .end local v15    # "childMeasuredWidth":I
    .end local v24    # "newWidth":I
    .end local v26    # "rawCalculatedWidth":F
    :cond_d
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 1279
    .restart local v14    # "childMeasuredHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v4, :cond_e

    .line 1285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v4, v4, v20

    .line 1286
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v14

    .line 1288
    :cond_e
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1289
    .restart local v15    # "childMeasuredWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v4, :cond_f

    .line 1291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v4, v4, v20

    .line 1292
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v15

    .line 1294
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v4, v4, v20

    if-nez v4, :cond_12

    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_12

    .line 1295
    int-to-float v4, v14

    .line 1296
    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v5

    mul-float v5, v5, v28

    sub-float v25, v4, v5

    .line 1297
    .local v25, "rawCalculatedHeight":F
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_10

    .line 1298
    add-float v25, v25, v11

    .line 1299
    const/4 v11, 0x0

    .line 1301
    :cond_10
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v23

    .line 1302
    .local v23, "newHeight":I
    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_13

    .line 1304
    const/16 v22, 0x1

    .line 1305
    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v23

    .line 1306
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v20

    .line 1307
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 1318
    :cond_11
    :goto_5
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/flexbox/FlexboxHelper;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v16

    .line 1320
    .restart local v16    # "childWidthMeasureSpec":I
    const/high16 v4, 0x40000000    # 2.0f

    .line 1321
    move/from16 v0, v23

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1322
    .restart local v13    # "childHeightMeasureSpec":I
    move/from16 v0, v16

    invoke-virtual {v12, v0, v13}, Landroid/view/View;->measure(II)V

    .line 1324
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1325
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 1326
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v13, v12}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    move/from16 v0, v20

    invoke-interface {v4, v0, v12}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 1331
    .end local v13    # "childHeightMeasureSpec":I
    .end local v16    # "childWidthMeasureSpec":I
    .end local v23    # "newHeight":I
    .end local v25    # "rawCalculatedHeight":F
    :cond_12
    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v4

    add-int/2addr v4, v15

    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1332
    invoke-interface {v5, v12}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1330
    move/from16 v0, v21

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 1333
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v5

    add-int/2addr v5, v14

    .line 1334
    invoke-interface/range {v18 .. v18}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    goto/16 :goto_4

    .line 1309
    .restart local v23    # "newHeight":I
    .restart local v25    # "rawCalculatedHeight":F
    :cond_13
    move/from16 v0, v23

    int-to-float v4, v0

    sub-float v4, v25, v4

    add-float/2addr v11, v4

    .line 1310
    float-to-double v4, v11

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_14

    .line 1311
    add-int/lit8 v23, v23, 0x1

    .line 1312
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v11, v4

    goto :goto_5

    .line 1313
    :cond_14
    float-to-double v4, v11

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_11

    .line 1314
    add-int/lit8 v23, v23, -0x1

    .line 1315
    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v11, v4

    goto/16 :goto_5

    .line 1339
    .end local v12    # "child":Landroid/view/View;
    .end local v14    # "childMeasuredHeight":I
    .end local v15    # "childMeasuredWidth":I
    .end local v17    # "flexDirection":I
    .end local v18    # "flexItem":Lcom/google/android/flexbox/FlexItem;
    .end local v20    # "index":I
    .end local v23    # "newHeight":I
    .end local v25    # "rawCalculatedHeight":F
    :cond_15
    if-eqz v22, :cond_0

    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v0, v27

    if-eq v0, v4, :cond_0

    .line 1342
    const/4 v10, 0x1

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v4 .. v10}, Lcom/google/android/flexbox/FlexboxHelper;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    goto/16 :goto_0
.end method

.method private stretchViewHorizontally(Landroid/view/View;II)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "crossSize"    # I
    .param p3, "index"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 1680
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexItem;

    .line 1681
    .local v2, "flexItem":Lcom/google/android/flexbox/FlexItem;
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v5

    sub-int v5, p2, v5

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1682
    invoke-interface {v6, p1}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v6

    sub-int v4, v5, v6

    .line 1683
    .local v4, "newWidth":I
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1684
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1687
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v5, :cond_0

    .line 1693
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v6, v5, p3

    invoke-virtual {p0, v6, v7}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v3

    .line 1697
    .local v3, "measuredHeight":I
    :goto_0
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1699
    .local v0, "childHeightSpec":I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1700
    .local v1, "childWidthSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1702
    invoke-direct {p0, p3, v1, v0, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1703
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5, p3, p1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 1704
    return-void

    .line 1695
    .end local v0    # "childHeightSpec":I
    .end local v1    # "childWidthSpec":I
    .end local v3    # "measuredHeight":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .restart local v3    # "measuredHeight":I
    goto :goto_0
.end method

.method private stretchViewVertically(Landroid/view/View;II)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "crossSize"    # I
    .param p3, "index"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 1645
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexItem;

    .line 1646
    .local v2, "flexItem":Lcom/google/android/flexbox/FlexItem;
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v5

    sub-int v5, p2, v5

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1647
    invoke-interface {v6, p1}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v6

    sub-int v4, v5, v6

    .line 1648
    .local v4, "newHeight":I
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1649
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1652
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v5, :cond_0

    .line 1658
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v6, v5, p3

    invoke-virtual {p0, v6, v7}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v3

    .line 1662
    .local v3, "measuredWidth":I
    :goto_0
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1665
    .local v1, "childWidthSpec":I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1666
    .local v0, "childHeightSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1668
    invoke-direct {p0, p3, v1, v0, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1669
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5, p3, p1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 1670
    return-void

    .line 1660
    .end local v0    # "childHeightSpec":I
    .end local v1    # "childWidthSpec":I
    .end local v3    # "measuredWidth":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .restart local v3    # "measuredWidth":I
    goto :goto_0
.end method

.method private updateMeasureCache(IIILandroid/view/View;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .param p4, "view"    # Landroid/view/View;

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    if-eqz v0, :cond_0

    .line 1923
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    invoke-virtual {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxHelper;->makeCombinedLong(II)J

    move-result-wide v2

    aput-wide v2, v0, p1

    .line 1927
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v0, :cond_1

    .line 1928
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    .line 1929
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1930
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1928
    invoke-virtual {p0, v1, v2}, Lcom/google/android/flexbox/FlexboxHelper;->makeCombinedLong(II)J

    move-result-wide v2

    aput-wide v2, v0, p1

    .line 1932
    :cond_1
    return-void
.end method


# virtual methods
.method calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V
    .locals 28
    .param p1, "result"    # Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    .param p2, "mainMeasureSpec"    # I
    .param p3, "crossMeasureSpec"    # I
    .param p4, "needsCalcAmount"    # I
    .param p5, "fromIndex"    # I
    .param p6, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIIII",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p7, "existingLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->isMainAxisDirectionHorizontal()Z

    move-result v22

    .line 387
    .local v22, "isMainHorizontal":Z
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 388
    .local v6, "mainMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 390
    .local v7, "mainSize":I
    const/16 v17, 0x0

    .line 393
    .local v17, "childState":I
    if-nez p7, :cond_1

    .line 394
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v21, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    :goto_0
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    .line 401
    const/4 v4, -0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_2

    const/16 v26, 0x1

    .line 403
    .local v26, "reachedToIndex":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingStartMain(Z)I

    move-result v25

    .line 404
    .local v25, "mainPaddingStart":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingEndMain(Z)I

    move-result v24

    .line 405
    .local v24, "mainPaddingEnd":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingStartCross(Z)I

    move-result v19

    .line 406
    .local v19, "crossPaddingStart":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingEndCross(Z)I

    move-result v18

    .line 408
    .local v18, "crossPaddingEnd":I
    const/high16 v23, -0x80000000

    .line 411
    .local v23, "largestSizeInCross":I
    const/16 v27, 0x0

    .line 414
    .local v27, "sumCrossSize":I
    const/4 v12, 0x0

    .line 416
    .local v12, "indexInFlexLine":I
    new-instance v20, Lcom/google/android/flexbox/FlexLine;

    invoke-direct/range {v20 .. v20}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 417
    .local v20, "flexLine":Lcom/google/android/flexbox/FlexLine;
    move/from16 v0, p5

    move-object/from16 v1, v20

    iput v0, v1, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 418
    add-int v4, v25, v24

    move-object/from16 v0, v20

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 420
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v13

    .line 421
    .local v13, "childCount":I
    move/from16 v11, p5

    .local v11, "i":I
    :goto_2
    if-ge v11, v13, :cond_d

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4, v11}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v5

    .line 424
    .local v5, "child":Landroid/view/View;
    if-nez v5, :cond_3

    .line 425
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v11, v13, v1}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 426
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v11, v3}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    .line 421
    :cond_0
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 396
    .end local v5    # "child":Landroid/view/View;
    .end local v11    # "i":I
    .end local v12    # "indexInFlexLine":I
    .end local v13    # "childCount":I
    .end local v18    # "crossPaddingEnd":I
    .end local v19    # "crossPaddingStart":I
    .end local v20    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .end local v21    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .end local v23    # "largestSizeInCross":I
    .end local v24    # "mainPaddingEnd":I
    .end local v25    # "mainPaddingStart":I
    .end local v26    # "reachedToIndex":Z
    .end local v27    # "sumCrossSize":I
    :cond_1
    move-object/from16 v21, p7

    .restart local v21    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    goto :goto_0

    .line 401
    :cond_2
    const/16 v26, 0x0

    goto :goto_1

    .line 429
    .restart local v5    # "child":Landroid/view/View;
    .restart local v11    # "i":I
    .restart local v12    # "indexInFlexLine":I
    .restart local v13    # "childCount":I
    .restart local v18    # "crossPaddingEnd":I
    .restart local v19    # "crossPaddingStart":I
    .restart local v20    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .restart local v23    # "largestSizeInCross":I
    .restart local v24    # "mainPaddingEnd":I
    .restart local v25    # "mainPaddingStart":I
    .restart local v26    # "reachedToIndex":Z
    .restart local v27    # "sumCrossSize":I
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v8, 0x8

    if-ne v4, v8, :cond_4

    .line 430
    move-object/from16 v0, v20

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v20

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    .line 431
    move-object/from16 v0, v20

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v20

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 432
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v11, v13, v1}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 433
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v11, v3}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    goto :goto_3

    .line 438
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/google/android/flexbox/FlexItem;

    .line 440
    .local v10, "flexItem":Lcom/google/android/flexbox/FlexItem;
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v4

    const/4 v8, 0x4

    if-ne v4, v8, :cond_5

    .line 441
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemSizeMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v16

    .line 446
    .local v16, "childMainSize":I
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getFlexBasisPercent()F

    move-result v4

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_6

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v6, v4, :cond_6

    .line 448
    int-to-float v4, v7

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getFlexBasisPercent()F

    move-result v8

    mul-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 456
    :cond_6
    if-eqz v22, :cond_e

    .line 457
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v8, v25, v24

    const/4 v9, 0x1

    .line 459
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int/2addr v8, v9

    const/4 v9, 0x1

    .line 460
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int/2addr v8, v9

    .line 457
    move/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v4, v0, v8, v1}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v15

    .line 462
    .local v15, "childMainMeasureSpec":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v8, v19, v18

    const/4 v9, 0x1

    .line 464
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int/2addr v8, v9

    const/4 v9, 0x1

    .line 465
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int/2addr v8, v9

    add-int v8, v8, v27

    const/4 v9, 0x1

    .line 467
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemSizeCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    .line 462
    move/from16 v0, p3

    invoke-interface {v4, v0, v8, v9}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v14

    .line 468
    .local v14, "childCrossMeasureSpec":I
    invoke-virtual {v5, v15, v14}, Landroid/view/View;->measure(II)V

    .line 469
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15, v14, v5}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 484
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4, v11, v5}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 492
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    .line 495
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    .line 494
    move/from16 v0, v17

    invoke-static {v0, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v17

    .line 497
    move-object/from16 v0, v20

    iget v8, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 498
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v5, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getViewMeasuredSizeMain(Landroid/view/View;Z)I

    move-result v4

    .line 499
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int/2addr v4, v9

    .line 500
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int/2addr v9, v4

    move-object/from16 v4, p0

    .line 497
    invoke-direct/range {v4 .. v12}, Lcom/google/android/flexbox/FlexboxHelper;->isWrapRequired(Landroid/view/View;IIIILcom/google/android/flexbox/FlexItem;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 502
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v4

    if-lez v4, :cond_7

    .line 503
    if-lez v11, :cond_f

    add-int/lit8 v4, v11, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    .line 504
    move-object/from16 v0, v20

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int v27, v27, v4

    .line 507
    :cond_7
    if-eqz v22, :cond_10

    .line 508
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_8

    .line 516
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 518
    invoke-interface {v8}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v9}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    .line 519
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v9

    add-int/2addr v8, v9

    .line 520
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v9

    add-int/2addr v8, v9

    add-int v8, v8, v27

    .line 521
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v9

    .line 516
    move/from16 v0, p3

    invoke-interface {v4, v0, v8, v9}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v14

    .line 522
    invoke-virtual {v5, v15, v14}, Landroid/view/View;->measure(II)V

    .line 523
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    .line 545
    :cond_8
    :goto_6
    new-instance v20, Lcom/google/android/flexbox/FlexLine;

    .end local v20    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    invoke-direct/range {v20 .. v20}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 546
    .restart local v20    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 547
    add-int v4, v25, v24

    move-object/from16 v0, v20

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 548
    move-object/from16 v0, v20

    iput v11, v0, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 549
    const/4 v12, 0x0

    .line 550
    const/high16 v23, -0x80000000

    .line 555
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v4, :cond_9

    .line 556
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v8

    aput v8, v4, v11

    .line 558
    :cond_9
    move-object/from16 v0, v20

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v5, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getViewMeasuredSizeMain(Landroid/view/View;Z)I

    move-result v8

    .line 559
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int/2addr v8, v9

    .line 560
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    move-object/from16 v0, v20

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 561
    move-object/from16 v0, v20

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v8

    add-float/2addr v4, v8

    move-object/from16 v0, v20

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 562
    move-object/from16 v0, v20

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v8

    add-float/2addr v4, v8

    move-object/from16 v0, v20

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 564
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    move-object/from16 v0, v20

    invoke-interface {v4, v5, v11, v12, v0}, Lcom/google/android/flexbox/FlexContainer;->onNewFlexItemAdded(Landroid/view/View;IILcom/google/android/flexbox/FlexLine;)V

    .line 567
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v5, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getViewMeasuredSizeCross(Landroid/view/View;Z)I

    move-result v4

    .line 568
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v8

    add-int/2addr v4, v8

    .line 569
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v8

    add-int/2addr v4, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 570
    invoke-interface {v8, v5}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v8

    add-int/2addr v4, v8

    .line 566
    move/from16 v0, v23

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 574
    move-object/from16 v0, v20

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move/from16 v0, v23

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 576
    if-eqz v22, :cond_a

    .line 577
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v4

    const/4 v8, 0x2

    if-eq v4, v8, :cond_12

    .line 578
    move-object/from16 v0, v20

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 579
    invoke-virtual {v5}, Landroid/view/View;->getBaseline()I

    move-result v8

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v9

    add-int/2addr v8, v9

    .line 578
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 590
    :cond_a
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v11, v13, v1}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 591
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v11, v3}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    .line 592
    move-object/from16 v0, v20

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int v27, v27, v4

    .line 595
    :cond_b
    const/4 v4, -0x1

    move/from16 v0, p6

    if-eq v0, v4, :cond_c

    .line 596
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 597
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexLine;

    iget v4, v4, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    move/from16 v0, p6

    if-lt v4, v0, :cond_c

    move/from16 v0, p6

    if-lt v11, v0, :cond_c

    if-nez v26, :cond_c

    .line 605
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/flexbox/FlexLine;->getCrossSize()I

    move-result v4

    neg-int v0, v4

    move/from16 v27, v0

    .line 606
    const/16 v26, 0x1

    .line 608
    :cond_c
    move/from16 v0, v27

    move/from16 v1, p4

    if-le v0, v1, :cond_0

    if-eqz v26, :cond_0

    .line 620
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "flexItem":Lcom/google/android/flexbox/FlexItem;
    .end local v14    # "childCrossMeasureSpec":I
    .end local v15    # "childMainMeasureSpec":I
    .end local v16    # "childMainSize":I
    :cond_d
    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mChildState:I

    .line 621
    return-void

    .line 471
    .restart local v5    # "child":Landroid/view/View;
    .restart local v10    # "flexItem":Lcom/google/android/flexbox/FlexItem;
    .restart local v16    # "childMainSize":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v8, v19, v18

    const/4 v9, 0x0

    .line 473
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int/2addr v8, v9

    const/4 v9, 0x0

    .line 474
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int/2addr v8, v9

    add-int v8, v8, v27

    const/4 v9, 0x0

    .line 475
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemSizeCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    .line 471
    move/from16 v0, p3

    invoke-interface {v4, v0, v8, v9}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v14

    .line 476
    .restart local v14    # "childCrossMeasureSpec":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v8, v25, v24

    const/4 v9, 0x0

    .line 478
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int/2addr v8, v9

    const/4 v9, 0x0

    .line 479
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int/2addr v8, v9

    .line 476
    move/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v4, v0, v8, v1}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v15

    .line 481
    .restart local v15    # "childMainMeasureSpec":I
    invoke-virtual {v5, v14, v15}, Landroid/view/View;->measure(II)V

    .line 482
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v15, v5}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    goto/16 :goto_4

    .line 503
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 526
    :cond_10
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_8

    .line 534
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 536
    invoke-interface {v8}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v9}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    .line 537
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v9

    add-int/2addr v8, v9

    .line 538
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int v8, v8, v27

    .line 539
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v9

    .line 534
    move/from16 v0, p3

    invoke-interface {v4, v0, v8, v9}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v14

    .line 540
    invoke-virtual {v5, v14, v15}, Landroid/view/View;->measure(II)V

    .line 541
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    goto/16 :goto_6

    .line 552
    :cond_11
    move-object/from16 v0, v20

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v20

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 553
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    .line 584
    :cond_12
    move-object/from16 v0, v20

    iget v4, v0, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 585
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getBaseline()I

    move-result v9

    sub-int/2addr v8, v9

    .line 586
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v9

    add-int/2addr v8, v9

    .line 584
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    goto/16 :goto_8
.end method

.method calculateHorizontalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .locals 8
    .param p1, "result"    # Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .param p4, "needsCalcAmount"    # I
    .param p5, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p6, "existingLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 244
    return-void
.end method

.method calculateHorizontalFlexLinesToIndex(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .locals 8
    .param p1, "result"    # Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .param p4, "needsCalcAmount"    # I
    .param p5, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p6, "existingLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 275
    return-void
.end method

.method calculateVerticalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .locals 8
    .param p1, "result"    # Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .param p4, "needsCalcAmount"    # I
    .param p5, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p6, "existingLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 318
    return-void
.end method

.method calculateVerticalFlexLinesToIndex(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .locals 8
    .param p1, "result"    # Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .param p4, "needsCalcAmount"    # I
    .param p5, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p6, "existingLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 349
    return-void
.end method

.method clearFlexLines(Ljava/util/List;I)V
    .locals 8
    .param p2, "fromFlexItem"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    const-wide/16 v6, 0x0

    const/4 v4, -0x1

    .line 1951
    sget-boolean v3, Lcom/google/android/flexbox/FlexboxHelper;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1952
    :cond_0
    sget-boolean v3, Lcom/google/android/flexbox/FlexboxHelper;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1954
    :cond_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v1, v3, p2

    .line 1955
    .local v1, "fromFlexLine":I
    if-ne v1, v4, :cond_2

    .line 1956
    const/4 v1, 0x0

    .line 1961
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_3

    .line 1962
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1961
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1965
    :cond_3
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 1966
    .local v0, "fillTo":I
    if-le p2, v0, :cond_4

    .line 1967
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 1972
    :goto_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 1973
    if-le p2, v0, :cond_5

    .line 1974
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    invoke-static {v3, v6, v7}, Ljava/util/Arrays;->fill([JJ)V

    .line 1978
    :goto_2
    return-void

    .line 1969
    :cond_4
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-static {v3, p2, v0, v4}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_1

    .line 1976
    :cond_5
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    invoke-static {v3, p2, v0, v6, v7}, Ljava/util/Arrays;->fill([JIIJ)V

    goto :goto_2
.end method

.method determineMainSize(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 905
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(III)V

    .line 906
    return-void
.end method

.method determineMainSize(III)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "fromIndex"    # I

    .prologue
    .line 920
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/flexbox/FlexboxHelper;->ensureChildrenFrozen(I)V

    .line 921
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v1

    move/from16 v0, p3

    if-lt v0, v1, :cond_1

    .line 971
    :cond_0
    return-void

    .line 926
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v8

    .line 927
    .local v8, "flexDirection":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 953
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid flex direction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 930
    :pswitch_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 931
    .local v15, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 932
    .local v16, "widthSize":I
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v15, v1, :cond_3

    .line 933
    move/from16 v5, v16

    .line 937
    .local v5, "mainSize":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 938
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v2

    add-int v6, v1, v2

    .line 956
    .end local v15    # "widthMode":I
    .end local v16    # "widthSize":I
    .local v6, "paddingAlongMainAxis":I
    :goto_1
    const/4 v9, 0x0

    .line 957
    .local v9, "flexLineIndex":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v1, :cond_2

    .line 958
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v9, v1, p3

    .line 960
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v10

    .line 961
    .local v10, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    move v13, v9

    .local v13, "i":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    .local v14, "size":I
    :goto_2
    if-ge v13, v14, :cond_0

    .line 962
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexLine;

    .line 963
    .local v4, "flexLine":Lcom/google/android/flexbox/FlexLine;
    iget v1, v4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-ge v1, v5, :cond_5

    .line 964
    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    .line 961
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 935
    .end local v4    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .end local v5    # "mainSize":I
    .end local v6    # "paddingAlongMainAxis":I
    .end local v9    # "flexLineIndex":I
    .end local v10    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .end local v13    # "i":I
    .end local v14    # "size":I
    .restart local v15    # "widthMode":I
    .restart local v16    # "widthSize":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getLargestMainSize()I

    move-result v5

    .restart local v5    # "mainSize":I
    goto :goto_0

    .line 942
    .end local v5    # "mainSize":I
    .end local v15    # "widthMode":I
    .end local v16    # "widthSize":I
    :pswitch_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 943
    .local v11, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 944
    .local v12, "heightSize":I
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v11, v1, :cond_4

    .line 945
    move v5, v12

    .line 949
    .restart local v5    # "mainSize":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 950
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v2

    add-int v6, v1, v2

    .line 951
    .restart local v6    # "paddingAlongMainAxis":I
    goto :goto_1

    .line 947
    .end local v5    # "mainSize":I
    .end local v6    # "paddingAlongMainAxis":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getLargestMainSize()I

    move-result v5

    .restart local v5    # "mainSize":I
    goto :goto_4

    .line 967
    .end local v11    # "heightMode":I
    .end local v12    # "heightSize":I
    .restart local v4    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .restart local v6    # "paddingAlongMainAxis":I
    .restart local v9    # "flexLineIndex":I
    .restart local v10    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .restart local v13    # "i":I
    .restart local v14    # "size":I
    :cond_5
    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    goto :goto_3

    .line 927
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method ensureIndexToFlexLine(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    const/16 v1, 0xa

    .line 1935
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-nez v2, :cond_2

    .line 1936
    if-ge p1, v1, :cond_0

    move p1, v1

    .end local p1    # "size":I
    :cond_0
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 1942
    :cond_1
    :goto_0
    return-void

    .line 1937
    .restart local p1    # "size":I
    :cond_2
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v1, v1

    if-ge v1, p1, :cond_1

    .line 1938
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v1, v1

    mul-int/lit8 v0, v1, 0x2

    .line 1939
    .local v0, "newCapacity":I
    if-lt v0, p1, :cond_3

    .line 1940
    :goto_1
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    goto :goto_0

    :cond_3
    move v0, p1

    .line 1939
    goto :goto_1
.end method

.method ensureMeasureSpecCache(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    const/16 v1, 0xa

    .line 1876
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    if-nez v2, :cond_2

    .line 1877
    if-ge p1, v1, :cond_0

    move p1, v1

    .end local p1    # "size":I
    :cond_0
    new-array v1, p1, [J

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    .line 1883
    :cond_1
    :goto_0
    return-void

    .line 1878
    .restart local p1    # "size":I
    :cond_2
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    array-length v1, v1

    if-ge v1, p1, :cond_1

    .line 1879
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    array-length v1, v1

    mul-int/lit8 v0, v1, 0x2

    .line 1880
    .local v0, "newCapacity":I
    if-lt v0, p1, :cond_3

    .line 1881
    :goto_1
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    goto :goto_0

    :cond_3
    move v0, p1

    .line 1880
    goto :goto_1
.end method

.method ensureMeasuredSizeCache(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    const/16 v1, 0xa

    .line 1866
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-nez v2, :cond_2

    .line 1867
    if-ge p1, v1, :cond_0

    move p1, v1

    .end local p1    # "size":I
    :cond_0
    new-array v1, p1, [J

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    .line 1873
    :cond_1
    :goto_0
    return-void

    .line 1868
    .restart local p1    # "size":I
    :cond_2
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    array-length v1, v1

    if-ge v1, p1, :cond_1

    .line 1869
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    array-length v1, v1

    mul-int/lit8 v0, v1, 0x2

    .line 1870
    .local v0, "newCapacity":I
    if-lt v0, p1, :cond_3

    .line 1871
    :goto_1
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    goto :goto_0

    :cond_3
    move v0, p1

    .line 1870
    goto :goto_1
.end method

.method extractHigherInt(J)I
    .locals 3
    .param p1, "longValue"    # J

    .prologue
    .line 1900
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method extractLowerInt(J)I
    .locals 1
    .param p1, "longValue"    # J

    .prologue
    .line 1891
    long-to-int v0, p1

    return v0
.end method

.method layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flexLine"    # Lcom/google/android/flexbox/FlexLine;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    const/4 v8, 0x2

    .line 1729
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexItem;

    .line 1730
    .local v2, "flexItem":Lcom/google/android/flexbox/FlexItem;
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v6}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result v0

    .line 1731
    .local v0, "alignItems":I
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 1734
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v0

    .line 1736
    :cond_0
    iget v1, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1737
    .local v1, "crossSize":I
    packed-switch v0, :pswitch_data_0

    .line 1786
    :goto_0
    return-void

    .line 1740
    :pswitch_0
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v6}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v6

    if-eq v6, v8, :cond_1

    .line 1741
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v6

    add-int/2addr v6, p4

    .line 1742
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v7

    add-int/2addr v7, p6

    .line 1741
    invoke-virtual {p1, p3, v6, p5, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1744
    :cond_1
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v6

    sub-int v6, p4, v6

    .line 1745
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v7

    sub-int v7, p6, v7

    .line 1744
    invoke-virtual {p1, p3, v6, p5, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1749
    :pswitch_1
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v6}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v6

    if-eq v6, v8, :cond_2

    .line 1750
    iget v6, p2, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v7

    sub-int v4, v6, v7

    .line 1751
    .local v4, "marginTop":I
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1752
    add-int v6, p4, v4

    add-int v7, p6, v4

    invoke-virtual {p1, p3, v6, p5, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1754
    .end local v4    # "marginTop":I
    :cond_2
    iget v6, p2, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1755
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v7

    add-int v3, v6, v7

    .line 1756
    .local v3, "marginBottom":I
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1757
    sub-int v6, p4, v3

    sub-int v7, p6, v3

    invoke-virtual {p1, p3, v6, p5, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1761
    .end local v3    # "marginBottom":I
    :pswitch_2
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v6}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v6

    if-eq v6, v8, :cond_3

    .line 1762
    add-int v6, p4, v1

    .line 1763
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v7

    sub-int/2addr v6, v7

    add-int v7, p4, v1

    .line 1764
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v8

    sub-int/2addr v7, v8

    .line 1762
    invoke-virtual {p1, p3, v6, p5, v7}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 1768
    :cond_3
    sub-int v6, p4, v1

    .line 1769
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v7, p6, v1

    .line 1770
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 1771
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v8

    add-int/2addr v7, v8

    .line 1768
    invoke-virtual {p1, p3, v6, p5, v7}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 1775
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int v6, v1, v6

    .line 1776
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v7

    add-int/2addr v6, v7

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v5, v6, 0x2

    .line 1777
    .local v5, "topFromCrossAxis":I
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v6}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v6

    if-eq v6, v8, :cond_4

    .line 1778
    add-int v6, p4, v5

    add-int v7, p4, v5

    .line 1779
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 1778
    invoke-virtual {p1, p3, v6, p5, v7}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 1781
    :cond_4
    sub-int v6, p4, v5

    sub-int v7, p4, v5

    .line 1782
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 1781
    invoke-virtual {p1, p3, v6, p5, v7}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 1737
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flexLine"    # Lcom/google/android/flexbox/FlexLine;
    .param p3, "isRtl"    # Z
    .param p4, "left"    # I
    .param p5, "top"    # I
    .param p6, "right"    # I
    .param p7, "bottom"    # I

    .prologue
    .line 1813
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexItem;

    .line 1814
    .local v2, "flexItem":Lcom/google/android/flexbox/FlexItem;
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result v0

    .line 1815
    .local v0, "alignItems":I
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 1818
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v0

    .line 1820
    :cond_0
    iget v1, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1821
    .local v1, "crossSize":I
    packed-switch v0, :pswitch_data_0

    .line 1863
    :goto_0
    return-void

    .line 1825
    :pswitch_0
    if-nez p3, :cond_1

    .line 1826
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v5

    add-int/2addr v5, p4

    .line 1827
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v6

    add-int/2addr v6, p6

    .line 1826
    invoke-virtual {p1, v5, p5, v6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1829
    :cond_1
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v5

    sub-int v5, p4, v5

    .line 1830
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v6

    sub-int v6, p6, v6

    .line 1829
    invoke-virtual {p1, v5, p5, v6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1834
    :pswitch_1
    if-nez p3, :cond_2

    .line 1835
    add-int v5, p4, v1

    .line 1836
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int v6, p6, v1

    .line 1838
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1835
    invoke-virtual {p1, v5, p5, v6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1843
    :cond_2
    sub-int v5, p4, v1

    .line 1844
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v6, p6, v1

    .line 1846
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v7

    add-int/2addr v6, v7

    .line 1843
    invoke-virtual {p1, v5, p5, v6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1852
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1853
    .local v4, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v1, v5

    .line 1854
    invoke-static {v4}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1855
    invoke-static {v4}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    .line 1856
    .local v3, "leftFromCrossAxis":I
    if-nez p3, :cond_3

    .line 1857
    add-int v5, p4, v3

    add-int v6, p6, v3

    invoke-virtual {p1, v5, p5, v6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1859
    :cond_3
    sub-int v5, p4, v3

    sub-int v6, p6, v3

    invoke-virtual {p1, v5, p5, v6, p7}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 1821
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method makeCombinedLong(II)J
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1917
    int-to-long v0, p2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method stretchViews()V
    .locals 1

    .prologue
    .line 1558
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews(I)V

    .line 1559
    return-void
.end method

.method stretchViews(I)V
    .locals 19
    .param p1, "fromIndex"    # I

    .prologue
    .line 1574
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v15}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v15

    move/from16 v0, p1

    if-lt v0, v15, :cond_1

    .line 1635
    :cond_0
    return-void

    .line 1577
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v15}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v3

    .line 1578
    .local v3, "flexDirection":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v15}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 1579
    const/4 v6, 0x0

    .line 1580
    .local v6, "flexLineIndex":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v15, :cond_2

    .line 1581
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v6, v15, p1

    .line 1583
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v15}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v7

    .line 1584
    .local v7, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    move v8, v6

    .local v8, "i":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    .local v12, "size":I
    :goto_0
    if-ge v8, v12, :cond_0

    .line 1585
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexLine;

    .line 1586
    .local v5, "flexLine":Lcom/google/android/flexbox/FlexLine;
    const/4 v11, 0x0

    .local v11, "j":I
    iget v10, v5, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .local v10, "itemCount":I
    :goto_1
    if-ge v11, v10, :cond_6

    .line 1587
    iget v15, v5, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int v14, v15, v11

    .line 1588
    .local v14, "viewIndex":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v15}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v15

    if-lt v11, v15, :cond_4

    .line 1586
    :cond_3
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1591
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v15, v14}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v13

    .line 1592
    .local v13, "view":Landroid/view/View;
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 1595
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexItem;

    .line 1596
    .local v4, "flexItem":Lcom/google/android/flexbox/FlexItem;
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    .line 1597
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 1600
    :cond_5
    packed-switch v3, :pswitch_data_0

    .line 1610
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid flex direction: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1603
    :pswitch_0
    iget v15, v5, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15, v14}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    goto :goto_2

    .line 1607
    :pswitch_1
    iget v15, v5, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15, v14}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewHorizontally(Landroid/view/View;II)V

    goto :goto_2

    .line 1584
    .end local v4    # "flexItem":Lcom/google/android/flexbox/FlexItem;
    .end local v13    # "view":Landroid/view/View;
    .end local v14    # "viewIndex":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1616
    .end local v5    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .end local v6    # "flexLineIndex":I
    .end local v7    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .end local v8    # "i":I
    .end local v10    # "itemCount":I
    .end local v11    # "j":I
    .end local v12    # "size":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v15}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexLine;

    .line 1617
    .restart local v5    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    iget-object v0, v5, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1618
    .local v9, "index":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    move-object/from16 v17, v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-interface/range {v17 .. v18}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v13

    .line 1619
    .restart local v13    # "view":Landroid/view/View;
    packed-switch v3, :pswitch_data_1

    .line 1629
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid flex direction: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1622
    :pswitch_2
    iget v0, v5, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move/from16 v17, v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v13, v1, v2}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    goto :goto_3

    .line 1626
    :pswitch_3
    iget v0, v5, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move/from16 v17, v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v13, v1, v2}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewHorizontally(Landroid/view/View;II)V

    goto :goto_3

    .line 1600
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1619
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
