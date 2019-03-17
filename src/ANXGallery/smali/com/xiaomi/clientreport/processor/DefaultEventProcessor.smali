.class public Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;
.super Ljava/lang/Object;
.source "DefaultEventProcessor.java"

# interfaces
.implements Lcom/xiaomi/clientreport/processor/IEventProcessor;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/clientreport/data/BaseClientReport;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->setContext(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public static getFirstEventFileName(Lcom/xiaomi/clientreport/data/BaseClientReport;)Ljava/lang/String;
    .locals 1
    .param p0, "clientReport"    # Lcom/xiaomi/clientreport/data/BaseClientReport;

    .prologue
    .line 65
    iget v0, p0, Lcom/xiaomi/clientreport/data/BaseClientReport;->production:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWriteFileName(Lcom/xiaomi/clientreport/data/BaseClientReport;)Ljava/lang/String;
    .locals 8
    .param p1, "clientReport"    # Lcom/xiaomi/clientreport/data/BaseClientReport;

    .prologue
    .line 371
    iget-object v6, p0, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->mContext:Landroid/content/Context;

    const-string v7, "event"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 372
    .local v1, "folder":Ljava/io/File;
    invoke-static {p1}, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->getFirstEventFileName(Lcom/xiaomi/clientreport/data/BaseClientReport;)Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, "production":Ljava/lang/String;
    if-nez v1, :cond_1

    const/4 v5, 0x0

    .line 383
    :cond_0
    :goto_0
    return-object v5

    .line 374
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "beginFilePath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 376
    .local v5, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v6, 0x64

    if-ge v2, v6, :cond_0

    .line 377
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, "path":Ljava/lang/String;
    iget-object v6, p0, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->isFileCanBeUse(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 379
    move-object v5, v3

    .line 380
    goto :goto_0

    .line 376
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private readFile(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v10, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x4

    new-array v8, v12, [B

    .line 132
    .local v8, "magicBuffer":[B
    const/4 v12, 0x4

    new-array v5, v12, [B

    .line 135
    .local v5, "lengthBuffer":[B
    const/4 v2, 0x0

    .line 137
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 139
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v3, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    .line 140
    .local v9, "magicSize":I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_1

    .line 180
    :cond_0
    :goto_1
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 182
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "magicSize":I
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_2
    return-object v10

    .line 143
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "magicSize":I
    :cond_1
    const/4 v12, 0x4

    if-eq v9, v12, :cond_2

    .line 144
    :try_start_2
    const-string v12, "eventData read from cache file failed because magicNumber error"

    invoke-static {v12}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 177
    .end local v9    # "magicSize":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 178
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_3
    :try_start_3
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .line 147
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "magicSize":I
    :cond_2
    :try_start_4
    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/misc/ByteUtils;->toInt([B)I

    move-result v7

    .line 148
    .local v7, "magic":I
    const v12, -0x22334456

    if-eq v7, v12, :cond_3

    .line 149
    const-string v12, "eventData read from cache file failed because magicNumber error"

    invoke-static {v12}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 180
    .end local v7    # "magic":I
    .end local v9    # "magicSize":I
    :catchall_0
    move-exception v12

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_4
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v12

    .line 152
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "magic":I
    .restart local v9    # "magicSize":I
    :cond_3
    :try_start_5
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    .line 153
    .local v11, "size":I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 157
    const/4 v12, 0x4

    if-eq v11, v12, :cond_4

    .line 158
    const-string v12, "eventData read from cache file failed cause lengthBuffer error"

    invoke-static {v12}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 163
    :cond_4
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/misc/ByteUtils;->toInt([B)I

    move-result v4

    .line 164
    .local v4, "length":I
    const/4 v12, 0x1

    if-lt v4, v12, :cond_5

    const/16 v12, 0x1000

    if-le v4, v12, :cond_6

    .line 165
    :cond_5
    const-string v12, "eventData read from cache file failed cause lengthBuffer < 1 || lengthBuffer > 4K"

    invoke-static {v12}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 168
    :cond_6
    new-array v0, v4, [B

    .line 169
    .local v0, "buffer":[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    .line 170
    if-eq v11, v4, :cond_7

    .line 171
    const-string v12, "eventData read from cache file failed cause buffer size not equal length"

    invoke-static {v12}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_7
    invoke-virtual {p0, v0}, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->bytesToString([B)Ljava/lang/String;

    move-result-object v6

    .line 175
    .local v6, "line":Ljava/lang/String;
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 180
    .end local v0    # "buffer":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "length":I
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "magic":I
    .end local v9    # "magicSize":I
    .end local v11    # "size":I
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v12

    goto :goto_4

    .line 177
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method private write2File([Lcom/xiaomi/clientreport/data/BaseClientReport;Ljava/lang/String;)V
    .locals 11
    .param p1, "items"    # [Lcom/xiaomi/clientreport/data/BaseClientReport;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 255
    if-eqz p1, :cond_0

    array-length v6, p1

    if-lez v6, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    const/4 v0, 0x0

    .line 259
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v5, 0x0

    .line 261
    .local v5, "itemBytes":[B
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .local v3, "file":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v6, v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 264
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    array-length v7, p1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_5

    aget-object v4, p1, v6

    .line 265
    .local v4, "item":Lcom/xiaomi/clientreport/data/BaseClientReport;
    if-nez v4, :cond_2

    .line 264
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 268
    :cond_2
    invoke-virtual {v4}, Lcom/xiaomi/clientreport/data/BaseClientReport;->toJsonString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 269
    if-eqz v5, :cond_3

    array-length v8, v5

    if-lt v8, v10, :cond_3

    array-length v8, v5

    const/16 v9, 0x1000

    if-le v8, v9, :cond_4

    .line 270
    :cond_3
    const-string v8, "event data throw a invalid item "

    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 278
    .end local v4    # "item":Lcom/xiaomi/clientreport/data/BaseClientReport;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 279
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_2
    const-string v6, "event data write to cache file failed cause exception"

    invoke-static {v6, v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 281
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 273
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "item":Lcom/xiaomi/clientreport/data/BaseClientReport;
    :cond_4
    const v8, -0x22334456

    :try_start_3
    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/misc/ByteUtils;->parseInt(I)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 274
    array-length v8, v5

    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/misc/ByteUtils;->parseInt(I)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 275
    invoke-virtual {v1, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 276
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 281
    .end local v4    # "item":Lcom/xiaomi/clientreport/data/BaseClientReport;
    :catchall_0
    move-exception v6

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :goto_4
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v6

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :cond_5
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 282
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_0

    .line 281
    :catchall_1
    move-exception v6

    goto :goto_4

    .line 278
    :catch_1
    move-exception v2

    goto :goto_3
.end method


# virtual methods
.method public bytesToString([B)Ljava/lang/String;
    .locals 8
    .param p1, "buffer"    # [B

    .prologue
    const/4 v5, 0x0

    .line 193
    if-eqz p1, :cond_0

    array-length v6, p1

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-object v5

    .line 194
    :cond_1
    iget-object v6, p0, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getConfig()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/clientreport/data/Config;->isEventEncrypted()Z

    move-result v1

    .line 195
    .local v1, "isEventEncrypt":Z
    if-nez v1, :cond_2

    .line 196
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 198
    :cond_2
    iget-object v6, p0, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->getEventKeyWithDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 200
    invoke-static {v2}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->parseKey(Ljava/lang/String;)[B

    move-result-object v3

    .line 201
    .local v3, "keyBytes":[B
    if-eqz v3, :cond_0

    array-length v6, v3

    if-lez v6, :cond_0

    .line 203
    :try_start_0
    invoke-static {v3, p1}, Lcom/xiaomi/channel/commonutils/android/DataCryptUtils;->mipushDecrypt([B[B)[B

    move-result-object v4

    .line 204
    .local v4, "src":[B
    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->bytesToString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v5

    goto :goto_0

    .line 205
    .end local v4    # "src":[B
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 207
    .end local v0    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_1
    move-exception v0

    .line 208
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 209
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 210
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 211
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v0

    .line 212
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 213
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_4
    move-exception v0

    .line 214
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 215
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_5
    move-exception v0

    .line 216
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public preProcess(Lcom/xiaomi/clientreport/data/BaseClientReport;)V
    .locals 5
    .param p1, "clientReport"    # Lcom/xiaomi/clientreport/data/BaseClientReport;

    .prologue
    .line 347
    instance-of v3, p1, Lcom/xiaomi/clientreport/data/EventClientReport;

    if-nez v3, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->mEventMap:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 353
    check-cast v0, Lcom/xiaomi/clientreport/data/EventClientReport;

    .line 354
    .local v0, "eventClientReport":Lcom/xiaomi/clientreport/data/EventClientReport;
    invoke-static {v0}, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->getFirstEventFileName(Lcom/xiaomi/clientreport/data/BaseClientReport;)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "fileKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->mEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 356
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/clientreport/data/BaseClientReport;>;"
    if-nez v2, :cond_2

    .line 357
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/clientreport/data/BaseClientReport;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/clientreport/data/BaseClientReport;>;"
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v3, p0, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->mEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pre event out "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->mEventMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public process()V
    .locals 7

    .prologue
    .line 326
    iget-object v4, p0, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->mEventMap:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 343
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v4, p0, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->mEventMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 330
    iget-object v4, p0, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->mEventMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 331
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 332
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->mEventMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 333
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/clientreport/data/BaseClientReport;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 334
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Lcom/xiaomi/clientreport/data/BaseClientReport;

    .line 335
    .local v0, "dataArray":[Lcom/xiaomi/clientreport/data/BaseClientReport;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "begin write eventJob "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 337
    invoke-virtual {p0, v0}, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->write([Lcom/xiaomi/clientreport/data/BaseClientReport;)V

    goto :goto_1

    .line 342
    .end local v0    # "dataArray":[Lcom/xiaomi/clientreport/data/BaseClientReport;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/clientreport/data/BaseClientReport;>;"
    :cond_2
    iget-object v4, p0, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->mEventMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public readAndSend()V
    .locals 14

    .prologue
    .line 86
    iget-object v10, p0, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->mContext:Landroid/content/Context;

    const-string v11, "event"

    const-string v12, "eventUploading"

    invoke-static {v10, v11, v12}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->moveFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v10, p0, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->mContext:Landroid/content/Context;

    const-string v11, "eventUploading"

    invoke-static {v10, v11}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->getReadFileName(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    .line 88
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    array-length v10, v3

    if-gtz v10, :cond_1

    .line 121
    :cond_0
    return-void

    .line 91
    :cond_1
    const/4 v7, 0x0

    .line 92
    .local v7, "lockRandomFile":Ljava/io/RandomAccessFile;
    const/4 v4, 0x0

    .line 93
    .local v4, "lock":Ljava/nio/channels/FileLock;
    const/4 v5, 0x0

    .line 94
    .local v5, "lockFile":Ljava/io/File;
    array-length v11, v3

    const/4 v10, 0x0

    move-object v6, v5

    .end local v5    # "lockFile":Ljava/io/File;
    .local v6, "lockFile":Ljava/io/File;
    move-object v8, v7

    .end local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .local v8, "lockRandomFile":Ljava/io/RandomAccessFile;
    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v2, v3, v10

    .line 96
    .local v2, "file":Ljava/io/File;
    if-nez v2, :cond_4

    .line 108
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 110
    :try_start_0
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_2
    :goto_1
    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 116
    if-eqz v6, :cond_9

    .line 117
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-object v5, v6

    .end local v6    # "lockFile":Ljava/io/File;
    .restart local v5    # "lockFile":Ljava/io/File;
    move-object v7, v8

    .line 94
    .end local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    move-object v6, v5

    .end local v5    # "lockFile":Ljava/io/File;
    .restart local v6    # "lockFile":Ljava/io/File;
    move-object v8, v7

    .end local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 97
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 98
    .local v9, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".lock"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .end local v6    # "lockFile":Ljava/io/File;
    .restart local v5    # "lockFile":Ljava/io/File;
    :try_start_2
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->createFileQuietly(Ljava/io/File;)Z

    .line 100
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v12, "rw"

    invoke-direct {v7, v5, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    .end local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :try_start_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v4

    .line 102
    invoke-direct {p0, v9}, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->readFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 103
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->send(Ljava/util/List;)V

    .line 104
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 108
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 110
    :try_start_4
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 115
    :cond_5
    :goto_3
    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 116
    if-eqz v5, :cond_3

    .line 117
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 111
    :catch_1
    move-exception v1

    .line 112
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 105
    .end local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "lockFile":Ljava/io/File;
    .end local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .end local v9    # "path":Ljava/lang/String;
    .restart local v6    # "lockFile":Ljava/io/File;
    .restart local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v1

    move-object v5, v6

    .end local v6    # "lockFile":Ljava/io/File;
    .restart local v5    # "lockFile":Ljava/io/File;
    move-object v7, v8

    .line 106
    .end local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :goto_4
    :try_start_5
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 108
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 110
    :try_start_6
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 115
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_5
    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 116
    if-eqz v5, :cond_3

    .line 117
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 111
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 112
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 108
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "lockFile":Ljava/io/File;
    .end local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "lockFile":Ljava/io/File;
    .restart local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v10

    move-object v5, v6

    .end local v6    # "lockFile":Ljava/io/File;
    .restart local v5    # "lockFile":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :goto_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 110
    :try_start_7
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 115
    :cond_7
    :goto_7
    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 116
    if-eqz v5, :cond_8

    .line 117
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_8
    throw v10

    .line 111
    :catch_4
    move-exception v1

    .line 112
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 108
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v9    # "path":Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_6

    .end local v9    # "path":Ljava/lang/String;
    :catchall_2
    move-exception v10

    goto :goto_6

    .line 105
    .end local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v9    # "path":Ljava/lang/String;
    :catch_5
    move-exception v1

    move-object v7, v8

    .end local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_4

    .end local v5    # "lockFile":Ljava/io/File;
    .end local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .end local v9    # "path":Ljava/lang/String;
    .restart local v6    # "lockFile":Ljava/io/File;
    .restart local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :cond_9
    move-object v5, v6

    .end local v6    # "lockFile":Ljava/io/File;
    .restart local v5    # "lockFile":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_2
.end method

.method public send(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->sendFile(Landroid/content/Context;Ljava/util/List;)V

    .line 76
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public setEventMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/clientreport/data/BaseClientReport;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/xiaomi/clientreport/data/BaseClientReport;>;>;"
    iput-object p1, p0, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->mEventMap:Ljava/util/HashMap;

    .line 252
    return-void
.end method

.method public stringToBytes(Ljava/lang/String;)[B
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-object v5

    .line 231
    :cond_1
    iget-object v6, p0, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getConfig()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/clientreport/data/Config;->isEventEncrypted()Z

    move-result v1

    .line 232
    .local v1, "isEventEncrypt":Z
    if-nez v1, :cond_2

    .line 233
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    goto :goto_0

    .line 235
    :cond_2
    iget-object v6, p0, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->getEventKeyWithDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "key":Ljava/lang/String;
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 237
    .local v4, "src":[B
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v4, :cond_0

    array-length v6, v4

    if-le v6, v7, :cond_0

    .line 238
    invoke-static {v2}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->parseKey(Ljava/lang/String;)[B

    move-result-object v3

    .line 240
    .local v3, "keyBytes":[B
    if-eqz v3, :cond_0

    :try_start_0
    array-length v6, v3

    if-le v6, v7, :cond_0

    .line 241
    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    invoke-static {v3, v6}, Lcom/xiaomi/channel/commonutils/android/DataCryptUtils;->mipushEncrypt([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public write([Lcom/xiaomi/clientreport/data/BaseClientReport;)V
    .locals 11
    .param p1, "clientReports"    # [Lcom/xiaomi/clientreport/data/BaseClientReport;

    .prologue
    const/4 v8, 0x0

    .line 287
    if-eqz p1, :cond_0

    array-length v9, p1

    if-lez v9, :cond_0

    aget-object v9, p1, v8

    if-nez v9, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    aget-object v1, p1, v8

    .line 292
    .local v1, "firstItem":Lcom/xiaomi/clientreport/data/BaseClientReport;
    invoke-direct {p0, v1}, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->getWriteFileName(Lcom/xiaomi/clientreport/data/BaseClientReport;)Ljava/lang/String;

    move-result-object v6

    .line 293
    .local v6, "path":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 295
    const/4 v4, 0x0

    .line 296
    .local v4, "lockRandomFile":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 299
    .local v2, "lock":Ljava/nio/channels/FileLock;
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".lock"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .local v3, "lockFile":Ljava/io/File;
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->createFileQuietly(Ljava/io/File;)Z

    .line 301
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v9, "rw"

    invoke-direct {v5, v3, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    .end local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .local v5, "lockRandomFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2

    .line 303
    array-length v9, p1

    :goto_1
    if-ge v8, v9, :cond_3

    aget-object v7, p1, v8

    .line 304
    .local v7, "report":Lcom/xiaomi/clientreport/data/BaseClientReport;
    if-eqz v7, :cond_2

    .line 305
    invoke-direct {p0, p1, v6}, Lcom/xiaomi/clientreport/processor/DefaultEventProcessor;->write2File([Lcom/xiaomi/clientreport/data/BaseClientReport;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 303
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 311
    .end local v7    # "report":Lcom/xiaomi/clientreport/data/BaseClientReport;
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 313
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 318
    :cond_4
    :goto_2
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v4, v5

    .line 319
    .end local v5    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 314
    .end local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 308
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "lockFile":Ljava/io/File;
    .end local v5    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 311
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 313
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 318
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_4
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 314
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 315
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 311
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 313
    :try_start_5
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 318
    :cond_6
    :goto_6
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v8

    .line 314
    :catch_3
    move-exception v0

    .line 315
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 311
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "lockFile":Ljava/io/File;
    .restart local v5    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 308
    .end local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_3
.end method
