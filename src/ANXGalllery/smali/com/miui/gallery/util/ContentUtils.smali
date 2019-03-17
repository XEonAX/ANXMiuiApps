.class public Lcom/miui/gallery/util/ContentUtils;
.super Ljava/lang/Object;
.source "ContentUtils.java"


# direct methods
.method public static getValidFilePathForContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 12
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "content"

    .line 13
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v7, v3

    .line 33
    :cond_1
    :goto_0
    return-object v7

    .line 16
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 17
    .local v7, "path":Ljava/lang/String;
    invoke-static {p0, v7}, Lcom/miui/gallery/util/ContentUtils;->isValidFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 23
    .local v2, "projection":[Ljava/lang/String;
    new-instance v6, Lcom/miui/gallery/util/ContentUtils$1;

    invoke-direct {v6}, Lcom/miui/gallery/util/ContentUtils$1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "path":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 33
    .restart local v7    # "path":Ljava/lang/String;
    invoke-static {p0, v7}, Lcom/miui/gallery/util/ContentUtils;->isValidFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v7, v3

    goto :goto_0
.end method

.method private static isValidFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p1}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/miui/gallery/util/StorageUtils;->isInExternalStorage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
