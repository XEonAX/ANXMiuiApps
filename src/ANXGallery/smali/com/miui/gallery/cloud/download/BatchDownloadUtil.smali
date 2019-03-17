.class public Lcom/miui/gallery/cloud/download/BatchDownloadUtil;
.super Ljava/lang/Object;
.source "BatchDownloadUtil.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/cloud/download/BatchDownloadUtil;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public static cleanDownloadedMark(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL_BATCH:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {p0, v0, v1}, Lcom/miui/gallery/cloud/download/BatchDownloadUtil;->cleanDownloadedMark(Landroid/content/Context;Lcom/miui/gallery/sdk/download/DownloadType;Z)V

    .line 90
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_BATCH:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {p0, v0, v1}, Lcom/miui/gallery/cloud/download/BatchDownloadUtil;->cleanDownloadedMark(Landroid/content/Context;Lcom/miui/gallery/sdk/download/DownloadType;Z)V

    .line 91
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL_BATCH:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {p0, v0, v2}, Lcom/miui/gallery/cloud/download/BatchDownloadUtil;->cleanDownloadedMark(Landroid/content/Context;Lcom/miui/gallery/sdk/download/DownloadType;Z)V

    .line 92
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_BATCH:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {p0, v0, v2}, Lcom/miui/gallery/cloud/download/BatchDownloadUtil;->cleanDownloadedMark(Landroid/content/Context;Lcom/miui/gallery/sdk/download/DownloadType;Z)V

    .line 93
    return-void
.end method

.method public static cleanDownloadedMark(Landroid/content/Context;Lcom/miui/gallery/sdk/download/DownloadType;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "isShare"    # Z

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "cleanColumn":Ljava/lang/String;
    sget-object v3, Lcom/miui/gallery/cloud/download/BatchDownloadUtil$1;->$SwitchMap$com$miui$gallery$sdk$download$DownloadType:[I

    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/DownloadType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 105
    :goto_0
    if-eqz v0, :cond_0

    .line 106
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 107
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p2}, Lcom/miui/gallery/cloud/download/BatchDownloadUtil;->getUri(Z)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s=\'\'"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 109
    .local v1, "count":I
    const-string v3, "BatchDownloadUtil"

    const-string v4, "clean %s, result %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v0, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .end local v1    # "count":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 99
    :pswitch_0
    const-string/jumbo v0, "thumbnailFile"

    .line 100
    goto :goto_0

    .line 102
    :pswitch_1
    const-string v0, "localFile"

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getFileSelection(Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;
    .locals 7
    .param p0, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 40
    const-string v0, ""

    .line 41
    .local v0, "fileSelection":Ljava/lang/String;
    sget-object v1, Lcom/miui/gallery/cloud/download/BatchDownloadUtil$1;->$SwitchMap$com$miui$gallery$sdk$download$DownloadType:[I

    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/DownloadType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 50
    :goto_0
    return-object v0

    .line 43
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(%s is null) AND "

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "thumbnailFile"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(%s is null) "

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "localFile"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getTableName(Z)Ljava/lang/String;
    .locals 1
    .param p0, "isShare"    # Z

    .prologue
    .line 58
    if-eqz p0, :cond_0

    const-string/jumbo v0, "shareImage"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cloud"

    goto :goto_0
.end method

.method private static getUri(Z)Landroid/net/Uri;
    .locals 1
    .param p0, "isShare"    # Z

    .prologue
    .line 54
    if-eqz p0, :cond_0

    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$ShareImage;->SHARE_URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static queryDownload(Landroid/content/Context;Lcom/miui/gallery/sdk/download/DownloadType;ZI)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "isShare"    # Z
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/gallery/sdk/download/DownloadType;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 62
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 63
    .local v8, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {p2}, Lcom/miui/gallery/cloud/download/BatchDownloadUtil;->getUri(Z)Landroid/net/Uri;

    move-result-object v1

    .line 64
    .local v1, "uri":Landroid/net/Uri;
    if-lez p3, :cond_2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "SELECT_id FROM %s WHERE (localFlag = 0 AND serverStatus = \'custom\') AND serverType IN (1,2) AND %s LIMIT %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/miui/gallery/cloud/download/BatchDownloadUtil;->getTableName(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {p1}, Lcom/miui/gallery/cloud/download/BatchDownloadUtil;->getFileSelection(Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "selection":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    .line 67
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/miui/gallery/cloud/download/BatchDownloadUtil;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "serverTag DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 68
    if-eqz v6, :cond_3

    .line 69
    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL_BATCH:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne p1, v0, :cond_1

    .line 71
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/preference/ThumbnailPreference;->containsThumbnailKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 78
    :catch_0
    move-exception v7

    .line 79
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "BatchDownloadUtil"

    invoke-static {v0, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 83
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v8

    .line 64
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "(localFlag = 0 AND serverStatus = \'custom\') AND serverType IN (1,2) AND %s"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/miui/gallery/cloud/download/BatchDownloadUtil;->getFileSelection(Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 81
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method
