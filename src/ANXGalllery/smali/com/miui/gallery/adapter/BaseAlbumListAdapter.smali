.class public abstract Lcom/miui/gallery/adapter/BaseAlbumListAdapter;
.super Lcom/miui/gallery/adapter/BaseGalleryAdapter;
.source "BaseAlbumListAdapter.java"

# interfaces
.implements Lcom/miui/gallery/model/AlbumConstants;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;",
        ">",
        "Lcom/miui/gallery/adapter/BaseGalleryAdapter",
        "<",
        "Lcom/miui/gallery/model/Album;",
        "TVH;>;",
        "Lcom/miui/gallery/model/AlbumConstants;"
    }
.end annotation


# instance fields
.field private mData:Landroid/support/v7/util/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/SortedList",
            "<",
            "Lcom/miui/gallery/model/Album;",
            ">;"
        }
    .end annotation
.end field

.field private mPeopleFaceCover:Landroid/os/Bundle;

.field private mSharedAlbums:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BaseGalleryAdapter;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mPeopleFaceCover:Landroid/os/Bundle;

    .line 33
    new-instance v0, Landroid/support/v7/util/SortedList;

    const-class v1, Lcom/miui/gallery/model/Album;

    new-instance v2, Lcom/miui/gallery/adapter/BaseAlbumListAdapter$1;

    invoke-direct {v2, p0, p0}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter$1;-><init>(Lcom/miui/gallery/adapter/BaseAlbumListAdapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v7/util/SortedList;-><init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;)V

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mData:Landroid/support/v7/util/SortedList;

    .line 74
    return-void
.end method

.method protected static isAutoUploadedAlbum(Lcom/miui/gallery/model/Album;)Z
    .locals 4
    .param p0, "album"    # Lcom/miui/gallery/model/Album;

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/miui/gallery/model/Album;->getAttributes()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/miui/gallery/model/Album;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isSystemAlbum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/model/Album;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isScreenshotsAlbum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isOtherShareAlbum(J)Z

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

.method public static isFaceAlbum(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 184
    const-wide/32 v0, 0x7ffffffe

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFaceAlbum(Lcom/miui/gallery/model/Album;)Z
    .locals 2
    .param p1, "album"    # Lcom/miui/gallery/model/Album;

    .prologue
    .line 180
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isFaceAlbum(J)Z

    move-result v0

    return v0
.end method

.method public static isFavoritesAlbum(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 200
    const-wide/32 v0, 0x7ffffffa

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFavoritesAlbum(Lcom/miui/gallery/model/Album;)Z
    .locals 2
    .param p0, "album"    # Lcom/miui/gallery/model/Album;

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isFavoritesAlbum(J)Z

    move-result v0

    return v0
.end method

.method public static isOtherShareAlbum(J)Z
    .locals 2
    .param p0, "albumId"    # J

    .prologue
    .line 258
    invoke-static {p0, p1}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v0

    return v0
.end method

.method public static isOthersAlbum(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 204
    const-wide/32 v0, 0x7ffffff9

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRecentAlbum(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 192
    const-wide/32 v0, 0x7ffffffc

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRecentAlbum(Lcom/miui/gallery/model/Album;)Z
    .locals 2
    .param p0, "album"    # Lcom/miui/gallery/model/Album;

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isRecentAlbum(J)Z

    move-result v0

    return v0
.end method

.method private static isScreenshotsAlbum(Ljava/lang/String;)Z
    .locals 2
    .param p0, "serverId"    # Ljava/lang/String;

    .prologue
    .line 324
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSystemAlbum(Ljava/lang/String;)Z
    .locals 6
    .param p0, "serverId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 338
    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Album;->ALL_SYSTEM_ALBUM_SERVER_IDS:[Ljava/lang/Long;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 339
    .local v0, "albumId":Ljava/lang/Long;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 340
    const/4 v1, 0x1

    .line 343
    .end local v0    # "albumId":Ljava/lang/Long;
    :cond_0
    return v1

    .line 338
    .restart local v0    # "albumId":Ljava/lang/Long;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public albumUnwriteable(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 296
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 297
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->isImmutable()Z

    move-result v1

    return v1
.end method

.method public getAlbumCount(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 167
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 168
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getCount()I

    move-result v1

    return v1
.end method

.method public getAlbumLocalPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 162
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 163
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAlbumName(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 157
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 158
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getAlbumName(Lcom/miui/gallery/model/Album;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getAlbumName(Lcom/miui/gallery/model/Album;)Ljava/lang/String;
    .locals 3
    .param p1, "album"    # Lcom/miui/gallery/model/Album;

    .prologue
    .line 209
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isCameraAlbum(Lcom/miui/gallery/model/Album;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0032

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "albumName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 211
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isScreenshotsAlbum(Lcom/miui/gallery/model/Album;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c004b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 213
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isVideoAlbum(Lcom/miui/gallery/model/Album;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c005c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 215
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isFaceAlbum(Lcom/miui/gallery/model/Album;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0036

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 217
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isPanoAlbum(Lcom/miui/gallery/model/Album;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 218
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0047

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 219
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_4
    invoke-static {p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isRecentAlbum(Lcom/miui/gallery/model/Album;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 220
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c003f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 221
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_5
    invoke-static {p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isFavoritesAlbum(Lcom/miui/gallery/model/Album;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 222
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0037

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 224
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0
.end method

.method public getAttributes(I)Ljava/lang/Long;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 301
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 302
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getAttributes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public getBabyAlbumPeopleId(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 271
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 272
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getPeopleId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBabyInfo(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 281
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 282
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getBabyInfo()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBabySharerInfo(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 286
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 287
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getBabyShareInfo()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getData()Landroid/support/v7/util/SortedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/util/SortedList",
            "<",
            "Lcom/miui/gallery/model/Album;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mData:Landroid/support/v7/util/SortedList;

    return-object v0
.end method

.method public getDownloadUri(I)Landroid/net/Uri;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 137
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 138
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getCoverSyncState()I

    move-result v1

    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getCoverId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getDownloadUri(IJ)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getFileLength(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 143
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 144
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getCoverSize()J

    move-result-wide v2

    return-wide v2
.end method

.method public getItem(I)Lcom/miui/gallery/model/Album;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 390
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mData:Landroid/support/v7/util/SortedList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mData:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mData:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/model/Album;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 403
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mData:Landroid/support/v7/util/SortedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mData:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 395
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mData:Landroid/support/v7/util/SortedList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mData:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mData:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/model/Album;

    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v0

    .line 398
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/adapter/BaseGalleryAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLocalPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 131
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 132
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getCoverPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPeopleFaceCover()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 126
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mPeopleFaceCover:Landroid/os/Bundle;

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    sget-object v0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getServerId(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 291
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 292
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getServerId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getShareAlbumInfo(I)Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 248
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 249
    .local v0, "album":Lcom/miui/gallery/model/Album;
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mSharedAlbums:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mSharedAlbums:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getThumbnailInfoOfBaby(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 276
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 277
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getThumbnailInfoOfBaby()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected initDisplayImageOptions()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    const v1, 0x7f0200dd

    .line 78
    invoke-super {p0}, Lcom/miui/gallery/adapter/BaseGalleryAdapter;->initDisplayImageOptions()V

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 82
    return-void
.end method

.method public isAutoUploadedAlbum(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 352
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 353
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-static {v0}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isAutoUploadedAlbum(Lcom/miui/gallery/model/Album;)Z

    move-result v1

    return v1
.end method

.method public isAutoUploadedAlbum(JLjava/lang/String;J)Z
    .locals 4
    .param p1, "attributes"    # J
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "albumId"    # J

    .prologue
    .line 362
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    const-wide/16 v0, 0x1

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 363
    invoke-static {p3}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isSystemAlbum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isScreenshotsAlbum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p4, p5}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isOtherShareAlbum(J)Z

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

.method public isBabyAlbum(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 262
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 263
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isBabyAlbum(Lcom/miui/gallery/model/Album;)Z

    move-result v1

    return v1
.end method

.method public isBabyAlbum(Lcom/miui/gallery/model/Album;)Z
    .locals 1
    .param p1, "album"    # Lcom/miui/gallery/model/Album;

    .prologue
    .line 267
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getBabyInfo()Ljava/lang/String;

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

.method public isCameraAlbum(Lcom/miui/gallery/model/Album;)Z
    .locals 2
    .param p1, "album"    # Lcom/miui/gallery/model/Album;

    .prologue
    .line 311
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isForceTypeTime(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 148
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 149
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isForceTypeTime(Lcom/miui/gallery/model/Album;)Z

    move-result v1

    return v1
.end method

.method public isForceTypeTime(Lcom/miui/gallery/model/Album;)Z
    .locals 2
    .param p1, "album"    # Lcom/miui/gallery/model/Album;

    .prologue
    .line 153
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getSortBy()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->isForceTopAlbumByTopTime(J)Z

    move-result v0

    return v0
.end method

.method public isHiddenAlbum(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 347
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 348
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getAttributes()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOtherAlbum(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 367
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 368
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isOtherAlbum(Lcom/miui/gallery/model/Album;)Z

    move-result v1

    return v1
.end method

.method public isOtherAlbum(Lcom/miui/gallery/model/Album;)Z
    .locals 2
    .param p1, "album"    # Lcom/miui/gallery/model/Album;

    .prologue
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    const/4 v0, 0x1

    .line 372
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getAlbumClassification()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOtherShareAlbum(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 253
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 254
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isOtherShareAlbum(J)Z

    move-result v1

    return v1
.end method

.method public isOwnerShareAlbum(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 238
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 239
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isOwnerShareAlbum(J)Z

    move-result v1

    return v1
.end method

.method public isOwnerShareAlbum(J)Z
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 243
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    const-wide/32 v0, 0x7ffe795f

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mSharedAlbums:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mSharedAlbums:Ljava/util/Map;

    .line 244
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanoAlbum(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 328
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 329
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isPanoAlbum(Lcom/miui/gallery/model/Album;)Z

    move-result v1

    return v1
.end method

.method protected isPanoAlbum(Lcom/miui/gallery/model/Album;)Z
    .locals 4
    .param p1, "album"    # Lcom/miui/gallery/model/Album;

    .prologue
    .line 176
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffffd

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenshotsAlbum(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 315
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 316
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isScreenshotsAlbum(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isScreenshotsAlbum(Lcom/miui/gallery/model/Album;)Z
    .locals 1
    .param p1, "album"    # Lcom/miui/gallery/model/Album;

    .prologue
    .line 320
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isScreenshotsAlbum(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isShareAlbum(J)Z
    .locals 1
    .param p1, "albumId"    # J

    .prologue
    .line 234
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-static {p1, p2}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isOtherShareAlbum(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isOwnerShareAlbum(J)Z

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

.method public isShowedPhotosTabAlbum(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 376
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 377
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getAttributes()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSystemAlbum(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 333
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 334
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->isSystemAlbum(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected isVideoAlbum(Lcom/miui/gallery/model/Album;)Z
    .locals 4
    .param p1, "album"    # Lcom/miui/gallery/model/Album;

    .prologue
    .line 172
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPeopleFaceCover(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 116
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    if-nez p1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mPeopleFaceCover:Landroid/os/Bundle;

    .line 122
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setSharedAlbums(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 86
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter<TVH;>;"
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mSharedAlbums:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mSharedAlbums:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 89
    :cond_0
    if-nez p1, :cond_2

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 95
    :cond_3
    new-instance v0, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;

    invoke-direct {v0}, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;-><init>()V

    .line 96
    .local v0, "shareAlbum":Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->mAlbumId:Ljava/lang/String;

    .line 97
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->mCreatorId:Ljava/lang/String;

    .line 98
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->mUserCount:I

    .line 99
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->mOwnerNickName:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mSharedAlbums:Ljava/util/Map;

    if-nez v1, :cond_4

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mSharedAlbums:Ljava/util/Map;

    .line 104
    :cond_4
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->mSharedAlbums:Ljava/util/Map;

    iget-object v2, v0, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->mAlbumId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 109
    .end local v0    # "shareAlbum":Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
