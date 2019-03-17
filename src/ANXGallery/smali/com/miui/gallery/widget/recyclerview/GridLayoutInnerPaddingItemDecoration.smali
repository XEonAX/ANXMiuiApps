.class public Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "GridLayoutInnerPaddingItemDecoration.java"


# instance fields
.field private final mEdgeMargins:[I

.field private mFullSpanIgnorePadding:Z

.field private final mItemHorizontalPadding:I

.field private final mItemVerticalPadding:I

.field private final mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private mRecycleRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IIIIIIZLandroid/support/v7/widget/GridLayoutManager;)V
    .locals 2
    .param p1, "leftMargin"    # I
    .param p2, "topMargin"    # I
    .param p3, "rightMargin"    # I
    .param p4, "bottomMargin"    # I
    .param p5, "itemHorizontalPadding"    # I
    .param p6, "itemVerticalPadding"    # I
    .param p7, "fullSpanIgnorePadding"    # Z
    .param p8, "layoutManager"    # Landroid/support/v7/widget/GridLayoutManager;

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 17
    iput-boolean v1, p0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->mFullSpanIgnorePadding:Z

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [I

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->mEdgeMargins:[I

    .line 25
    iput p5, p0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->mItemHorizontalPadding:I

    .line 26
    iput p6, p0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->mItemVerticalPadding:I

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->mRecycleRect:Landroid/graphics/Rect;

    .line 28
    iput-boolean p7, p0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->mFullSpanIgnorePadding:Z

    .line 29
    iput-object p8, p0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 30
    return-void
.end method

.method private isLastLine(IIIIILandroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)Z
    .locals 4
    .param p1, "adapterPosition"    # I
    .param p2, "spanSize"    # I
    .param p3, "spanIndex"    # I
    .param p4, "spanCount"    # I
    .param p5, "itemCount"    # I
    .param p6, "lookup"    # Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 57
    sub-int v3, p5, p4

    if-ge p1, v3, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    add-int/lit8 v3, p5, -0x1

    if-ne p1, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 59
    :cond_2
    add-int v0, p2, p3

    .line 60
    .local v0, "sumSpan":I
    add-int/lit8 p1, p1, 0x1

    .line 61
    :goto_1
    add-int/lit8 v3, p5, -0x1

    if-gt p1, v3, :cond_4

    .line 62
    if-nez p6, :cond_3

    move v3, v2

    :goto_2
    add-int/2addr v0, v3

    .line 63
    if-gt v0, p4, :cond_0

    .line 64
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 62
    :cond_3
    invoke-virtual {p6, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    goto :goto_2

    :cond_4
    move v1, v2

    .line 66
    goto :goto_0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 10
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v4

    .line 36
    .local v4, "spanCount":I
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 37
    .local v9, "layoutParams":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v9}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v2

    .line 38
    .local v2, "itemSpanSize":I
    invoke-virtual {v9}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v3

    .line 39
    .local v3, "itemSpanIndex":I
    if-ne v2, v4, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->mFullSpanIgnorePadding:Z

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    .line 40
    .local v7, "ignorePadding":Z
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->mRecycleRect:Landroid/graphics/Rect;

    if-eqz v7, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 42
    iget-object v5, p0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->mRecycleRect:Landroid/graphics/Rect;

    if-eqz v7, :cond_3

    const/4 v0, 0x0

    :goto_2
    iput v0, v5, Landroid/graphics/Rect;->right:I

    .line 45
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 46
    .local v1, "position":I
    iget-object v5, p0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->mRecycleRect:Landroid/graphics/Rect;

    if-eqz v7, :cond_5

    const/4 v0, 0x0

    :goto_3
    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 49
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v6

    move-object v0, p0

    .line 48
    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->isLastLine(IIIIILandroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)Z

    move-result v8

    .line 50
    .local v8, "lastLine":Z
    iget-object v5, p0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->mRecycleRect:Landroid/graphics/Rect;

    if-eqz v7, :cond_7

    const/4 v0, 0x0

    :goto_4
    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->mRecycleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 53
    return-void

    .line 39
    .end local v1    # "position":I
    .end local v7    # "ignorePadding":Z
    .end local v8    # "lastLine":Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 40
    .restart local v7    # "ignorePadding":Z
    :cond_1
    if-eqz v3, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->mEdgeMargins:[I

    const/4 v6, 0x0

    aget v0, v0, v6

    goto :goto_1

    .line 42
    :cond_3
    add-int v0, v3, v2

    if-ge v0, v4, :cond_4

    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->mItemHorizontalPadding:I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->mEdgeMargins:[I

    const/4 v6, 0x2

    aget v0, v0, v6

    goto :goto_2

    .line 46
    .restart local v1    # "position":I
    :cond_5
    if-ge v1, v4, :cond_6

    if-ne v3, v1, :cond_6

    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->mEdgeMargins:[I

    const/4 v6, 0x1

    aget v0, v0, v6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 50
    .restart local v8    # "lastLine":Z
    :cond_7
    if-eqz v8, :cond_8

    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->mEdgeMargins:[I

    const/4 v6, 0x3

    aget v0, v0, v6

    goto :goto_4

    :cond_8
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;->mItemVerticalPadding:I

    goto :goto_4
.end method
