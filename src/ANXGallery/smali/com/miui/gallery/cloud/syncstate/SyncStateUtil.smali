.class public Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;
.super Ljava/lang/Object;
.source "SyncStateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;
    }
.end annotation


# direct methods
.method public static getCloudSpaceInfo(Landroid/content/Context;)Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDirtyCount(Landroid/content/Context;)Lcom/miui/gallery/cloud/syncstate/DirtyCount;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v14, 0x7

    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 55
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "(%s) AND (%s = %s OR %s = %s) AND (%s = %s OR %s = %s) GROUP BY %s, %s"

    const/16 v7, 0xb

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/miui/gallery/cloud/CloudUtils;->SELECTION_OWNER_NEED_SYNC:Ljava/lang/String;

    aput-object v8, v7, v12

    const-string v8, "serverType"

    aput-object v8, v7, v10

    .line 58
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    const-string v8, "serverType"

    aput-object v8, v7, v13

    const/4 v8, 0x4

    .line 59
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "localFlag"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    .line 60
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const-string v8, "localFlag"

    aput-object v8, v7, v14

    const/16 v8, 0x8

    const/16 v9, 0x8

    .line 61
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x9

    const-string v9, "serverType"

    aput-object v9, v7, v8

    const/16 v8, 0xa

    const-string v9, "oversized"

    aput-object v9, v7, v8

    .line 55
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "OWNER_DIRTY_SELECTION":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "(%s = %d OR %s = %d)  GROUP BY %s, %s"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "localFlag"

    aput-object v8, v7, v12

    .line 64
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const-string v8, "localFlag"

    aput-object v8, v7, v11

    const/16 v8, 0x8

    .line 65
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    const/4 v8, 0x4

    const-string v9, "serverType"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "oversized"

    aput-object v9, v7, v8

    .line 63
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "SHARER_DIRTY_SELECTION":Ljava/lang/String;
    new-array v1, v13, [Ljava/lang/String;

    const-string v5, "count(*)"

    aput-object v5, v1, v12

    const-string v5, "serverType"

    aput-object v5, v1, v10

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, " CASE WHEN ((serverType = 1 AND size < %s) OR (serverType = 2 AND size < %s)) THEN 0 ELSE 1 END AS oversized"

    new-array v7, v11, [Ljava/lang/Object;

    .line 71
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getMaxImageSizeLimit()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getMaxVideoSizeLimit()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    .line 69
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v11

    .line 74
    .local v1, "PROJECTION":[Ljava/lang/String;
    sget-object v5, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    invoke-static {p0, v5, v1, v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->queryDirtyCount(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/cloud/syncstate/DirtyCount;

    move-result-object v3

    .line 75
    .local v3, "ownerDirtyCount":Lcom/miui/gallery/cloud/syncstate/DirtyCount;
    sget-object v5, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_IMAGE_URI:Landroid/net/Uri;

    invoke-static {p0, v5, v1, v2}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->queryDirtyCount(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/cloud/syncstate/DirtyCount;

    move-result-object v4

    .line 77
    .local v4, "sharerDirtyCount":Lcom/miui/gallery/cloud/syncstate/DirtyCount;
    invoke-virtual {v3, v4}, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->plus(Lcom/miui/gallery/cloud/syncstate/DirtyCount;)Lcom/miui/gallery/cloud/syncstate/DirtyCount;

    move-result-object v5

    return-object v5
.end method

.method public static getDirtySize(Landroid/content/Context;)[J
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x7

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 81
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "(%s) AND (%s = %s OR %s = %s) AND (%s = %s OR %s = %s) GROUP BY %s"

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lcom/miui/gallery/cloud/CloudUtils;->SELECTION_OWNER_NEED_SYNC:Ljava/lang/String;

    aput-object v7, v6, v11

    const-string v7, "serverType"

    aput-object v7, v6, v10

    .line 84
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x3

    const-string v8, "serverType"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    .line 85
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "localFlag"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    .line 86
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "localFlag"

    aput-object v7, v6, v12

    .line 87
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v13

    const/16 v7, 0x9

    const-string v8, "serverType"

    aput-object v8, v6, v7

    .line 81
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "OWNER_DIRTY_SIZE_SELECTION":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "(%s = %d OR %s = %d) GROUP BY %s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "localFlag"

    aput-object v7, v6, v11

    .line 91
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    const-string v7, "localFlag"

    aput-object v7, v6, v9

    const/4 v7, 0x3

    .line 92
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "serverType"

    aput-object v8, v6, v7

    .line 89
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "SHARE_DIRTY_SIZE_SELECTION":Ljava/lang/String;
    sget-object v4, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    invoke-static {p0, v4, v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->querySize(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)[J

    move-result-object v2

    .line 95
    .local v2, "owner":[J
    sget-object v4, Lcom/miui/gallery/provider/GalleryContract$ShareImage;->SHARE_URI:Landroid/net/Uri;

    invoke-static {p0, v4, v1}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->querySize(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)[J

    move-result-object v3

    .line 96
    .local v3, "share":[J
    new-array v4, v9, [J

    aget-wide v6, v2, v11

    aget-wide v8, v3, v11

    add-long/2addr v6, v8

    aput-wide v6, v4, v11

    aget-wide v6, v2, v10

    aget-wide v8, v3, v10

    add-long/2addr v6, v8

    aput-wide v6, v4, v10

    return-object v4
.end method

.method public static getQuantityStringWithUnit(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # J

    .prologue
    .line 228
    invoke-static {p1, p2}, Lmiui/cloud/MiCloudCompat;->getQuantityStringWithUnit(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSyncedCount(Landroid/content/Context;)[I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 34
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s AND (%s = %s OR %s = %s) GROUP BY %s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "(localFlag = 0 AND serverStatus = \'custom\')"

    aput-object v6, v4, v5

    const-string v5, "serverType"

    aput-object v5, v4, v7

    .line 36
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x3

    const-string v6, "serverType"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 37
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "serverType"

    aput-object v6, v4, v5

    .line 34
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "mediaSyncedSelection":Ljava/lang/String;
    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    invoke-static {p0, v2, v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->querySyncedCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)[I

    move-result-object v1

    .line 40
    .local v1, "syncedCount":[I
    return-object v1
.end method

.method public static getSyncedSize(Landroid/content/Context;)[J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 44
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s AND (%s = %s OR %s = %s) GROUP BY %s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "(localFlag = 0 AND serverStatus = \'custom\')"

    aput-object v6, v4, v5

    const-string v5, "serverType"

    aput-object v5, v4, v7

    .line 46
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x3

    const-string v6, "serverType"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 47
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "serverType"

    aput-object v6, v4, v5

    .line 44
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "mediaSyncedSelection":Ljava/lang/String;
    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    invoke-static {p0, v2, v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->querySize(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)[J

    move-result-object v1

    .line 50
    .local v1, "syncedSize":[J
    return-object v1
.end method

.method public static hasSyncedData(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 241
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s AND %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "(localFlag = 0 AND serverStatus = \'custom\')"

    aput-object v5, v2, v8

    const-string v5, "serverType IN (1,2)"

    aput-object v5, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "mediaSyncedSelection":Ljava/lang/String;
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v8

    new-instance v6, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$4;

    invoke-direct {v6}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$4;-><init>()V

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    move v0, v8

    goto :goto_0
.end method

.method public static isSyncing(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 232
    invoke-static {p0}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 233
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v1

    .line 236
    :cond_1
    const-string v2, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 237
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->getInstance()Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->isUploading()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static queryDirtyCount(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/cloud/syncstate/DirtyCount;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 129
    new-instance v6, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$2;

    invoke-direct {v6}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$2;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;

    return-object v0
.end method

.method private static querySize(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)[J
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 100
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "sum(size)"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "serverType"

    aput-object v1, v2, v0

    new-instance v6, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$1;

    invoke-direct {v6}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method private static querySyncedCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)[I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 162
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "count(*)"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "serverType"

    aput-object v1, v2, v0

    new-instance v6, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$3;

    invoke-direct {v6}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$3;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
