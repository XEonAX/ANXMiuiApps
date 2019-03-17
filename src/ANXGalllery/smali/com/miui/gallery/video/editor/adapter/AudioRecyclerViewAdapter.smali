.class public Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;
.super Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;
.source "AudioRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter",
        "<",
        "Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final VIEW_TYPE_NORMAL:I

.field private mAudioList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/LocalAudio;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstMarginLeft:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;


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
            "Lcom/miui/gallery/video/editor/LocalAudio;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "mAudioList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/LocalAudio;>;"
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;-><init>()V

    .line 15
    iput v0, p0, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->VIEW_TYPE_NORMAL:I

    .line 18
    iput v0, p0, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->mFirstMarginLeft:I

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 22
    iput-object p2, p0, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->mAudioList:Ljava/util/List;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b038f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->mFirstMarginLeft:I

    .line 24
    return-void
.end method


# virtual methods
.method public getAuido(I)Lcom/miui/gallery/video/editor/LocalAudio;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->mAudioList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->mAudioList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->mAudioList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/LocalAudio;

    .line 30
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->mAudioList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->mAudioList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 77
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
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public onBindView(Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 55
    if-nez p2, :cond_1

    iget v1, p0, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->mFirstMarginLeft:I

    :goto_0
    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->setMarginLeft(I)V

    .line 56
    iget-object v1, p0, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->mAudioList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/LocalAudio;

    .line 57
    .local v0, "data":Lcom/miui/gallery/video/editor/LocalAudio;
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/LocalAudio;->getNameResId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->setName(I)V

    .line 58
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/LocalAudio;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/LocalAudio;->getIconResId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->setIcon(I)V

    .line 63
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/LocalAudio;->isDownloaded()Z

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->updateSelected(ZZ)V

    .line 64
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/LocalAudio;->getDownloadState()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->setStateImage(I)V

    .line 65
    return-void

    .end local v0    # "data":Lcom/miui/gallery/video/editor/LocalAudio;
    :cond_1
    move v1, v2

    .line 55
    goto :goto_0

    .line 61
    .restart local v0    # "data":Lcom/miui/gallery/video/editor/LocalAudio;
    :cond_2
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/LocalAudio;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->setIcon(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic onBindView(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;I)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->onBindView(Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->onBindViewHolder(Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;ILjava/util/List;)V
    .locals 3
    .param p1, "holder"    # Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->onBindViewHolder(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;I)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->mAudioList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/LocalAudio;

    .line 45
    .local v0, "data":Lcom/miui/gallery/video/editor/LocalAudio;
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/LocalAudio;->getDownloadState()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->setStateImage(I)V

    .line 46
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, p2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/LocalAudio;->isDownloaded()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->updateSelected(ZZ)V

    .line 47
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/LocalAudio;->isDownloadSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/LocalAudio;->setDownloadState(I)V

    goto :goto_0

    .line 46
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onCreateSingleChoiceViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 35
    iget-object v1, p0, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040166

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;

    invoke-direct {v1, v0}, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateSingleChoiceViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->onCreateSingleChoiceViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;

    move-result-object v0

    return-object v0
.end method
