.class public Lcom/miui/gallery/picker/PickAlbumPageFragment;
.super Lcom/miui/gallery/picker/PickerFragment;
.source "PickAlbumPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;
    }
.end annotation


# instance fields
.field private mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumAdapterBase;

.field private mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;

.field private mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

.field private mLoadInited:Z

.field private mPendingLoadExtraInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickerFragment;-><init>()V

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Lcom/miui/gallery/adapter/AlbumAdapterBase;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickAlbumPageFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumAdapterBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/picker/PickAlbumPageFragment;Z)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickAlbumPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getAlbumQueryUri(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickAlbumPageFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickAlbumPageFragment;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mPendingLoadExtraInfo:Z

    return v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/picker/PickAlbumPageFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickAlbumPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mPendingLoadExtraInfo:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/picker/PickAlbumPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickAlbumPageFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->startToLoadAlbumExtraInfo()V

    return-void
.end method

.method private getAlbumQueryUri(Z)Landroid/net/Uri;
    .locals 9
    .param p1, "firstTime"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 218
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v6

    invoke-interface {v6}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v3

    .line 219
    .local v3, "mediaType":Lcom/miui/gallery/picker/helper/Picker$MediaType;
    if-nez p1, :cond_2

    sget-object v6, Lcom/miui/gallery/picker/helper/Picker$MediaType;->IMAGE:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-eq v3, v6, :cond_2

    move v2, v4

    .line 220
    .local v2, "joinVideo":Z
    :goto_0
    if-nez p1, :cond_3

    sget-object v6, Lcom/miui/gallery/picker/helper/Picker$MediaType;->VIDEO:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-eq v3, v6, :cond_3

    move v1, v4

    .line 221
    .local v1, "joinFace":Z
    :goto_1
    sget-object v6, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "join_face"

    .line 222
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "join_video"

    .line 223
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "join_share"

    if-nez p1, :cond_4

    move v6, v4

    .line 224
    :goto_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "join_recent"

    if-nez p1, :cond_5

    move v6, v4

    .line 225
    :goto_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "join_favorites"

    if-nez p1, :cond_6

    move v6, v4

    .line 226
    :goto_4
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "remove_duplicate_items"

    const-string/jumbo v8, "true"

    .line 227
    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "fill_covers"

    if-nez p1, :cond_0

    move v5, v4

    .line 228
    :cond_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 229
    .local v0, "builder":Landroid/net/Uri$Builder;
    sget-object v5, Lcom/miui/gallery/picker/helper/Picker$MediaType;->IMAGE:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-ne v3, v5, :cond_7

    .line 230
    const-string v5, "media_type"

    .line 232
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-virtual {v0, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 240
    :cond_1
    :goto_5
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    return-object v4

    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "joinFace":Z
    .end local v2    # "joinVideo":Z
    :cond_2
    move v2, v5

    .line 219
    goto :goto_0

    .restart local v2    # "joinVideo":Z
    :cond_3
    move v1, v5

    .line 220
    goto :goto_1

    .restart local v1    # "joinFace":Z
    :cond_4
    move v6, v5

    .line 223
    goto :goto_2

    :cond_5
    move v6, v5

    .line 224
    goto :goto_3

    :cond_6
    move v6, v5

    .line 225
    goto :goto_4

    .line 234
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_7
    sget-object v4, Lcom/miui/gallery/picker/helper/Picker$MediaType;->VIDEO:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-ne v3, v4, :cond_1

    .line 235
    const-string v4, "media_type"

    const/4 v5, 0x2

    .line 237
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 235
    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_5
.end method

.method private startToLoadAlbumExtraInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 262
    const-string v0, "PickAlbumPageFragment"

    const-string/jumbo v1, "startToLoadAlbumExtraInfo"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 264
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 265
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/picker/helper/Picker$MediaType;->VIDEO:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-eq v0, v1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 268
    :cond_0
    return-void
.end method

.method private startToLoadAlbums()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 253
    const-string v1, "PickAlbumPageFragment"

    const-string/jumbo v2, "startToLoadAlbums"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 255
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "first_time_load"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 256
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 257
    iput-boolean v3, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mLoadInited:Z

    .line 258
    iput-boolean v3, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mPendingLoadExtraInfo:Z

    .line 259
    return-void
.end method


# virtual methods
.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "picker_album"

    return-object v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 272
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/picker/PickerFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 273
    if-nez p2, :cond_1

    .line 274
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v4}, Lcom/miui/gallery/picker/helper/Picker;->cancel()V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const-string v4, "internal_key_updated_selection"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 280
    .local v0, "fromAlbum":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 284
    const-string v4, "PickAlbumPageFragment"

    const-string v5, "Pick result of pre album: %s "

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v2, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v4}, Lcom/miui/gallery/picker/helper/Picker;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 288
    .local v3, "sha1":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 289
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 293
    .end local v3    # "sha1":Ljava/lang/String;
    :cond_3
    const-string v4, "PickAlbumPageFragment"

    const-string v5, "Deleted items in pre album : %s "

    invoke-static {v4, v5, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 296
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v5, v1}, Lcom/miui/gallery/picker/helper/Picker;->remove(Ljava/lang/String;)Z

    goto :goto_2

    .line 299
    .end local v1    # "key":Ljava/lang/String;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 300
    .restart local v3    # "sha1":Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v5, v3}, Lcom/miui/gallery/picker/helper/Picker;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 301
    iget-object v5, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v5, v3}, Lcom/miui/gallery/picker/helper/Picker;->pick(Ljava/lang/String;)Z

    goto :goto_3

    .line 305
    .end local v3    # "sha1":Ljava/lang/String;
    :cond_6
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 306
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v4}, Lcom/miui/gallery/picker/helper/Picker;->done()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mLoadInited:Z

    .line 62
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 67
    const v3, 0x7f040105

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 68
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f12009e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    iput-object v3, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    .line 69
    iget-object v3, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 70
    new-instance v3, Lcom/miui/gallery/adapter/AlbumAdapterBase;

    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/miui/gallery/adapter/AlbumAdapterBase;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumAdapterBase;

    .line 71
    iget-object v3, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumAdapterBase;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->setInPickMode(Z)V

    .line 72
    new-instance v0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f020265

    const v5, 0x7f0201af

    iget-object v6, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumAdapterBase;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;-><init>(Landroid/content/Context;IILcom/miui/gallery/widget/DividerTypeProvider;)V

    .line 74
    .local v0, "decoration":Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b007d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 75
    .local v1, "itemDividerPaddingStart":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v3}, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->setItemDividerPadding(Landroid/graphics/Rect;)V

    .line 76
    iget-object v3, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 77
    iget-object v3, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    invoke-virtual {v3, v8}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 78
    iget-object v3, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumAdapterBase;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 79
    iget-object v3, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->getRecycler()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    new-instance v4, Lcom/miui/gallery/picker/PickAlbumPageFragment$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment$1;-><init>(Lcom/miui/gallery/picker/PickAlbumPageFragment;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setOnItemClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;)V

    .line 114
    new-instance v3, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-direct {v3, p0, v8}, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;-><init>(Lcom/miui/gallery/picker/PickAlbumPageFragment;Lcom/miui/gallery/picker/PickAlbumPageFragment$1;)V

    iput-object v3, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;

    .line 115
    return-object v2
.end method

.method protected onPhotoItemClick(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/miui/gallery/picker/PickerFragment;->onStart()V

    .line 121
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumAdapterBase;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->updateGalleryCloudSyncableState()V

    .line 122
    return-void
.end method

.method protected recordPageByDefault()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 245
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerFragment;->setUserVisibleHint(Z)V

    .line 246
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mLoadInited:Z

    if-nez v0, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->startToLoadAlbums()V

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mLoadInited:Z

    .line 250
    :cond_0
    return-void
.end method
