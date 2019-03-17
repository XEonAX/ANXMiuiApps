.class public Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "ScrollControlLinearLayoutManager.java"


# instance fields
.field private mMinDistance:F

.field private mSmoothScrollerSpeed:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 23
    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->mSmoothScrollerSpeed:F

    .line 29
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 23
    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->mSmoothScrollerSpeed:F

    .line 34
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->mSmoothScrollerSpeed:F

    .line 39
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;

    .prologue
    .line 17
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->mSmoothScrollerSpeed:F

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;

    .prologue
    .line 17
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->mMinDistance:F

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->mMinDistance:F

    .line 44
    return-void
.end method

.method public static onItemClick(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 10
    .param p0, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "position"    # I

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v6

    .line 95
    .local v6, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 96
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-eqz v0, :cond_3

    if-eqz v6, :cond_3

    instance-of v9, v6, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v9, :cond_3

    move-object v7, v6

    .line 97
    check-cast v7, Landroid/support/v7/widget/LinearLayoutManager;

    .line 98
    .local v7, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v5

    .line 99
    .local v5, "lastVisibleItemPosition":I
    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v4

    .line 100
    .local v4, "lastCompletelyVisibleItemPosition":I
    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    .line 101
    .local v3, "firstVisibleItemPosition":I
    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    .line 102
    .local v2, "firstCompletelyVisibleItemPosition":I
    const/4 v1, -0x1

    .line 103
    .local v1, "finalPosition":I
    if-eq v5, p1, :cond_0

    if-ne v4, p1, :cond_5

    .line 104
    :cond_0
    add-int/lit8 v8, p1, 0x1

    .line 105
    .local v8, "targetPosition":I
    if-lez v8, :cond_4

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 106
    move v1, v8

    .line 118
    .end local v8    # "targetPosition":I
    :cond_1
    :goto_0
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 119
    instance-of v9, v7, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;

    if-eqz v9, :cond_2

    .line 120
    check-cast v7, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;

    .end local v7    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/high16 v9, 0x431b0000    # 155.0f

    invoke-virtual {v7, v9}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->setSmoothScrollerSpeed(F)V

    .line 122
    :cond_2
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 125
    .end local v1    # "finalPosition":I
    .end local v2    # "firstCompletelyVisibleItemPosition":I
    .end local v3    # "firstVisibleItemPosition":I
    .end local v4    # "lastCompletelyVisibleItemPosition":I
    .end local v5    # "lastVisibleItemPosition":I
    :cond_3
    return-void

    .line 108
    .restart local v1    # "finalPosition":I
    .restart local v2    # "firstCompletelyVisibleItemPosition":I
    .restart local v3    # "firstVisibleItemPosition":I
    .restart local v4    # "lastCompletelyVisibleItemPosition":I
    .restart local v5    # "lastVisibleItemPosition":I
    .restart local v7    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    .restart local v8    # "targetPosition":I
    :cond_4
    const/4 v1, -0x1

    goto :goto_0

    .line 110
    .end local v8    # "targetPosition":I
    :cond_5
    if-eq v3, p1, :cond_6

    if-ne v2, p1, :cond_1

    .line 111
    :cond_6
    add-int/lit8 v8, p1, -0x1

    .line 112
    .restart local v8    # "targetPosition":I
    if-ltz v8, :cond_7

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 113
    move v1, v8

    goto :goto_0

    .line 115
    :cond_7
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public setSmoothScrollerSpeed(F)V
    .locals 0
    .param p1, "milliSecondsPerInch"    # F

    .prologue
    .line 90
    iput p1, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->mSmoothScrollerSpeed:F

    .line 91
    return-void
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 48
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager$1;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager$1;-><init>(Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;Landroid/content/Context;)V

    .line 85
    .local v0, "linearSmoothScroller":Landroid/support/v7/widget/LinearSmoothScroller;
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 87
    return-void
.end method
