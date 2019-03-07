.class public final Lcom/nostra13/universalimageloader/utils/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# static fields
.field private static final EXTERNAL_STORAGE_PERMISSION:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"

.field private static final INDIVIDUAL_DIR_NAME:Ljava/lang/String; = "uil-images"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getCacheDirectory(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDirectory(Landroid/content/Context;Z)Ljava/io/File;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferExternal"    # Z

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 70
    .local v0, "appCacheDir":Ljava/io/File;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 76
    .local v3, "externalStorageState":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_0

    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->hasExternalStoragePermission(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 79
    :cond_0
    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 82
    :cond_1
    if-nez v0, :cond_2

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/cache/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "cacheDirPath":Ljava/lang/String;
    const-string v4, "Can\'t define system cache directory! \'%s\' will be used."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    new-instance v0, Ljava/io/File;

    .end local v0    # "appCacheDir":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .end local v1    # "cacheDirPath":Ljava/lang/String;
    .restart local v0    # "appCacheDir":Ljava/io/File;
    :cond_2
    return-object v0

    .line 71
    .end local v3    # "externalStorageState":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v3, ""

    .line 75
    .restart local v3    # "externalStorageState":Ljava/lang/String;
    goto :goto_0

    .line 73
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .end local v3    # "externalStorageState":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/IncompatibleClassChangeError;
    const-string v3, ""

    .restart local v3    # "externalStorageState":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 161
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "Android"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, "data"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    .local v1, "dataDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, "cache"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    .local v0, "appCacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    .line 165
    const-string v3, "Unable to create external cache directory"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    const/4 v0, 0x0

    .line 174
    .end local v0    # "appCacheDir":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 169
    .restart local v0    # "appCacheDir":Ljava/io/File;
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, ".nomedia"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Can\'t create \".nomedia\" file in application external cache directory"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nostra13/universalimageloader/utils/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const-string v0, "uil-images"

    invoke-static {p0, v0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheDir"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 113
    .local v0, "appCacheDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    .local v1, "individualCacheDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    move-object v1, v0

    .line 119
    :cond_0
    return-object v1
.end method

.method public static getOwnCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheDir"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "appCacheDir":Ljava/io/File;
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->hasExternalStoragePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    new-instance v0, Ljava/io/File;

    .end local v0    # "appCacheDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    .restart local v0    # "appCacheDir":Ljava/io/File;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 136
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 138
    :cond_2
    return-object v0
.end method

.method public static getOwnCacheDirectory(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheDir"    # Ljava/lang/String;
    .param p2, "preferExternal"    # Z

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "appCacheDir":Ljava/io/File;
    if-eqz p2, :cond_0

    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->hasExternalStoragePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    new-instance v0, Ljava/io/File;

    .end local v0    # "appCacheDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    .restart local v0    # "appCacheDir":Ljava/io/File;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 157
    :cond_2
    return-object v0
.end method

.method private static hasExternalStoragePermission(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 179
    .local v0, "perm":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
