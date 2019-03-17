.class public Lcom/miui/gallery/module/CacheRepository;
.super Lmiui/module/Repository;
.source "CacheRepository.java"


# instance fields
.field private mAppStoreRepo:Lmiui/module/appstore/AppStoreRepository;

.field private mFolder:Ljava/io/File;

.field private mLocalOnly:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localOnly"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Lmiui/module/Repository;-><init>()V

    .line 19
    new-instance v0, Lmiui/module/appstore/AppStoreRepository;

    invoke-direct {v0}, Lmiui/module/appstore/AppStoreRepository;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/module/CacheRepository;->mAppStoreRepo:Lmiui/module/appstore/AppStoreRepository;

    .line 24
    iput-boolean p2, p0, Lcom/miui/gallery/module/CacheRepository;->mLocalOnly:Z

    .line 25
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "plugins/preloads/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/module/CacheRepository;->mFolder:Ljava/io/File;

    .line 26
    return-void
.end method

.method public static clearCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    sget-boolean v5, Lcom/miui/os/Rom;->IS_MIUI:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/miui/os/Rom;->IS_ALPHA:Z

    if-eqz v5, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "plugins/preloads/"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    .local v1, "cacheDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    .local v2, "cacheFile":Ljava/io/File;
    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 98
    const-string v5, "CacheRepository"

    const-string v6, "delete %s"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "miuisdk/modules/"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .local v4, "sdkDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    .local v0, "apkFile":Ljava/io/File;
    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 103
    const-string v5, "CacheRepository"

    const-string v6, "delete %s"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".lib"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .local v3, "libFile":Ljava/io/File;
    invoke-static {v3}, Lcom/miui/gallery/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 107
    const-string v5, "CacheRepository"

    const-string v6, "delete %s"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method cache(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v4, p0, Lcom/miui/gallery/module/CacheRepository;->mFolder:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 64
    iget-object v4, p0, Lcom/miui/gallery/module/CacheRepository;->mFolder:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 65
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "create plugin cache folder failed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/miui/gallery/module/CacheRepository;->mFolder:Ljava/io/File;

    invoke-direct {v2, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .local v2, "src":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    const-string v3, "CacheRepository"

    const-string v4, "%s loaded, skip cache"

    invoke-static {v3, v4, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 75
    .restart local p1    # "name":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/module/CacheRepository;->mAppStoreRepo:Lmiui/module/appstore/AppStoreRepository;

    iget-object v5, p0, Lcom/miui/gallery/module/CacheRepository;->mFolder:Ljava/io/File;

    invoke-virtual {v4, v5, p1}, Lmiui/module/appstore/AppStoreRepository;->fetch(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "fileName":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 77
    const-string v4, "CacheRepository"

    const-string v5, "app store repo fetch %s failed"

    invoke-static {v4, v5, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object p1, v3

    .line 78
    goto :goto_0

    .line 80
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/miui/gallery/module/CacheRepository;->mFolder:Ljava/io/File;

    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .local v1, "module":Ljava/io/File;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 82
    const-string v4, "CacheRepository"

    const-string v5, "rename %s -> %s failed"

    invoke-static {v4, v5, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v3

    .line 83
    goto :goto_0

    .line 85
    :cond_3
    const-string v3, "CacheRepository"

    const-string v4, "cache success"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/gallery/module/CacheRepository;->mFolder:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .local v0, "cache":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/module/CacheRepository;->mLocalOnly:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/module/CacheRepository;->mAppStoreRepo:Lmiui/module/appstore/AppStoreRepository;

    invoke-virtual {v1, p1}, Lmiui/module/appstore/AppStoreRepository;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fetch(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "targetFolder"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 36
    const-string v4, "CacheRepository"

    const-string v5, "fetching %s"

    invoke-static {v4, v5, p2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/miui/gallery/module/CacheRepository;->mFolder:Ljava/io/File;

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .local v1, "src":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 39
    const-string v4, "CacheRepository"

    const-string v5, "%s not in cache"

    invoke-static {v4, v5, p2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    iget-boolean v4, p0, Lcom/miui/gallery/module/CacheRepository;->mLocalOnly:Z

    if-eqz v4, :cond_0

    move-object p2, v3

    .line 58
    .end local p2    # "name":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 44
    .restart local p2    # "name":Ljava/lang/String;
    :cond_0
    const-string v4, "CacheRepository"

    const-string/jumbo v5, "start to cache %s"

    invoke-static {v4, v5, p2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/miui/gallery/module/CacheRepository;->cache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "file":Ljava/lang/String;
    if-nez v0, :cond_2

    move-object p2, v3

    .line 47
    goto :goto_0

    .line 50
    .end local v0    # "file":Ljava/lang/String;
    :cond_1
    const-string v4, "CacheRepository"

    const-string v5, "%s cached"

    invoke-static {v4, v5, p2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .local v2, "targetFile":Ljava/io/File;
    invoke-static {v1, v2}, Lcom/miui/gallery/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 55
    const-string v3, "CacheRepository"

    const-string v4, "fetch %s success"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p2, v3

    .line 58
    goto :goto_0
.end method
