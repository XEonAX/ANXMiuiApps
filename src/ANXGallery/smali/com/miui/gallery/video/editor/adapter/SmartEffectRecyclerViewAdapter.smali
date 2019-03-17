.class public Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;
.super Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;
.source "SmartEffectRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter",
        "<",
        "Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mFirstMarginLeft:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private smartEffectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/SmartEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/SmartEffect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "smartEffects":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/SmartEffect;>;"
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->mFirstMarginLeft:I

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 23
    iput-object p2, p0, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->smartEffectList:Ljava/util/List;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b03a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->mFirstMarginLeft:I

    .line 25
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->smartEffectList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->smartEffectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 84
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
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public getSmartEffect(I)Lcom/miui/gallery/video/editor/SmartEffect;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->smartEffectList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->smartEffectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->smartEffectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/SmartEffect;

    .line 31
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindView(Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 61
    if-nez p2, :cond_1

    iget v1, p0, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->mFirstMarginLeft:I

    :goto_0
    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;->setMarginLeft(I)V

    .line 62
    iget-object v1, p0, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->smartEffectList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/SmartEffect;

    .line 63
    .local v0, "data":Lcom/miui/gallery/video/editor/SmartEffect;
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/SmartEffect;->getNameResId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/SmartEffect;->getNameResId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;->setName(I)V

    .line 70
    :goto_1
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/SmartEffect;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/SmartEffect;->getIconResId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;->setIcon(I)V

    .line 75
    :goto_2
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/SmartEffect;->isDownloaded()Z

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;->updateSelected(ZZ)V

    .line 76
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/SmartEffect;->getDownloadState()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;->setStateImage(I)V

    .line 77
    return-void

    .end local v0    # "data":Lcom/miui/gallery/video/editor/SmartEffect;
    :cond_1
    move v1, v2

    .line 61
    goto :goto_0

    .line 65
    .restart local v0    # "data":Lcom/miui/gallery/video/editor/SmartEffect;
    :cond_2
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isInternational()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/SmartEffect;->getEnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/SmartEffect;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :cond_4
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/SmartEffect;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;->setIcon(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public bridge synthetic onBindView(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;I)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->onBindView(Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->onBindViewHolder(Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;ILjava/util/List;)V
    .locals 3
    .param p1, "holder"    # Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->onBindViewHolder(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;I)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->smartEffectList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/SmartEffect;

    .line 51
    .local v0, "data":Lcom/miui/gallery/video/editor/SmartEffect;
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/SmartEffect;->getDownloadState()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;->setStateImage(I)V

    .line 52
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, p2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/SmartEffect;->isDownloaded()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;->updateSelected(ZZ)V

    .line 53
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/SmartEffect;->isDownloadSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/SmartEffect;->setDownloadState(I)V

    goto :goto_0

    .line 52
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onCreateSingleChoiceViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 41
    iget-object v1, p0, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040179

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;

    invoke-direct {v1, v0}, Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateSingleChoiceViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->onCreateSingleChoiceViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/video/editor/adapter/SmartEffectViewHolder;

    move-result-object v0

    return-object v0
.end method
