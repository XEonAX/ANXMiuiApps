.class public Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator;
.super Lcom/miui/gallery/discovery/BaseMessageOperator;
.source "RecentDiscoveryMessageOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentSaveParams;,
        Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/discovery/BaseMessageOperator",
        "<",
        "Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentSaveParams;",
        ">;"
    }
.end annotation


# static fields
.field private static sGson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/discovery/BaseMessageOperator;-><init>()V

    .line 30
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator;->sGson:Lcom/google/gson/Gson;

    .line 31
    return-void
.end method

.method static synthetic access$000()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator;->sGson:Lcom/google/gson/Gson;

    return-object v0
.end method


# virtual methods
.method protected doMarkMessageAsRead(Landroid/content/Context;Lcom/miui/gallery/model/DiscoveryMessage;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/miui/gallery/model/DiscoveryMessage;

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/miui/gallery/model/DiscoveryMessage;->setConsumed(Z)V

    .line 47
    invoke-virtual {p2}, Lcom/miui/gallery/model/DiscoveryMessage;->getMessageDetail()Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p2}, Lcom/miui/gallery/model/DiscoveryMessage;->getMessageDetail()Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;->setThumbUrls([Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Lcom/miui/gallery/model/DiscoveryMessage;->getMessageDetail()Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;->setUnviewMediaCount(I)V

    .line 53
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator;->doUpdateMessage(Landroid/content/Context;Lcom/miui/gallery/model/DiscoveryMessage;)Z

    move-result v0

    return v0

    .line 51
    :cond_0
    const-string v0, "RecentDiscoveryMessageOperator"

    const-string v1, "messageDetail should be instance of RecentMessageDetail"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected doSaveMessage(Landroid/content/Context;Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentSaveParams;)Z
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "saveParams"    # Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentSaveParams;

    .prologue
    .line 58
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentSaveParams;->getMediaCount()I

    move-result v9

    .line 59
    .local v9, "mediaCount":I
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentSaveParams;->getThumbUrls()Ljava/util/ArrayList;

    move-result-object v19

    if-eqz v19, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentSaveParams;->getThumbUrls()Ljava/util/ArrayList;

    move-result-object v17

    .line 61
    .local v17, "thumbUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 62
    .local v18, "values":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 63
    .local v4, "current":J
    invoke-virtual/range {p0 .. p1}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator;->queryMessageByType(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v11

    .line 65
    .local v11, "msgCursor":Landroid/database/Cursor;
    if-eqz v11, :cond_5

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 66
    const-string v19, "_id"

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 67
    .local v12, "msgId":J
    const-string v19, "extraData"

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, "extraDataJson":Ljava/lang/String;
    const/4 v14, 0x0

    .line 70
    .local v14, "oldThumbUrls":[Ljava/lang/String;
    invoke-static {v7}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;->fromJson(Ljava/lang/String;)Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;

    move-result-object v15

    .line 71
    .local v15, "recentMessageDetail":Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;
    if-eqz v15, :cond_2

    .line 72
    invoke-virtual {v15}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;->getUnviewMediaCount()I

    move-result v19

    add-int v9, v9, v19

    .line 73
    invoke-virtual {v15}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;->getThumbUrls()[Ljava/lang/String;

    move-result-object v14

    .line 77
    :goto_1
    invoke-virtual {v15, v9}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;->setUnviewMediaCount(I)V

    .line 79
    if-eqz v14, :cond_0

    .line 80
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 83
    :cond_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 84
    .local v10, "minCount":I
    const/16 v19, 0x3

    move/from16 v0, v19

    if-lt v10, v0, :cond_3

    .line 85
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 89
    .local v16, "thumbUrlArray":[Ljava/lang/String;
    :goto_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_4

    .line 90
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    aput-object v19, v16, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 59
    .end local v4    # "current":J
    .end local v7    # "extraDataJson":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v10    # "minCount":I
    .end local v11    # "msgCursor":Landroid/database/Cursor;
    .end local v12    # "msgId":J
    .end local v14    # "oldThumbUrls":[Ljava/lang/String;
    .end local v15    # "recentMessageDetail":Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;
    .end local v16    # "thumbUrlArray":[Ljava/lang/String;
    .end local v17    # "thumbUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    .line 75
    .restart local v4    # "current":J
    .restart local v7    # "extraDataJson":Ljava/lang/String;
    .restart local v11    # "msgCursor":Landroid/database/Cursor;
    .restart local v12    # "msgId":J
    .restart local v14    # "oldThumbUrls":[Ljava/lang/String;
    .restart local v15    # "recentMessageDetail":Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;
    .restart local v17    # "thumbUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_1
    new-instance v15, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;

    .end local v15    # "recentMessageDetail":Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;
    invoke-direct {v15}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;-><init>()V

    .restart local v15    # "recentMessageDetail":Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;
    goto :goto_1

    .line 87
    .restart local v10    # "minCount":I
    :cond_3
    new-array v0, v10, [Ljava/lang/String;

    move-object/from16 v16, v0

    .restart local v16    # "thumbUrlArray":[Ljava/lang/String;
    goto :goto_2

    .line 92
    .restart local v8    # "i":I
    :cond_4
    invoke-virtual/range {v15 .. v16}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;->setThumbUrls([Ljava/lang/String;)V

    .line 94
    const-string v19, "_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    const-string v19, "extraData"

    invoke-virtual {v15}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;->toJson()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v19, "isConsumed"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string/jumbo v19, "updateTime"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    const-string v19, "actionUri"

    sget-object v20, Lcom/miui/gallery/provider/GalleryContract$RecentAlbum;->VIEW_PAGE_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v19, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;-><init>(Landroid/content/Context;Lcom/miui/gallery/model/DiscoveryMessage;Landroid/content/ContentValues;)V

    invoke-virtual/range {v19 .. v19}, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->run()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v19

    .line 126
    invoke-static {v11}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .end local v7    # "extraDataJson":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v10    # "minCount":I
    .end local v12    # "msgId":J
    .end local v14    # "oldThumbUrls":[Ljava/lang/String;
    .end local v15    # "recentMessageDetail":Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;
    .end local v16    # "thumbUrlArray":[Ljava/lang/String;
    :goto_4
    return v19

    .line 101
    :cond_5
    :try_start_2
    new-instance v15, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;

    invoke-direct {v15}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;-><init>()V

    .line 102
    .restart local v15    # "recentMessageDetail":Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;
    invoke-virtual {v15, v9}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;->setUnviewMediaCount(I)V

    .line 104
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    .line 105
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 109
    .restart local v16    # "thumbUrlArray":[Ljava/lang/String;
    :goto_5
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_6
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_7

    .line 110
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    aput-object v19, v16, v8

    .line 109
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 107
    .end local v8    # "i":I
    .end local v16    # "thumbUrlArray":[Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .restart local v16    # "thumbUrlArray":[Ljava/lang/String;
    goto :goto_5

    .line 112
    .restart local v8    # "i":I
    :cond_7
    invoke-virtual/range {v15 .. v16}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;->setThumbUrls([Ljava/lang/String;)V

    .line 113
    const-string v19, "extraData"

    invoke-virtual {v15}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;->toJson()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v19, "type"

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator;->getMessageType()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v19, "receiveTime"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    const-string/jumbo v19, "updateTime"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    const-string v19, "isConsumed"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    const-string v19, "actionUri"

    sget-object v20, Lcom/miui/gallery/provider/GalleryContract$RecentAlbum;->VIEW_PAGE_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v19, Lcom/miui/gallery/discovery/BaseMessageOperator$InsertTask;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/discovery/BaseMessageOperator$InsertTask;-><init>(Landroid/content/Context;Landroid/content/ContentValues;)V

    invoke-virtual/range {v19 .. v19}, Lcom/miui/gallery/discovery/BaseMessageOperator$InsertTask;->run()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v19

    .line 126
    invoke-static {v11}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_4

    .line 121
    .end local v8    # "i":I
    .end local v15    # "recentMessageDetail":Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;
    .end local v16    # "thumbUrlArray":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 122
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v19, "RecentDiscoveryMessageOperator"

    const-string v20, "Something wrong happened when save message: %s."

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    const/16 v19, 0x0

    .line 126
    invoke-static {v11}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_4

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    invoke-static {v11}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v19
.end method

.method protected bridge synthetic doSaveMessage(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 22
    check-cast p2, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentSaveParams;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator;->doSaveMessage(Landroid/content/Context;Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentSaveParams;)Z

    move-result v0

    return v0
.end method

.method public doWrapMessage(Lcom/miui/gallery/model/DiscoveryMessage;Ljava/lang/String;)V
    .locals 8
    .param p1, "discoveryMessage"    # Lcom/miui/gallery/model/DiscoveryMessage;
    .param p2, "extraDataJson"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p2}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;->fromJson(Ljava/lang/String;)Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;

    move-result-object v2

    .line 36
    .local v2, "recentMessageDetail":Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;
    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {v2}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;->getUnviewMediaCount()I

    move-result v0

    .line 38
    .local v0, "fileCount":I
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0036

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "messageText":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/miui/gallery/model/DiscoveryMessage;->setMessage(Ljava/lang/String;)V

    .line 41
    .end local v0    # "fileCount":I
    .end local v1    # "messageText":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v2}, Lcom/miui/gallery/model/DiscoveryMessage;->setMessageDetail(Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;)V

    .line 42
    return-void
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method
