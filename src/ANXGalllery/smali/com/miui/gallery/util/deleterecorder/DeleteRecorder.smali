.class public Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;
.super Ljava/lang/Object;
.source "DeleteRecorder.java"


# direct methods
.method public static clearAllRecords()Z
    .locals 3

    .prologue
    .line 89
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/dao/GalleryEntityManager;->deleteAll(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    const/4 v1, 0x1

    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 91
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "DeleteRecorder"

    const-string v2, "clearAllRecords occur error %s."

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static clearExpiredRecords()Z
    .locals 6

    .prologue
    .line 51
    const/16 v0, 0x2710

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0x9a7ec800L

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->clearExpiredRecords(IJ)Z

    move-result v0

    return v0
.end method

.method public static clearExpiredRecords(IJ)Z
    .locals 7
    .param p0, "maxRecordCount"    # I
    .param p1, "expireTime"    # J

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-static {}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->queryRecordCount()I

    move-result v1

    if-gt v1, p0, :cond_0

    .line 58
    const-string v1, "DeleteRecorder"

    const-string v2, "Record count doesn\'t exceed max"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_0
    return v0

    .line 61
    :cond_0
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    const-string/jumbo v3, "timestamp<=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 63
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 61
    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/gallery/dao/GalleryEntityManager;->delete(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    .line 64
    .local v0, "result":Z
    if-nez v0, :cond_1

    .line 65
    const-string v1, "DeleteRecorder"

    const-string v2, "Failed to delete records before %s"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_1
    const-string v1, "DeleteRecorder"

    const-string v2, "Done delete records before %s"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getHashAccount()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 153
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static onAddAccount()V
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->getHashAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->onAddAccount(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method static onAddAccount(Ljava/lang/String;)V
    .locals 6
    .param p0, "newAccount"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    const-string v2, "DeleteRecorder"

    const-string v3, "New account is null, skip clean process"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 129
    :cond_0
    const/4 v1, 0x0

    .line 130
    .local v1, "oldAccount":Ljava/lang/String;
    const-string v2, "reason=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v4, 0x5b

    .line 131
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 130
    invoke-static {v2, v3}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->queryRecords(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 132
    .local v0, "deleteAccountRecords":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/deleterecorder/DeleteRecord;>;"
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    invoke-virtual {v2}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 135
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    const-string v2, "DeleteRecorder"

    const-string v3, "Old account is null, skip clean process"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    const-string v2, "DeleteRecorder"

    const-string v3, "New account is same as old account, skip clean process"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_3
    invoke-static {}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->clearAllRecords()Z

    move-result v2

    if-nez v2, :cond_4

    .line 145
    const-string v2, "DeleteRecorder"

    const-string v3, "Fail to clear records after logged in with a different account"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_4
    const-string v2, "DeleteRecorder"

    const-string v3, "Done clearing records after logged in with a different account"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onDeleteAccount()V
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->getHashAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->onDeleteAccount(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method static onDeleteAccount(Ljava/lang/String;)V
    .locals 3
    .param p0, "account"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    const/16 v1, 0x5b

    const-string v2, "DeleteRecorder"

    invoke-direct {v0, v1, p0, v2}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->record(Lcom/miui/gallery/util/deleterecorder/DeleteRecord;)I

    .line 111
    const-string v0, "DeleteRecorder"

    const-string v1, "On record delete account operation, %s"

    invoke-static {v0, v1, p0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    :cond_0
    return-void
.end method

.method private static queryRecordCount()I
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 73
    const/4 v9, 0x0

    .line 75
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/dao/GalleryEntityManager;->rawQuery(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 77
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 81
    :goto_0
    invoke-static {v9}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 83
    :goto_1
    return v0

    :cond_0
    move v0, v11

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception v10

    .line 79
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "DeleteRecorder"

    invoke-static {v0, v10}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-static {v9}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move v0, v11

    .line 83
    goto :goto_1

    .line 81
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v9}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static queryRecords(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "selection"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/deleterecorder/DeleteRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    invoke-virtual {v0, v1, p0, p1}, Lcom/miui/gallery/dao/GalleryEntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static record(Lcom/miui/gallery/util/deleterecorder/DeleteRecord;)I
    .locals 5
    .param p0, "record"    # Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v1

    .line 31
    :cond_1
    const-string v2, "DeleteRecorder"

    const-string v3, "Start to insert %s"

    invoke-static {v2, v3, p0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/miui/gallery/dao/GalleryEntityManager;->insert(Lcom/miui/gallery/dao/base/Entity;)Z

    move-result v0

    .line 33
    .local v0, "result":Z
    const-string v2, "DeleteRecorder"

    const-string v3, "Done inserting operation, result %s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static record(Ljava/util/Collection;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/miui/gallery/util/deleterecorder/DeleteRecord;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "operationRecords":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery/util/deleterecorder/DeleteRecord;>;"
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    .line 43
    :cond_0
    const-string v1, "DeleteRecorder"

    const-string v2, "Start to insert %s"

    const-string v3, "\n"

    invoke-static {v3, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/gallery/dao/GalleryEntityManager;->insert(Ljava/util/Collection;)I

    move-result v0

    .line 45
    .local v0, "rows":I
    const-string v1, "DeleteRecorder"

    const-string v2, "Done inserting %d operations, affected %d rows"

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
