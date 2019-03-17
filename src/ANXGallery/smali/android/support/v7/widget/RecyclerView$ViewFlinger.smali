.class Landroid/support/v7/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field private mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "this$0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v1, 0x0

    .line 4917
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4908
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4912
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4915
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4918
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 4919
    return-void
.end method

.method static synthetic access$400(Landroid/support/v7/widget/RecyclerView$ViewFlinger;)Landroid/widget/OverScroller;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    .prologue
    .line 4904
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method private computeScrollDuration(IIII)I
    .locals 14
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .prologue
    .line 5098
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5099
    .local v1, "absDx":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 5100
    .local v2, "absDy":I
    if-le v1, v2, :cond_0

    const/4 v9, 0x1

    .line 5101
    .local v9, "horizontal":Z
    :goto_0
    mul-int v11, p3, p3

    mul-int v12, p4, p4

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v10, v12

    .line 5102
    .local v10, "velocity":I
    mul-int v11, p1, p1

    mul-int v12, p2, p2

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v4, v12

    .line 5103
    .local v4, "delta":I
    if-eqz v9, :cond_1

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    .line 5104
    .local v3, "containerSize":I
    :goto_1
    div-int/lit8 v8, v3, 0x2

    .line 5105
    .local v8, "halfContainerSize":I
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v13, v4

    mul-float/2addr v12, v13

    int-to-float v13, v3

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 5106
    .local v6, "distanceRatio":F
    int-to-float v11, v8

    int-to-float v12, v8

    .line 5107
    invoke-direct {p0, v6}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float v5, v11, v12

    .line 5110
    .local v5, "distance":F
    if-lez v10, :cond_2

    .line 5111
    const/high16 v11, 0x447a0000    # 1000.0f

    int-to-float v12, v10

    div-float v12, v5, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    mul-int/lit8 v7, v11, 0x4

    .line 5116
    .end local v1    # "absDx":I
    .local v7, "duration":I
    :goto_2
    const/16 v11, 0x7d0

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    return v11

    .line 5100
    .end local v3    # "containerSize":I
    .end local v4    # "delta":I
    .end local v5    # "distance":F
    .end local v6    # "distanceRatio":F
    .end local v7    # "duration":I
    .end local v8    # "halfContainerSize":I
    .end local v9    # "horizontal":Z
    .end local v10    # "velocity":I
    .restart local v1    # "absDx":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 5103
    .restart local v4    # "delta":I
    .restart local v9    # "horizontal":Z
    .restart local v10    # "velocity":I
    :cond_1
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    goto :goto_1

    .line 5113
    .restart local v3    # "containerSize":I
    .restart local v5    # "distance":F
    .restart local v6    # "distanceRatio":F
    .restart local v8    # "halfContainerSize":I
    :cond_2
    if-eqz v9, :cond_3

    .end local v1    # "absDx":I
    :goto_3
    int-to-float v0, v1

    .line 5114
    .local v0, "absDelta":F
    int-to-float v11, v3

    div-float v11, v0, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    const/high16 v12, 0x43960000    # 300.0f

    mul-float/2addr v11, v12

    float-to-int v7, v11

    .restart local v7    # "duration":I
    goto :goto_2

    .end local v0    # "absDelta":F
    .end local v7    # "duration":I
    .restart local v1    # "absDx":I
    :cond_3
    move v1, v2

    .line 5113
    goto :goto_3
.end method

.method private disableRunOnAnimationRequests()V
    .locals 1

    .prologue
    .line 5055
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 5056
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 5057
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 2
    .param p1, "f"    # F

    .prologue
    .line 5092
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 5093
    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    .line 5094
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private enableRunOnAnimationRequests()V
    .locals 1

    .prologue
    .line 5060
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 5061
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_0

    .line 5062
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 5064
    :cond_0
    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 9
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 5076
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 5077
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 5078
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 5080
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 5081
    return-void
.end method

.method postOnAnimation()V
    .locals 1

    .prologue
    .line 5067
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    .line 5068
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 5073
    :goto_0
    return-void

    .line 5070
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5071
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 25

    .prologue
    .line 4923
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_0

    .line 4924
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->stop()V

    .line 5052
    :goto_0
    return-void

    .line 4927
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    .line 4928
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 4931
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v18, v0

    .line 4932
    .local v18, "scroller":Landroid/widget/OverScroller;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    move-object/from16 v19, v0

    .line 4933
    .local v19, "smoothScroller":Landroid/support/v7/widget/RecyclerView$SmoothScroller;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 4934
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$500(Landroid/support/v7/widget/RecyclerView;)[I

    move-result-object v5

    .line 4935
    .local v5, "scrollConsumed":[I
    invoke-virtual/range {v18 .. v18}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v23

    .line 4936
    .local v23, "x":I
    invoke-virtual/range {v18 .. v18}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v24

    .line 4937
    .local v24, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v3, v23, v2

    .line 4938
    .local v3, "dx":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v4, v24, v2

    .line 4939
    .local v4, "dy":I
    const/16 v17, 0x0

    .line 4940
    .local v17, "hresult":I
    const/4 v8, 0x0

    .line 4941
    .local v8, "vresult":I
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4942
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 4943
    const/4 v9, 0x0

    .local v9, "overscrollX":I
    const/4 v10, 0x0

    .line 4945
    .local v10, "overscrollY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4946
    const/4 v2, 0x0

    aget v2, v5, v2

    sub-int/2addr v3, v2

    .line 4947
    const/4 v2, 0x1

    aget v2, v5, v2

    sub-int/2addr v4, v2

    .line 4950
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_22

    .line 4951
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 4952
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 4953
    const-string v2, "RV Scroll"

    invoke-static {v2}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 4954
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->fillRemainingScrollValues(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 4955
    if-eqz v3, :cond_21

    .line 4956
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2, v3, v6, v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v7

    .line 4957
    .end local v17    # "hresult":I
    .local v7, "hresult":I
    sub-int v9, v3, v7

    .line 4959
    :goto_1
    if-eqz v4, :cond_2

    .line 4960
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2, v4, v6, v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v8

    .line 4961
    sub-int v10, v4, v8

    .line 4963
    :cond_2
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 4964
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    .line 4966
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 4967
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 4969
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4970
    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4971
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v13

    .line 4972
    .local v13, "adapterSize":I
    if-nez v13, :cond_17

    .line 4973
    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 4982
    .end local v13    # "adapterSize":I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 4983
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4985
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v2

    const/4 v6, 0x2

    if-eq v2, v6, :cond_5

    .line 4986
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 4989
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v6 .. v12}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[II)Z

    move-result v2

    if-nez v2, :cond_c

    if-nez v9, :cond_6

    if-eqz v10, :cond_c

    .line 4992
    :cond_6
    invoke-virtual/range {v18 .. v18}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v20, v0

    .line 4994
    .local v20, "vel":I
    const/16 v21, 0x0

    .line 4995
    .local v21, "velX":I
    move/from16 v0, v23

    if-eq v9, v0, :cond_7

    .line 4996
    if-gez v9, :cond_19

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v21, v0

    .line 4999
    :cond_7
    :goto_3
    const/16 v22, 0x0

    .line 5000
    .local v22, "velY":I
    move/from16 v0, v24

    if-eq v10, v0, :cond_8

    .line 5001
    if-gez v10, :cond_1b

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v22, v0

    .line 5004
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v2

    const/4 v6, 0x2

    if-eq v2, v6, :cond_9

    .line 5005
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/widget/RecyclerView;->absorbGlows(II)V

    .line 5007
    :cond_9
    if-nez v21, :cond_a

    move/from16 v0, v23

    if-eq v9, v0, :cond_a

    invoke-virtual/range {v18 .. v18}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    if-nez v22, :cond_b

    move/from16 v0, v24

    if-eq v10, v0, :cond_b

    .line 5008
    invoke-virtual/range {v18 .. v18}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v2

    if-nez v2, :cond_c

    .line 5009
    :cond_b
    invoke-virtual/range {v18 .. v18}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5012
    .end local v20    # "vel":I
    .end local v21    # "velX":I
    .end local v22    # "velY":I
    :cond_c
    if-nez v7, :cond_d

    if-eqz v8, :cond_e

    .line 5013
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v7, v8}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 5016
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$700(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 5017
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 5020
    :cond_f
    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_1d

    if-ne v8, v4, :cond_1d

    const/16 v16, 0x1

    .line 5022
    .local v16, "fullyConsumedVertical":Z
    :goto_5
    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_1e

    if-ne v7, v3, :cond_1e

    const/4 v15, 0x1

    .line 5024
    .local v15, "fullyConsumedHorizontal":Z
    :goto_6
    if-nez v3, :cond_10

    if-eqz v4, :cond_11

    :cond_10
    if-nez v15, :cond_11

    if-eqz v16, :cond_1f

    :cond_11
    const/4 v14, 0x1

    .line 5027
    .local v14, "fullyConsumedAny":Z
    :goto_7
    invoke-virtual/range {v18 .. v18}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_12

    if-nez v14, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, 0x1

    .line 5028
    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->hasNestedScrollingParent(I)Z

    move-result v2

    if-nez v2, :cond_20

    .line 5030
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 5031
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$800()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 5032
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v2}, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    .line 5034
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll(I)V

    .line 5043
    .end local v3    # "dx":I
    .end local v4    # "dy":I
    .end local v5    # "scrollConsumed":[I
    .end local v7    # "hresult":I
    .end local v8    # "vresult":I
    .end local v9    # "overscrollX":I
    .end local v10    # "overscrollY":I
    .end local v14    # "fullyConsumedAny":Z
    .end local v15    # "fullyConsumedHorizontal":Z
    .end local v16    # "fullyConsumedVertical":Z
    .end local v23    # "x":I
    .end local v24    # "y":I
    :cond_14
    :goto_8
    if-eqz v19, :cond_16

    .line 5044
    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 5045
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v2, v6}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$600(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    .line 5047
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-nez v2, :cond_16

    .line 5048
    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 5051
    :cond_16
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    goto/16 :goto_0

    .line 4974
    .restart local v3    # "dx":I
    .restart local v4    # "dy":I
    .restart local v5    # "scrollConsumed":[I
    .restart local v7    # "hresult":I
    .restart local v8    # "vresult":I
    .restart local v9    # "overscrollX":I
    .restart local v10    # "overscrollY":I
    .restart local v13    # "adapterSize":I
    .restart local v23    # "x":I
    .restart local v24    # "y":I
    :cond_17
    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v2

    if-lt v2, v13, :cond_18

    .line 4975
    add-int/lit8 v2, v13, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 4976
    sub-int v2, v3, v9

    sub-int v6, v4, v10

    move-object/from16 v0, v19

    invoke-static {v0, v2, v6}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$600(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    goto/16 :goto_2

    .line 4978
    :cond_18
    sub-int v2, v3, v9

    sub-int v6, v4, v10

    move-object/from16 v0, v19

    invoke-static {v0, v2, v6}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$600(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    goto/16 :goto_2

    .line 4996
    .end local v13    # "adapterSize":I
    .restart local v20    # "vel":I
    .restart local v21    # "velX":I
    :cond_19
    if-lez v9, :cond_1a

    move/from16 v21, v20

    goto/16 :goto_3

    :cond_1a
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 5001
    .restart local v22    # "velY":I
    :cond_1b
    if-lez v10, :cond_1c

    move/from16 v22, v20

    goto/16 :goto_4

    :cond_1c
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 5020
    .end local v20    # "vel":I
    .end local v21    # "velX":I
    .end local v22    # "velY":I
    :cond_1d
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 5022
    .restart local v16    # "fullyConsumedVertical":Z
    :cond_1e
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 5024
    .restart local v15    # "fullyConsumedHorizontal":Z
    :cond_1f
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 5036
    .restart local v14    # "fullyConsumedAny":Z
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 5037
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    if-eqz v2, :cond_14

    .line 5038
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v6, v3, v4}, Landroid/support/v7/widget/GapWorker;->postFromTraversal(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_8

    .end local v7    # "hresult":I
    .end local v14    # "fullyConsumedAny":Z
    .end local v15    # "fullyConsumedHorizontal":Z
    .end local v16    # "fullyConsumedVertical":Z
    .restart local v17    # "hresult":I
    :cond_21
    move/from16 v7, v17

    .end local v17    # "hresult":I
    .restart local v7    # "hresult":I
    goto/16 :goto_1

    .end local v7    # "hresult":I
    .restart local v17    # "hresult":I
    :cond_22
    move/from16 v7, v17

    .end local v17    # "hresult":I
    .restart local v7    # "hresult":I
    goto/16 :goto_2
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v0, 0x0

    .line 5084
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    .line 5085
    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .prologue
    .line 5120
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 5121
    return-void
.end method

.method public smoothScrollBy(IIII)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .prologue
    .line 5088
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    .line 5089
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v1, 0x0

    .line 5129
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 5130
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 5131
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 5133
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 5134
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 5135
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 5136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 5140
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 5142
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 5143
    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v0, 0x0

    .line 5124
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    if-nez p3, :cond_0

    sget-object p3, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .end local p3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 5126
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 5146
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5147
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5148
    return-void
.end method
