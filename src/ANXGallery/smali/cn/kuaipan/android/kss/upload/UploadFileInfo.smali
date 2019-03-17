.class public Lcn/kuaipan/android/kss/upload/UploadFileInfo;
.super Ljava/lang/Object;
.source "UploadFileInfo.java"

# interfaces
.implements Lcn/kuaipan/android/kss/KssDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;
    }
.end annotation


# instance fields
.field private final mBlockInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSha1:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->mBlockInfos:Ljava/util/ArrayList;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 14
    .param p1, "kssString"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->mBlockInfos:Ljava/util/ArrayList;

    .line 109
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    .local v6, "root":Lorg/json/JSONObject;
    const-string/jumbo v11, "sha1"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->mSha1:Ljava/lang/String;

    .line 111
    const-string v11, "block_infos"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 112
    .local v1, "blockArray":Lorg/json/JSONArray;
    if-nez v1, :cond_1

    .line 128
    .end local v1    # "blockArray":Lorg/json/JSONArray;
    .end local v6    # "root":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 115
    .restart local v1    # "blockArray":Lorg/json/JSONArray;
    .restart local v6    # "root":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 116
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 117
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 118
    .local v0, "block":Lorg/json/JSONObject;
    if-nez v0, :cond_3

    move-object v7, v10

    .line 119
    .local v7, "sha1":Ljava/lang/String;
    :goto_2
    if-nez v0, :cond_4

    move-object v5, v10

    .line 120
    .local v5, "md5":Ljava/lang/String;
    :goto_3
    if-nez v0, :cond_5

    move v8, v9

    .line 121
    .local v8, "size":I
    :goto_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    if-ltz v8, :cond_2

    .line 122
    int-to-long v12, v8

    invoke-virtual {p0, v7, v5, v12, v13}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->appendBlock(Ljava/lang/String;Ljava/lang/String;J)V

    .line 116
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 118
    .end local v5    # "md5":Ljava/lang/String;
    .end local v7    # "sha1":Ljava/lang/String;
    .end local v8    # "size":I
    :cond_3
    const-string/jumbo v11, "sha1"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 119
    .restart local v7    # "sha1":Ljava/lang/String;
    :cond_4
    const-string v11, "md5"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 120
    .restart local v5    # "md5":Ljava/lang/String;
    :cond_5
    const-string/jumbo v11, "size"

    const/4 v12, -0x1

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_4

    .line 125
    .end local v0    # "block":Lorg/json/JSONObject;
    .end local v1    # "blockArray":Lorg/json/JSONArray;
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v5    # "md5":Ljava/lang/String;
    .end local v6    # "root":Lorg/json/JSONObject;
    .end local v7    # "sha1":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 126
    .local v3, "e":Lorg/json/JSONException;
    const-string v9, "UploadFileInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed parser UploadFileInfo from a String. The String:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getBlockInfos()Lorg/json/JSONArray;
    .locals 7

    .prologue
    .line 132
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 133
    .local v1, "blockArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->mBlockInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;

    .line 134
    .local v2, "blockInfo":Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 135
    .local v0, "block":Lorg/json/JSONObject;
    const-string/jumbo v5, "sha1"

    iget-object v6, v2, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;->sha1:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v5, "md5"

    iget-object v6, v2, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;->md5:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string/jumbo v5, "size"

    iget v6, v2, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;->size:I

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v0    # "block":Lorg/json/JSONObject;
    .end local v1    # "blockArray":Lorg/json/JSONArray;
    .end local v2    # "blockInfo":Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;
    :catch_0
    move-exception v3

    .line 143
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "UploadFileInfo"

    const-string v5, "Failed generate Json String for UploadRequestInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v1, 0x0

    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_0
    return-object v1
.end method

.method public static getFileInfo(Ljava/io/File;)Lcn/kuaipan/android/kss/upload/UploadFileInfo;
    .locals 24
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/exception/KscException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v11, 0x0

    .line 45
    .local v11, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .end local v11    # "in":Ljava/io/InputStream;
    .local v12, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v13, Lcn/kuaipan/android/kss/upload/UploadFileInfo;

    invoke-direct {v13}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;-><init>()V

    .line 48
    .local v13, "info":Lcn/kuaipan/android/kss/upload/UploadFileInfo;
    const-string v15, "SHA1"

    invoke-static {v15}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 49
    .local v10, "fileSha1":Ljava/security/MessageDigest;
    const-string v15, "SHA1"

    invoke-static {v15}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 50
    .local v7, "blockSha1":Ljava/security/MessageDigest;
    const-string v15, "MD5"

    invoke-static {v15}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 52
    .local v5, "blockMd5":Ljava/security/MessageDigest;
    const/16 v15, 0x2000

    new-array v8, v15, [B

    .line 54
    .local v8, "buf":[B
    const-wide/16 v16, 0x0

    .line 55
    .local v16, "pos":J
    const/4 v4, 0x1

    .line 56
    .local v4, "blockIndex":I
    :cond_0
    :goto_0
    invoke-virtual {v12, v8}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .local v14, "len":I
    if-ltz v14, :cond_3

    .line 57
    int-to-long v0, v14

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    .line 58
    const/4 v15, 0x0

    invoke-virtual {v10, v8, v15, v14}, Ljava/security/MessageDigest;->update([BII)V

    .line 60
    int-to-long v0, v4

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x400000

    mul-long v18, v18, v20

    cmp-long v15, v16, v18

    if-gez v15, :cond_1

    .line 61
    const/4 v15, 0x0

    invoke-virtual {v7, v8, v15, v14}, Ljava/security/MessageDigest;->update([BII)V

    .line 62
    const/4 v15, 0x0

    invoke-virtual {v5, v8, v15, v14}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 91
    .end local v4    # "blockIndex":I
    .end local v5    # "blockMd5":Ljava/security/MessageDigest;
    .end local v7    # "blockSha1":Ljava/security/MessageDigest;
    .end local v8    # "buf":[B
    .end local v10    # "fileSha1":Ljava/security/MessageDigest;
    .end local v13    # "info":Lcn/kuaipan/android/kss/upload/UploadFileInfo;
    .end local v14    # "len":I
    .end local v16    # "pos":J
    :catch_0
    move-exception v9

    move-object v11, v12

    .line 92
    .end local v12    # "in":Ljava/io/InputStream;
    .local v9, "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v11    # "in":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    new-instance v15, Lcn/kuaipan/android/exception/KscRuntimeException;

    const v18, 0x7a125

    move/from16 v0, v18

    invoke-direct {v15, v0, v9}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/Throwable;)V

    throw v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .end local v9    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v15

    .line 97
    :goto_2
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 100
    :goto_3
    throw v15

    .line 64
    .end local v11    # "in":Ljava/io/InputStream;
    .restart local v4    # "blockIndex":I
    .restart local v5    # "blockMd5":Ljava/security/MessageDigest;
    .restart local v7    # "blockSha1":Ljava/security/MessageDigest;
    .restart local v8    # "buf":[B
    .restart local v10    # "fileSha1":Ljava/security/MessageDigest;
    .restart local v12    # "in":Ljava/io/InputStream;
    .restart local v13    # "info":Lcn/kuaipan/android/kss/upload/UploadFileInfo;
    .restart local v14    # "len":I
    .restart local v16    # "pos":J
    :cond_1
    int-to-long v0, v4

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x400000

    mul-long v18, v18, v20

    sub-long v18, v16, v18

    move-wide/from16 v0, v18

    long-to-int v15, v0

    sub-int v6, v14, v15

    .line 65
    .local v6, "blockOffset":I
    add-int/lit8 v4, v4, 0x1

    .line 66
    :try_start_4
    const-string v18, "UploadFileInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "blockoffset: "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v19, " len: "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v19, " pos: "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v19, " blockIndex"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v19, " blockOffset > input.length: "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    int-to-long v0, v6

    move-wide/from16 v20, v0

    array-length v15, v8

    int-to-long v0, v15

    move-wide/from16 v22, v0

    cmp-long v15, v20, v22

    if-lez v15, :cond_2

    const/4 v15, 0x1

    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v15, 0x0

    invoke-virtual {v7, v8, v15, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 69
    const/4 v15, 0x0

    invoke-virtual {v5, v8, v15, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 71
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v15

    invoke-static {v15}, Lcn/kuaipan/android/utils/Encode;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v15

    .line 72
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcn/kuaipan/android/utils/Encode;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v18

    const-wide/32 v20, 0x400000

    .line 71
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v13, v15, v0, v1, v2}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->appendBlock(Ljava/lang/String;Ljava/lang/String;J)V

    .line 74
    if-le v14, v6, :cond_0

    .line 75
    sub-int v15, v14, v6

    invoke-virtual {v7, v8, v6, v15}, Ljava/security/MessageDigest;->update([BII)V

    .line 76
    sub-int v15, v14, v6

    invoke-virtual {v5, v8, v6, v15}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 93
    .end local v4    # "blockIndex":I
    .end local v5    # "blockMd5":Ljava/security/MessageDigest;
    .end local v6    # "blockOffset":I
    .end local v7    # "blockSha1":Ljava/security/MessageDigest;
    .end local v8    # "buf":[B
    .end local v10    # "fileSha1":Ljava/security/MessageDigest;
    .end local v13    # "info":Lcn/kuaipan/android/kss/upload/UploadFileInfo;
    .end local v14    # "len":I
    .end local v16    # "pos":J
    :catch_1
    move-exception v9

    move-object v11, v12

    .line 94
    .end local v12    # "in":Ljava/io/InputStream;
    .local v9, "e":Ljava/io/IOException;
    .restart local v11    # "in":Ljava/io/InputStream;
    :goto_5
    const/4 v15, 0x0

    :try_start_5
    invoke-static {v9, v15}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/exception/KscException;

    move-result-object v15

    throw v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 66
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "in":Ljava/io/InputStream;
    .restart local v4    # "blockIndex":I
    .restart local v5    # "blockMd5":Ljava/security/MessageDigest;
    .restart local v6    # "blockOffset":I
    .restart local v7    # "blockSha1":Ljava/security/MessageDigest;
    .restart local v8    # "buf":[B
    .restart local v10    # "fileSha1":Ljava/security/MessageDigest;
    .restart local v12    # "in":Ljava/io/InputStream;
    .restart local v13    # "info":Lcn/kuaipan/android/kss/upload/UploadFileInfo;
    .restart local v14    # "len":I
    .restart local v16    # "pos":J
    :cond_2
    const/4 v15, 0x0

    goto :goto_4

    .line 81
    .end local v6    # "blockOffset":I
    :cond_3
    int-to-long v0, v4

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x400000

    mul-long v18, v18, v20

    cmp-long v15, v18, v16

    if-lez v15, :cond_5

    int-to-long v0, v4

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x400000

    mul-long v18, v18, v20

    const-wide/32 v20, 0x400000

    add-long v20, v20, v16

    cmp-long v15, v18, v20

    if-gez v15, :cond_5

    .line 82
    :try_start_6
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v15

    invoke-static {v15}, Lcn/kuaipan/android/utils/Encode;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v15

    .line 83
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcn/kuaipan/android/utils/Encode;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v18

    const-wide/32 v20, 0x400000

    add-int/lit8 v19, v4, -0x1

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v20, v20, v22

    sub-long v20, v16, v20

    .line 82
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v13, v15, v0, v1, v2}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->appendBlock(Ljava/lang/String;Ljava/lang/String;J)V

    .line 89
    :cond_4
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v15

    invoke-static {v15}, Lcn/kuaipan/android/utils/Encode;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->setSha1(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 97
    :try_start_7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 100
    :goto_6
    return-object v13

    .line 85
    :cond_5
    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-nez v15, :cond_4

    .line 86
    :try_start_8
    new-instance v15, Lcn/kuaipan/android/exception/KscRuntimeException;

    const v18, 0x7a123

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " read error."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    throw v15
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 96
    .end local v4    # "blockIndex":I
    .end local v5    # "blockMd5":Ljava/security/MessageDigest;
    .end local v7    # "blockSha1":Ljava/security/MessageDigest;
    .end local v8    # "buf":[B
    .end local v10    # "fileSha1":Ljava/security/MessageDigest;
    .end local v13    # "info":Lcn/kuaipan/android/kss/upload/UploadFileInfo;
    .end local v14    # "len":I
    .end local v16    # "pos":J
    :catchall_1
    move-exception v15

    move-object v11, v12

    .end local v12    # "in":Ljava/io/InputStream;
    .restart local v11    # "in":Ljava/io/InputStream;
    goto/16 :goto_2

    .line 98
    .end local v11    # "in":Ljava/io/InputStream;
    .restart local v4    # "blockIndex":I
    .restart local v5    # "blockMd5":Ljava/security/MessageDigest;
    .restart local v7    # "blockSha1":Ljava/security/MessageDigest;
    .restart local v8    # "buf":[B
    .restart local v10    # "fileSha1":Ljava/security/MessageDigest;
    .restart local v12    # "in":Ljava/io/InputStream;
    .restart local v13    # "info":Lcn/kuaipan/android/kss/upload/UploadFileInfo;
    .restart local v14    # "len":I
    .restart local v16    # "pos":J
    :catch_2
    move-exception v15

    goto :goto_6

    .end local v4    # "blockIndex":I
    .end local v5    # "blockMd5":Ljava/security/MessageDigest;
    .end local v7    # "blockSha1":Ljava/security/MessageDigest;
    .end local v8    # "buf":[B
    .end local v10    # "fileSha1":Ljava/security/MessageDigest;
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v13    # "info":Lcn/kuaipan/android/kss/upload/UploadFileInfo;
    .end local v14    # "len":I
    .end local v16    # "pos":J
    .restart local v11    # "in":Ljava/io/InputStream;
    :catch_3
    move-exception v18

    goto/16 :goto_3

    .line 93
    :catch_4
    move-exception v9

    goto/16 :goto_5

    .line 91
    :catch_5
    move-exception v9

    goto/16 :goto_1
.end method


# virtual methods
.method appendBlock(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "sha1"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;
    .param p3, "size"    # J

    .prologue
    .line 157
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->mBlockInfos:Ljava/util/ArrayList;

    new-instance v1, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;

    long-to-int v2, p3

    const/4 v3, 0x0

    invoke-direct {v1, p1, p2, v2, v3}, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcn/kuaipan/android/kss/upload/UploadFileInfo$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method public getBlockInfo(I)Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->mBlockInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->mBlockInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;

    goto :goto_0
.end method

.method public getKssString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    invoke-direct {p0}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->getBlockInfos()Lorg/json/JSONArray;

    move-result-object v0

    .line 170
    .local v0, "blockInfos":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 171
    const/4 v2, 0x0

    .line 181
    :goto_0
    return-object v2

    .line 174
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 176
    .local v1, "root":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "block_infos"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 178
    :catch_0
    move-exception v2

    .line 181
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->mSha1:Ljava/lang/String;

    return-object v0
.end method

.method setSha1(Ljava/lang/String;)V
    .locals 0
    .param p1, "sha1"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->mSha1:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 186
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 188
    .local v0, "root":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "block_infos"

    invoke-direct {p0}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->getBlockInfos()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string/jumbo v1, "sha1"

    iget-object v2, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->mSha1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 190
    :catch_0
    move-exception v1

    goto :goto_0
.end method
