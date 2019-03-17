.class Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;
.super Ljava/lang/Object;
.source "StoryAlbumFragment.java"

# interfaces
.implements Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJFF)Z
    .locals 15
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .param p6, "x"    # F
    .param p7, "y"    # F

    .prologue
    .line 187
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;->isHeaderPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    const/4 v3, 0x0

    .line 206
    :goto_0
    return v3

    .line 190
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;->getWrappedAdapterPosition(I)I

    move-result p3

    .line 191
    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Media;->URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "remove_duplicate_items"

    const/4 v5, 0x1

    .line 194
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    .line 192
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 195
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    .line 196
    .local v14, "uri":Landroid/net/Uri;
    new-instance v2, Lcom/miui/gallery/model/ImageLoadParams;

    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 197
    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getItemKey(I)J

    move-result-wide v3

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 198
    invoke-static {v5}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getLocalPath(I)Ljava/lang/String;

    move-result-object v5

    .line 199
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iget-object v7, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 200
    invoke-static {v7}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getItemDecodeRectF(I)Landroid/graphics/RectF;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 201
    invoke-static {v8}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    move-result-object v8

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getMimeType(I)Ljava/lang/String;

    move-result-object v9

    iget-object v8, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v8}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    move-result-object v8

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getFileLength(I)J

    move-result-wide v10

    move/from16 v8, p3

    invoke-direct/range {v2 .. v11}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;J)V

    .line 203
    .local v2, "item":Lcom/miui/gallery/model/ImageLoadParams;
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 204
    invoke-static {v5}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getItemCount()I

    move-result v7

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v5}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Ljava/lang/String;

    move-result-object v8

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v5}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)[Ljava/lang/String;

    move-result-object v9

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v5}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Ljava/lang/String;

    move-result-object v10

    const-wide/32 v12, 0x7ffffff8

    move-object v5, v14

    move/from16 v6, p3

    move-object v11, v2

    .line 203
    invoke-static/range {v3 .. v13}, Lcom/miui/gallery/util/IntentUtil;->gotoPhotoPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/view/ViewGroup;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;J)V

    .line 206
    const/4 v3, 0x1

    goto/16 :goto_0
.end method
