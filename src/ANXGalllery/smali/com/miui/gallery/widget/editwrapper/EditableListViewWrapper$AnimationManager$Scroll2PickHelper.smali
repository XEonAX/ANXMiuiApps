.class Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;
.super Ljava/lang/Object;
.source "EditableListViewWrapper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;
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

.field final synthetic this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;)V
    .locals 1
    .param p1, "this$1"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLongTouchPosition:I

    .line 722
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;
    .param p1, "x1"    # I

    .prologue
    .line 704
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->setLongPressPosition(I)V

    return-void
.end method

.method private ifScrollYModeEnable(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x1

    .line 891
    iget-boolean v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnable:Z

    if-nez v2, :cond_2

    .line 892
    iget v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMotionX:F

    sub-float v2, p1, v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget-boolean v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnableAfterRight:Z

    if-nez v2, :cond_3

    .line 895
    iput-boolean v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnableAfterRight:Z

    .line 900
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnableAfterRight:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnableAfterLeft:Z

    if-eqz v2, :cond_4

    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnable:Z

    .line 902
    iget-boolean v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnable:Z

    if-eqz v1, :cond_2

    .line 903
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v1, v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1300(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->findChildViewUnderForExternal(FF)Landroid/view/View;

    move-result-object v0

    .line 904
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 905
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v1, v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1300(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildAdapterPositionForExternal(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMotionPosition:I

    .line 906
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    iget v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMotionPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    return-void

    .line 896
    :cond_3
    iget v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMotionX:F

    sub-float v2, p1, v2

    const/high16 v3, -0x3ee00000    # -10.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnableAfterLeft:Z

    if-nez v2, :cond_0

    .line 898
    iput-boolean v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnableAfterLeft:Z

    goto :goto_0

    .line 900
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private interceptEvent()Z
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mScollXMode2PickEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnable:Z

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

    .line 809
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 810
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 811
    .local v5, "y":F
    iget v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLastX:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v9, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLastY:F

    sub-float v9, v5, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v6, v6, v9

    if-ltz v6, :cond_4

    iget v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLastX:F

    sub-float v6, v4, v6

    .line 812
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v10

    if-lez v6, :cond_4

    .line 813
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v6, v6, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1300(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->findChildViewUnderForExternal(FF)Landroid/view/View;

    move-result-object v3

    .line 814
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 815
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v6, v6, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1300(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildAdapterPositionForExternal(Landroid/view/View;)I

    move-result v1

    .line 816
    .local v1, "position":I
    if-eq v1, v11, :cond_1

    iget v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLastPosition:I

    if-eq v1, v6, :cond_1

    .line 817
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v6, v6, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$700(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->getCheckState(I)Z

    move-result v6

    if-nez v6, :cond_3

    move v6, v7

    :goto_0
    invoke-direct {p0, v1, v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->pickOrNotByPosition(IZ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 818
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v6, v6, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$800(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V

    .line 819
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v6, v6, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1000(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->access$600(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    move-result-object v6

    iget-object v8, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v8, v8, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v8}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$900(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Landroid/view/ActionMode;

    move-result-object v8

    invoke-interface {v6, v8, v7}, Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;->onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 820
    iput-boolean v7, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mScollXMode2PickEnable:Z

    .line 822
    iget v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLongTouchPosition:I

    if-ne v1, v6, :cond_0

    .line 823
    iput-boolean v7, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mHasEverPickLongTouchPosition:Z

    .line 827
    :cond_0
    iput v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLastPosition:I

    .line 829
    :cond_1
    invoke-direct {p0, v4, v5}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->ifScrollYModeEnable(FF)V

    .line 885
    .end local v1    # "position":I
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    :goto_1
    iput v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLastX:F

    .line 886
    iput v5, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLastY:F

    .line 887
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->interceptEvent()Z

    move-result v6

    return v6

    .restart local v1    # "position":I
    .restart local v3    # "view":Landroid/view/View;
    :cond_3
    move v6, v8

    .line 817
    goto :goto_0

    .line 832
    .end local v1    # "position":I
    .end local v3    # "view":Landroid/view/View;
    :cond_4
    iget-boolean v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnable:Z

    if-eqz v6, :cond_2

    .line 833
    iget v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLastY:F

    sub-float v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v10

    if-lez v6, :cond_2

    iget v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLastX:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v9, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLastY:F

    sub-float v9, v5, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v6, v6, v9

    if-gez v6, :cond_2

    .line 834
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v6, v6, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1300(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->findChildViewUnderForExternal(FF)Landroid/view/View;

    move-result-object v3

    .line 835
    .restart local v3    # "view":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 836
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v6, v6, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1300(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildAdapterPositionForExternal(Landroid/view/View;)I

    move-result v1

    .line 837
    .restart local v1    # "position":I
    if-eq v1, v11, :cond_2

    iget v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLastPosition:I

    if-eq v1, v6, :cond_2

    .line 838
    invoke-direct {p0, v1, v7}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->pickOrNotByPosition(IZ)Z

    .line 839
    iput v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLastPosition:I

    .line 840
    iget v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMotionPosition:I

    if-ge v1, v6, :cond_a

    .line 841
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    .line 842
    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 843
    :cond_5
    iget v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMotionPosition:I

    add-int/lit8 v2, v6, -0x1

    .local v2, "temp":I
    :goto_2
    if-lt v2, v1, :cond_9

    .line 844
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 845
    :cond_6
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 849
    .end local v2    # "temp":I
    :cond_8
    :goto_3
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v1, :cond_9

    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    .line 850
    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 851
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    .line 852
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 851
    invoke-direct {p0, v6, v8}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->pickOrNotByPosition(IZ)Z

    goto :goto_3

    .line 855
    :cond_9
    iget v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMotionPosition:I

    .restart local v2    # "temp":I
    :goto_4
    if-lt v2, v1, :cond_10

    .line 856
    invoke-direct {p0, v2, v7}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->pickOrNotByPosition(IZ)Z

    .line 855
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 859
    .end local v2    # "temp":I
    :cond_a
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    .line 860
    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v1, v6, :cond_e

    .line 861
    :cond_b
    iget v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMotionPosition:I

    add-int/lit8 v2, v6, 0x1

    .restart local v2    # "temp":I
    :goto_5
    if-gt v2, v1, :cond_f

    .line 862
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v2, v6, :cond_d

    .line 863
    :cond_c
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 867
    .end local v2    # "temp":I
    :cond_e
    :goto_6
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v1, :cond_f

    .line 868
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 869
    .local v0, "pop":I
    invoke-direct {p0, v0, v8}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->pickOrNotByPosition(IZ)Z

    goto :goto_6

    .line 873
    .end local v0    # "pop":I
    :cond_f
    iget v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMotionPosition:I

    .restart local v2    # "temp":I
    :goto_7
    if-gt v2, v1, :cond_10

    .line 874
    invoke-direct {p0, v2, v7}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->pickOrNotByPosition(IZ)Z

    .line 873
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 878
    :cond_10
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v6, v6, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$800(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V

    .line 879
    iget-object v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v6, v6, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1000(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->access$600(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    move-result-object v6

    iget-object v8, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v8, v8, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v8}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$900(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Landroid/view/ActionMode;

    move-result-object v8

    invoke-interface {v6, v8, v7}, Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;->onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V

    goto/16 :goto_1
.end method

.method private pickOrNotByPosition(IZ)Z
    .locals 4
    .param p1, "position"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 913
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v3, v3, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1300(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->findViewHolderForAdapterPositionForExternal(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 914
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 915
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 916
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 917
    check-cast v3, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;

    .line 918
    invoke-interface {v3}, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;->getBackgroundImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 919
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    invoke-virtual {v3, v1, p1, p2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->startScaleItemImageViewAnimationByScrollPicked(Landroid/widget/ImageView;IZ)V

    .line 920
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v3, v3, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$700(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->setCheckState(IZ)V

    .line 921
    check-cast v2, Lcom/miui/gallery/ui/Checkable;

    .end local v2    # "view":Landroid/view/View;
    invoke-interface {v2, p2}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    .line 923
    const/4 v3, 0x1

    .line 926
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setLongPressPosition(I)V
    .locals 1
    .param p1, "positionExcludeHeader"    # I

    .prologue
    .line 804
    iput p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLongTouchPosition:I

    .line 805
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mHasEverPickLongTouchPosition:Z

    .line 806
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 730
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 731
    .local v6, "actionMasked":I
    packed-switch v6, :pswitch_data_0

    .line 800
    :cond_0
    :goto_0
    return v4

    .line 733
    :pswitch_0
    iput-boolean v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mScollXMode2PickEnable:Z

    .line 734
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMotionX:F

    .line 735
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLastX:F

    .line 736
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLastY:F

    .line 737
    iput v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLastPosition:I

    .line 738
    iput-boolean v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnable:Z

    .line 739
    iput-boolean v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnableAfterLeft:Z

    .line 740
    iput-boolean v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mScollYMode2PickEnableAfterRight:Z

    .line 741
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_0

    .line 748
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->isInChoiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->interceptEvent()Z

    move-result v10

    .line 752
    .local v10, "interceptBefore":Z
    invoke-direct {p0, p2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->onTouchMove(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 753
    .local v9, "interceptAfter":Z
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$000(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)I

    move-result v0

    if-eqz v0, :cond_1

    if-nez v10, :cond_1

    if-eqz v9, :cond_1

    .line 759
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1300(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 761
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1300(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 763
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 764
    .local v7, "fakeEvent":Landroid/view/MotionEvent;
    invoke-virtual {v7, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 765
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1300(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 767
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1300(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 769
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1300(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v2, v2, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$500(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .end local v7    # "fakeEvent":Landroid/view/MotionEvent;
    :cond_1
    move v4, v9

    .line 771
    goto/16 :goto_0

    .line 776
    .end local v9    # "interceptAfter":Z
    .end local v10    # "interceptBefore":Z
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->isInChoiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mMathStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 780
    iget-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mHasEverPickLongTouchPosition:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLongTouchPosition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 781
    iput-boolean v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mHasEverPickLongTouchPosition:Z

    .line 782
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1300(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v0

    iget v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLongTouchPosition:I

    invoke-virtual {v0, v2}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->findViewHolderForAdapterPositionForExternal(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    .line 783
    .local v8, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v8, :cond_2

    .line 784
    iget-object v11, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 785
    .local v11, "view":Landroid/view/View;
    instance-of v0, v11, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;

    if-eqz v0, :cond_2

    move-object v0, v11

    .line 786
    check-cast v0, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;

    .line 787
    invoke-interface {v0}, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;->getBackgroundImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 788
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLongTouchPosition:I

    const/16 v5, 0xc8

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->startScaleItemImageViewAnimation(Landroid/widget/ImageView;IZII)V

    .line 790
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$700(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    move-result-object v0

    iget v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->mLongTouchPosition:I

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->setCheckState(IZ)V

    .line 791
    check-cast v11, Lcom/miui/gallery/ui/Checkable;

    .end local v11    # "view":Landroid/view/View;
    invoke-interface {v11, v3}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    .line 792
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$800(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V

    .line 793
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1000(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->access$600(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->this$1:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v2, v2, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$900(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Landroid/view/ActionMode;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;->onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 797
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v8    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->interceptEvent()Z

    move-result v4

    goto/16 :goto_0

    .line 731
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
