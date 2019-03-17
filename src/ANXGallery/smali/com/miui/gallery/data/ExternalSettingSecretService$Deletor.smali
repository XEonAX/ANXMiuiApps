.class Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;
.super Lcom/miui/gallery/data/IExternalSettingSecretInterface$Stub;
.source "ExternalSettingSecretService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/ExternalSettingSecretService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Deletor"
.end annotation


# instance fields
.field private mPendingDeleteMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/data/ExternalSettingSecretService$FileData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/gallery/data/ExternalSettingSecretService;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/data/ExternalSettingSecretService;)V
    .locals 1

    .prologue
    .line 41
    iput-object p1, p0, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;->this$0:Lcom/miui/gallery/data/ExternalSettingSecretService;

    invoke-direct {p0}, Lcom/miui/gallery/data/IExternalSettingSecretInterface$Stub;-><init>()V

    .line 42
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;->mPendingDeleteMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/data/ExternalSettingSecretService;Lcom/miui/gallery/data/ExternalSettingSecretService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/data/ExternalSettingSecretService;
    .param p2, "x1"    # Lcom/miui/gallery/data/ExternalSettingSecretService$1;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;-><init>(Lcom/miui/gallery/data/ExternalSettingSecretService;)V

    return-void
.end method

.method private deleteInGroup(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "sha1"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "localGroupId"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;->this$0:Lcom/miui/gallery/data/ExternalSettingSecretService;

    invoke-virtual {v0}, Lcom/miui/gallery/data/ExternalSettingSecretService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "%s AND %s = \'%s\' AND %s = \'%s\' AND %s = %s"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v11, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    aput-object v11, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v11, "sha1"

    aput-object v11, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    const/4 v5, 0x3

    const-string v11, "fileName"

    aput-object v11, v4, v5

    const/4 v5, 0x4

    aput-object p2, v4, v5

    const/4 v5, 0x5

    const-string v11, "localGroupId"

    aput-object v11, v4, v5

    const/4 v5, 0x6

    .line 170
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    .line 168
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 165
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 172
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 174
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v9, v0, [J

    .line 176
    .local v9, "ids":[J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 177
    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 178
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v9, v8

    .line 176
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;->this$0:Lcom/miui/gallery/data/ExternalSettingSecretService;

    const/16 v1, 0x35

    invoke-static {v0, v1, v9}, Lcom/miui/gallery/provider/CloudUtils;->deleteById(Landroid/content/Context;I[J)[J

    move-result-object v7

    .line 182
    .local v7, "deleteIds":[J
    if-nez v7, :cond_3

    const/4 v10, 0x0

    .line 183
    .local v10, "rows":I
    :goto_1
    const-string v0, "ExternalSettingSecretService"

    const-string v1, "delete %d rows from cloud"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .end local v7    # "deleteIds":[J
    .end local v8    # "i":I
    .end local v9    # "ids":[J
    .end local v10    # "rows":I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_2
    return-void

    .line 182
    .restart local v7    # "deleteIds":[J
    .restart local v8    # "i":I
    .restart local v9    # "ids":[J
    :cond_3
    :try_start_1
    array-length v10, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 186
    .end local v7    # "deleteIds":[J
    .end local v8    # "i":I
    .end local v9    # "ids":[J
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getLocalGroupId(Ljava/lang/String;)I
    .locals 7
    .param p1, "folderPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;->this$0:Lcom/miui/gallery/data/ExternalSettingSecretService;

    invoke-virtual {v0}, Lcom/miui/gallery/data/ExternalSettingSecretService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "localFile like ? AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 111
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 113
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 120
    :goto_0
    return v0

    .line 117
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private preSettingSecret(Ljava/lang/String;)V
    .locals 12
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v9, "ExternalSettingSecretService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pre-process path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 104
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 63
    const-string v9, "ExternalSettingSecretService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "skip non-exist file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/util/FileMimeUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "mimeType":Ljava/lang/String;
    invoke-static {v6}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v6}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 68
    const-string v9, "ExternalSettingSecretService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "skip non-media file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v9, p0, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;->this$0:Lcom/miui/gallery/data/ExternalSettingSecretService;

    invoke-static {v9, p1}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "relativePath":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "MIUI/Gallery/cloud/sharer"

    .line 73
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 74
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "unsupported folder: MIUI/Gallery/cloud/sharer"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 77
    :cond_3
    iget-object v9, p0, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;->this$0:Lcom/miui/gallery/data/ExternalSettingSecretService;

    .line 78
    invoke-static {p1}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 77
    invoke-static {v9, v10}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "folderPath":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 80
    const-string v9, "ExternalSettingSecretService"

    const-string v10, "cannot get folder path through %s, skip "

    invoke-static {v9, v10, p1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 83
    :cond_4
    invoke-direct {p0, v4}, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;->getLocalGroupId(Ljava/lang/String;)I

    move-result v5

    .line 84
    .local v5, "localGroupId":I
    const/4 v9, -0x1

    if-ne v5, v9, :cond_5

    .line 85
    const-string v9, "ExternalSettingSecretService"

    const-string v10, "album \'%s\' not exists, skip "

    invoke-static {v9, v10, v4, p1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 89
    :cond_5
    const/4 v2, 0x0

    .line 90
    .local v2, "fileNameInExif":Ljava/lang/String;
    const/4 v8, 0x0

    .line 92
    .local v8, "sha1InExif":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/miui/gallery/util/FileUtils;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "fileTitle":Ljava/lang/String;
    invoke-static {p1}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentData(Ljava/lang/String;)Lcom/miui/gallery/util/ExifUtil$UserCommentData;

    move-result-object v0

    .line 94
    .local v0, "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    if-eqz v0, :cond_6

    .line 95
    invoke-virtual {v0, v3}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {v0}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;->getSha1()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 102
    :cond_6
    iget-object v9, p0, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;->mPendingDeleteMap:Ljava/util/Map;

    new-instance v10, Lcom/miui/gallery/data/ExternalSettingSecretService$FileData;

    .line 103
    invoke-static {p1}, Lcom/miui/gallery/util/FileUtils;->getSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v8, v2, v5}, Lcom/miui/gallery/data/ExternalSettingSecretService$FileData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    invoke-interface {v9, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 98
    .end local v0    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    .end local v3    # "fileTitle":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method


# virtual methods
.method public onFinishSettingSecret([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13
    .param p1, "succPaths"    # [Ljava/lang/String;
    .param p2, "failedPaths"    # [Ljava/lang/String;

    .prologue
    .line 125
    if-eqz p1, :cond_3

    .line 126
    array-length v9, p1

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v7, p1, v8

    .line 127
    .local v7, "succPath":Ljava/lang/String;
    iget-object v10, p0, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;->mPendingDeleteMap:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/ExternalSettingSecretService$FileData;

    .line 128
    .local v1, "fileData":Lcom/miui/gallery/data/ExternalSettingSecretService$FileData;
    if-nez v1, :cond_0

    .line 126
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 131
    :cond_0
    const-string v10, "ExternalSettingSecretService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "about to delete: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v5, v1, Lcom/miui/gallery/data/ExternalSettingSecretService$FileData;->mSha1:Ljava/lang/String;

    .line 134
    .local v5, "sha1":Ljava/lang/String;
    iget-object v6, v1, Lcom/miui/gallery/data/ExternalSettingSecretService$FileData;->mSha1InExif:Ljava/lang/String;

    .line 135
    .local v6, "sha1InExif":Ljava/lang/String;
    iget-object v2, v1, Lcom/miui/gallery/data/ExternalSettingSecretService$FileData;->mFileNameInExif:Ljava/lang/String;

    .line 136
    .local v2, "fileNameInExif":Ljava/lang/String;
    iget v3, v1, Lcom/miui/gallery/data/ExternalSettingSecretService$FileData;->mLocalGroupId:I

    .line 138
    .local v3, "localGroupId":I
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 139
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 140
    const-string v10, "ExternalSettingSecretService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed to get fileName from exif of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {v7}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "originalFileName":Ljava/lang/String;
    invoke-direct {p0, v6, v4, v3}, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;->deleteInGroup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    .end local v4    # "originalFileName":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-static {v7}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    .restart local v4    # "originalFileName":Ljava/lang/String;
    invoke-direct {p0, v5, v4, v3}, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;->deleteInGroup(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 144
    .end local v4    # "originalFileName":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v6, v2, v3}, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;->deleteInGroup(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 153
    .end local v1    # "fileData":Lcom/miui/gallery/data/ExternalSettingSecretService$FileData;
    .end local v2    # "fileNameInExif":Ljava/lang/String;
    .end local v3    # "localGroupId":I
    .end local v5    # "sha1":Ljava/lang/String;
    .end local v6    # "sha1InExif":Ljava/lang/String;
    .end local v7    # "succPath":Ljava/lang/String;
    :cond_3
    if-eqz p2, :cond_4

    iget-object v8, p0, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;->mPendingDeleteMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 154
    array-length v9, p2

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v9, :cond_4

    aget-object v0, p2, v8

    .line 155
    .local v0, "failedPath":Ljava/lang/String;
    iget-object v10, p0, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;->mPendingDeleteMap:Ljava/util/Map;

    invoke-interface {v10, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 159
    .end local v0    # "failedPath":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;->mPendingDeleteMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 160
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setting secret results of paths in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;->mPendingDeleteMap:Ljava/util/Map;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " must be provided!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 162
    :cond_5
    return-void
.end method

.method public preSettingSecret([Ljava/lang/String;)V
    .locals 4
    .param p1, "paths"    # [Ljava/lang/String;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;->mPendingDeleteMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "we are not done with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;->mPendingDeleteMap:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " yet!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_0
    if-eqz p1, :cond_1

    .line 51
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 52
    .local v0, "path":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;->preSettingSecret(Ljava/lang/String;)V

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    return-void
.end method
