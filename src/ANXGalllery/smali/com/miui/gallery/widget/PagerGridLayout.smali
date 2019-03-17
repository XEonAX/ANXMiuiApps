.class public Lcom/miui/gallery/widget/PagerGridLayout;
.super Landroid/support/v7/widget/GridLayout;
.source "PagerGridLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/PagerGridLayout$OnPageChangedListener;,
        Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;

.field private mColumnCount:I

.field private mCount:I

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mItemCount:I

.field private mListener:Lcom/miui/gallery/widget/PagerGridLayout$OnPageChangedListener;

.field private mPageCount:I

.field private mPageIndex:I

.field private mRowCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/PagerGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/PagerGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    new-instance v0, Lcom/miui/gallery/widget/PagerGridLayout$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/PagerGridLayout$1;-><init>(Lcom/miui/gallery/widget/PagerGridLayout;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/widget/PagerGridLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/PagerGridLayout;

    .prologue
    .line 12
    iget v0, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mPageIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/widget/PagerGridLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/PagerGridLayout;
    .param p1, "x1"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/PagerGridLayout;->bindPage(I)V

    return-void
.end method

.method private bindPage(I)V
    .locals 10
    .param p1, "pageIndex"    # I

    .prologue
    const/4 v5, 0x0

    .line 84
    iget v6, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mPageCount:I

    if-ge p1, v6, :cond_1

    .line 85
    iget v6, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mItemCount:I

    mul-int v1, p1, v6

    .line 87
    .local v1, "firstPosition":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/PagerGridLayout;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 88
    invoke-virtual {p0, v2}, Lcom/miui/gallery/widget/PagerGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 89
    .local v4, "view":Landroid/view/View;
    add-int v3, v1, v2

    .line 90
    .local v3, "position":I
    iget v6, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mCount:I

    if-lt v3, v6, :cond_0

    .line 91
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v6, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mAdapter:Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;

    invoke-virtual {v6, v3, v4}, Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;->bindData(ILandroid/view/View;)V

    goto :goto_1

    .line 98
    .end local v0    # "count":I
    .end local v1    # "firstPosition":I
    .end local v2    # "i":I
    .end local v3    # "position":I
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mListener:Lcom/miui/gallery/widget/PagerGridLayout$OnPageChangedListener;

    if-eqz v6, :cond_3

    .line 99
    iget-object v6, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mListener:Lcom/miui/gallery/widget/PagerGridLayout$OnPageChangedListener;

    iget v7, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mPageIndex:I

    iget v8, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mPageCount:I

    iget v9, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mPageCount:I

    if-ne p1, v9, :cond_2

    const/4 v5, 0x1

    :cond_2
    invoke-interface {v6, v7, v8, v5}, Lcom/miui/gallery/widget/PagerGridLayout$OnPageChangedListener;->onPageChanged(IIZ)V

    .line 101
    :cond_3
    return-void
.end method


# virtual methods
.method public changeToNextPage()V
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mPageIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mPageCount:I

    if-le v0, v1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    iget v0, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mPageIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mPageIndex:I

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mAdapter:Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;->onPageChanged()V

    .line 109
    iget v0, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mPageIndex:I

    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/PagerGridLayout;->bindPage(I)V

    goto :goto_0
.end method

.method public freshCurrentPage()V
    .locals 6

    .prologue
    .line 113
    iget-object v4, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mAdapter:Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;

    if-nez v4, :cond_1

    .line 121
    :cond_0
    return-void

    .line 114
    :cond_1
    iget v4, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mPageIndex:I

    iget v5, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mItemCount:I

    mul-int v1, v4, v5

    .line 115
    .local v1, "firstPosition":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/PagerGridLayout;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 116
    invoke-virtual {p0, v2}, Lcom/miui/gallery/widget/PagerGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 117
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 118
    iget-object v4, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mAdapter:Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;

    invoke-virtual {v4, v3}, Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;->freshView(Landroid/view/View;)V

    .line 115
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setAdapter(Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/widget/PagerGridLayout;->setAdapter(Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;I)V

    .line 42
    return-void
.end method

.method public setAdapter(Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;I)V
    .locals 10
    .param p1, "adapter"    # Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;
    .param p2, "pageIndex"    # I

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 45
    iget-object v7, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mAdapter:Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;

    if-eqz v7, :cond_0

    .line 46
    iget-object v7, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mAdapter:Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;

    iget-object v8, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v7, v8}, Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mAdapter:Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;

    .line 49
    iget-object v7, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v7}, Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 50
    invoke-virtual {p0}, Lcom/miui/gallery/widget/PagerGridLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 51
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p1}, Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;->getColumnsCount()I

    move-result v0

    .line 52
    .local v0, "column":I
    invoke-virtual {p1}, Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;->getRowsCount()I

    move-result v5

    .line 53
    .local v5, "row":I
    iput v5, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mRowCount:I

    .line 54
    iput v0, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mColumnCount:I

    .line 55
    mul-int v7, v0, v5

    iput v7, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mItemCount:I

    .line 56
    invoke-virtual {p1}, Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;->getCount()I

    move-result v7

    iput v7, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mCount:I

    .line 57
    iput p2, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mPageIndex:I

    .line 58
    iget v7, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mCount:I

    iget v8, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v7, v8

    iget v8, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mItemCount:I

    div-int/2addr v7, v8

    iput v7, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mPageCount:I

    .line 60
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 61
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 62
    new-instance v4, Landroid/support/v7/widget/GridLayout$LayoutParams;

    invoke-static {v1, v9}, Landroid/support/v7/widget/GridLayout;->spec(IF)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v7

    invoke-static {v3, v9}, Landroid/support/v7/widget/GridLayout;->spec(IF)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/support/v7/widget/GridLayout$Spec;Landroid/support/v7/widget/GridLayout$Spec;)V

    .line 63
    .local v4, "params":Landroid/support/v7/widget/GridLayout$LayoutParams;
    iget-object v7, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mAdapter:Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;

    invoke-virtual {v7, v2, p0}, Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;->getView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 64
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6, v4}, Lcom/miui/gallery/widget/PagerGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 60
    .end local v4    # "params":Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v3    # "j":I
    :cond_2
    iget v7, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mPageIndex:I

    invoke-direct {p0, v7}, Lcom/miui/gallery/widget/PagerGridLayout;->bindPage(I)V

    .line 69
    return-void
.end method

.method public setOnPageChangedListener(Lcom/miui/gallery/widget/PagerGridLayout$OnPageChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/widget/PagerGridLayout$OnPageChangedListener;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/miui/gallery/widget/PagerGridLayout;->mListener:Lcom/miui/gallery/widget/PagerGridLayout$OnPageChangedListener;

    .line 38
    return-void
.end method
