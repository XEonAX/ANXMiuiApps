.class public Lcom/miui/gallery/util/MediaCursorHelper;
.super Ljava/lang/Object;
.source "MediaCursorHelper.java"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "microthumbfile"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "alias_create_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exifImageWidth"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "exifImageLength"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "exifGPSLatitude"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "exifGPSLatitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "exifGPSLongitude"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "exifGPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "alias_sync_state"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "localGroupId"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "secretKey"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "creatorId"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "alias_is_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "serverId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/util/MediaCursorHelper;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public static getAlbumId(Landroid/database/Cursor;)J
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 149
    const/16 v0, 0x10

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCreateTime(Landroid/database/Cursor;)J
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 79
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCreator(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 137
    const/16 v0, 0x13

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDuration(Landroid/database/Cursor;)I
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 99
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public static getFilePath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 71
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHeight(Landroid/database/Cursor;)I
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 95
    const/16 v0, 0x9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public static getLatitude(Landroid/database/Cursor;)D
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 107
    const/16 v2, 0xb

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "latitude":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    const/16 v2, 0xc

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "latitudeRef":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/miui/gallery/data/LocationUtil;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v2

    .line 112
    .end local v1    # "latitudeRef":Ljava/lang/String;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getLocation(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 83
    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLongitude(Landroid/database/Cursor;)D
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 116
    const/16 v2, 0xd

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "longitude":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    const/16 v2, 0xe

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "longitudeRef":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/miui/gallery/data/LocationUtil;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v2

    .line 121
    .end local v1    # "longitudeRef":Ljava/lang/String;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getMediaId(Landroid/database/Cursor;)J
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMicroThumbnailPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMimeType(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 75
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSecretKey(Landroid/database/Cursor;)[B
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 103
    const/16 v0, 0x11

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getServerId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 145
    const/16 v0, 0x15

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSha1(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 133
    const/16 v0, 0x12

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSize(Landroid/database/Cursor;)J
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 87
    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSyncState(Landroid/database/Cursor;)I
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 125
    const/16 v0, 0xf

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public static getThumbnailPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 67
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWidth(Landroid/database/Cursor;)I
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 91
    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public static isFavorite(Landroid/database/Cursor;)I
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 141
    const/16 v0, 0x14

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public static isSynced(Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 129
    invoke-static {p0}, Lcom/miui/gallery/util/MediaCursorHelper;->getSyncState(Landroid/database/Cursor;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
