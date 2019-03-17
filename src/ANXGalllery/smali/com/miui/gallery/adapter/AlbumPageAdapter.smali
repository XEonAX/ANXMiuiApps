.class public Lcom/miui/gallery/adapter/AlbumPageAdapter;
.super Lcom/miui/gallery/adapter/AlbumAdapterBase;
.source "AlbumPageAdapter.java"

# interfaces
.implements Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/AlbumAdapterBase;-><init>(Landroid/app/Activity;)V

    .line 27
    iput-object p1, p0, Lcom/miui/gallery/adapter/AlbumPageAdapter;->mActivity:Landroid/app/Activity;

    .line 28
    return-void
.end method

.method private isSameSection(Lcom/miui/gallery/model/Album$AlbumType;Lcom/miui/gallery/model/Album$AlbumType;)Z
    .locals 3
    .param p1, "one"    # Lcom/miui/gallery/model/Album$AlbumType;
    .param p2, "another"    # Lcom/miui/gallery/model/Album$AlbumType;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    sget-object v2, Lcom/miui/gallery/model/Album$AlbumType;->OTHER_ALBUMS:Lcom/miui/gallery/model/Album$AlbumType;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/miui/gallery/model/Album$AlbumType;->OTHER_ALBUMS:Lcom/miui/gallery/model/Album$AlbumType;

    if-ne p2, v2, :cond_2

    :cond_0
    move v0, v1

    .line 40
    :cond_1
    :goto_0
    return v0

    .line 33
    :cond_2
    sget-object v2, Lcom/miui/gallery/model/Album$AlbumType;->PINNED:Lcom/miui/gallery/model/Album$AlbumType;

    if-ne p1, v2, :cond_3

    .line 34
    sget-object v2, Lcom/miui/gallery/model/Album$AlbumType;->PINNED:Lcom/miui/gallery/model/Album$AlbumType;

    if-eq p2, v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 35
    :cond_3
    sget-object v2, Lcom/miui/gallery/model/Album$AlbumType;->SYSTEM:Lcom/miui/gallery/model/Album$AlbumType;

    if-ne p1, v2, :cond_4

    .line 36
    sget-object v2, Lcom/miui/gallery/model/Album$AlbumType;->SYSTEM:Lcom/miui/gallery/model/Album$AlbumType;

    if-eq p2, v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 37
    :cond_4
    sget-object v2, Lcom/miui/gallery/model/Album$AlbumType;->SYSTEM:Lcom/miui/gallery/model/Album$AlbumType;

    if-eq p2, v2, :cond_5

    sget-object v2, Lcom/miui/gallery/model/Album$AlbumType;->PINNED:Lcom/miui/gallery/model/Album$AlbumType;

    if-ne p2, v2, :cond_1

    :cond_5
    move v0, v1

    .line 38
    goto :goto_0
.end method

.method private isSyncable()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumPageAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getBottomDividerType(I)I
    .locals 7
    .param p1, "adapterPosition"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 45
    const/4 v6, -0x1

    if-ne p1, v6, :cond_0

    .line 65
    :goto_0
    return v3

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getItemCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_1

    move v1, v5

    .line 49
    .local v1, "isLastItem":Z
    :goto_1
    if-eqz v1, :cond_2

    move v3, v4

    .line 50
    goto :goto_0

    .end local v1    # "isLastItem":Z
    :cond_1
    move v1, v3

    .line 48
    goto :goto_1

    .line 52
    .restart local v1    # "isLastItem":Z
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 53
    .local v0, "currItem":Lcom/miui/gallery/model/Album;
    if-nez v0, :cond_3

    .line 54
    const-string v4, "AlbumPageAdapter"

    const-string v5, "current album item should not be null: %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_3
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v2

    .line 58
    .local v2, "nextItem":Lcom/miui/gallery/model/Album;
    if-eqz v2, :cond_5

    .line 59
    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getAlbumType()Lcom/miui/gallery/model/Album$AlbumType;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/gallery/model/Album;->getAlbumType()Lcom/miui/gallery/model/Album$AlbumType;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isSameSection(Lcom/miui/gallery/model/Album$AlbumType;Lcom/miui/gallery/model/Album$AlbumType;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 60
    const/4 v3, 0x2

    goto :goto_0

    :cond_4
    move v3, v5

    .line 62
    goto :goto_0

    :cond_5
    move v3, v4

    .line 65
    goto :goto_0
.end method

.method protected newClickItemIntent(IJZ)Landroid/content/Intent;
    .locals 6
    .param p1, "position"    # I
    .param p2, "id"    # J
    .param p4, "isLocalAlbum"    # Z

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p2, p3}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isOthersAlbum(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/miui/gallery/adapter/AlbumPageAdapter;->mContext:Landroid/content/Context;

    const-class v4, Lcom/miui/gallery/activity/AlbumLocalPageActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v0

    .line 72
    :cond_0
    invoke-static {p2, p3}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isFaceAlbum(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "com.miui.gallery.action.VIEW_PEOPLE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 74
    :cond_1
    invoke-static {p2, p3}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isRecentAlbum(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .restart local v0    # "intent":Landroid/content/Intent;
    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$RecentAlbum;->VIEW_PAGE_URI:Landroid/net/Uri;

    .line 77
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "source"

    const-string v5, "album_page"

    .line 78
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 79
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 76
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 81
    iget-object v3, p0, Lcom/miui/gallery/adapter/AlbumPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isBabyAlbum(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 84
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "com.miui.gallery.action.VIEW_ALBUM_DETAIL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isOtherShareAlbum(I)Z

    move-result v1

    .line 94
    .local v1, "isOtherShareAlbum":Z
    const-string v3, "other_share_album"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isOwnerShareAlbum(I)Z

    move-result v2

    .line 96
    .local v2, "isOwnerShareAlbum":Z
    const-string v3, "owner_share_album"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    const-string v3, "is_local_album"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    const-string v3, "screenshot_album"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isScreenshotsAlbum(I)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    const-string v3, "pano_album"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isPanoAlbum(I)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    const-string v3, "album_id"

    invoke-virtual {v0, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 101
    const-string v3, "album_name"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getAlbumName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v3, "album_server_id"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getServerId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v3, "attributes"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getAttributes(I)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 104
    const-string v3, "album_unwriteable"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->albumUnwriteable(I)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    const-string v3, "album_local_path"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getAlbumLocalPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 86
    .end local v1    # "isOtherShareAlbum":Z
    .end local v2    # "isOwnerShareAlbum":Z
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/miui/gallery/adapter/AlbumPageAdapter;->mContext:Landroid/content/Context;

    const-class v4, Lcom/miui/gallery/activity/facebaby/BabyAlbumDetailActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "people_id"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getBabyAlbumPeopleId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v3, "baby_info"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getBabyInfo(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string/jumbo v3, "thumbnail_info_of_baby"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getThumbnailInfoOfBaby(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v3, "baby_sharer_info"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getBabySharerInfo(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method public onItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJFF)Z
    .locals 6
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .param p6, "x"    # F
    .param p7, "y"    # F

    .prologue
    const/4 v2, 0x1

    .line 116
    .line 117
    invoke-virtual {p0, p3}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-direct {p0}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isSyncable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p3}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isAutoUploadedAlbum(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 116
    :goto_0
    invoke-virtual {p0, p3, v4, v5, v1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->newClickItemIntent(IJZ)Landroid/content/Intent;

    move-result-object v0

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumPageAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 120
    return v2

    .line 117
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
