.class final Lcom/miui/gallery/share/AlbumShareOperations$12;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareOperations;->syncAllUserInfoFromNetwork()Lcom/miui/gallery/share/AsyncResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/miui/gallery/share/AsyncResult",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/miui/gallery/share/AsyncResult;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1124
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1126
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v15

    .line 1127
    .local v15, "userIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_USER_URI:Landroid/net/Uri;

    const-string/jumbo v4, "userId"

    invoke-static {v2, v3, v4, v15}, Lcom/miui/gallery/share/AlbumShareOperations;->access$1100(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1128
    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_USER_URI:Landroid/net/Uri;

    const-string/jumbo v4, "userId"

    invoke-static {v2, v3, v4, v15}, Lcom/miui/gallery/share/AlbumShareOperations;->access$1100(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1129
    invoke-static {}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->getAccountName()Ljava/lang/String;

    move-result-object v12

    .line 1130
    .local v12, "selfId":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1131
    invoke-interface {v15, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1135
    :cond_0
    sget-object v4, Lcom/miui/gallery/cloud/GalleryCloudUtils;->USER_INFO_URI:Landroid/net/Uri;

    monitor-enter v4

    .line 1136
    :try_start_0
    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudUtils;->USER_INFO_URI:Landroid/net/Uri;

    const-string v5, "%s NOT IN (%s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v18, "user_id"

    aput-object v18, v6, v7

    const/4 v7, 0x1

    const-string v18, ","

    .line 1137
    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/miui/gallery/util/GalleryUtils;->concatAll(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 1136
    invoke-static {v3, v5, v6}, Lcom/miui/gallery/util/GalleryUtils;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1139
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1142
    .local v8, "current":J
    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudUtils;->USER_INFO_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "user_id"

    aput-object v6, v4, v5

    const-string v5, "(%s<?)AND(%s>?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v18, "date_modified"

    aput-object v18, v6, v7

    const/4 v7, 0x1

    const-string v18, "date_modified"

    aput-object v18, v6, v7

    .line 1144
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 1145
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v7

    const/4 v7, 0x1

    const-wide/32 v18, 0x5265c00

    sub-long v18, v8, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v7

    const/4 v7, 0x0

    .line 1142
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1148
    .local v14, "userCursor":Landroid/database/Cursor;
    if-eqz v14, :cond_2

    .line 1150
    :goto_0
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1151
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1154
    :catchall_0
    move-exception v3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3

    .line 1139
    .end local v8    # "current":J
    .end local v14    # "userCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 1154
    .restart local v8    # "current":J
    .restart local v14    # "userCursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1158
    :cond_2
    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1160
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 1161
    .local v16, "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1162
    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/share/AlbumShareOperations;->requestUserInfo(Ljava/util/List;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v11

    .line 1163
    .local v11, "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<Ljava/util/List<Lcom/miui/gallery/share/UserInfo;>;>;"
    if-eqz v11, :cond_3

    iget v3, v11, Lcom/miui/gallery/share/AsyncResult;->mError:I

    if-nez v3, :cond_3

    .line 1164
    iget-object v0, v11, Lcom/miui/gallery/share/AsyncResult;->mData:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/util/List;

    .line 1165
    .local v17, "userInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/share/UserInfo;>;"
    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1166
    const-string v3, ","

    new-instance v4, Lcom/miui/gallery/share/AlbumShareOperations$12$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miui/gallery/share/AlbumShareOperations$12$1;-><init>(Lcom/miui/gallery/share/AlbumShareOperations$12;)V

    move-object/from16 v0, v17

    invoke-static {v0, v3, v4}, Lcom/miui/gallery/util/GalleryUtils;->concatAll(Ljava/util/Collection;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$ConcatConverter;)Ljava/lang/String;

    move-result-object v13

    .line 1175
    .local v13, "successIds":Ljava/lang/String;
    sget-object v4, Lcom/miui/gallery/cloud/GalleryCloudUtils;->USER_INFO_URI:Landroid/net/Uri;

    monitor-enter v4

    .line 1177
    :try_start_3
    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudUtils;->USER_INFO_URI:Landroid/net/Uri;

    const-string v5, "%s IN (%s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v18, "user_id"

    aput-object v18, v6, v7

    const/4 v7, 0x1

    aput-object v13, v6, v7

    .line 1178
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 1177
    invoke-static {v3, v5, v6}, Lcom/miui/gallery/util/GalleryUtils;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 1181
    .local v10, "deleteCount":I
    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudUtils;->USER_INFO_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/share/AlbumShareOperations;->access$1200(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/List;)V

    .line 1182
    const-string v3, "AlbumShareOperations"

    const-string/jumbo v5, "syncAllUserNameFromNetwork: delete=%d, insert=%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 1183
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v6, v7

    const/4 v7, 0x1

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v6, v7

    .line 1182
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1188
    .end local v10    # "deleteCount":I
    .end local v11    # "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<Ljava/util/List<Lcom/miui/gallery/share/UserInfo;>;>;"
    .end local v13    # "successIds":Ljava/lang/String;
    .end local v16    # "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "userInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/share/UserInfo;>;"
    :cond_3
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v3

    return-object v3

    .line 1184
    .restart local v11    # "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<Ljava/util/List<Lcom/miui/gallery/share/UserInfo;>;>;"
    .restart local v13    # "successIds":Ljava/lang/String;
    .restart local v16    # "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "userInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/share/UserInfo;>;"
    :catchall_2
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1119
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareOperations$12;->call()Lcom/miui/gallery/share/AsyncResult;

    move-result-object v0

    return-object v0
.end method
