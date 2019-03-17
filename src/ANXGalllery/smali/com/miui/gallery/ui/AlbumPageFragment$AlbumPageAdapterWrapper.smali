.class Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;
.super Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;
.source "AlbumPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/widget/DividerTypeProvider;
.implements Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumPageAdapterWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper",
        "<",
        "Lcom/miui/gallery/adapter/AlbumPageAdapter;",
        "Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;",
        ">;",
        "Lcom/miui/gallery/widget/DividerTypeProvider;",
        "Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/gallery/adapter/AlbumPageAdapter;)V
    .locals 0
    .param p1, "wrapped"    # Lcom/miui/gallery/adapter/AlbumPageAdapter;

    .prologue
    .line 705
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 706
    return-void
.end method

.method private recordViewAlbum(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 752
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getAlbumLocalPath(I)Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, "localPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isSystemAlbum(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 754
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 755
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "album_name"

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getAlbumName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    const-string v3, "album_server_id"

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getServerId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    const-string v3, "album_image_count"

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getAlbumCount(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    const-string v2, "album"

    const-string/jumbo v3, "view_system_album"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 784
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 764
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 765
    .restart local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "album_path"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    const-string v3, "album_attribute"

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getAttributes(I)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    const-string v3, "album_image_count"

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getAlbumCount(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    const-string v3, "baby_album"

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isBabyAlbum(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    const-string v2, "album"

    const-string/jumbo v3, "view_album"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 774
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isOtherShareAlbum(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 775
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 776
    .restart local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "album_image_count"

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getAlbumCount(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    const-string v3, "baby_album"

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isBabyAlbum(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    const-string v2, "album"

    const-string/jumbo v3, "view_share_album"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getBottomDividerType(I)I
    .locals 2
    .param p1, "adapterPosition"    # I

    .prologue
    const/4 v0, 0x0

    .line 729
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 738
    :cond_0
    :goto_0
    return v0

    .line 732
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->isHeaderPosition(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 733
    const/4 v0, 0x3

    goto :goto_0

    .line 735
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->isFooterPosition(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 738
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->getHeadersCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getBottomDividerType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getTopDividerType(I)I
    .locals 2
    .param p1, "adapterPosition"    # I

    .prologue
    .line 717
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 718
    const/4 v0, 0x0

    .line 724
    :goto_0
    return v0

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->getHeadersCount()I

    move-result v0

    if-gtz v0, :cond_1

    if-nez p1, :cond_1

    .line 722
    const/4 v0, 0x3

    goto :goto_0

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->getHeadersCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getTopDividerType(I)I

    move-result v0

    goto :goto_0
.end method

.method protected bridge synthetic onCreateHeaderFooterViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 701
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->onCreateHeaderFooterViewHolder(Landroid/view/View;)Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateHeaderFooterViewHolder(Landroid/view/View;)Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 710
    new-instance v0, Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 711
    .local v0, "holder":Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;->setIsRecyclable(Z)V

    .line 712
    return-object v0
.end method

.method public onItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJFF)Z
    .locals 8
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .param p6, "x"    # F
    .param p7, "y"    # F

    .prologue
    .line 743
    invoke-virtual {p0, p3}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->isHeaderPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->isFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    :cond_0
    const/4 v0, 0x0

    .line 748
    :goto_0
    return v0

    .line 746
    :cond_1
    invoke-virtual {p0, p3}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->getWrappedAdapterPosition(I)I

    move-result v3

    .line 747
    .local v3, "realPosition":I
    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->recordViewAlbum(I)V

    .line 748
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->onItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJFF)Z

    move-result v0

    goto :goto_0
.end method
