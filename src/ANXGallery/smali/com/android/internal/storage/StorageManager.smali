.class public Lcom/android/internal/storage/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/storage/StorageManager$Singleton;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/storage/StorageManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/storage/StorageManager$1;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/internal/storage/StorageManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/storage/StorageManager;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/android/internal/storage/StorageManager$Singleton;->access$100()Lcom/android/internal/storage/StorageManager;

    move-result-object v0

    return-object v0
.end method

.method private static toStorageInfo(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/internal/storage/StorageInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 93
    new-instance v0, Lcom/android/internal/storage/StorageInfo;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/storage/StorageInfo;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "info":Lcom/android/internal/storage/StorageInfo;
    invoke-virtual {v0, p1}, Lcom/android/internal/storage/StorageInfo;->setWrapped(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p1, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/storage/StorageInfo;->setDescription(Ljava/lang/String;)V

    .line 96
    const-string v2, "mounted"

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/storage/StorageInfo;->setMounted(Z)V

    .line 97
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {v0, v1}, Lcom/android/internal/storage/StorageInfo;->setPrimary(Z)V

    .line 99
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/storage/StorageInfo;->setPath(Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/storage/sdcard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/storage/StorageInfo;->setSd(Z)V

    .line 104
    .end local v0    # "info":Lcom/android/internal/storage/StorageInfo;
    :goto_1
    return-object v0

    .line 101
    .restart local v0    # "info":Lcom/android/internal/storage/StorageInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 104
    .end local v0    # "info":Lcom/android/internal/storage/StorageInfo;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static toStorageInfo(Landroid/os/storage/VolumeInfo;)Lcom/android/internal/storage/StorageInfo;
    .locals 7
    .param p0, "volume"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 108
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v2

    .line 109
    .local v2, "path":Ljava/io/File;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 110
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    .line 111
    .local v3, "type":I
    if-eq v3, v6, :cond_0

    if-nez v3, :cond_4

    .line 112
    :cond_0
    new-instance v1, Lcom/android/internal/storage/StorageInfo;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/storage/StorageInfo;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, "info":Lcom/android/internal/storage/StorageInfo;
    invoke-virtual {v1, p0}, Lcom/android/internal/storage/StorageInfo;->setWrapped(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/storage/StorageInfo;->setDescription(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v4

    if-ne v4, v6, :cond_3

    move v4, v5

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/internal/storage/StorageInfo;->setMounted(Z)V

    .line 116
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/storage/StorageInfo;->setVisible(Z)V

    .line 117
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    invoke-virtual {v1, v5}, Lcom/android/internal/storage/StorageInfo;->setPrimary(Z)V

    .line 121
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/storage/StorageInfo;->setPath(Ljava/lang/String;)V

    .line 123
    :cond_1
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 124
    .local v0, "diskInfo":Landroid/os/storage/DiskInfo;
    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/storage/StorageInfo;->setSd(Z)V

    .line 126
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/storage/StorageInfo;->setUsb(Z)V

    .line 131
    .end local v0    # "diskInfo":Landroid/os/storage/DiskInfo;
    .end local v1    # "info":Lcom/android/internal/storage/StorageInfo;
    .end local v3    # "type":I
    :cond_2
    :goto_1
    return-object v1

    .line 115
    .restart local v1    # "info":Lcom/android/internal/storage/StorageInfo;
    .restart local v3    # "type":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 131
    .end local v1    # "info":Lcom/android/internal/storage/StorageInfo;
    .end local v3    # "type":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getStorageInfo(Landroid/content/Context;Ljava/io/File;)Lcom/android/internal/storage/StorageInfo;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/io/File;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 69
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-object v5

    .line 73
    :cond_1
    :try_start_0
    const-string/jumbo v6, "storage"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 74
    .local v0, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v0, p2}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 75
    .local v1, "storageVolume":Landroid/os/storage/StorageVolume;
    if-nez v1, :cond_3

    .line 76
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v4

    .line 77
    .local v4, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 78
    .local v3, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 79
    move-object v1, v3

    .line 84
    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    .end local v4    # "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    :cond_3
    if-eqz v1, :cond_0

    invoke-static {p1, v1}, Lcom/android/internal/storage/StorageManager;->toStorageInfo(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/internal/storage/StorageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 85
    .end local v0    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v1    # "storageVolume":Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v2

    .line 86
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getStorageInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/storage/StorageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 30
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 31
    .local v2, "storages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/storage/StorageInfo;>;"
    if-nez p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-object v2

    .line 34
    :cond_1
    const-string/jumbo v7, "storage"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 36
    .local v1, "storageManager":Landroid/os/storage/StorageManager;
    :try_start_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_3

    .line 37
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v6

    .line 38
    .local v6, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    if-eqz v6, :cond_0

    .line 39
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    .line 40
    .local v4, "volume":Landroid/os/storage/VolumeInfo;
    invoke-static {v4}, Lcom/android/internal/storage/StorageManager;->toStorageInfo(Landroid/os/storage/VolumeInfo;)Lcom/android/internal/storage/StorageInfo;

    move-result-object v0

    .line 41
    .local v0, "info":Lcom/android/internal/storage/StorageInfo;
    if-eqz v0, :cond_2

    .line 42
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 57
    .end local v0    # "info":Lcom/android/internal/storage/StorageInfo;
    .end local v4    # "volume":Landroid/os/storage/VolumeInfo;
    .end local v6    # "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    :catch_0
    move-exception v3

    .line 58
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    new-instance v0, Lcom/android/internal/storage/StorageInfo;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/internal/storage/StorageInfo;-><init>(Ljava/lang/String;)V

    .line 60
    .restart local v0    # "info":Lcom/android/internal/storage/StorageInfo;
    invoke-virtual {v0, v9}, Lcom/android/internal/storage/StorageInfo;->setMounted(Z)V

    .line 61
    invoke-virtual {v0, v9}, Lcom/android/internal/storage/StorageInfo;->setPrimary(Z)V

    .line 62
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    .end local v0    # "info":Lcom/android/internal/storage/StorageInfo;
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 48
    .local v5, "volumes":[Landroid/os/storage/StorageVolume;
    if-eqz v5, :cond_0

    .line 49
    array-length v8, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_0

    aget-object v4, v5, v7

    .line 50
    .local v4, "volume":Landroid/os/storage/StorageVolume;
    invoke-static {p1, v4}, Lcom/android/internal/storage/StorageManager;->toStorageInfo(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/internal/storage/StorageInfo;

    move-result-object v0

    .line 51
    .restart local v0    # "info":Lcom/android/internal/storage/StorageInfo;
    if-eqz v0, :cond_4

    .line 52
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method
