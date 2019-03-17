.class Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;
.super Ljava/lang/Object;
.source "EditableListViewWrapperDeprecated.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Scroll2PickHelper"
.end annotation


# instance fields
.field private mHasEverPickLongTouchPosition:Z

.field private mLastPosition:I

.field private mLastX:F

.field private mLastY:F

.field private mLongTouchPosition:I

.field private mMathStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionPosition:I

.field private mMotionX:F

.field private mScollXMode2PickEnable:Z

.field private mScollYMode2PickEnable:Z

.field private mScollYMode2PickEnableAfterLeft:Z

.field private mScollYMode2PickEnableAfterRight:Z

.field final synthetic this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;)V
    .locals 1
    .param p1, "this$1"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    .prologue
    .line 728
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLongTouchPosition:I

    .line 746
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;
    .param p1, "x1"    # I

    .prologue
    .line 728
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->setLongPressPosition(I)V

    return-void
.end method

.method private ifScrollYModeEnable(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x1

    .line 915
    iget-boolean v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnable:Z

    if-nez v1, :cond_2

    .line 916
    iget v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMotionX:F

    sub-float v1, p1, v1

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget-boolean v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnableAfterRight:Z

    if-nez v1, :cond_3

    .line 919
    iput-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnableAfterRight:Z

    .line 924
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnableAfterRight:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnableAfterLeft:Z

    if-eqz v1, :cond_4

    :cond_1
    :goto_1
    iput-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnable:Z

    .line 926
    iget-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnable:Z

    if-eqz v0, :cond_2

    .line 927
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1400(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMotionPosition:I

    .line 929
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    iget v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMotionPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    :cond_2
    return-void

    .line 920
    :cond_3
    iget v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMotionX:F

    sub-float v1, p1, v1

    const/high16 v2, -0x3ee00000    # -10.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnableAfterLeft:Z

    if-nez v1, :cond_0

    .line 922
    iput-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnableAfterLeft:Z

    goto :goto_0

    .line 924
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private interceptEvent()Z
    .locals 1

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mScollXMode2PickEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnable:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, -0x1

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 832
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 833
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 834
    .local v5, "y":F
    iget v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLastX:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v9, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLastY:F

    sub-float v9, v5, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v6, v6, v9

    if-ltz v6, :cond_4

    iget v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLastX:F

    sub-float v6, v4, v6

    .line 835
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v10

    if-lez v6, :cond_4

    .line 836
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v6, v6, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1400(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView;

    move-result-object v6

    float-to-int v9, v4

    float-to-int v10, v5

    invoke-virtual {v6, v9, v10}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v1

    .line 838
    .local v1, "position":I
    if-eq v1, v11, :cond_1

    iget v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLastPosition:I

    if-eq v1, v6, :cond_1

    .line 839
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v6, v6, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1400(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView;

    move-result-object v6

    check-cast v6, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .line 840
    invoke-virtual {v6, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getItemIndexByItemPosition(I)I

    move-result v2

    .line 841
    .local v2, "positionExcludeHeader":I
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v6, v6, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .line 842
    invoke-static {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$800(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    move-result-object v6

    .line 843
    invoke-virtual {v6, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->getCheckState(I)Z

    move-result v6

    if-nez v6, :cond_3

    move v6, v7

    .line 841
    :goto_0
    invoke-direct {p0, v1, v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->pickOrNotByPosition(IZ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 844
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v6, v6, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$900(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)V

    .line 845
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v6, v6, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1100(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->access$700(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    move-result-object v6

    iget-object v8, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v8, v8, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v8}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1000(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/view/ActionMode;

    move-result-object v8

    invoke-interface {v6, v8, v7}, Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;->onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 846
    iput-boolean v7, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mScollXMode2PickEnable:Z

    .line 848
    iget v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLongTouchPosition:I

    if-ne v2, v6, :cond_0

    .line 849
    iput-boolean v7, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mHasEverPickLongTouchPosition:Z

    .line 853
    :cond_0
    iput v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLastPosition:I

    .line 855
    .end local v2    # "positionExcludeHeader":I
    :cond_1
    invoke-direct {p0, v4, v5}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->ifScrollYModeEnable(FF)V

    .line 909
    .end local v1    # "position":I
    :cond_2
    :goto_1
    iput v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLastX:F

    .line 910
    iput v5, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLastY:F

    .line 911
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->interceptEvent()Z

    move-result v6

    return v6

    .restart local v1    # "position":I
    .restart local v2    # "positionExcludeHeader":I
    :cond_3
    move v6, v8

    .line 843
    goto :goto_0

    .line 857
    .end local v1    # "position":I
    .end local v2    # "positionExcludeHeader":I
    :cond_4
    iget-boolean v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnable:Z

    if-eqz v6, :cond_2

    .line 858
    iget v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLastY:F

    sub-float v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v10

    if-lez v6, :cond_2

    iget v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLastX:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v9, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLastY:F

    sub-float v9, v5, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v6, v6, v9

    if-gez v6, :cond_2

    .line 859
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v6, v6, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1400(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView;

    move-result-object v6

    float-to-int v9, v4

    float-to-int v10, v5

    invoke-virtual {v6, v9, v10}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v1

    .line 861
    .restart local v1    # "position":I
    if-eq v1, v11, :cond_2

    iget v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLastPosition:I

    if-eq v1, v6, :cond_2

    .line 863
    invoke-direct {p0, v1, v7}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->pickOrNotByPosition(IZ)Z

    .line 864
    iput v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLastPosition:I

    .line 865
    iget v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMotionPosition:I

    if-ge v1, v6, :cond_a

    .line 866
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    .line 867
    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 868
    :cond_5
    iget v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMotionPosition:I

    add-int/lit8 v3, v6, -0x1

    .local v3, "temp":I
    :goto_2
    if-lt v3, v1, :cond_9

    .line 869
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 870
    :cond_6
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 874
    .end local v3    # "temp":I
    :cond_8
    :goto_3
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v1, :cond_9

    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    .line 875
    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 876
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    .line 877
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 876
    invoke-direct {p0, v6, v8}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->pickOrNotByPosition(IZ)Z

    goto :goto_3

    .line 880
    :cond_9
    iget v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMotionPosition:I

    .restart local v3    # "temp":I
    :goto_4
    if-lt v3, v1, :cond_10

    .line 881
    invoke-direct {p0, v3, v7}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->pickOrNotByPosition(IZ)Z

    .line 880
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 884
    .end local v3    # "temp":I
    :cond_a
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    .line 885
    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v1, v6, :cond_e

    .line 886
    :cond_b
    iget v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMotionPosition:I

    add-int/lit8 v3, v6, 0x1

    .restart local v3    # "temp":I
    :goto_5
    if-gt v3, v1, :cond_f

    .line 887
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v3, v6, :cond_d

    .line 888
    :cond_c
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 892
    .end local v3    # "temp":I
    :cond_e
    :goto_6
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v1, :cond_f

    .line 893
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 894
    .local v0, "pop":I
    invoke-direct {p0, v0, v8}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->pickOrNotByPosition(IZ)Z

    goto :goto_6

    .line 898
    .end local v0    # "pop":I
    :cond_f
    iget v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMotionPosition:I

    .restart local v3    # "temp":I
    :goto_7
    if-gt v3, v1, :cond_10

    .line 899
    invoke-direct {p0, v3, v7}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->pickOrNotByPosition(IZ)Z

    .line 898
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 903
    :cond_10
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v6, v6, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$900(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)V

    .line 904
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v6, v6, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1100(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->access$700(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    move-result-object v6

    iget-object v8, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v8, v8, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v8}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1000(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/view/ActionMode;

    move-result-object v8

    invoke-interface {v6, v8, v7}, Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;->onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V

    goto/16 :goto_1
.end method

.method private pickOrNotByPosition(IZ)Z
    .locals 5
    .param p1, "position"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 935
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v3, v3, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1400(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v4, v4, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .line 936
    invoke-static {v4}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1400(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, p1, v4

    .line 935
    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 938
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 939
    check-cast v3, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;

    .line 940
    invoke-interface {v3}, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;->getBackgroundImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 941
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v3, v3, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1400(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView;

    move-result-object v3

    check-cast v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .line 942
    invoke-virtual {v3, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getItemIndexByItemPosition(I)I

    move-result v1

    .line 943
    .local v1, "positionExcludeHeader":I
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    invoke-virtual {v3, v0, v1, p2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->startScaleItemImageViewAnimationByScrollPicked(Landroid/widget/ImageView;IZ)V

    .line 945
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v3, v3, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$800(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->setCheckState(IZ)V

    .line 946
    check-cast v2, Lcom/miui/gallery/ui/Checkable;

    .end local v2    # "view":Landroid/view/View;
    invoke-interface {v2, p2}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    .line 948
    const/4 v3, 0x1

    .line 950
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "positionExcludeHeader":I
    :goto_0
    return v3

    .restart local v2    # "view":Landroid/view/View;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setLongPressPosition(I)V
    .locals 1
    .param p1, "positionExcludeHeader"    # I

    .prologue
    .line 827
    iput p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLongTouchPosition:I

    .line 828
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mHasEverPickLongTouchPosition:Z

    .line 829
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 754
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 755
    .local v6, "actionMasked":I
    packed-switch v6, :pswitch_data_0

    .line 823
    :cond_0
    :goto_0
    return v4

    .line 757
    :pswitch_0
    iput-boolean v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mScollXMode2PickEnable:Z

    .line 758
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMotionX:F

    .line 759
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLastX:F

    .line 760
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLastY:F

    .line 761
    iput v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLastPosition:I

    .line 762
    iput-boolean v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnable:Z

    .line 763
    iput-boolean v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnableAfterLeft:Z

    .line 764
    iput-boolean v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnableAfterRight:Z

    .line 765
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_0

    .line 772
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->isInChoiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->interceptEvent()Z

    move-result v9

    .line 776
    .local v9, "interceptBefore":Z
    invoke-direct {p0, p2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->onTouchMove(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 777
    .local v8, "interceptAfter":Z
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$000(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)I

    move-result v0

    if-eqz v0, :cond_1

    if-nez v9, :cond_1

    if-eqz v8, :cond_1

    .line 783
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1400(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 785
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1400(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 787
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 788
    .local v7, "fakeEvent":Landroid/view/MotionEvent;
    invoke-virtual {v7, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 789
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1400(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 791
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1400(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 793
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1400(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v2, v2, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$600(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .end local v7    # "fakeEvent":Landroid/view/MotionEvent;
    :cond_1
    move v4, v8

    .line 795
    goto/16 :goto_0

    .line 800
    .end local v8    # "interceptAfter":Z
    .end local v9    # "interceptBefore":Z
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->isInChoiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 804
    iget-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mHasEverPickLongTouchPosition:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLongTouchPosition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 805
    iput-boolean v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mHasEverPickLongTouchPosition:Z

    .line 806
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1400(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView;

    move-result-object v0

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLongTouchPosition:I

    .line 807
    invoke-virtual {v0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildViewByItemIndex(I)Landroid/view/View;

    move-result-object v10

    .line 808
    .local v10, "view":Landroid/view/View;
    instance-of v0, v10, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;

    if-eqz v0, :cond_2

    move-object v0, v10

    .line 809
    check-cast v0, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;

    .line 810
    invoke-interface {v0}, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;->getBackgroundImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 811
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLongTouchPosition:I

    const/16 v5, 0xc8

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->startScaleItemImageViewAnimation(Landroid/widget/ImageView;IZII)V

    .line 813
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$800(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    move-result-object v0

    iget v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->mLongTouchPosition:I

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->setCheckState(IZ)V

    .line 814
    check-cast v10, Lcom/miui/gallery/ui/Checkable;

    .end local v10    # "view":Landroid/view/View;
    invoke-interface {v10, v3}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    .line 815
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$900(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)V

    .line 816
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1100(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->access$700(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v2, v2, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1000(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/view/ActionMode;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;->onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 820
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager$Scroll2PickHelper;->interceptEvent()Z

    move-result v4

    goto/16 :goto_0

    .line 755
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
