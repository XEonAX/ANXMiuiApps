.class public Lcn/kuaipan/android/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

.field private static final mSync:Ljava/lang/Object;

.field private static sExternalCacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    .line 20
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcn/kuaipan/android/utils/FileUtils;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/kuaipan/android/utils/FileUtils;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public static deleteChildren(Ljava/io/File;)Z
    .locals 8
    .param p0, "folder"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 70
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v3

    .line 74
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 75
    .local v1, "children":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 79
    const/4 v2, 0x1

    .line 80
    .local v2, "success":Z
    array-length v6, v1

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v0, v1, v5

    .line 81
    .local v0, "child":Ljava/io/File;
    invoke-static {v0}, Lcn/kuaipan/android/utils/FileUtils;->deletes(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v2, :cond_2

    move v2, v3

    .line 80
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v2, v4

    .line 81
    goto :goto_2

    .end local v0    # "child":Ljava/io/File;
    :cond_3
    move v3, v2

    .line 84
    goto :goto_0
.end method

.method public static deletes(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 88
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    :cond_0
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    .line 91
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-static {p0}, Lcn/kuaipan/android/utils/FileUtils;->deleteChildren(Ljava/io/File;)Z

    .line 95
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method

.method public static getCacheDir(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "external"    # Z

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-static {p0, p2}, Lcn/kuaipan/android/utils/FileUtils;->getCacheDir(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    .line 36
    .local v0, "cacheDir":Ljava/io/File;
    if-nez v0, :cond_1

    move-object v1, v2

    .line 47
    :cond_0
    :goto_0
    return-object v1

    .line 39
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .local v1, "result":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 41
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 42
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    :cond_2
    const-string v3, "FileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create cache directory:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 44
    goto :goto_0
.end method

.method public static getCacheDir(Landroid/content/Context;Z)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "external"    # Z

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcn/kuaipan/android/utils/FileUtils;->getCacheDir(Landroid/content/Context;ZZ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDir(Landroid/content/Context;ZZ)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "external"    # Z
    .param p2, "mustExist"    # Z

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "result":Ljava/io/File;
    if-eqz p1, :cond_0

    .line 57
    invoke-static {p0, p2}, Lcn/kuaipan/android/utils/FileUtils;->getExternalCacheDir(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExternalCacheDir(Landroid/content/Context;Z)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mustExist"    # Z

    .prologue
    .line 258
    sget-object v1, Lcn/kuaipan/android/utils/FileUtils;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_0
    sget-object v0, Lcn/kuaipan/android/utils/FileUtils;->sExternalCacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuaipan/android/utils/FileUtils;->getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/utils/FileUtils;->sExternalCacheDir:Ljava/io/File;

    .line 262
    :cond_0
    sget-object v0, Lcn/kuaipan/android/utils/FileUtils;->sExternalCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 264
    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcn/kuaipan/android/utils/FileUtils;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :goto_0
    :try_start_2
    sget-object v0, Lcn/kuaipan/android/utils/FileUtils;->sExternalCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 268
    if-eqz p1, :cond_2

    sget-object v0, Lcn/kuaipan/android/utils/FileUtils;->sExternalCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/kuaipan/android/utils/FileUtils;->sExternalCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 269
    :cond_1
    const-string v0, "FileUtils"

    const-string v2, "Unable to create external cache directory"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v0, 0x0

    monitor-exit v1

    .line 273
    :goto_1
    return-object v0

    :cond_2
    sget-object v0, Lcn/kuaipan/android/utils/FileUtils;->sExternalCacheDir:Ljava/io/File;

    monitor-exit v1

    goto :goto_1

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 265
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcn/kuaipan/android/utils/FileUtils;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
