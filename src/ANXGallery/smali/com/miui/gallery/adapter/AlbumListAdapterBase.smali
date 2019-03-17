.class public abstract Lcom/miui/gallery/adapter/AlbumListAdapterBase;
.super Lcom/miui/gallery/adapter/BaseAdapter;
.source "AlbumListAdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/adapter/AlbumListAdapterBase$ShareAlbum;
    }
.end annotation


# static fields
.field protected static final PROJECTION:[Ljava/lang/String;

.field public static final SHARED_ALBUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field protected mDisplayImageOption:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mPeopleFaceCover:Landroid/os/Bundle;

.field private mSharedAlbums:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/adapter/AlbumListAdapterBase$ShareAlbum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "cover_id"

    aput-object v1, v0, v6

    const-string v1, "cover_path"

    aput-object v1, v0, v7

    const-string v1, "cover_sha1"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "cover_sync_state"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "media_count"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "face_people_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "baby_info"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "thumbnail_info"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "serverId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "attributes"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "immutable"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "top_time"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "sortBy"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "baby_sharer_info"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "local_path"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_ALBUM_CLASSIFICATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "classification"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->PROJECTION:[Ljava/lang/String;

    .line 79
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "creatorId"

    aput-object v1, v0, v5

    const-string v1, "count"

    aput-object v1, v0, v6

    const-string v1, "nickname"

    aput-object v1, v0, v7

    sput-object v0, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->SHARED_ALBUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BaseAdapter;-><init>(Landroid/content/Context;)V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->mPeopleFaceCover:Landroid/os/Bundle;

    .line 95
    return-void
.end method

.method protected static isAutoUploadedAlbum(Landroid/database/Cursor;)Z
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 375
    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 376
    invoke-static {p0}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->isSystemAlbum(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->isScreenshotsAlbum(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->isOtherShareAlbum(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isBabyAlbum(Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 285
    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFaceAlbum(Landroid/database/Cursor;)Z
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 201
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/32 v4, 0x7ffffffe

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isFavoritesAlbum(Landroid/database/Cursor;)Z
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 217
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/32 v4, 0x7ffffffa

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static isOtherShareAlbum(Landroid/database/Cursor;)Z
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 275
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 276
    .local v0, "albumId":I
    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v1

    return v1
.end method

.method public static isRecentAlbum(Landroid/database/Cursor;)Z
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 209
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/32 v4, 0x7ffffffc

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isScreenshotsAlbum(Landroid/database/Cursor;)Z
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 344
    const/16 v1, 0xa

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "serverId":Ljava/lang/String;
    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected static isSystemAlbum(Landroid/database/Cursor;)Z
    .locals 7
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 354
    const/16 v3, 0xa

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "serverId":Ljava/lang/String;
    sget-object v4, Lcom/miui/gallery/provider/GalleryContract$Album;->ALL_SYSTEM_ALBUM_SERVER_IDS:[Ljava/lang/Long;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 357
    .local v0, "albumId":Ljava/lang/Long;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 358
    const/4 v2, 0x1

    .line 361
    .end local v0    # "albumId":Ljava/lang/Long;
    :cond_0
    return v2

    .line 356
    .restart local v0    # "albumId":Ljava/lang/Long;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getAlbumCount(Landroid/database/Cursor;)I
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 189
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getAlbumName(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 175
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->isCameraAlbum(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0032

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "albumName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 224
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->isScreenshotsAlbum(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0c004b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 226
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->isVideoAlbum(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0c005c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 228
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->isFaceAlbum(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0036

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 230
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->isPanoAlbum(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 231
    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0047

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 232
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_4
    invoke-static {p1}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->isRecentAlbum(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 233
    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0c003f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 234
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_5
    invoke-static {p1}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->isFavoritesAlbum(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 235
    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0037

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 237
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0
.end method

.method public getDownloadUri(I)Landroid/net/Uri;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 161
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x5

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->getDownloadUri(Landroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getLocalPath(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 150
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->getMicroPath(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected initDisplayImageOptions()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/miui/gallery/adapter/BaseAdapter;->initDisplayImageOptions()V

    .line 100
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->mDisplayImageOption:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 102
    return-void
.end method

.method public isAutoUploadedAlbum(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 370
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 371
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->isAutoUploadedAlbum(Landroid/database/Cursor;)Z

    move-result v1

    return v1
.end method

.method public isBabyAlbum(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 281
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->isBabyAlbum(Landroid/database/Cursor;)Z

    move-result v1

    return v1
.end method

.method public isCameraAlbum(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 325
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->isCameraAlbum(Landroid/database/Cursor;)Z

    move-result v1

    return v1
.end method

.method protected isCameraAlbum(Landroid/database/Cursor;)Z
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 329
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "serverId":Ljava/lang/String;
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isOwnerShareAlbum(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 253
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->isOwnerShareAlbum(Landroid/database/Cursor;)Z

    move-result v1

    return v1
.end method

.method protected isOwnerShareAlbum(Landroid/database/Cursor;)Z
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 259
    .local v0, "albumId":I
    const v2, 0x7ffe795f

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->mSharedAlbums:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->mSharedAlbums:Ljava/util/Map;

    .line 260
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected isPanoAlbum(Landroid/database/Cursor;)Z
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 197
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/32 v4, 0x7ffffffd

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected isVideoAlbum(Landroid/database/Cursor;)Z
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setSharedAlbums(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->mSharedAlbums:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->mSharedAlbums:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 109
    :cond_0
    if-nez p1, :cond_2

    .line 132
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 115
    :cond_3
    new-instance v0, Lcom/miui/gallery/adapter/AlbumListAdapterBase$ShareAlbum;

    invoke-direct {v0}, Lcom/miui/gallery/adapter/AlbumListAdapterBase$ShareAlbum;-><init>()V

    .line 116
    .local v0, "shareAlbum":Lcom/miui/gallery/adapter/AlbumListAdapterBase$ShareAlbum;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/adapter/AlbumListAdapterBase$ShareAlbum;->mAlbumId:Ljava/lang/String;

    .line 117
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/adapter/AlbumListAdapterBase$ShareAlbum;->mCreatorId:Ljava/lang/String;

    .line 118
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/miui/gallery/adapter/AlbumListAdapterBase$ShareAlbum;->mUserCount:I

    .line 119
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/adapter/AlbumListAdapterBase$ShareAlbum;->mOwnerNickName:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->mSharedAlbums:Ljava/util/Map;

    if-nez v1, :cond_4

    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->mSharedAlbums:Ljava/util/Map;

    .line 124
    :cond_4
    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->mSharedAlbums:Ljava/util/Map;

    iget-object v2, v0, Lcom/miui/gallery/adapter/AlbumListAdapterBase$ShareAlbum;->mAlbumId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 129
    .end local v0    # "shareAlbum":Lcom/miui/gallery/adapter/AlbumListAdapterBase$ShareAlbum;
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;->notifyDataSetChanged()V

    goto :goto_0
.end method
