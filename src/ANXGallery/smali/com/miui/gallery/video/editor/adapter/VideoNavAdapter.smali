.class public Lcom/miui/gallery/video/editor/adapter/VideoNavAdapter;
.super Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$Adapter;
.source "VideoNavAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$Adapter",
        "<",
        "Lcom/miui/gallery/video/editor/adapter/VideoNavHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mNavigatorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/model/MenuFragmentData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/model/MenuFragmentData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/model/MenuFragmentData;>;"
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$Adapter;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/miui/gallery/video/editor/adapter/VideoNavAdapter;->mNavigatorData:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/VideoNavAdapter;->mNavigatorData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/miui/gallery/video/editor/adapter/VideoNavHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/video/editor/adapter/VideoNavAdapter;->onBindViewHolder(Lcom/miui/gallery/video/editor/adapter/VideoNavHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/gallery/video/editor/adapter/VideoNavHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/miui/gallery/video/editor/adapter/VideoNavHolder;
    .param p2, "position"    # I

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 27
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/VideoNavAdapter;->mNavigatorData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/model/MenuFragmentData;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/video/editor/adapter/VideoNavHolder;->bind(Lcom/miui/gallery/video/editor/model/MenuFragmentData;)V

    .line 28
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/video/editor/adapter/VideoNavAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/video/editor/adapter/VideoNavHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/video/editor/adapter/VideoNavHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 21
    new-instance v0, Lcom/miui/gallery/video/editor/adapter/VideoNavHolder;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/adapter/VideoNavAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400cf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/video/editor/adapter/VideoNavHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
