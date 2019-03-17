.class public Lcom/miui/gallery/provider/ShareAlbumManager;
.super Ljava/lang/Object;
.source "ShareAlbumManager.java"


# direct methods
.method public static getOriginalAlbumId(J)J
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 95
    const-wide/32 v0, 0x7ffe795f

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static getUniformAlbumId(J)J
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 99
    const-wide/32 v0, 0x7ffe795f

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static isOtherShareAlbumId(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 90
    const-wide/32 v0, 0x7ffe795f

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7ffffff5

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static query(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 80
    invoke-static {p0}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v8

    .line 81
    .local v8, "account":Landroid/accounts/Account;
    if-nez v8, :cond_0

    .line 85
    :goto_0
    return-object v5

    :cond_0
    const-string v0, "(SELECT * FROM (SELECT 2147383647+_id AS _id, creatorId, albumId, serverId, nickname FROM shareAlbum LEFT JOIN (SELECT user_id AS creatorId, miliao_nick AS nickname FROM userInfo) USING (creatorId)) LEFT JOIN (SELECT COUNT(*) AS count, albumId FROM shareUser GROUP BY albumId) USING (albumId) UNION SELECT * FROM (SELECT * FROM (SELECT _id, \'%s\' AS creatorId, serverId AS albumId, serverId FROM cloud WHERE (serverType=0)) LEFT JOIN (SELECT user_id AS creatorId, %s AS nickname FROM userInfo) USING (creatorId)) LEFT JOIN (SELECT COUNT(*) AS count, albumId FROM cloudUser GROUP BY albumId) USING (albumId))"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0
.end method
