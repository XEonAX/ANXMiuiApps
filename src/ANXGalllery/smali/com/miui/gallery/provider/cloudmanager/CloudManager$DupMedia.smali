.class abstract Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMedia;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DupMedia"
.end annotation


# instance fields
.field private mDupType:I

.field protected mMediaId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;JI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "mediaId"    # J
    .param p5, "dupType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;JI)V"
        }
    .end annotation

    .prologue
    .line 1201
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1202
    iput-wide p3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMedia;->mMediaId:J

    .line 1203
    iput p5, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMedia;->mDupType:I

    .line 1204
    return-void
.end method


# virtual methods
.method protected prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 1208
    const/4 v10, 0x0

    .line 1209
    .local v10, "selection":Ljava/lang/String;
    iget v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMedia;->mDupType:I

    packed-switch v0, :pswitch_data_0

    move-object v3, v10

    .line 1254
    .end local v10    # "selection":Ljava/lang/String;
    .local v3, "selection":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v11

    .line 1258
    :goto_1
    return-object v0

    .line 1211
    .end local v3    # "selection":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    :pswitch_0
    const/4 v9, 0x0

    .line 1213
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "cloud"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "localGroupId"

    aput-object v4, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMedia;->mMediaId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1215
    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1216
    const-string v0, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND sha1 = (SELECT sha1 FROM cloud WHERE _id=?) AND sha1 NOT NULL AND localGroupId IN (%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1219
    .end local v10    # "selection":Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    :goto_2
    if-eqz v9, :cond_0

    .line 1220
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1219
    .end local v3    # "selection":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_1

    .line 1220
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 1226
    .end local v9    # "cursor":Landroid/database/Cursor;
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1227
    .local v8, "builder":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 1229
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string v1, "cloud"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const-string v3, "attributes & 4 != 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1233
    if-eqz v9, :cond_4

    .line 1234
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1235
    invoke-interface {v9}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1236
    const/16 v0, 0x2c

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1238
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 1242
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_3

    .line 1243
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1242
    :cond_4
    if-eqz v9, :cond_5

    .line 1243
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1246
    :cond_5
    const-string v0, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND sha1 = (SELECT sha1 FROM cloud WHERE _id=?) AND sha1 NOT NULL AND localGroupId IN (%s)"

    new-array v1, v13, [Ljava/lang/Object;

    aput-object v8, v1, v12

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1247
    .end local v10    # "selection":Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    goto/16 :goto_0

    .line 1250
    .end local v3    # "selection":Ljava/lang/String;
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "selection":Ljava/lang/String;
    :pswitch_2
    const-string v3, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND sha1 = (SELECT sha1 FROM cloud WHERE _id=?) AND sha1 NOT NULL"

    .end local v10    # "selection":Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    goto/16 :goto_0

    .line 1258
    :cond_6
    const-string v1, "cloud"

    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v12

    new-array v4, v13, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMedia;->mMediaId:J

    .line 1260
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v12

    const-string v7, "serverId DESC "

    move-object v0, p1

    move-object v5, v11

    move-object v6, v11

    .line 1258
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    .end local v3    # "selection":Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "selection":Ljava/lang/String;
    :cond_7
    move-object v3, v10

    .end local v10    # "selection":Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    goto :goto_2

    .line 1209
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
