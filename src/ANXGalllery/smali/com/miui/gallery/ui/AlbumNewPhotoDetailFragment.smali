.class public Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;
.super Lcom/miui/gallery/ui/PhotoListFragmentBase;
.source "AlbumNewPhotoDetailFragment.java"


# instance fields
.field private mAdapter:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

.field protected mIsOtherShareAlbum:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    return-object v0
.end method

.method protected getLayoutSource()I
    .locals 1

    .prologue
    .line 63
    const v0, 0x7f040011

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "album_new_photo_detail"

    return-object v0
.end method

.method protected getSelection()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 82
    iget-boolean v1, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mIsOtherShareAlbum:Z

    if-eqz v1, :cond_0

    .line 83
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "(%s >= %s)"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "serverTag"

    aput-object v4, v3, v5

    iget-wide v4, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mAlbumId:J

    .line 84
    invoke-static {v4, v5}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->getMinServerTagOfNewPhoto(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 83
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 86
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "(%s >= ? AND %s = ?)"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "serverTag"

    aput-object v4, v3, v5

    const-string v4, "localGroupId"

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "selection":Ljava/lang/String;
    goto :goto_0
.end method

.method protected getSelectionArgs()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mIsOtherShareAlbum:Z

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    .line 98
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mAlbumId:J

    .line 100
    invoke-static {v2, v3}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->getMinServerTagOfNewPhoto(J)Ljava/lang/Long;

    move-result-object v2

    .line 99
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mAlbumId:J

    .line 101
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mIsOtherShareAlbum:Z

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OTHER_ALBUM_MEDIA:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mAlbumId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 72
    :cond_0
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    .line 73
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "remove_duplicate_items"

    const/4 v2, 0x1

    .line 75
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mAlbumId:J

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->saveMinServerTagOfNewPhoto(JLjava/lang/Long;)V

    .line 108
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onDestroy()V

    .line 109
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 34
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->getGridViewOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 37
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "album_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mAlbumName:Ljava/lang/String;

    .line 39
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mAlbumName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    :cond_0
    const-string v2, "album_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mAlbumId:J

    .line 43
    const-string v2, "other_share_album"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mIsOtherShareAlbum:Z

    .line 45
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumNewPhotoDetailFragment;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v6}, Landroid/widget/GridView;->setLongClickable(Z)V

    .line 46
    return-object v1
.end method
