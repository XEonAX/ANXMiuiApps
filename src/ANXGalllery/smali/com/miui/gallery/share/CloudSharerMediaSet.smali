.class public Lcom/miui/gallery/share/CloudSharerMediaSet;
.super Ljava/lang/Object;
.source "CloudSharerMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;
    }
.end annotation


# static fields
.field private static final BASE_OTHER_SET_URI:Landroid/net/Uri;

.field private static final BASE_OWNER_SET_URI:Landroid/net/Uri;


# instance fields
.field private mItem:Lcom/miui/gallery/data/DBItem;

.field private mNullItem:Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;

.field private mPath:Lcom/miui/gallery/share/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    sput-object v0, Lcom/miui/gallery/share/CloudSharerMediaSet;->BASE_OTHER_SET_URI:Landroid/net/Uri;

    .line 26
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    sput-object v0, Lcom/miui/gallery/share/CloudSharerMediaSet;->BASE_OWNER_SET_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/share/Path;)V
    .locals 0
    .param p1, "path"    # Lcom/miui/gallery/share/Path;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mPath:Lcom/miui/gallery/share/Path;

    .line 33
    invoke-direct {p0, p1}, Lcom/miui/gallery/share/CloudSharerMediaSet;->reloadItem(Lcom/miui/gallery/share/Path;)V

    .line 34
    return-void
.end method

.method public static buildPathById(J)Lcom/miui/gallery/share/Path;
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 102
    new-instance v0, Lcom/miui/gallery/share/Path;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/gallery/share/Path;-><init>(JZ)V

    return-object v0
.end method

.method private reloadItem(Lcom/miui/gallery/share/Path;)V
    .locals 6
    .param p1, "path"    # Lcom/miui/gallery/share/Path;

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/miui/gallery/share/Path;->isOtherShared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p1}, Lcom/miui/gallery/share/Path;->getId()J

    move-result-wide v0

    .line 38
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->getDBShareAlbumByLocalId(Ljava/lang/String;)Lcom/miui/gallery/data/DBShareAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;

    invoke-direct {v0, p0}, Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;-><init>(Lcom/miui/gallery/share/CloudSharerMediaSet;)V

    iput-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mNullItem:Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;

    .line 49
    :cond_0
    return-void

    .line 41
    :cond_1
    sget-object v0, Lcom/miui/gallery/share/CloudSharerMediaSet;->BASE_OWNER_SET_URI:Landroid/net/Uri;

    .line 42
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "_id"

    .line 44
    invoke-virtual {p1}, Lcom/miui/gallery/share/Path;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/cloud/CloudUtils;->getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    goto :goto_0
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getShareAlbumId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getAlbumShareState(Ljava/lang/String;)I
    .locals 2
    .param p1, "uiState"    # Ljava/lang/String;

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getAlbumStatus()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lcom/miui/gallery/share/CloudSharerMediaSet;->hasShareDetailInfo()Z

    move-result v1

    .line 82
    invoke-static {v0, p1, v1}, Lcom/miui/gallery/share/AlbumShareState;->getState(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAlbumStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mNullItem:Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;

    invoke-virtual {v0}, Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;->getAlbumStatus()Ljava/lang/String;

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mPath:Lcom/miui/gallery/share/Path;

    invoke-virtual {v0}, Lcom/miui/gallery/share/Path;->isOtherShared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    check-cast v0, Lcom/miui/gallery/data/DBShareAlbum;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBShareAlbum;->getAlbumStatus()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method protected getBabyInfo()Lcom/miui/gallery/cloud/baby/BabyInfo;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mNullItem:Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;

    invoke-virtual {v0}, Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;->getBabyInfo()Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mPath:Lcom/miui/gallery/share/Path;

    invoke-virtual {v0}, Lcom/miui/gallery/share/Path;->isOtherShared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    check-cast v0, Lcom/miui/gallery/data/DBShareAlbum;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBShareAlbum;->getBabyInfoJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/cloud/baby/BabyInfo;->fromJSON(Ljava/lang/String;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    check-cast v0, Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBCloud;->getBabyInfoJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/cloud/baby/BabyInfo;->fromJSON(Ljava/lang/String;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getCreatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mNullItem:Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;

    invoke-virtual {v0}, Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;->getCreatorId()Ljava/lang/String;

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mPath:Lcom/miui/gallery/share/Path;

    invoke-virtual {v0}, Lcom/miui/gallery/share/Path;->isOtherShared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    check-cast v0, Lcom/miui/gallery/data/DBShareAlbum;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBShareAlbum;->getCreatorId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    check-cast v0, Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBCloud;->getCreatorId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mNullItem:Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;

    invoke-virtual {v0}, Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mPath:Lcom/miui/gallery/share/Path;

    invoke-virtual {v0}, Lcom/miui/gallery/share/Path;->isOtherShared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    check-cast v0, Lcom/miui/gallery/data/DBShareAlbum;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBShareAlbum;->getFileName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    check-cast v0, Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBCloud;->getFileName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getId()J
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    if-nez v0, :cond_0

    .line 139
    const-wide/16 v0, 0x0

    .line 141
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    invoke-interface {v0}, Lcom/miui/gallery/data/DBItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected getPath()Lcom/miui/gallery/share/Path;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mPath:Lcom/miui/gallery/share/Path;

    return-object v0
.end method

.method public getPublicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mNullItem:Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;

    invoke-virtual {v0}, Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;->getPublicUrl()Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mPath:Lcom/miui/gallery/share/Path;

    invoke-virtual {v0}, Lcom/miui/gallery/share/Path;->isOtherShared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    check-cast v0, Lcom/miui/gallery/data/DBShareAlbum;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBShareAlbum;->getPublicUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    check-cast v0, Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBCloud;->getPublicUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getShareAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mNullItem:Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;

    invoke-virtual {v0}, Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;->getShareAlbumId()Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mPath:Lcom/miui/gallery/share/Path;

    invoke-virtual {v0}, Lcom/miui/gallery/share/Path;->isOtherShared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    check-cast v0, Lcom/miui/gallery/data/DBShareAlbum;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBShareAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    check-cast v0, Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBCloud;->getServerId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mNullItem:Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;

    invoke-virtual {v0}, Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mPath:Lcom/miui/gallery/share/Path;

    invoke-virtual {v0}, Lcom/miui/gallery/share/Path;->isOtherShared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    check-cast v0, Lcom/miui/gallery/data/DBShareAlbum;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBShareAlbum;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    check-cast v0, Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBCloud;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getShareUrlLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mNullItem:Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;

    invoke-virtual {v0}, Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;->getShareUrlLong()Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mPath:Lcom/miui/gallery/share/Path;

    invoke-virtual {v0}, Lcom/miui/gallery/share/Path;->isOtherShared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    check-cast v0, Lcom/miui/gallery/data/DBShareAlbum;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBShareAlbum;->getShareUrlLong()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getSharerInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mNullItem:Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;

    invoke-virtual {v0}, Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;->getSharerInfo()Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mPath:Lcom/miui/gallery/share/Path;

    invoke-virtual {v0}, Lcom/miui/gallery/share/Path;->isOtherShared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    check-cast v0, Lcom/miui/gallery/data/DBShareAlbum;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBShareAlbum;->getSharerInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public declared-synchronized hasShareDetailInfo()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getShareUrlLong()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "longUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 90
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getSharerInfo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .line 91
    goto :goto_0

    .line 94
    :cond_2
    invoke-static {v1}, Lcom/miui/gallery/share/AlbumShareOperations;->parseInvitation(Ljava/lang/String;)Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;

    move-result-object v0

    .line 95
    .local v0, "invitation":Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;->hasSharerInfo()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    move v2, v3

    .line 98
    goto :goto_0

    .line 87
    .end local v0    # "invitation":Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;
    .end local v1    # "longUrl":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isNormalStatus()Z
    .locals 2

    .prologue
    .line 64
    const-string v0, "normal"

    invoke-virtual {p0}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getAlbumStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mNullItem:Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;

    invoke-virtual {v0}, Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;->isPublic()Z

    move-result v0

    .line 228
    :goto_0
    return v0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mPath:Lcom/miui/gallery/share/Path;

    invoke-virtual {v0}, Lcom/miui/gallery/share/Path;->isOtherShared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    check-cast v0, Lcom/miui/gallery/data/DBShareAlbum;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBShareAlbum;->getIsPublic()Z

    move-result v0

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mItem:Lcom/miui/gallery/data/DBItem;

    check-cast v0, Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBCloud;->isPublic()Z

    move-result v0

    goto :goto_0
.end method

.method public isSharerAlbum()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mPath:Lcom/miui/gallery/share/Path;

    invoke-virtual {v0}, Lcom/miui/gallery/share/Path;->isOtherShared()Z

    move-result v0

    return v0
.end method

.method public rereloadItem()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/share/CloudSharerMediaSet;->mPath:Lcom/miui/gallery/share/Path;

    invoke-direct {p0, v0}, Lcom/miui/gallery/share/CloudSharerMediaSet;->reloadItem(Lcom/miui/gallery/share/Path;)V

    .line 53
    return-void
.end method

.method public setLongUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "longUrl"    # Ljava/lang/String;

    .prologue
    .line 113
    return-void
.end method

.method public setSharerInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "sharerInfo"    # Ljava/lang/String;

    .prologue
    .line 119
    return-void
.end method
