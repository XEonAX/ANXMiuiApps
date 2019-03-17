.class public Lcom/xiaomi/push/service/GeoFenceMessageDao;
.super Ljava/lang/Object;
.source "GeoFenceMessageDao.java"


# static fields
.field private static volatile sInstance:Lcom/xiaomi/push/service/GeoFenceMessageDao;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/xiaomi/push/service/GeoFenceMessageDao;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceMessageDao;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sget-object v0, Lcom/xiaomi/push/service/GeoFenceMessageDao;->sInstance:Lcom/xiaomi/push/service/GeoFenceMessageDao;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lcom/xiaomi/push/service/GeoFenceMessageDao;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/GeoFenceMessageDao;->sInstance:Lcom/xiaomi/push/service/GeoFenceMessageDao;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/xiaomi/push/service/GeoFenceMessageDao;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/GeoFenceMessageDao;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/GeoFenceMessageDao;->sInstance:Lcom/xiaomi/push/service/GeoFenceMessageDao;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/GeoFenceMessageDao;->sInstance:Lcom/xiaomi/push/service/GeoFenceMessageDao;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized queryTheCursor(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v9, 0x0

    .line 240
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/misc/ThreadUtils;->checkNotUIThread(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :try_start_1
    const-string v1, "geoMessage"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 245
    :goto_0
    monitor-exit p0

    return-object v0

    .line 243
    :catch_0
    move-exception v8

    .line 244
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v9

    .line 245
    goto :goto_0

    .line 240
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized canShownGeoMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "geoId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/push/service/module/GeoFenceMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 179
    monitor-enter p0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/misc/ThreadUtils;->checkNotUIThread(Z)V

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v4

    .line 194
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 184
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/push/service/GeoFenceMessageDao;->findAllGeoFencingMessage()Ljava/util/ArrayList;

    move-result-object v0

    .line 185
    .local v0, "allGeoMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/push/service/module/GeoFenceMessage;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/push/service/module/GeoFenceMessage;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/service/module/GeoFenceMessage;

    .line 187
    .local v2, "message":Lcom/xiaomi/push/service/module/GeoFenceMessage;
    invoke-virtual {v2}, Lcom/xiaomi/push/service/module/GeoFenceMessage;->getGeoId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 188
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 192
    .end local v0    # "allGeoMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/push/service/module/GeoFenceMessage;>;"
    .end local v2    # "message":Lcom/xiaomi/push/service/module/GeoFenceMessage;
    .end local v3    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/push/service/module/GeoFenceMessage;>;"
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v4

    .line 194
    goto :goto_0

    .line 179
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized deleteGeoMessageByGeoId(Ljava/lang/String;)I
    .locals 8
    .param p1, "geoId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 130
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/misc/ThreadUtils;->checkNotUIThread(Z)V

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 141
    :goto_0
    monitor-exit p0

    return v2

    .line 135
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/xiaomi/push/service/GeoFenceMessageDao;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 136
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "geoMessage"

    const-string v5, "geo_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 137
    .local v2, "result":I
    iget-object v4, p0, Lcom/xiaomi/push/service/GeoFenceMessageDao;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->closeDatabase()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    .line 141
    goto :goto_0

    .line 130
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized deleteGeoMessagesByMessageId(Ljava/lang/String;)I
    .locals 8
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 109
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/misc/ThreadUtils;->checkNotUIThread(Z)V

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 120
    :goto_0
    monitor-exit p0

    return v2

    .line 114
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/xiaomi/push/service/GeoFenceMessageDao;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 115
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "geoMessage"

    const-string v5, "message_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 116
    .local v2, "result":I
    iget-object v4, p0, Lcom/xiaomi/push/service/GeoFenceMessageDao;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->closeDatabase()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    .line 120
    goto :goto_0

    .line 109
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized findAllGeoFencingMessage()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/push/service/module/GeoFenceMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    monitor-enter p0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/misc/ThreadUtils;->checkNotUIThread(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :try_start_1
    iget-object v5, p0, Lcom/xiaomi/push/service/GeoFenceMessageDao;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 207
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/GeoFenceMessageDao;->queryTheCursor(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 209
    .local v0, "c":Landroid/database/Cursor;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v3, "geoFenceMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/push/service/module/GeoFenceMessage;>;"
    if-eqz v0, :cond_1

    .line 213
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 214
    new-instance v4, Lcom/xiaomi/push/service/module/GeoFenceMessage;

    invoke-direct {v4}, Lcom/xiaomi/push/service/module/GeoFenceMessage;-><init>()V

    .line 215
    .local v4, "messageTemp":Lcom/xiaomi/push/service/module/GeoFenceMessage;
    const-string v5, "message_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaomi/push/service/module/GeoFenceMessage;->setMessageId(Ljava/lang/String;)V

    .line 216
    const-string v5, "geo_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaomi/push/service/module/GeoFenceMessage;->setGeoId(Ljava/lang/String;)V

    .line 217
    const-string v5, "content"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaomi/push/service/module/GeoFenceMessage;->setContent([B)V

    .line 218
    const-string v5, "action"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaomi/push/service/module/GeoFenceMessage;->setAction(I)V

    .line 219
    const-string v5, "deadline"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/xiaomi/push/service/module/GeoFenceMessage;->setDeadline(J)V

    .line 220
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 227
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "geoFenceMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/push/service/module/GeoFenceMessage;>;"
    .end local v4    # "messageTemp":Lcom/xiaomi/push/service/module/GeoFenceMessage;
    :catch_0
    move-exception v2

    .line 228
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    const/4 v3, 0x0

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-object v3

    .line 222
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "geoFenceMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/push/service/module/GeoFenceMessage;>;"
    :cond_0
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 225
    :cond_1
    iget-object v5, p0, Lcom/xiaomi/push/service/GeoFenceMessageDao;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->closeDatabase()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 204
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "geoFenceMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/push/service/module/GeoFenceMessage;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized insertGeoMessages(Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v6, 0x0

    .line 73
    monitor-enter p0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/misc/ThreadUtils;->checkNotUIThread(Z)V

    .line 74
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-gtz v7, :cond_1

    :cond_0
    move v5, v6

    .line 99
    :goto_0
    monitor-exit p0

    return v5

    .line 79
    :cond_1
    const/4 v5, 0x1

    .line 82
    .local v5, "result":Z
    :try_start_1
    iget-object v7, p0, Lcom/xiaomi/push/service/GeoFenceMessageDao;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 83
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 84
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 85
    .local v4, "message":Landroid/content/ContentValues;
    const-string v8, "geoMessage"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 86
    .local v2, "insertResult":J
    const-wide/16 v8, -0x1

    cmp-long v8, v8, v2

    if-nez v8, :cond_2

    .line 87
    const/4 v5, 0x0

    .line 91
    .end local v2    # "insertResult":J
    .end local v4    # "message":Landroid/content/ContentValues;
    :cond_3
    if-eqz v5, :cond_4

    .line 92
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 94
    :cond_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 95
    iget-object v7, p0, Lcom/xiaomi/push/service/GeoFenceMessageDao;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->closeDatabase()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 97
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v5, v6

    .line 99
    goto :goto_0

    .line 73
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "result":Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method
