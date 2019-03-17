.class Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;
.super Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;
.source "FilterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter",
        "<",
        "Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mEditMode:Z

.field private mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/FilterData;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightColor:I

.field private mSelectedIndex:I

.field private mSubHighlightColor:I

.field private mSubItemSize:I


# direct methods
.method constructor <init>(Ljava/util/List;III)V
    .locals 1
    .param p2, "highlighColor"    # I
    .param p3, "subHighlighColor"    # I
    .param p4, "subItemSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/FilterData;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .local p1, "effects":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/FilterData;>;"
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;-><init>()V

    .line 13
    iput v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    .line 14
    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEditMode:Z

    .line 20
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEffects:Ljava/util/List;

    .line 21
    iput p2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mHighlightColor:I

    .line 22
    iput p3, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSubHighlightColor:I

    .line 23
    iput p4, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSubItemSize:I

    .line 24
    return-void
.end method


# virtual methods
.method clearSelected()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 77
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    if-eq v1, v2, :cond_0

    .line 78
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    .line 79
    .local v0, "lastIndex":I
    iput v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    .line 80
    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->notifyItemChanged(I)V

    .line 82
    .end local v0    # "lastIndex":I
    :cond_0
    return-void
.end method

.method enterEditMode()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEditMode:Z

    .line 90
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->notifyItemChanged(I)V

    .line 91
    return-void
.end method

.method exitEditMode()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEditMode:Z

    .line 95
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->notifyItemChanged(I)V

    .line 96
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemData(I)Lcom/miui/gallery/editor/photo/core/common/model/FilterData;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEffects:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEffects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    .line 30
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getValue()I
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEffects:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->progress:I

    return v0
.end method

.method isInEditMode()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEditMode:Z

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->onBindViewHolder(Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;I)V
    .locals 3
    .param p1, "holder"    # Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;
    .param p2, "position"    # I

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 41
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 43
    .local v0, "selected":Z
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEffects:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    invoke-virtual {p1, v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->bindData(Lcom/miui/gallery/editor/photo/core/common/model/FilterData;)V

    .line 44
    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->setState(ZZ)V

    .line 46
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSubItemSize:I

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->getItemCount()I

    move-result v1

    iget v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSubItemSize:I

    sub-int/2addr v1, v2

    if-lt p2, v1, :cond_2

    .line 47
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSubHighlightColor:I

    invoke-virtual {p1, v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->setForegroundColor(I)V

    .line 52
    :goto_1
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEditMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEffects:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->isNone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->getValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->updateIndicator(I)V

    .line 55
    :cond_0
    return-void

    .line 41
    .end local v0    # "selected":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    .restart local v0    # "selected":Z
    :cond_2
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mHighlightColor:I

    invoke-virtual {p1, v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->setForegroundColor(I)V

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 35
    new-instance v0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040082

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method setSelectedIndex(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, -0x1

    .line 63
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    if-ne p1, v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    .line 67
    .local v0, "lastSelectedIndex":I
    iput p1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    .line 68
    if-eq v0, v2, :cond_2

    .line 69
    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->notifyItemChanged(I)V

    .line 71
    :cond_2
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    if-eq v1, v2, :cond_0

    .line 72
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method update(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEditMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEffects:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    iput p1, v0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->progress:I

    .line 109
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->notifyItemChanged(I)V

    .line 111
    :cond_0
    return-void
.end method
