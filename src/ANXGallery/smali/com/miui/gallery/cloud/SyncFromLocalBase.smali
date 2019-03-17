.class public abstract Lcom/miui/gallery/cloud/SyncFromLocalBase;
.super Ljava/lang/Object;
.source "SyncFromLocalBase.java"


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field protected mContext:Landroid/content/Context;

.field protected mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mAccount"    # Landroid/accounts/Account;
    .param p3, "mExtendedAuthToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/miui/gallery/cloud/SyncFromLocalBase;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/miui/gallery/cloud/SyncFromLocalBase;->mAccount:Landroid/accounts/Account;

    .line 24
    iput-object p3, p0, Lcom/miui/gallery/cloud/SyncFromLocalBase;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .line 25
    return-void
.end method

.method private syncOneBatch(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    const-string v1, "SyncFromLocalBase"

    const-string/jumbo v2, "there is no item in local DB to sync."

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncFromLocalBase;->initRequestCloudItemList()V

    .line 111
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/SyncFromLocalBase;->generateDBImage(Landroid/database/Cursor;)Lcom/miui/gallery/data/DBItem;

    move-result-object v0

    .line 114
    .local v0, "cloud":Lcom/miui/gallery/data/DBItem;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/cloud/SyncFromLocalBase;->putToRequestCloudItemList(Lcom/miui/gallery/data/DBItem;)V

    goto :goto_1

    .line 117
    .end local v0    # "cloud":Lcom/miui/gallery/data/DBItem;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncFromLocalBase;->handleRequestCloudItemList()V

    goto :goto_0
.end method


# virtual methods
.method protected abstract generateDBImage(Landroid/database/Cursor;)Lcom/miui/gallery/data/DBItem;
.end method

.method protected abstract getBaseUri()Landroid/net/Uri;
.end method

.method protected getSelectionClause()Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    const-string v0, " (%s) "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "localFlag != 0"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "dateModified DESC "

    return-object v0
.end method

.method protected abstract handleRequestCloudItemList()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract initRequestCloudItemList()V
.end method

.method protected abstract putToRequestCloudItemList(Lcom/miui/gallery/data/DBItem;)V
.end method

.method public sync()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v7, Lcom/miui/gallery/cloud/RegularPagingProvider;

    invoke-direct {v7}, Lcom/miui/gallery/cloud/RegularPagingProvider;-><init>()V

    .line 29
    .local v7, "pagingProvider":Lcom/miui/gallery/cloud/RegularPagingProvider;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 30
    .local v8, "startTime":J
    const-string v0, "SyncFromLocalBase"

    const-string/jumbo v2, "sync from local start"

    invoke-static {v0, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v6, 0x0

    .line 36
    .local v6, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncFromLocalBase;->getSelectionClause()Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncFromLocalBase;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    .line 38
    invoke-virtual {v7}, Lcom/miui/gallery/cloud/RegularPagingProvider;->getQueryLimit()I

    move-result v2

    .line 39
    invoke-virtual {v7}, Lcom/miui/gallery/cloud/RegularPagingProvider;->getOffset()I

    move-result v4

    .line 37
    invoke-static {v0, v2, v4}, Lcom/miui/gallery/cloud/CloudUtils;->getLimitUri(Landroid/net/Uri;II)Landroid/net/Uri;

    move-result-object v1

    .line 40
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncFromLocalBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncFromLocalBase;->getSortOrder()Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 42
    if-nez v6, :cond_3

    .line 59
    :cond_1
    if-eqz v6, :cond_2

    .line 60
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_2
    const-string v0, "SyncFromLocalBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sync from local finish:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void

    .line 46
    :cond_3
    :try_start_1
    const-string v0, "SyncFromLocalBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start one batch, count="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, v6}, Lcom/miui/gallery/cloud/SyncFromLocalBase;->syncOneBatch(Landroid/database/Cursor;)V

    .line 48
    const-string v0, "SyncFromLocalBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end one batch, count="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v7, v6}, Lcom/miui/gallery/cloud/RegularPagingProvider;->updateShouldContinue(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    if-eqz v6, :cond_0

    .line 55
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 59
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 60
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method
