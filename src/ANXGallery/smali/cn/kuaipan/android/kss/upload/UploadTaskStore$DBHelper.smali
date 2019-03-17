.class Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UploadTaskStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/kss/upload/UploadTaskStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBHelper"
.end annotation


# static fields
.field private static final QUERY_KSS:[Ljava/lang/String;

.field private static final QUERY_POS:[Ljava/lang/String;

.field private static final WHERE_DEL:Ljava/lang/String;

.field private static final WHERE_QUERY:Ljava/lang/String;

.field private static volatile sInstance:Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 137
    const-string v0, "%s<?"

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "gen_time"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcn/kuaipan/android/utils/SQLUtility;->getSelectionWithTemplete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->WHERE_DEL:Ljava/lang/String;

    .line 139
    const-string/jumbo v0, "task_hash"

    invoke-static {v0}, Lcn/kuaipan/android/utils/SQLUtility;->getSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->WHERE_QUERY:Ljava/lang/String;

    .line 140
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "chunk_pos"

    aput-object v1, v0, v3

    const-string/jumbo v1, "upload_id"

    aput-object v1, v0, v4

    sput-object v0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->QUERY_POS:[Ljava/lang/String;

    .line 143
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "kss_request"

    aput-object v1, v0, v3

    const-string v1, "kss_file_info"

    aput-object v1, v0, v4

    const-string v1, "kss_upload_id"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "gen_time"

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->QUERY_KSS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const-string v0, "ksssdk_infos.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 112
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    sget-object v0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->sInstance:Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    .line 95
    .local v0, "helper":Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;
    if-nez v0, :cond_2

    .line 96
    const-class v3, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    monitor-enter v3

    .line 97
    :try_start_0
    sget-object v0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->sInstance:Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    .line 98
    if-nez v0, :cond_1

    .line 99
    if-nez p0, :cond_0

    .line 100
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "Context should not be null."

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 102
    :cond_0
    :try_start_1
    new-instance v1, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    invoke-direct {v1, p0}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .end local v0    # "helper":Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;
    .local v1, "helper":Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;
    :try_start_2
    sput-object v1, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->sInstance:Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .line 105
    .end local v1    # "helper":Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;
    .restart local v0    # "helper":Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;
    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    :cond_2
    return-object v0

    .line 105
    .end local v0    # "helper":Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;
    .restart local v1    # "helper":Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "helper":Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;
    .restart local v0    # "helper":Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;
    goto :goto_0
.end method


# virtual methods
.method public delete(I)V
    .locals 6
    .param p1, "taskHash"    # I

    .prologue
    .line 235
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 237
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "upload_chunks"

    sget-object v2, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->WHERE_QUERY:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 238
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 237
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method public deleteBefore(J)V
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 148
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 149
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "upload_chunks"

    sget-object v2, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->WHERE_DEL:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 150
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 149
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v1, "task_hash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL UNIQUE, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "kss_request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " STRING NOT NULL, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, "kss_file_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " STRING NOT NULL, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "kss_upload_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " STRING NOT NULL, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "chunk_pos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LONG NOT NULL DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string/jumbo v1, "upload_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " STRING NOT NULL, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "gen_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LONG NOT NULL DEFAULT 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string/jumbo v1, "upload_chunks"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcn/kuaipan/android/utils/SQLUtility;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 130
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 131
    const-string v0, "DBHelper"

    const-string v1, "Destroying all old data."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v0, "DROP TABLE IF EXISTS upload_chunks"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 135
    :cond_0
    return-void
.end method

.method public queryKss(ILcn/kuaipan/android/kss/IDataFactory;)Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    .locals 20
    .param p1, "taskHash"    # I
    .param p2, "dataFactory"    # Lcn/kuaipan/android/kss/IDataFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/exception/KscException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual/range {p0 .. p0}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 180
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v3, "upload_chunks"

    sget-object v4, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->QUERY_KSS:[Ljava/lang/String;

    sget-object v5, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->WHERE_QUERY:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 181
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 180
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 183
    .local v10, "c":Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 185
    .local v17, "result":Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    if-eqz v10, :cond_3

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 186
    const-string v3, "kss_request"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 187
    .local v16, "requestStr":Ljava/lang/String;
    const-string v3, "kss_file_info"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 188
    .local v12, "fileInfoStr":Ljava/lang/String;
    const-string v3, "gen_time"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 189
    .local v14, "generateTime":J
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    :cond_0
    const/4 v3, 0x0

    .line 201
    if-eqz v10, :cond_1

    .line 202
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .end local v12    # "fileInfoStr":Ljava/lang/String;
    .end local v14    # "generateTime":J
    .end local v16    # "requestStr":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v3

    .line 193
    .restart local v12    # "fileInfoStr":Ljava/lang/String;
    .restart local v14    # "generateTime":J
    .restart local v16    # "requestStr":Ljava/lang/String;
    :cond_2
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcn/kuaipan/android/kss/IDataFactory;->createUploadRequestResult(Ljava/lang/String;)Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    move-result-object v13

    .line 194
    .local v13, "request":Lcn/kuaipan/android/kss/IKssUploadRequestResult;
    new-instance v11, Lcn/kuaipan/android/kss/upload/UploadFileInfo;

    invoke-direct {v11, v12}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;-><init>(Ljava/lang/String;)V

    .line 195
    .local v11, "fileInfo":Lcn/kuaipan/android/kss/upload/UploadFileInfo;
    new-instance v18, Lcn/kuaipan/android/kss/upload/KssUploadInfo;

    move-object/from16 v0, v18

    invoke-direct {v0, v11, v13, v14, v15}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;-><init>(Lcn/kuaipan/android/kss/upload/UploadFileInfo;Lcn/kuaipan/android/kss/IKssUploadRequestResult;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    .end local v17    # "result":Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    .local v18, "result":Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    :try_start_2
    const-string v3, "kss_upload_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 197
    .local v19, "uploadID":Ljava/lang/String;
    invoke-virtual/range {v18 .. v19}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->setUploadId(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v17, v18

    .line 201
    .end local v11    # "fileInfo":Lcn/kuaipan/android/kss/upload/UploadFileInfo;
    .end local v12    # "fileInfoStr":Ljava/lang/String;
    .end local v13    # "request":Lcn/kuaipan/android/kss/IKssUploadRequestResult;
    .end local v14    # "generateTime":J
    .end local v16    # "requestStr":Ljava/lang/String;
    .end local v18    # "result":Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    .end local v19    # "uploadID":Ljava/lang/String;
    .restart local v17    # "result":Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    :cond_3
    if-eqz v10, :cond_4

    .line 202
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object/from16 v3, v17

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v10, :cond_5

    .line 202
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    .line 201
    .end local v17    # "result":Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    .restart local v11    # "fileInfo":Lcn/kuaipan/android/kss/upload/UploadFileInfo;
    .restart local v12    # "fileInfoStr":Ljava/lang/String;
    .restart local v13    # "request":Lcn/kuaipan/android/kss/IKssUploadRequestResult;
    .restart local v14    # "generateTime":J
    .restart local v16    # "requestStr":Ljava/lang/String;
    .restart local v18    # "result":Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    :catchall_1
    move-exception v3

    move-object/from16 v17, v18

    .end local v18    # "result":Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    .restart local v17    # "result":Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    goto :goto_1
.end method

.method public queryPos(I)Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;
    .locals 13
    .param p1, "taskHash"    # I

    .prologue
    const/4 v5, 0x0

    .line 155
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 156
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "upload_chunks"

    sget-object v2, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->QUERY_POS:[Ljava/lang/String;

    sget-object v3, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->WHERE_QUERY:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 157
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    .line 156
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 159
    .local v8, "c":Landroid/database/Cursor;
    const-wide/16 v10, -0x1

    .line 161
    .local v10, "pos":J
    :try_start_0
    new-instance v9, Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;

    invoke-direct {v9}, Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;-><init>()V

    .line 162
    .local v9, "uploadChunkInfoPersist":Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const-string v1, "chunk_pos"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v10, v1

    .line 164
    const-string/jumbo v1, "upload_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 165
    .local v12, "upload_id":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    iput-wide v10, v9, Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;->pos:J

    .line 167
    iput-object v12, v9, Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;->upload_id:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .end local v12    # "upload_id":Ljava/lang/String;
    :cond_0
    if-eqz v8, :cond_1

    .line 173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v9

    .line 172
    .end local v9    # "uploadChunkInfoPersist":Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_2

    .line 173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public update(ILcn/kuaipan/android/kss/upload/KssUploadInfo;Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;)V
    .locals 6
    .param p1, "taskHash"    # I
    .param p2, "info"    # Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    .param p3, "uploadChunkInfoPersist"    # Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;

    .prologue
    .line 208
    if-nez p2, :cond_0

    .line 232
    :goto_0
    return-void

    .line 212
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 213
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "task_hash"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    const-string v2, "kss_file_info"

    invoke-virtual {p2}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->getFileInfo()Lcn/kuaipan/android/kss/upload/UploadFileInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v2, "kss_request"

    invoke-virtual {p2}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->getRequestResult()Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->getUploadId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    const-string v2, "kss_upload_id"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_1
    const-string v2, "chunk_pos"

    iget-wide v4, p3, Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;->pos:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 222
    iget-object v2, p3, Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;->upload_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    const-string/jumbo v2, "upload_id"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_2
    const-string v2, "gen_time"

    invoke-virtual {p2}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->getGenerateTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 229
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 231
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v2, "upload_chunks"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 219
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    const-string v2, "kss_upload_id"

    invoke-virtual {p2}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->getUploadId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 225
    :cond_2
    const-string/jumbo v2, "upload_id"

    iget-object v3, p3, Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;->upload_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
