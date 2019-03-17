.class public Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;
.super Lcom/miui/gallery/adapter/PreloadMediaAdapter;
.source "AlbumDetailSimpleAdapter.java"

# interfaces
.implements Lcom/miui/gallery/adapter/CheckableAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;
    }
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;

.field protected static final PROJECTION_INTERNAL:[Ljava/lang/String;


# instance fields
.field private mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

.field private mSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "alias_micro_thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "alias_create_date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "alias_create_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "serverType"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "alias_sync_state"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "secretKey"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "creatorId"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "alias_sort_time"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "alias_clear_thumbnail"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "alias_is_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "specialTypeFlags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->PROJECTION_INTERNAL:[Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->PROJECTION_INTERNAL:[Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->copyStringArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    sget-object v0, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;->SCENE_IN_CHECK_MODE:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;)V

    .line 75
    sget-object v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->NORMAL:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    iput-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scene"    # Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;)V

    .line 75
    sget-object v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->NORMAL:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    iput-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;
    .param p3, "syncStateDisplayOptions"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;I)V

    .line 75
    sget-object v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->NORMAL:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    iput-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    .line 98
    return-void
.end method

.method private bindContentDescription(Landroid/view/View;I)V
    .locals 6
    .param p1, "item"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 211
    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 213
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x6

    .line 214
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 212
    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/gallery/util/TalkBackUtil;->getContentDescriptionForImage(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 215
    return-void
.end method

.method private buildNoDiskCacheDisplayOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 233
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 234
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadFromMicroCache(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 235
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 236
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    return-object v0
.end method

.method private buildSecretPhotoDisplayOptions([B)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1
    .param p1, "secretKey"    # [B

    .prologue
    .line 223
    if-eqz p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->secretKey([B)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 225
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    goto :goto_0
.end method

.method private getDisplayImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isScreenshotAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroScreenshotTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 137
    :goto_0
    return-object v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isPanoAlbum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroPanoTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isRecentAlbum()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroRecentTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    goto :goto_0

    .line 137
    :cond_2
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    goto :goto_0
.end method

.method private isNoCacheDisplayAlbum()Z
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isScreenshotAlbum()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isPanoAlbum()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doBindData(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 162
    move-object/from16 v2, p1

    check-cast v2, Lcom/miui/gallery/ui/AlbumDetailGridItem;

    .line 164
    .local v2, "item":Lcom/miui/gallery/ui/AlbumDetailGridItem;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 165
    .local v8, "position":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getClearThumbFilePath(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getDownloadUri(I)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getDisplayImageOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v14

    invoke-virtual {v2, v9, v13, v14}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 166
    const/16 v9, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "type":Ljava/lang/String;
    const/16 v9, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 168
    .local v4, "duration":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    sget-object v13, Lcom/miui/gallery/widget/SortByHeader$SortBy;->SIZE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    if-ne v9, v13, :cond_1

    .line 169
    const/16 v9, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->bindFileSize(J)V

    .line 170
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->bindIndicator(Ljava/lang/String;JJ)V

    .line 184
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "duration":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isSecretAlbum()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isFavorite(I)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    .line 181
    :goto_1
    invoke-virtual {v2, v9}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->bindFavoriteIndicator(Z)V

    .line 186
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getSyncState(Landroid/database/Cursor;)I

    move-result v12

    .line 187
    .local v12, "newSyncState":I
    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 188
    .local v10, "id":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mShowScene:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mSyncStateDisplayOptions:I

    move-object v9, v2

    invoke-virtual/range {v9 .. v14}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->bindSyncIndicator(JILcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;I)V

    .line 189
    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mViewScrollState:I

    if-nez v9, :cond_0

    .line 190
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->bindContentDescription(Landroid/view/View;I)V

    .line 192
    :cond_0
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v13}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->isBestImage(JZ)Z

    move-result v9

    invoke-virtual {v2, v9}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->setIsSimilarBestImage(Z)V

    .line 193
    return-void

    .line 172
    .end local v10    # "id":J
    .end local v12    # "newSyncState":I
    .restart local v3    # "type":Ljava/lang/String;
    .restart local v4    # "duration":J
    :cond_1
    const/16 v9, 0x14

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 173
    .local v6, "specialTypeFlags":J
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isSecretAlbum()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 174
    invoke-static {v6, v7}, Lcom/miui/gallery/Config$SecretAlbumConfig;->getSupportedSpecialTypeFlags(J)J

    move-result-wide v6

    .line 178
    :cond_2
    :goto_2
    const-wide/16 v14, 0x0

    invoke-virtual {v2, v14, v15}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->bindFileSize(J)V

    .line 179
    invoke-virtual/range {v2 .. v7}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->bindIndicator(Ljava/lang/String;JJ)V

    goto :goto_0

    .line 175
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isOtherShareAlbum()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 176
    invoke-static {v6, v7}, Lcom/miui/gallery/Config$ShareAlbumConfig;->getSupportedSpecialTypeFlags(J)J

    move-result-wide v6

    goto :goto_2

    .line 184
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "duration":J
    .end local v6    # "specialTypeFlags":J
    :cond_4
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public getCheckableView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 371
    check-cast p1, Lcom/miui/gallery/ui/AlbumDetailGridItem;

    .end local p1    # "itemView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    return-object v0
.end method

.method public getClearThumbFilePath(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 254
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0x12

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getMicroPath(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCreatorId(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 317
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0x10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getDisplayImageOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->getDisplayImageOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    .line 149
    .local v1, "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isSecretAlbum()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 151
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 152
    const/16 v2, 0xd

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->buildSecretPhotoDisplayOptions([B)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    .line 157
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v1

    .line 154
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isNoCacheDisplayAlbum()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->buildNoDiskCacheDisplayOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    goto :goto_0
.end method

.method protected getDisplayImageSize(I)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getDisplayImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadUri(I)Landroid/net/Uri;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 242
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getDownloadUri(Landroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getFileLength(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 312
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getItemKey(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 278
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getItemSecretKey(I)[B
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isSecretAlbum()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 291
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xd

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 293
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->getItemSecretKey(I)[B

    move-result-object v1

    goto :goto_0
.end method

.method public getLocalPath(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 248
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getMicroPath(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMicroThumbFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 260
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMimeType(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 299
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOriginFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 266
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xf

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSha1(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 284
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getSyncState(Landroid/database/Cursor;)I
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 218
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 219
    .local v0, "syncState":I
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getSyncStateInternal(I)I

    move-result v1

    return v1
.end method

.method public getThumbFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 272
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xe

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isBabyAlbum()Z
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->BABY:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFavorite(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 305
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v2, 0x13

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 306
    .local v1, "isFavorite":I
    if-lez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isOtherShareAlbum()Z
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->OTHER_SHARE:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanoAlbum()Z
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->PANO:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecentAlbum()Z
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->RECENT:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenshotAlbum()Z
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->SCREENSHOT:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecretAlbum()Z
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->SECRET:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const v2, 0x7f04000d

    const v4, 0x7f020244

    const/4 v3, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isScreenshotAlbum()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04000f

    .line 104
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/AlbumDetailGridItem;

    .line 105
    .local v0, "item":Lcom/miui/gallery/ui/AlbumDetailGridItem;
    invoke-direct {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getDisplayImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->setImageSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    .line 106
    invoke-virtual {v0, v4}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->setImageForeground(I)V

    .line 121
    .end local v0    # "item":Lcom/miui/gallery/ui/AlbumDetailGridItem;
    :goto_0
    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isPanoAlbum()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04000e

    .line 110
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/AlbumDetailGridItem;

    .line 111
    .restart local v0    # "item":Lcom/miui/gallery/ui/AlbumDetailGridItem;
    invoke-direct {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getDisplayImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->setImageSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    goto :goto_0

    .line 113
    .end local v0    # "item":Lcom/miui/gallery/ui/AlbumDetailGridItem;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isRecentAlbum()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 115
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/AlbumDetailGridItem;

    .line 116
    .restart local v0    # "item":Lcom/miui/gallery/ui/AlbumDetailGridItem;
    invoke-direct {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getDisplayImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->setImageSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    .line 117
    invoke-virtual {v0, v4}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->setImageForeground(I)V

    goto :goto_0

    .line 120
    .end local v0    # "item":Lcom/miui/gallery/ui/AlbumDetailGridItem;
    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 121
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onViewScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 197
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->onViewScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 198
    if-nez p2, :cond_1

    .line 199
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 200
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 201
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 202
    .local v2, "item":Landroid/view/View;
    const v4, 0x7f120022

    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 203
    .local v3, "position":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 204
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "position":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->bindContentDescription(Landroid/view/View;I)V

    .line 200
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setAlbumType(Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;)V
    .locals 1
    .param p1, "albumType"    # Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    .line 354
    invoke-direct {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isNoCacheDisplayAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->setPreloadNum(I)V

    .line 357
    :cond_0
    return-void
.end method

.method public setCurrentSortBy(Lcom/miui/gallery/widget/SortByHeader$SortBy;)V
    .locals 0
    .param p1, "sortBy"    # Lcom/miui/gallery/widget/SortByHeader$SortBy;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    .line 322
    return-void
.end method
