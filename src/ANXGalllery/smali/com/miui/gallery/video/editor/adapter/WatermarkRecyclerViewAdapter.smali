.class public Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;
.super Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;
.source "WatermarkRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter",
        "<",
        "Lcom/miui/gallery/video/editor/adapter/TextViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mTextStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/TextStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/TextStyle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "textStyles":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/TextStyle;>;"
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;-><init>()V

    .line 20
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 21
    iput-object p2, p0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->mTextStyles:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->mTextStyles:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->mTextStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getTextStyle(I)Lcom/miui/gallery/video/editor/TextStyle;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->mTextStyles:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->mTextStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->mTextStyles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/TextStyle;

    .line 28
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindView(Lcom/miui/gallery/video/editor/adapter/TextViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/miui/gallery/video/editor/adapter/TextViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 54
    iget-object v1, p0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->mTextStyles:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/TextStyle;

    .line 55
    .local v0, "data":Lcom/miui/gallery/video/editor/TextStyle;
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->getIconResId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->setIcon(I)V

    .line 60
    :goto_0
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, p2, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->updateTextEditable(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, p2, :cond_2

    :goto_2
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->isDownloaded()Z

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->updateSelected(ZZ)V

    .line 62
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->getDownloadState()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->setStateImage(I)V

    .line 63
    return-void

    .line 58
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->setIcon(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 60
    goto :goto_1

    :cond_2
    move v2, v3

    .line 61
    goto :goto_2
.end method

.method public bridge synthetic onBindView(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;I)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->onBindView(Lcom/miui/gallery/video/editor/adapter/TextViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->onBindViewHolder(Lcom/miui/gallery/video/editor/adapter/TextViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/gallery/video/editor/adapter/TextViewHolder;ILjava/util/List;)V
    .locals 4
    .param p1, "holder"    # Lcom/miui/gallery/video/editor/adapter/TextViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/video/editor/adapter/TextViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->onBindViewHolder(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;I)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->mTextStyles:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/TextStyle;

    .line 43
    .local v0, "data":Lcom/miui/gallery/video/editor/TextStyle;
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, p2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->updateTextEditable(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, p2, :cond_3

    :goto_2
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->isDownloaded()Z

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->updateSelected(ZZ)V

    .line 45
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->getDownloadState()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->setStateImage(I)V

    .line 46
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->isDownloadSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/TextStyle;->setDownloadState(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 43
    goto :goto_1

    :cond_3
    move v2, v3

    .line 44
    goto :goto_2
.end method

.method public onCreateSingleChoiceViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/video/editor/adapter/TextViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 33
    iget-object v1, p0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04017c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;

    invoke-direct {v1, v0}, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateSingleChoiceViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->onCreateSingleChoiceViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/video/editor/adapter/TextViewHolder;

    move-result-object v0

    return-object v0
.end method
