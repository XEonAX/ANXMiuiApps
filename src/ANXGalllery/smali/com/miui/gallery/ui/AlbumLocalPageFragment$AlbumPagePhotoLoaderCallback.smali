.class Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;
.super Ljava/lang/Object;
.source "AlbumLocalPageFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumLocalPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumPagePhotoLoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumLocalPageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/AlbumLocalPageFragment;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/AlbumLocalPageFragment;Lcom/miui/gallery/ui/AlbumLocalPageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/AlbumLocalPageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/AlbumLocalPageFragment$1;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;-><init>(Lcom/miui/gallery/ui/AlbumLocalPageFragment;)V

    return-void
.end method

.method private getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "classification = 1"

    return-object v0
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 107
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 108
    new-instance v1, Lcom/miui/gallery/loader/AsyncContentLoader;

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumConvertCallback:Lcom/miui/gallery/loader/CursorConvertCallback;

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/loader/AsyncContentLoader;-><init>(Landroid/content/Context;Lcom/miui/gallery/loader/CursorConvertCallback;)V

    .line 112
    .local v1, "loader":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<Lcom/miui/gallery/model/AlbumList;>;"
    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    .line 113
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "join_video"

    const-string v4, "false"

    .line 114
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "join_face"

    const-string v4, "false"

    .line 115
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "join_share"

    const-string v4, "false"

    .line 116
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "exclude_empty_album"

    const-string/jumbo v4, "true"

    .line 117
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 112
    invoke-virtual {v1, v2}, Lcom/miui/gallery/loader/AsyncContentLoader;->setUri(Landroid/net/Uri;)V

    .line 119
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v2}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/loader/AsyncContentLoader;->setProjection([Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;->getSelection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/loader/AsyncContentLoader;->setSelection(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v2, "sortBy ASC "

    invoke-virtual {v1, v2}, Lcom/miui/gallery/loader/AsyncContentLoader;->setSortOrder(Ljava/lang/String;)V

    .line 130
    .end local v1    # "loader":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<Lcom/miui/gallery/model/AlbumList;>;"
    :goto_0
    return-object v1

    .line 123
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 124
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v2}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, "loader":Landroid/content/CursorLoader;
    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_SHARE_ALL:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 126
    sget-object v2, Lcom/miui/gallery/model/AlbumConstants;->SHARED_ALBUM_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 127
    const-string v2, "count > 0"

    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    move-object v1, v0

    .line 128
    goto :goto_0

    .line 130
    .end local v0    # "loader":Landroid/content/CursorLoader;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 3
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 137
    if-eqz p2, :cond_1

    check-cast p2, Lcom/miui/gallery/model/AlbumList;

    .end local p2    # "o":Ljava/lang/Object;
    move-object v0, p2

    .line 138
    .local v0, "albums":Lcom/miui/gallery/model/AlbumList;
    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getData()Landroid/support/v7/util/SortedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/util/SortedList;->replaceAll(Ljava/util/Collection;)V

    .line 145
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->access$200(Lcom/miui/gallery/ui/AlbumLocalPageFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->access$202(Lcom/miui/gallery/ui/AlbumLocalPageFragment;Z)Z

    .line 147
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->access$300(Lcom/miui/gallery/ui/AlbumLocalPageFragment;)V

    .line 152
    .end local v0    # "albums":Lcom/miui/gallery/model/AlbumList;
    :cond_0
    :goto_2
    return-void

    .line 137
    .restart local p2    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    .end local p2    # "o":Ljava/lang/Object;
    .restart local v0    # "albums":Lcom/miui/gallery/model/AlbumList;
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->access$100(Lcom/miui/gallery/ui/AlbumLocalPageFragment;)Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->inflateEmptyView()V

    .line 143
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getData()Landroid/support/v7/util/SortedList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/util/SortedList;->clear()V

    goto :goto_1

    .line 149
    .end local v0    # "albums":Lcom/miui/gallery/model/AlbumList;
    .restart local p2    # "o":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 150
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->setSharedAlbums(Landroid/database/Cursor;)V

    goto :goto_2
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 156
    return-void
.end method
