.class final Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$Adapter;
.super Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;
.source "PhotoNaviFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter",
        "<",
        "Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$NavigatorHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mNavigatorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;",
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
            "Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;>;"
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$Adapter;->mNavigatorData:Ljava/util/List;

    .line 127
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$Adapter;->mNavigatorData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 122
    check-cast p1, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$NavigatorHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$Adapter;->onBindViewHolder(Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$NavigatorHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$NavigatorHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$NavigatorHolder;
    .param p2, "position"    # I

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$Adapter;->mNavigatorData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$NavigatorHolder;->bind(Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;)V

    .line 138
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$NavigatorHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$NavigatorHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 131
    new-instance v0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$NavigatorHolder;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$Adapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400cf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$NavigatorHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
