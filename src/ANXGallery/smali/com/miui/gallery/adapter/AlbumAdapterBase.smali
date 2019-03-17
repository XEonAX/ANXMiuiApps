.class public Lcom/miui/gallery/adapter/AlbumAdapterBase;
.super Lcom/miui/gallery/adapter/BaseAlbumListAdapter;
.source "AlbumAdapterBase.java"

# interfaces
.implements Lcom/miui/gallery/widget/DividerTypeProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/adapter/AlbumAdapterBase$AlbumOthersItemViewHolder;,
        Lcom/miui/gallery/adapter/AlbumAdapterBase$AlbumFaceItemViewHolder;,
        Lcom/miui/gallery/adapter/AlbumAdapterBase$AlbumNormalItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/adapter/BaseAlbumListAdapter",
        "<",
        "Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;",
        ">;",
        "Lcom/miui/gallery/widget/DividerTypeProvider;"
    }
.end annotation


# static fields
.field private static sIsGalleryCloudSyncable:Z


# instance fields
.field private mDisplayFaceOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

.field private mDisplayVideoOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mDisplayVideoOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

.field private mIsInPickMode:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;-><init>(Landroid/content/Context;)V

    .line 39
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->sIsGalleryCloudSyncable:Z

    .line 40
    return-void
.end method


# virtual methods
.method public getBottomDividerType(I)I
    .locals 2
    .param p1, "adapterPosition"    # I

    .prologue
    const/4 v0, 0x3

    .line 88
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 89
    const/4 v0, 0x0

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 94
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getDisplayVideoOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getFileLength(I)J

    move-result-wide v0

    .line 59
    .local v0, "fileLength":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->mDisplayVideoOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    const/4 v3, 0x1

    .line 61
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 62
    invoke-virtual {v2, v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->fileLength(J)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 65
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->mDisplayVideoOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getAlbumType()Lcom/miui/gallery/model/Album$AlbumType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/model/Album$AlbumType;->OTHER_ALBUMS:Lcom/miui/gallery/model/Album$AlbumType;

    if-ne v0, v1, :cond_0

    .line 218
    const/4 v0, 0x3

    .line 222
    :goto_0
    return v0

    .line 219
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getItemId(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->isFaceAlbum(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    const/4 v0, 0x2

    goto :goto_0

    .line 222
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getTopDividerType(I)I
    .locals 1
    .param p1, "adapterPosition"    # I

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method protected initDisplayImageOptions()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 44
    invoke-super {p0}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->initDisplayImageOptions()V

    .line 45
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 46
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const v1, 0x7f0200e1

    .line 47
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->mDisplayVideoOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->mDisplayVideoOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->mDisplayVideoOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 50
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 51
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->usingRegionDecoderFace(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->mDisplayFaceOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 55
    return-void
.end method

.method public isAutoUploadedAlbum(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 101
    sget-boolean v0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->sIsGalleryCloudSyncable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isAutoUploadedAlbum(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoUploadedAlbum(JLjava/lang/String;J)Z
    .locals 1
    .param p1, "attributes"    # J
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "albumId"    # J

    .prologue
    .line 106
    sget-boolean v0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->sIsGalleryCloudSyncable:Z

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isAutoUploadedAlbum(JLjava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->onBindViewHolder(Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;I)V
    .locals 16
    .param p1, "holder"    # Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 135
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v8

    .line 136
    .local v8, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;->getItemViewType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 138
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lcom/miui/gallery/ui/AlbumPageListNormalItem;

    .line 139
    .local v2, "item":Lcom/miui/gallery/ui/AlbumPageListNormalItem;
    if-eqz p2, :cond_1

    add-int/lit8 v3, p2, -0x1

    .line 140
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getBottomDividerType(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    :cond_1
    const/4 v11, 0x1

    .line 141
    .local v11, "isSectionStartItem":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p2

    if-eq v0, v3, :cond_2

    .line 142
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getBottomDividerType(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    :cond_2
    const/4 v10, 0x1

    .line 143
    .local v10, "isSectionEndItem":Z
    :goto_2
    invoke-virtual {v2, v11, v10}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->adjustAlbumCoverContainerPadding(ZZ)V

    .line 144
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getAlbumName(Lcom/miui/gallery/model/Album;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/miui/gallery/model/Album;->getCount()I

    move-result v4

    invoke-virtual {v8}, Lcom/miui/gallery/model/Album;->isPlaceholder()Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindCommonInfo(Ljava/lang/String;IZ)V

    .line 146
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getLocalPath(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getDownloadUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 147
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->isVideoAlbum(Lcom/miui/gallery/model/Album;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 148
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getDisplayVideoOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 145
    :goto_3
    invoke-virtual {v2, v4, v5, v3}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 151
    invoke-virtual {v8}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->isOtherShareAlbum(J)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 153
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getShareAlbumInfo(I)Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;

    move-result-object v13

    .line 154
    .local v13, "shareAlbum":Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->getOwnerName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 155
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->isBabyAlbum(Lcom/miui/gallery/model/Album;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 156
    sget-object v3, Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;->SHARE:Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0042

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 160
    invoke-virtual {v13}, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->getOwnerName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v7

    .line 158
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindType(Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;Ljava/lang/String;)V

    .line 196
    .end local v13    # "shareAlbum":Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;
    :cond_3
    :goto_4
    invoke-static {v8}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->isRecentAlbum(Lcom/miui/gallery/model/Album;)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->isVideoAlbum(Lcom/miui/gallery/model/Album;)Z

    move-result v4

    .line 197
    invoke-static {v8}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->isFavoritesAlbum(Lcom/miui/gallery/model/Album;)Z

    move-result v5

    invoke-static {v8}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->isAutoUploadedAlbum(Lcom/miui/gallery/model/Album;)Z

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->mIsInPickMode:Z

    .line 196
    invoke-virtual/range {v2 .. v7}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindIndicator(ZZZZZ)V

    .line 198
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->shouldShowForceTop(Lcom/miui/gallery/model/Album;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->isForceTypeTime(Lcom/miui/gallery/model/Album;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    :goto_5
    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindForceTopIcon(Z)V

    .line 199
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->isHiddenAlbum(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindHiddenMask(Z)V

    goto/16 :goto_0

    .line 140
    .end local v10    # "isSectionEndItem":Z
    .end local v11    # "isSectionStartItem":Z
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 142
    .restart local v11    # "isSectionStartItem":Z
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 149
    .restart local v10    # "isSectionEndItem":Z
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getDisplayImageOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    goto/16 :goto_3

    .line 164
    .restart local v13    # "shareAlbum":Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;
    :cond_7
    sget-object v3, Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;->SHARE:Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0043

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 168
    invoke-virtual {v13}, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->getOwnerName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v7

    .line 166
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindType(Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;Ljava/lang/String;)V

    goto :goto_4

    .line 173
    :cond_8
    sget-object v3, Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;->SHARE:Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindType(Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;Ljava/lang/String;)V

    goto :goto_4

    .line 177
    .end local v13    # "shareAlbum":Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->isBabyAlbum(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 178
    sget-object v3, Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;->BABY:Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0059

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindType(Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 179
    :cond_a
    invoke-virtual {v8}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->isOwnerShareAlbum(J)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 180
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getShareAlbumInfo(I)Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;

    move-result-object v13

    .line 181
    .restart local v13    # "shareAlbum":Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;
    if-eqz v13, :cond_3

    .line 182
    sget-object v3, Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;->OWNER:Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->mContext:Landroid/content/Context;

    .line 184
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0007

    iget v6, v13, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->mUserCount:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v13, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->mUserCount:I

    .line 186
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v7, v14

    .line 184
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindType(Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 190
    .end local v13    # "shareAlbum":Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->isSystemAlbum(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 191
    sget-object v3, Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;->SYSTEM:Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindType(Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 193
    :cond_c
    sget-object v3, Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;->NORMAL:Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindType(Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 198
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 202
    .end local v2    # "item":Lcom/miui/gallery/ui/AlbumPageListNormalItem;
    .end local v10    # "isSectionEndItem":Z
    .end local v11    # "isSectionStartItem":Z
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;->itemView:Landroid/view/View;

    check-cast v9, Lcom/miui/gallery/ui/AlbumPageListFaceItem;

    .line 203
    .local v9, "faceItem":Lcom/miui/gallery/ui/AlbumPageListFaceItem;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getAlbumName(Lcom/miui/gallery/model/Album;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/miui/gallery/model/Album;->getCount()I

    move-result v4

    invoke-virtual {v8}, Lcom/miui/gallery/model/Album;->isPlaceholder()Z

    move-result v5

    invoke-virtual {v9, v3, v4, v5}, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->bindCommonInfo(Ljava/lang/String;IZ)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getPeopleFaceCover()Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->mDisplayFaceOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v9, v3, v4}, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->bindImageAndAlbumCount(Landroid/os/Bundle;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 205
    sget-object v3, Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;->SYSTEM:Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->mContext:Landroid/content/Context;

    const v5, 0x7f0c005b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->bindType(Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->shouldShowForceTop(Lcom/miui/gallery/model/Album;)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->isForceTypeTime(Lcom/miui/gallery/model/Album;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    :goto_6
    invoke-virtual {v9, v3}, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->bindForceTopIcon(Z)V

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x0

    goto :goto_6

    .line 209
    .end local v9    # "faceItem":Lcom/miui/gallery/ui/AlbumPageListFaceItem;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;->itemView:Landroid/view/View;

    check-cast v12, Lcom/miui/gallery/ui/AlbumPageListLocalItem;

    .line 210
    .local v12, "othersItem":Lcom/miui/gallery/ui/AlbumPageListLocalItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v3, v8}, Lcom/miui/gallery/ui/AlbumPageListLocalItem;->bindAlbumNameDesc(Landroid/content/Context;Lcom/miui/gallery/model/Album;)V

    goto/16 :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "viewHolder":Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;
    packed-switch p2, :pswitch_data_0

    .line 127
    :goto_0
    return-object v0

    .line 118
    :pswitch_0
    invoke-static {p1}, Lcom/miui/gallery/adapter/AlbumAdapterBase$AlbumNormalItemViewHolder;->newInstance(Landroid/view/ViewGroup;)Lcom/miui/gallery/adapter/AlbumAdapterBase$AlbumNormalItemViewHolder;

    move-result-object v0

    .line 119
    goto :goto_0

    .line 121
    :pswitch_1
    invoke-static {p1}, Lcom/miui/gallery/adapter/AlbumAdapterBase$AlbumFaceItemViewHolder;->newInstance(Landroid/view/ViewGroup;)Lcom/miui/gallery/adapter/AlbumAdapterBase$AlbumFaceItemViewHolder;

    move-result-object v0

    .line 122
    goto :goto_0

    .line 124
    :pswitch_2
    invoke-static {p1}, Lcom/miui/gallery/adapter/AlbumAdapterBase$AlbumOthersItemViewHolder;->newInstance(Landroid/view/ViewGroup;)Lcom/miui/gallery/adapter/AlbumAdapterBase$AlbumOthersItemViewHolder;

    move-result-object v0

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setInPickMode(Z)V
    .locals 0
    .param p1, "isIn"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->mIsInPickMode:Z

    .line 79
    return-void
.end method

.method protected shouldShowForceTop(Lcom/miui/gallery/model/Album;)Z
    .locals 1
    .param p1, "album"    # Lcom/miui/gallery/model/Album;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->mIsInPickMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->isOtherAlbum(Lcom/miui/gallery/model/Album;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateGalleryCloudSyncableState()V
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v0

    .line 71
    .local v0, "syncable":Z
    sget-boolean v1, Lcom/miui/gallery/adapter/AlbumAdapterBase;->sIsGalleryCloudSyncable:Z

    if-eq v1, v0, :cond_0

    .line 72
    sput-boolean v0, Lcom/miui/gallery/adapter/AlbumAdapterBase;->sIsGalleryCloudSyncable:Z

    .line 73
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->notifyDataSetChanged()V

    .line 75
    :cond_0
    return-void
.end method
