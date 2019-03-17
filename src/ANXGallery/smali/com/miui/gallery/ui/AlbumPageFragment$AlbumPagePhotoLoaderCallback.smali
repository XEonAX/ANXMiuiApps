.class Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;
.super Ljava/lang/Object;
.source "AlbumPageFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumPagePhotoLoaderCallback"
.end annotation


# instance fields
.field mFooterViewRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mIsManualLoad:Landroid/util/SparseBooleanArray;

.field mLoaderCreateTime:Landroid/util/SparseLongArray;

.field mOtherAlbumEntity:Lcom/miui/gallery/model/OtherAlbum;

.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumPageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/AlbumPageFragment;)V
    .locals 1

    .prologue
    .line 333
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mLoaderCreateTime:Landroid/util/SparseLongArray;

    .line 337
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mIsManualLoad:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/AlbumPageFragment;Lcom/miui/gallery/ui/AlbumPageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/AlbumPageFragment$1;

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;-><init>(Lcom/miui/gallery/ui/AlbumPageFragment;)V

    return-void
.end method

.method private statAlbumLoadTime(ZJI)V
    .locals 4
    .param p1, "firstTime"    # Z
    .param p2, "costs"    # J
    .param p4, "count"    # I

    .prologue
    .line 503
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v0

    .line 504
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "costs"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string v1, "count"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string v2, "album"

    if-eqz p1, :cond_0

    const-string v1, "album_minimum_load_time"

    :goto_0
    invoke-static {v2, v1, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 513
    return-void

    .line 506
    :cond_0
    const-string v1, "album_full_load_time"

    goto :goto_0
.end method

.method private updateFooterUI()V
    .locals 9

    .prologue
    .line 470
    const/4 v1, 0x0

    .line 471
    .local v1, "invalidate":Z
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v5}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1400(Lcom/miui/gallery/ui/AlbumPageFragment;)I

    move-result v2

    .line 472
    .local v2, "recyclerPaddingBottom":I
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mFooterViewRef:Ljava/lang/ref/SoftReference;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mFooterViewRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v0, v5

    .line 473
    .local v0, "footer":Landroid/view/View;
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v5}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1500(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->getWrappedAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    .line 474
    .local v4, "wrappedAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mOtherAlbumEntity:Lcom/miui/gallery/model/OtherAlbum;

    if-nez v5, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 475
    :cond_0
    if-eqz v0, :cond_1

    .line 476
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v5}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1500(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->removeFooterView(Landroid/view/View;)Z

    .line 477
    const/4 v1, 0x1

    .line 493
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 494
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v5, v5, Lcom/miui/gallery/ui/AlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v5}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->invalidateItemDecorations()V

    .line 496
    :cond_2
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v5, v5, Lcom/miui/gallery/ui/AlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v6, v6, Lcom/miui/gallery/ui/AlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .line 497
    invoke-virtual {v6}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v7, v7, Lcom/miui/gallery/ui/AlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v7}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v8, v8, Lcom/miui/gallery/ui/AlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .line 498
    invoke-virtual {v8}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getPaddingRight()I

    move-result v8

    .line 496
    invoke-virtual {v5, v6, v7, v8, v2}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setPadding(IIII)V

    .line 500
    return-void

    .line 472
    .end local v0    # "footer":Landroid/view/View;
    .end local v4    # "wrappedAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 479
    .restart local v0    # "footer":Landroid/view/View;
    .restart local v4    # "wrappedAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    :cond_4
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v5}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1600(Lcom/miui/gallery/ui/AlbumPageFragment;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-virtual {v5}, Lcom/miui/gallery/ui/AlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 480
    if-nez v0, :cond_5

    .line 481
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v5, v5, Lcom/miui/gallery/ui/AlbumPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040017

    iget-object v7, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v7, v7, Lcom/miui/gallery/ui/AlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    const/4 v8, 0x0

    .line 482
    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;

    .line 483
    .local v3, "view":Lcom/miui/gallery/ui/AlbumPageListEmptyItem;
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v5}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$800(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->setTextContainer(Landroid/view/ViewGroup;)V

    .line 484
    move-object v0, v3

    .line 485
    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mFooterViewRef:Ljava/lang/ref/SoftReference;

    .line 487
    .end local v3    # "view":Lcom/miui/gallery/ui/AlbumPageListEmptyItem;
    :cond_5
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v5}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1500(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->getFootersCount()I

    move-result v5

    if-nez v5, :cond_6

    .line 488
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v5}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1500(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->addFooterView(Landroid/view/View;)V

    .line 489
    const/4 v1, 0x1

    .line 491
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 341
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mIsManualLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 342
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mLoaderCreateTime:Landroid/util/SparseLongArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, p1, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 343
    if-ne p1, v0, :cond_2

    .line 344
    if-eqz p2, :cond_1

    const-string v5, "first_time_load"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 345
    .local v0, "firstTime":Z
    :goto_0
    new-instance v2, Lcom/miui/gallery/loader/AsyncContentLoader;

    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v5, v5, Lcom/miui/gallery/ui/AlbumPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v6, v6, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumConvertCallback:Lcom/miui/gallery/loader/CursorConvertCallback;

    invoke-direct {v2, v5, v6}, Lcom/miui/gallery/loader/AsyncContentLoader;-><init>(Landroid/content/Context;Lcom/miui/gallery/loader/CursorConvertCallback;)V

    .line 349
    .local v2, "loader":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<Lcom/miui/gallery/model/AlbumList;>;"
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v5, v4, v0}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$600(Lcom/miui/gallery/ui/AlbumPageFragment;ZZ)Landroid/net/Uri;

    move-result-object v3

    .line 350
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    const/16 v5, 0x14

    invoke-static {v3, v5}, Lcom/miui/gallery/util/UriUtil;->appendLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {v2, v3}, Lcom/miui/gallery/loader/AsyncContentLoader;->setUri(Landroid/net/Uri;)V

    .line 351
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v5, v5, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v5}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/gallery/loader/AsyncContentLoader;->setProjection([Ljava/lang/String;)V

    .line 352
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v5, v4}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$700(Lcom/miui/gallery/ui/AlbumPageFragment;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/gallery/loader/AsyncContentLoader;->setSelection(Ljava/lang/String;)V

    .line 376
    .end local v0    # "firstTime":Z
    .end local v2    # "loader":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<Lcom/miui/gallery/model/AlbumList;>;"
    :goto_1
    return-object v2

    :cond_1
    move v0, v4

    .line 344
    goto :goto_0

    .line 354
    :cond_2
    const/4 v5, 0x2

    if-ne p1, v5, :cond_3

    .line 355
    new-instance v1, Landroid/content/CursorLoader;

    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/AlbumPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v1, v4}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 356
    .local v1, "loader":Landroid/content/CursorLoader;
    sget-object v4, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_SHARE_ALL:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 357
    sget-object v4, Lcom/miui/gallery/adapter/AlbumPageAdapter;->SHARED_ALBUM_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 358
    const-string v4, "count > 0"

    invoke-virtual {v1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    move-object v2, v1

    .line 359
    goto :goto_1

    .line 360
    .end local v1    # "loader":Landroid/content/CursorLoader;
    :cond_3
    const/4 v5, 0x3

    if-ne p1, v5, :cond_4

    .line 361
    new-instance v1, Landroid/content/CursorLoader;

    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/AlbumPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v1, v4}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 362
    .restart local v1    # "loader":Landroid/content/CursorLoader;
    sget-object v4, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PEOPLE_FACE_COVER_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    move-object v2, v1

    .line 363
    goto :goto_1

    .line 364
    .end local v1    # "loader":Landroid/content/CursorLoader;
    :cond_4
    const/4 v5, 0x4

    if-ne p1, v5, :cond_5

    .line 365
    new-instance v2, Lcom/miui/gallery/loader/AsyncContentLoader;

    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v5, v5, Lcom/miui/gallery/ui/AlbumPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v6, v6, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumConvertCallback:Lcom/miui/gallery/loader/CursorConvertCallback;

    invoke-direct {v2, v5, v6}, Lcom/miui/gallery/loader/AsyncContentLoader;-><init>(Landroid/content/Context;Lcom/miui/gallery/loader/CursorConvertCallback;)V

    .line 369
    .restart local v2    # "loader":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<Lcom/miui/gallery/model/AlbumList;>;"
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v5, v0, v4}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$600(Lcom/miui/gallery/ui/AlbumPageFragment;ZZ)Landroid/net/Uri;

    move-result-object v3

    .line 370
    .restart local v3    # "uri":Landroid/net/Uri;
    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/miui/gallery/util/UriUtil;->appendLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/gallery/loader/AsyncContentLoader;->setUri(Landroid/net/Uri;)V

    .line 371
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v4}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/gallery/loader/AsyncContentLoader;->setProjection([Ljava/lang/String;)V

    .line 372
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v4, v0}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$700(Lcom/miui/gallery/ui/AlbumPageFragment;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/gallery/loader/AsyncContentLoader;->setSelection(Ljava/lang/String;)V

    .line 373
    const-string/jumbo v4, "sortBy ASC "

    invoke-virtual {v2, v4}, Lcom/miui/gallery/loader/AsyncContentLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_1

    .line 376
    .end local v2    # "loader":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<Lcom/miui/gallery/model/AlbumList;>;"
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 23
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 382
    invoke-virtual/range {p1 .. p1}, Landroid/content/Loader;->getId()I

    move-result v12

    .line 383
    .local v12, "loaderId":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 384
    .local v10, "currTimeMillis":J
    const/4 v8, 0x0

    .line 385
    .local v8, "count":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_b

    .line 386
    if-eqz p2, :cond_6

    check-cast p2, Lcom/miui/gallery/model/AlbumList;

    .end local p2    # "o":Ljava/lang/Object;
    move-object/from16 v4, p2

    .line 387
    .local v4, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/Album;>;"
    :goto_0
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 388
    .local v15, "size":I
    :goto_1
    if-gtz v15, :cond_8

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$800(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->inflateEmptyView()V

    .line 400
    .end local v4    # "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/Album;>;"
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mOtherAlbumEntity:Lcom/miui/gallery/model/OtherAlbum;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 401
    if-nez v4, :cond_1

    .line 402
    new-instance v4, Ljava/util/ArrayList;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 404
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mOtherAlbumEntity:Lcom/miui/gallery/model/OtherAlbum;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getData()Landroid/support/v7/util/SortedList;

    move-result-object v2

    .line 407
    .local v2, "adapterData":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<Lcom/miui/gallery/model/Album;>;"
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 409
    .local v16, "start":J
    invoke-virtual {v2, v4}, Landroid/support/v7/util/SortedList;->replaceAll(Ljava/util/Collection;)V

    .line 410
    const-string v18, "AlbumPageFragment"

    const-string v19, "dispatch updates to adapter costs [%d ms], [%d] items"

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 410
    invoke-static/range {v18 .. v21}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 417
    .end local v16    # "start":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$200(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/widget/TwoStageDrawer;

    move-result-object v18

    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/miui/gallery/widget/TwoStageDrawer;->setDragEnabled(Z)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1000(Lcom/miui/gallery/ui/AlbumPageFragment;)V

    .line 419
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->updateFooterUI()V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v4, v2}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1100(Lcom/miui/gallery/ui/AlbumPageFragment;Ljava/util/ArrayList;Landroid/support/v7/util/SortedList;)V

    .line 452
    .end local v2    # "adapterData":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<Lcom/miui/gallery/model/Album;>;"
    .end local v15    # "size":I
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mIsManualLoad:Landroid/util/SparseBooleanArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mIsManualLoad:Landroid/util/SparseBooleanArray;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mLoaderCreateTime:Landroid/util/SparseLongArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v18

    sub-long v6, v10, v18

    .line 455
    .local v6, "costs":J
    const-string v18, "AlbumPageFragment"

    const-string v19, "load [%d] items for [%s] costs [%d ms]"

    .line 456
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v12}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1200(Lcom/miui/gallery/ui/AlbumPageFragment;I)Ljava/lang/String;

    move-result-object v21

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 455
    invoke-static/range {v18 .. v22}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$900(Lcom/miui/gallery/ui/AlbumPageFragment;)Z

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->statAlbumLoadTime(ZJI)V

    .line 459
    .end local v6    # "costs":J
    :cond_4
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$900(Lcom/miui/gallery/ui/AlbumPageFragment;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$902(Lcom/miui/gallery/ui/AlbumPageFragment;Z)Z

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1300(Lcom/miui/gallery/ui/AlbumPageFragment;)V

    .line 463
    :cond_5
    return-void

    .line 386
    .restart local p2    # "o":Ljava/lang/Object;
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 387
    .end local p2    # "o":Ljava/lang/Object;
    .restart local v4    # "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/Album;>;"
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 392
    .restart local v15    # "size":I
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$900(Lcom/miui/gallery/ui/AlbumPageFragment;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v18, 0x5

    move/from16 v0, v18

    if-lt v8, v0, :cond_0

    .line 394
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 395
    .end local v4    # "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/Album;>;"
    .local v5, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/Album;>;"
    const/16 v18, 0x0

    sget-object v19, Lcom/miui/gallery/model/Album$VirtualAlbum;->VIDEO:Lcom/miui/gallery/model/Album$VirtualAlbum;

    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/model/Album;->makePlaceholderFor(Lcom/miui/gallery/model/Album$VirtualAlbum;)Lcom/miui/gallery/model/Album;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 396
    const/16 v18, 0x0

    sget-object v19, Lcom/miui/gallery/model/Album$VirtualAlbum;->FAVORITES:Lcom/miui/gallery/model/Album$VirtualAlbum;

    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/model/Album;->makePlaceholderFor(Lcom/miui/gallery/model/Album$VirtualAlbum;)Lcom/miui/gallery/model/Album;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 397
    const/16 v18, 0x0

    sget-object v19, Lcom/miui/gallery/model/Album$VirtualAlbum;->RECENT:Lcom/miui/gallery/model/Album$VirtualAlbum;

    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/model/Album;->makePlaceholderFor(Lcom/miui/gallery/model/Album$VirtualAlbum;)Lcom/miui/gallery/model/Album;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object v4, v5

    .local v4, "albums":Ljava/lang/Object;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/Album;>;"
    goto/16 :goto_2

    .line 412
    .end local v4    # "albums":Ljava/lang/Object;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/Album;>;"
    .end local v5    # "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/Album;>;"
    .restart local v2    # "adapterData":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<Lcom/miui/gallery/model/Album;>;"
    :cond_9
    invoke-virtual {v2}, Landroid/support/v7/util/SortedList;->size()I

    move-result v18

    if-lez v18, :cond_a

    .line 413
    invoke-virtual {v2}, Landroid/support/v7/util/SortedList;->clear()V

    goto/16 :goto_3

    .line 415
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    .line 422
    .end local v2    # "adapterData":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<Lcom/miui/gallery/model/Album;>;"
    .end local v15    # "size":I
    .restart local p2    # "o":Ljava/lang/Object;
    :cond_b
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v12, v0, :cond_d

    move-object/from16 v9, p2

    .line 423
    check-cast v9, Landroid/database/Cursor;

    .line 424
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_c

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 425
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->setSharedAlbums(Landroid/database/Cursor;)V

    goto/16 :goto_4

    .line 424
    :cond_c
    const/4 v8, 0x0

    goto :goto_5

    .line 426
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_d
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v12, v0, :cond_f

    move-object/from16 v9, p2

    .line 427
    check-cast v9, Landroid/database/Cursor;

    .line 428
    .restart local v9    # "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_e

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 429
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->setPeopleFaceCover(Landroid/database/Cursor;)V

    goto/16 :goto_4

    .line 428
    :cond_e
    const/4 v8, 0x0

    goto :goto_6

    .line 430
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_f
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v12, v0, :cond_3

    .line 431
    if-eqz p2, :cond_10

    check-cast p2, Lcom/miui/gallery/model/AlbumList;

    .end local p2    # "o":Ljava/lang/Object;
    move-object/from16 v4, p2

    .line 432
    .local v4, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/Album;>;"
    :goto_7
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 433
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 434
    new-instance v14, Lcom/miui/gallery/model/OtherAlbum;

    invoke-direct {v14}, Lcom/miui/gallery/model/OtherAlbum;-><init>()V

    .line 435
    .local v14, "others":Lcom/miui/gallery/model/OtherAlbum;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 436
    .local v13, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/model/Album;

    .line 437
    .local v3, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {v3}, Lcom/miui/gallery/model/Album;->getAlbumName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 431
    .end local v3    # "album":Lcom/miui/gallery/model/Album;
    .end local v4    # "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/Album;>;"
    .end local v13    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "others":Lcom/miui/gallery/model/OtherAlbum;
    .restart local p2    # "o":Ljava/lang/Object;
    :cond_10
    const/4 v4, 0x0

    goto :goto_7

    .line 439
    .end local p2    # "o":Ljava/lang/Object;
    .restart local v4    # "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/Album;>;"
    .restart local v13    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14    # "others":Lcom/miui/gallery/model/OtherAlbum;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    move-object/from16 v18, v0

    const v19, 0x7f0c02e4

    invoke-virtual/range {v18 .. v19}, Lcom/miui/gallery/ui/AlbumPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/common/base/Joiner;->skipNulls()Lcom/google/common/base/Joiner;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/miui/gallery/model/OtherAlbum;->setAlbumName(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v14, v13}, Lcom/miui/gallery/model/OtherAlbum;->setAlbumNames(Ljava/util/ArrayList;)V

    .line 441
    invoke-virtual {v14, v8}, Lcom/miui/gallery/model/OtherAlbum;->setCount(I)V

    .line 442
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mOtherAlbumEntity:Lcom/miui/gallery/model/OtherAlbum;

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getData()Landroid/support/v7/util/SortedList;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mOtherAlbumEntity:Lcom/miui/gallery/model/OtherAlbum;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;)I

    .line 450
    .end local v13    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "others":Lcom/miui/gallery/model/OtherAlbum;
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->updateFooterUI()V

    goto/16 :goto_4

    .line 445
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mOtherAlbumEntity:Lcom/miui/gallery/model/OtherAlbum;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getData()Landroid/support/v7/util/SortedList;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mOtherAlbumEntity:Lcom/miui/gallery/model/OtherAlbum;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/util/SortedList;->remove(Ljava/lang/Object;)Z

    .line 448
    :cond_13
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mOtherAlbumEntity:Lcom/miui/gallery/model/OtherAlbum;

    goto :goto_9
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 467
    return-void
.end method
