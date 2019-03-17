.class Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;
.super Ljava/lang/Object;
.source "MediaFileHandleJob.java"


# instance fields
.field private mAlbumDir:Ljava/lang/String;

.field private mId:J

.field private mLocalFile:Ljava/lang/String;

.field private mLocalFlag:I

.field private mReason:I

.field private mServerAlbumId:Ljava/lang/String;

.field private mThumbnail:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "serverAlbumId"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "thumbnail"    # Ljava/lang/String;
    .param p5, "localFile"    # Ljava/lang/String;
    .param p6, "albumDir"    # Ljava/lang/String;
    .param p7, "fileName"    # Ljava/lang/String;
    .param p8, "localFlag"    # I
    .param p9, "reason"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p2, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mId:J

    .line 37
    iput-object p4, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mThumbnail:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mLocalFile:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mAlbumDir:Ljava/lang/String;

    .line 40
    iput p8, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mLocalFlag:I

    .line 41
    iput-object p1, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mServerAlbumId:Ljava/lang/String;

    .line 42
    iput p9, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mReason:I

    .line 43
    return-void
.end method

.method private delete(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 285
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, "src":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "fileParent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 289
    const-string v3, "CloudManager.MediaFileHandleJob"

    const-string v4, "Could\'t get relative path for %s"

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    :goto_0
    return v2

    .line 292
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mAlbumDir:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 293
    sget-object v4, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v5, v3, [Ljava/lang/String;

    aput-object p2, v5, v2

    invoke-static {v4, v5}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 294
    const-string v2, "CloudManager.MediaFileHandleJob"

    const-string v4, "deleted"

    invoke-static {v2, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 295
    goto :goto_0

    .line 297
    :cond_1
    const-string v3, "CloudManager.MediaFileHandleJob"

    const-string v4, "file not exist, skip."

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doCopy(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "local"    # Z

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->editFile(Landroid/content/Context;ZZ)V

    .line 119
    return-void
.end method

.method private doMove(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0, v0}, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->editFile(Landroid/content/Context;ZZ)V

    .line 115
    return-void
.end method

.method private editFile(Landroid/content/Context;ZZ)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "copy"    # Z
    .param p3, "local"    # Z

    .prologue
    .line 122
    const-string v7, "CloudManager.MediaFileHandleJob"

    const-string v8, "editFile"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v5, 0x0

    .line 125
    .local v5, "success":Z
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 126
    .local v6, "values":Landroid/content/ContentValues;
    iget-object v7, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mLocalFile:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 127
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mLocalFile:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v4, "src":Ljava/io/File;
    invoke-direct {p0, p1, v4}, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->getDesFile(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 130
    .local v1, "des":Ljava/io/File;
    if-ne v1, v4, :cond_2

    .line 131
    const/4 v5, 0x1

    .line 132
    const-string/jumbo v7, "thumbnailFile"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 152
    .end local v1    # "des":Ljava/io/File;
    .end local v4    # "src":Ljava/io/File;
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    iget-object v7, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mThumbnail:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 153
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mThumbnail:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .restart local v4    # "src":Ljava/io/File;
    invoke-direct {p0, p1, v4}, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->getDesFile(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 155
    .restart local v1    # "des":Ljava/io/File;
    if-ne v1, v4, :cond_5

    .line 156
    const/4 v5, 0x1

    .line 157
    const-string v7, "localFile"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 177
    .end local v1    # "des":Ljava/io/File;
    .end local v4    # "src":Ljava/io/File;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 178
    .local v0, "count":I
    if-nez v5, :cond_8

    .line 179
    const-string v7, "CloudManager.MediaFileHandleJob"

    const-string v8, "both thumbnail and localFile edit failed."

    invoke-static {v7, v8}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_2
    const-string v7, "CloudManager.MediaFileHandleJob"

    const-string v8, "edit finish with updates(%d)"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    return-void

    .line 133
    .end local v0    # "count":I
    .restart local v1    # "des":Ljava/io/File;
    .restart local v4    # "src":Ljava/io/File;
    :cond_2
    if-eqz v1, :cond_0

    .line 134
    if-eqz p2, :cond_4

    .line 135
    invoke-static {v4, v1}, Lcom/miui/gallery/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    .line 142
    :cond_3
    :goto_3
    if-eqz v5, :cond_0

    .line 143
    const-string v7, "CloudManager.MediaFileHandleJob"

    const-string v8, "edit localFile finish, with des(%s)"

    invoke-static {v7, v8, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    const-string v7, "localFile"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v7, "thumbnailFile"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->notifyMediaProviderScanFile(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_4
    invoke-static {v4, v1}, Lcom/miui/gallery/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    .line 138
    if-eqz v5, :cond_3

    .line 139
    sget-object v7, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    goto :goto_3

    .line 158
    :cond_5
    if-eqz v1, :cond_1

    .line 159
    if-eqz p2, :cond_7

    .line 160
    invoke-static {v4, v1}, Lcom/miui/gallery/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    .line 167
    :cond_6
    :goto_4
    if-eqz v5, :cond_1

    .line 168
    const-string v7, "CloudManager.MediaFileHandleJob"

    const-string v8, "edit thumbnail finish, with des(%s)"

    invoke-static {v7, v8, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    const-string/jumbo v7, "thumbnailFile"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v7, "localFile"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->notifyMediaProviderScanFile(Ljava/lang/String;)V

    goto :goto_1

    .line 162
    :cond_7
    invoke-static {v4, v1}, Lcom/miui/gallery/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    .line 163
    if-eqz v5, :cond_6

    .line 164
    sget-object v7, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    goto :goto_4

    .line 181
    .end local v1    # "des":Ljava/io/File;
    .end local v4    # "src":Ljava/io/File;
    .restart local v0    # "count":I
    :cond_8
    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    .line 182
    const-string v7, "localFlag"

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    :cond_9
    const-string v7, "CloudManager.MediaFileHandleJob"

    const-string v8, "edit success, update db: %s"

    invoke-static {v7, v8, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    iget-wide v8, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mId:J

    invoke-static {v8, v9}, Lcom/miui/gallery/provider/ShareMediaManager;->isOtherShareMediaId(J)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 186
    iget-wide v8, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mId:J

    invoke-static {v8, v9}, Lcom/miui/gallery/provider/ShareMediaManager;->getOriginalMediaId(J)J

    move-result-wide v2

    .line 187
    .local v2, "originId":J
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/miui/gallery/provider/GalleryContract$ShareImage;->SHARE_URI:Landroid/net/Uri;

    const-string v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 188
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 187
    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 189
    goto/16 :goto_2

    .line 190
    .end local v2    # "originId":J
    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const-string v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-wide v12, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mId:J

    .line 191
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 190
    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2
.end method

.method public static from(Landroid/content/ContentResolver;Landroid/database/Cursor;JI)Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;
    .locals 22
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "dirtyId"    # J
    .param p4, "reason"    # I

    .prologue
    .line 46
    const/4 v12, 0x0

    .line 48
    .local v12, "album":Landroid/database/Cursor;
    const/4 v2, 0x7

    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 49
    .local v18, "localPath":Ljava/lang/String;
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 50
    .local v20, "thumbPath":Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 51
    .local v9, "fileName":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 52
    .local v10, "localFlag":I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 53
    .local v16, "id":J
    const/4 v8, 0x0

    .local v8, "albumDir":Ljava/lang/String;
    const/16 v19, 0x0

    .line 54
    .local v19, "serverAlbumId":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 55
    .local v14, "albumId":J
    const-wide/16 v6, -0x3e8

    cmp-long v2, v14, v6

    if-nez v2, :cond_1

    .line 56
    const-string v8, "MIUI/Gallery/cloud/.secretAlbum"

    move-object/from16 v3, v19

    .end local v19    # "serverAlbumId":Ljava/lang/String;
    .local v3, "serverAlbumId":Ljava/lang/String;
    move-wide/from16 v4, v16

    .line 78
    .end local v16    # "id":J
    .local v4, "id":J
    :goto_0
    new-instance v2, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;

    move-object/from16 v6, v20

    move-object/from16 v7, v18

    move/from16 v11, p4

    invoke-direct/range {v2 .. v11}, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    if-eqz v12, :cond_0

    .line 81
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v2

    .line 57
    .end local v3    # "serverAlbumId":Ljava/lang/String;
    .end local v4    # "id":J
    .restart local v16    # "id":J
    .restart local v19    # "serverAlbumId":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static/range {p2 .. p3}, Lcom/miui/gallery/provider/ShareMediaManager;->isOtherShareMediaId(J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 58
    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v4, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 59
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 58
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 60
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 61
    const/4 v2, 0x7

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 63
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 64
    const/4 v2, 0x6

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 65
    .local v13, "albumName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v13, v2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->genRelativePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v3, v19

    .end local v19    # "serverAlbumId":Ljava/lang/String;
    .restart local v3    # "serverAlbumId":Ljava/lang/String;
    move-wide/from16 v4, v16

    .line 66
    .end local v16    # "id":J
    .restart local v4    # "id":J
    goto :goto_0

    .line 69
    .end local v3    # "serverAlbumId":Ljava/lang/String;
    .end local v4    # "id":J
    .end local v13    # "albumName":Ljava/lang/String;
    .restart local v16    # "id":J
    .restart local v19    # "serverAlbumId":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$ShareAlbum;->OTHER_SHARE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "albumId"

    aput-object v6, v4, v2

    const-string v5, "_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 70
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 69
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 71
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 72
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 74
    .end local v19    # "serverAlbumId":Ljava/lang/String;
    .restart local v3    # "serverAlbumId":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static {v2, v6}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->genRelativePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 75
    invoke-static/range {v16 .. v17}, Lcom/miui/gallery/provider/ShareMediaManager;->convertToMediaId(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .end local v16    # "id":J
    .restart local v4    # "id":J
    goto/16 :goto_0

    .line 80
    .end local v3    # "serverAlbumId":Ljava/lang/String;
    .end local v4    # "id":J
    .end local v8    # "albumDir":Ljava/lang/String;
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "localFlag":I
    .end local v14    # "albumId":J
    .end local v18    # "localPath":Ljava/lang/String;
    .end local v20    # "thumbPath":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_3

    .line 81
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .restart local v8    # "albumDir":Ljava/lang/String;
    .restart local v9    # "fileName":Ljava/lang/String;
    .restart local v10    # "localFlag":I
    .restart local v14    # "albumId":J
    .restart local v16    # "id":J
    .restart local v18    # "localPath":Ljava/lang/String;
    .restart local v19    # "serverAlbumId":Ljava/lang/String;
    .restart local v20    # "thumbPath":Ljava/lang/String;
    :cond_4
    move-object/from16 v3, v19

    .end local v19    # "serverAlbumId":Ljava/lang/String;
    .restart local v3    # "serverAlbumId":Ljava/lang/String;
    goto :goto_1

    .end local v3    # "serverAlbumId":Ljava/lang/String;
    .restart local v19    # "serverAlbumId":Ljava/lang/String;
    :cond_5
    move-object/from16 v3, v19

    .end local v19    # "serverAlbumId":Ljava/lang/String;
    .restart local v3    # "serverAlbumId":Ljava/lang/String;
    move-wide/from16 v4, v16

    .end local v16    # "id":J
    .restart local v4    # "id":J
    goto/16 :goto_0
.end method

.method private getDesFile(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "src"    # Ljava/io/File;

    .prologue
    .line 199
    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "fileParent":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 201
    const-string v7, "CloudManager.MediaFileHandleJob"

    const-string v8, "Could\'t get relative path for %s"

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    const/4 v0, 0x0

    .line 245
    :cond_0
    :goto_0
    return-object v0

    .line 204
    :cond_1
    iget-object v7, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mAlbumDir:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 205
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "destFileName":Ljava/lang/String;
    iget-wide v8, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mId:J

    invoke-static {v8, v9}, Lcom/miui/gallery/provider/ShareMediaManager;->isOtherShareMediaId(J)Z

    move-result v4

    .line 207
    .local v4, "isOtherSharedMedia":Z
    if-eqz v4, :cond_2

    .line 210
    iget-object v7, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mServerAlbumId:Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/miui/gallery/provider/ShareMediaManager;->getMediaFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    const-string v7, "CloudManager.MediaFileHandleJob"

    const-string v8, "Other shared dest filename %s"

    invoke-static {v7, v8, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    :cond_2
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mAlbumDir:Ljava/lang/String;

    invoke-static {v7}, Lcom/miui/gallery/util/StorageUtils;->getSafePathInPriorStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v3, "folder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 215
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 217
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 218
    .local v0, "des":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/util/FileUtils;->forceCreate(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    .line 225
    .local v6, "tmp":Ljava/io/File;
    invoke-static {v0, v6}, Lcom/miui/gallery/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 226
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 227
    .local v5, "rename":Landroid/content/ContentValues;
    if-eqz v4, :cond_5

    .line 228
    const-string/jumbo v7, "thumbnailFile"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/miui/gallery/provider/GalleryContract$ShareImage;->SHARE_URI:Landroid/net/Uri;

    const-string/jumbo v9, "thumbnailFile=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 229
    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 238
    .end local v5    # "rename":Landroid/content/ContentValues;
    .end local v6    # "tmp":Ljava/io/File;
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 245
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 232
    .restart local v5    # "rename":Landroid/content/ContentValues;
    .restart local v6    # "tmp":Ljava/io/File;
    :cond_5
    const-string/jumbo v7, "thumbnailFile"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const-string/jumbo v9, "thumbnailFile=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 234
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 233
    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 242
    .end local v0    # "des":Ljava/io/File;
    .end local v1    # "destFileName":Ljava/lang/String;
    .end local v3    # "folder":Ljava/io/File;
    .end local v4    # "isOtherSharedMedia":Z
    .end local v5    # "rename":Landroid/content/ContentValues;
    .end local v6    # "tmp":Ljava/io/File;
    :cond_6
    const-string v7, "CloudManager.MediaFileHandleJob"

    const-string/jumbo v8, "skip copy localFile(%s), album(%s)"

    iget-object v9, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mAlbumDir:Ljava/lang/String;

    invoke-static {v7, v8, v2, v9}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, p2

    .line 243
    goto/16 :goto_0
.end method

.method private static notifyMediaProviderScanFile(Ljava/lang/String;)V
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 303
    new-array v0, v3, [Ljava/io/File;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lcom/miui/gallery/util/MediaFileUtils;->triggerMediaScan(Z[Ljava/io/File;)V

    .line 304
    return-void
.end method


# virtual methods
.method public doDelete(Landroid/content/Context;Z)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "local"    # Z

    .prologue
    .line 249
    iget-object v7, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mThumbnail:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 250
    const-string v7, "CloudManager.MediaFileHandleJob"

    const-string v8, "delete thumbnail(%s)"

    iget-object v9, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mThumbnail:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    iget-object v7, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mThumbnail:Ljava/lang/String;

    invoke-direct {p0, p1, v7}, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->delete(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 252
    new-instance v7, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    iget v8, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mReason:I

    iget-object v9, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mThumbnail:Ljava/lang/String;

    const-string v10, "CloudManager.MediaFileHandleJob"

    invoke-direct {v7, v8, v9, v10}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->record(Lcom/miui/gallery/util/deleterecorder/DeleteRecord;)I

    .line 255
    :cond_0
    iget-object v7, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mLocalFile:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 256
    const-string v7, "CloudManager.MediaFileHandleJob"

    const-string v8, "delete localFile(%s)"

    iget-object v9, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mLocalFile:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    iget-object v7, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mLocalFile:Ljava/lang/String;

    invoke-direct {p0, p1, v7}, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->delete(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 258
    new-instance v7, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    iget v8, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mReason:I

    iget-object v9, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mLocalFile:Ljava/lang/String;

    const-string v10, "CloudManager.MediaFileHandleJob"

    invoke-direct {v7, v8, v9, v10}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->record(Lcom/miui/gallery/util/deleterecorder/DeleteRecord;)I

    .line 261
    :cond_1
    if-eqz p2, :cond_2

    .line 262
    iget-wide v8, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mId:J

    invoke-static {v8, v9}, Lcom/miui/gallery/provider/ShareMediaManager;->isOtherShareMediaId(J)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 263
    iget-wide v8, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mId:J

    invoke-static {v8, v9}, Lcom/miui/gallery/provider/ShareMediaManager;->getOriginalMediaId(J)J

    move-result-wide v4

    .line 264
    .local v4, "originId":J
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/miui/gallery/provider/GalleryContract$ShareImage;->SHARE_URI:Landroid/net/Uri;

    const-string v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 265
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 264
    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 272
    .end local v4    # "originId":J
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mLocalFile:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 273
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mLocalFile:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 274
    .local v2, "lastModify":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 275
    .local v0, "interval":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_3

    const-wide/16 v8, 0x3c

    cmp-long v7, v0, v8

    if-gez v7, :cond_3

    .line 276
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 277
    .local v6, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "local"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v7, "Sync"

    const-string/jumbo v8, "sync_photo_delete_in_one_minute"

    invoke-static {v7, v8, v6}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 279
    const-string v7, "Sync"

    const-string/jumbo v8, "sync_photo_delete_interval"

    invoke-static {v7, v8, v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 282
    .end local v0    # "interval":J
    .end local v2    # "lastModify":J
    .end local v6    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    return-void

    .line 267
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const-string v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-wide v12, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mId:J

    .line 268
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 267
    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "local":Z
    iget v3, p0, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->mLocalFlag:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 90
    :pswitch_1
    const/4 v0, 0x1

    .line 93
    :pswitch_2
    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->doCopy(Landroid/content/Context;Z)V

    goto :goto_0

    .line 97
    :pswitch_3
    const/4 v0, 0x1

    .line 100
    :pswitch_4
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->doDelete(Landroid/content/Context;Z)V

    .line 101
    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 105
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->doMove(Landroid/content/Context;)V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
