.class Lcom/miui/extraphoto/sdk/BaseEchoListener$3;
.super Ljava/lang/Object;
.source "BaseEchoListener.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/sdk/BaseEchoListener;->updateDataBase(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/sdk/BaseEchoListener;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/sdk/BaseEchoListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/sdk/BaseEchoListener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/miui/extraphoto/sdk/BaseEchoListener$3;->this$0:Lcom/miui/extraphoto/sdk/BaseEchoListener;

    iput-object p2, p0, Lcom/miui/extraphoto/sdk/BaseEchoListener$3;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/miui/extraphoto/sdk/BaseEchoListener$3;->handle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 29
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 87
    const/4 v7, 0x0

    .line 88
    .local v7, "finalPath":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 89
    const-string v24, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 90
    .local v12, "id":J
    const-string v24, "serverId"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 91
    .local v20, "serverId":Ljava/lang/String;
    const-string v24, "localFlag"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 92
    .local v16, "localFlag":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/extraphoto/sdk/BaseEchoListener$3;->this$0:Lcom/miui/extraphoto/sdk/BaseEchoListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/miui/extraphoto/sdk/BaseEchoListener;->access$000(Lcom/miui/extraphoto/sdk/BaseEchoListener;I)Z

    move-result v24

    if-nez v24, :cond_0

    .line 93
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 97
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 98
    .local v23, "values":Landroid/content/ContentValues;
    const-string v24, "_size"

    new-instance v25, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/extraphoto/sdk/BaseEchoListener$3;->val$path:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    const-string v24, "external"

    invoke-static/range {v24 .. v24}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 100
    .local v22, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v24

    const-string v25, "_data=?"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/extraphoto/sdk/BaseEchoListener$3;->val$path:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v26, v27

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 103
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    .line 104
    const-string/jumbo v24, "sha1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/extraphoto/sdk/BaseEchoListener$3;->val$path:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/miui/gallery/util/FileUtils;->getSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v24, "size"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/extraphoto/sdk/BaseEchoListener$3;->val$path:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/miui/gallery/util/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v24

    sget-object v25, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "_id="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 107
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/extraphoto/sdk/BaseEchoListener$3;->val$path:Ljava/lang/String;

    .line 168
    .end local v12    # "id":J
    .end local v16    # "localFlag":I
    .end local v20    # "serverId":Ljava/lang/String;
    .end local v22    # "uri":Landroid/net/Uri;
    .end local v23    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-object v7

    .line 111
    .restart local v12    # "id":J
    .restart local v16    # "localFlag":I
    .restart local v20    # "serverId":Ljava/lang/String;
    :cond_1
    const-string v24, "mixedDateTime"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 112
    .local v8, "dateTime":J
    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string v25, "\'IMG\'_yyyyMMdd_HHmmss\'_STEREO.jpg\'"

    invoke-direct/range {v24 .. v25}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v25, Ljava/util/Date;

    const-wide/16 v26, 0x2710

    add-long v26, v26, v8

    invoke-direct/range {v25 .. v27}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    .line 113
    .local v18, "newName":Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/extraphoto/sdk/BaseEchoListener$3;->val$path:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v21, "sourceFile":Ljava/io/File;
    new-instance v17, Ljava/io/File;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .local v17, "newFile":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    .line 117
    .local v19, "newPath":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/miui/gallery/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 119
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 120
    .restart local v23    # "values":Landroid/content/ContentValues;
    const-string v24, "_data"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v24, "_size"

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    const-string v24, "external"

    invoke-static/range {v24 .. v24}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 123
    .restart local v22    # "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v24

    const-string v25, "_data like ?"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/extraphoto/sdk/BaseEchoListener$3;->val$path:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v26, v27

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    .line 127
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    .line 128
    .local v6, "columnCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_2

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/extraphoto/sdk/BaseEchoListener$3;->this$0:Lcom/miui/extraphoto/sdk/BaseEchoListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-static {v0, v1, v10, v2}, Lcom/miui/extraphoto/sdk/BaseEchoListener;->access$100(Lcom/miui/extraphoto/sdk/BaseEchoListener;Landroid/database/Cursor;ILandroid/content/ContentValues;)V

    .line 128
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 131
    :cond_2
    const-string/jumbo v24, "size"

    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/util/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    const-string/jumbo v24, "sha1"

    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/util/FileUtils;->getSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v24, "localFlag"

    const/16 v25, 0x8

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v24, "_id"

    invoke-virtual/range {v23 .. v24}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 136
    const-string v24, "serverId"

    invoke-virtual/range {v23 .. v24}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 137
    const-string v24, "groupId"

    invoke-virtual/range {v23 .. v24}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 138
    const-string v24, "serverStatus"

    invoke-virtual/range {v23 .. v24}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 139
    const-string v24, "serverTag"

    invoke-virtual/range {v23 .. v24}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 140
    const-string v24, "fileName"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string/jumbo v24, "title"

    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/util/FileUtils;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v24, "localFile"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v24

    sget-object v25, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/SafeDBUtil;->safeInsert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v22

    .line 144
    const/4 v11, 0x0

    .line 145
    .local v11, "insertSuccess":Z
    if-eqz v22, :cond_3

    .line 146
    invoke-static/range {v22 .. v22}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 147
    .local v14, "insertId":J
    const-wide/16 v24, 0x0

    cmp-long v24, v14, v24

    if-lez v24, :cond_3

    .line 148
    const/4 v11, 0x1

    .line 150
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    .line 151
    const-string v24, "localFlag"

    const/16 v25, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v24

    sget-object v25, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "_id="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 155
    .end local v14    # "insertId":J
    :cond_3
    if-eqz v11, :cond_4

    .line 156
    move-object/from16 v7, v19

    goto/16 :goto_0

    .line 158
    :cond_4
    const-string v24, "BaseEchoListener"

    const-string v25, "insert file fail %s"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    sget-object v24, Lcom/miui/gallery/util/MediaFileUtils$FileType;->ORIGINAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v19, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 162
    .end local v6    # "columnCount":I
    .end local v10    # "i":I
    .end local v11    # "insertSuccess":Z
    .end local v22    # "uri":Landroid/net/Uri;
    .end local v23    # "values":Landroid/content/ContentValues;
    :cond_5
    const-string v24, "BaseEchoListener"

    const-string v25, "server rename file fail %s"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/extraphoto/sdk/BaseEchoListener$3;->val$path:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    sget-object v24, Lcom/miui/gallery/util/MediaFileUtils$FileType;->ORIGINAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/io/File;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v21, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I

    goto/16 :goto_0
.end method
