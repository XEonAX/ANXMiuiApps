.class public Lcom/xiaomi/analytics/internal/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAllFiles(Ljava/io/File;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 19
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 21
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/analytics/internal/util/FileUtils;->deleteDir(Ljava/lang/String;)V

    .line 20
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/FileUtils;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 28
    .end local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 30
    :cond_1
    return-void
.end method

.method public static deleteAllFiles(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 14
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/FileUtils;->deleteAllFiles(Ljava/io/File;)V

    .line 15
    return-void
.end method

.method public static deleteDir(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 34
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "dir":Ljava/io/File;
    invoke-static {p0}, Lcom/xiaomi/analytics/internal/util/FileUtils;->deleteAllFiles(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v0    # "dir":Ljava/io/File;
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 8
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :goto_0
    return-void

    .line 9
    :catch_0
    move-exception v0

    goto :goto_0
.end method
