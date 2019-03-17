.class Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;
.super Ljava/lang/Object;
.source "PickAlbumPageFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickAlbumPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumPagePhotoLoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/picker/PickAlbumPageFragment;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/picker/PickAlbumPageFragment;Lcom/miui/gallery/picker/PickAlbumPageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/picker/PickAlbumPageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/picker/PickAlbumPageFragment$1;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;-><init>(Lcom/miui/gallery/picker/PickAlbumPageFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 149
    if-ne p1, v0, :cond_2

    .line 151
    new-instance v2, Lcom/miui/gallery/loader/AsyncContentLoader;

    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mActivity:Landroid/app/Activity;

    new-instance v5, Lcom/miui/gallery/loader/AlbumConvertCallback;

    invoke-direct {v5}, Lcom/miui/gallery/loader/AlbumConvertCallback;-><init>()V

    invoke-direct {v2, v4, v5}, Lcom/miui/gallery/loader/AsyncContentLoader;-><init>(Landroid/content/Context;Lcom/miui/gallery/loader/CursorConvertCallback;)V

    .line 154
    .local v2, "loader":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<Lcom/miui/gallery/model/AlbumList;>;"
    if-eqz p2, :cond_1

    const-string v4, "first_time_load"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 155
    .local v0, "firstTime":Z
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v4, v0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$200(Lcom/miui/gallery/picker/PickAlbumPageFragment;Z)Landroid/net/Uri;

    move-result-object v3

    .line 156
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    const/16 v4, 0x14

    invoke-static {v3, v4}, Lcom/miui/gallery/util/UriUtil;->appendLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {v2, v3}, Lcom/miui/gallery/loader/AsyncContentLoader;->setUri(Landroid/net/Uri;)V

    .line 157
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$000(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Lcom/miui/gallery/adapter/AlbumAdapterBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getProjection()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/gallery/loader/AsyncContentLoader;->setProjection([Ljava/lang/String;)V

    .line 158
    const-string v4, "media_count>0"

    invoke-virtual {v2, v4}, Lcom/miui/gallery/loader/AsyncContentLoader;->setSelection(Ljava/lang/String;)V

    move-object v1, v2

    .line 171
    .end local v0    # "firstTime":Z
    .end local v2    # "loader":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<Lcom/miui/gallery/model/AlbumList;>;"
    :goto_1
    return-object v1

    .line 154
    .restart local v2    # "loader":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<Lcom/miui/gallery/model/AlbumList;>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    .end local v2    # "loader":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<Lcom/miui/gallery/model/AlbumList;>;"
    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    .line 161
    new-instance v1, Landroid/content/CursorLoader;

    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 162
    .local v1, "loader":Landroid/content/CursorLoader;
    sget-object v4, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_SHARE_ALL:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 163
    sget-object v4, Lcom/miui/gallery/model/AlbumConstants;->SHARED_ALBUM_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 164
    const-string v4, "count > 0"

    invoke-virtual {v1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_1

    .line 166
    .end local v1    # "loader":Landroid/content/CursorLoader;
    :cond_3
    const/4 v4, 0x3

    if-ne p1, v4, :cond_4

    .line 167
    new-instance v1, Landroid/content/CursorLoader;

    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 168
    .restart local v1    # "loader":Landroid/content/CursorLoader;
    sget-object v4, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PEOPLE_FACE_COVER_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 171
    .end local v1    # "loader":Landroid/content/CursorLoader;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 7
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 177
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 178
    if-eqz p2, :cond_2

    check-cast p2, Lcom/miui/gallery/model/AlbumList;

    .end local p2    # "o":Ljava/lang/Object;
    move-object v1, p2

    .line 179
    .local v1, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/Album;>;"
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 180
    .local v3, "size":I
    :goto_1
    if-gtz v3, :cond_4

    .line 182
    iget-object v5, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v5}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$300(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->inflateEmptyView()V

    .line 191
    .end local v1    # "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/Album;>;"
    :cond_0
    :goto_2
    iget-object v5, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v5}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$000(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Lcom/miui/gallery/adapter/AlbumAdapterBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getData()Landroid/support/v7/util/SortedList;

    move-result-object v0

    .line 192
    .local v0, "adapterData":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<Lcom/miui/gallery/model/Album;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 193
    invoke-virtual {v0, v1}, Landroid/support/v7/util/SortedList;->replaceAll(Ljava/util/Collection;)V

    .line 200
    :goto_3
    iget-object v5, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v5}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$400(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    iget-object v5, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v5, v4}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$402(Lcom/miui/gallery/picker/PickAlbumPageFragment;Z)Z

    .line 202
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$500(Lcom/miui/gallery/picker/PickAlbumPageFragment;)V

    .line 209
    .end local v0    # "adapterData":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<Lcom/miui/gallery/model/Album;>;"
    .end local v3    # "size":I
    :cond_1
    :goto_4
    return-void

    .line 178
    .restart local p2    # "o":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .end local p2    # "o":Ljava/lang/Object;
    .restart local v1    # "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/Album;>;"
    :cond_3
    move v3, v4

    .line 179
    goto :goto_1

    .line 183
    .restart local v3    # "size":I
    :cond_4
    iget-object v5, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v5}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$400(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    if-lt v3, v5, :cond_0

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 185
    .end local v1    # "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/Album;>;"
    .local v2, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/Album;>;"
    iget-object v5, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-virtual {v5}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v5

    invoke-interface {v5}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v5

    sget-object v6, Lcom/miui/gallery/picker/helper/Picker$MediaType;->IMAGE:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-eq v5, v6, :cond_5

    .line 186
    sget-object v5, Lcom/miui/gallery/model/Album$VirtualAlbum;->VIDEO:Lcom/miui/gallery/model/Album$VirtualAlbum;

    invoke-static {v5}, Lcom/miui/gallery/model/Album;->makePlaceholderFor(Lcom/miui/gallery/model/Album$VirtualAlbum;)Lcom/miui/gallery/model/Album;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 188
    :cond_5
    sget-object v5, Lcom/miui/gallery/model/Album$VirtualAlbum;->FAVORITES:Lcom/miui/gallery/model/Album$VirtualAlbum;

    invoke-static {v5}, Lcom/miui/gallery/model/Album;->makePlaceholderFor(Lcom/miui/gallery/model/Album$VirtualAlbum;)Lcom/miui/gallery/model/Album;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 189
    sget-object v5, Lcom/miui/gallery/model/Album$VirtualAlbum;->RECENT:Lcom/miui/gallery/model/Album$VirtualAlbum;

    invoke-static {v5}, Lcom/miui/gallery/model/Album;->makePlaceholderFor(Lcom/miui/gallery/model/Album$VirtualAlbum;)Lcom/miui/gallery/model/Album;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object v1, v2

    .local v1, "albums":Ljava/lang/Object;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/Album;>;"
    goto :goto_2

    .line 194
    .end local v1    # "albums":Ljava/lang/Object;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/Album;>;"
    .end local v2    # "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/Album;>;"
    .restart local v0    # "adapterData":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<Lcom/miui/gallery/model/Album;>;"
    :cond_6
    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 195
    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->clear()V

    goto :goto_3

    .line 198
    :cond_7
    iget-object v5, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v5}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$000(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Lcom/miui/gallery/adapter/AlbumAdapterBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->notifyDataSetChanged()V

    goto :goto_3

    .line 204
    .end local v0    # "adapterData":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<Lcom/miui/gallery/model/Album;>;"
    .end local v3    # "size":I
    .restart local p2    # "o":Ljava/lang/Object;
    :cond_8
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    .line 205
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$000(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Lcom/miui/gallery/adapter/AlbumAdapterBase;

    move-result-object v4

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v4, p2}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->setSharedAlbums(Landroid/database/Cursor;)V

    goto :goto_4

    .line 206
    .restart local p2    # "o":Ljava/lang/Object;
    :cond_9
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 207
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$000(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Lcom/miui/gallery/adapter/AlbumAdapterBase;

    move-result-object v4

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v4, p2}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->setPeopleFaceCover(Landroid/database/Cursor;)V

    goto :goto_4
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 213
    return-void
.end method
