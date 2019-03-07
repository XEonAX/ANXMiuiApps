.class public Lcom/xiaomi/analytics/internal/util/AssetUtils;
.super Ljava/lang/Object;
.source "AssetUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "outPath"    # Ljava/lang/String;

    .prologue
    .line 16
    const/4 v1, 0x0

    .line 17
    .local v1, "assetStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 18
    .local v5, "oldAssetStream":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 20
    .local v9, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/IOUtil;->inputStream2ByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 22
    .local v0, "assetData":[B
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .local v8, "outFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 24
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .end local v5    # "oldAssetStream":Ljava/io/InputStream;
    .local v6, "oldAssetStream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v6}, Lcom/xiaomi/analytics/internal/util/IOUtil;->inputStream2ByteArray(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 26
    .local v4, "oldAssetData":[B
    invoke-static {v4}, Lcom/xiaomi/analytics/internal/util/Utils;->getMd5([B)Ljava/lang/String;

    move-result-object v7

    .line 27
    .local v7, "oldMd5":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/Utils;->getMd5([B)Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, "md5":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v11

    if-eqz v11, :cond_0

    .line 38
    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 39
    invoke-static {v6}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 40
    invoke-static {v9}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V

    move-object v5, v6

    .line 42
    .end local v0    # "assetData":[B
    .end local v3    # "md5":Ljava/lang/String;
    .end local v4    # "oldAssetData":[B
    .end local v6    # "oldAssetStream":Ljava/io/InputStream;
    .end local v7    # "oldMd5":Ljava/lang/String;
    .end local v8    # "outFile":Ljava/io/File;
    .restart local v5    # "oldAssetStream":Ljava/io/InputStream;
    :goto_0
    return-void

    .end local v5    # "oldAssetStream":Ljava/io/InputStream;
    .restart local v0    # "assetData":[B
    .restart local v3    # "md5":Ljava/lang/String;
    .restart local v4    # "oldAssetData":[B
    .restart local v6    # "oldAssetStream":Ljava/io/InputStream;
    .restart local v7    # "oldMd5":Ljava/lang/String;
    .restart local v8    # "outFile":Ljava/io/File;
    :cond_0
    move-object v5, v6

    .line 32
    .end local v3    # "md5":Ljava/lang/String;
    .end local v4    # "oldAssetData":[B
    .end local v6    # "oldAssetStream":Ljava/io/InputStream;
    .end local v7    # "oldMd5":Ljava/lang/String;
    .restart local v5    # "oldAssetStream":Ljava/io/InputStream;
    :cond_1
    :try_start_2
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    .end local v9    # "outputStream":Ljava/io/FileOutputStream;
    .local v10, "outputStream":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 34
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 38
    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 39
    invoke-static {v5}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 40
    invoke-static {v10}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V

    move-object v9, v10

    .line 41
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 35
    .end local v0    # "assetData":[B
    .end local v8    # "outFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 36
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    const-string v11, "AssetUtils"

    invoke-static {v11}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "extractAssetFile e"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 38
    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 39
    invoke-static {v5}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 40
    invoke-static {v9}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_0

    .line 38
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_2
    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 39
    invoke-static {v5}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 40
    invoke-static {v9}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v11

    .line 38
    .end local v5    # "oldAssetStream":Ljava/io/InputStream;
    .restart local v0    # "assetData":[B
    .restart local v6    # "oldAssetStream":Ljava/io/InputStream;
    .restart local v8    # "outFile":Ljava/io/File;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "oldAssetStream":Ljava/io/InputStream;
    .restart local v5    # "oldAssetStream":Ljava/io/InputStream;
    goto :goto_2

    .end local v9    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v11

    move-object v9, v10

    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 35
    .end local v5    # "oldAssetStream":Ljava/io/InputStream;
    .restart local v6    # "oldAssetStream":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "oldAssetStream":Ljava/io/InputStream;
    .restart local v5    # "oldAssetStream":Ljava/io/InputStream;
    goto :goto_1

    .end local v9    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    move-object v9, v10

    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
