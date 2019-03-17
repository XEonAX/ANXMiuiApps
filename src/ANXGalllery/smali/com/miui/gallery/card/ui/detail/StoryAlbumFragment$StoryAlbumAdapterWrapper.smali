.class Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;
.super Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;
.source "StoryAlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StoryAlbumAdapterWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper",
        "<",
        "Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;",
        "Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;)V
    .locals 0
    .param p1, "wrapped"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    .prologue
    .line 987
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 988
    return-void
.end method


# virtual methods
.method protected bridge synthetic onCreateHeaderFooterViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 984
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;->onCreateHeaderFooterViewHolder(Landroid/view/View;)Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateHeaderFooterViewHolder(Landroid/view/View;)Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 992
    new-instance v0, Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 993
    .local v0, "holder":Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;->setIsRecyclable(Z)V

    .line 994
    return-object v0
.end method
