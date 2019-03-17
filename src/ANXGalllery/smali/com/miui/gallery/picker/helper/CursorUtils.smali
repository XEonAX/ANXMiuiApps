.class public Lcom/miui/gallery/picker/helper/CursorUtils;
.super Ljava/lang/Object;
.source "CursorUtils.java"


# direct methods
.method public static getFaceId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 21
    const-string v1, "serverId"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 22
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 23
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 25
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "key needed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getFacePhotoId(Landroid/database/Cursor;)J
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 39
    const-string v1, "photo_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 41
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "key needed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getFileLength(Landroid/database/Cursor;)J
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 67
    const-string/jumbo v1, "size"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 68
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 69
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2

    .line 71
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "key needed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getId(Landroid/database/Cursor;)J
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 30
    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 31
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 32
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2

    .line 34
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "key needed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getMicroPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 57
    const-string v2, "alias_micro_thumbnail"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 58
    .local v0, "microThumbIndex":I
    const-string/jumbo v2, "sha1"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 59
    .local v1, "sha1Index":I
    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    .line 60
    invoke-static {p0, v0, v1}, Lcom/miui/gallery/adapter/BaseAdapter;->getMicroPath(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 62
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "key needed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getMimeType(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 48
    const-string v1, "mimeType"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 49
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 50
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 52
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "key needed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getSha1(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 12
    const-string/jumbo v1, "sha1"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 13
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 14
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 16
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "key needed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
