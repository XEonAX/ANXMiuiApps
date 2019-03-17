.class public Lcom/miui/gallery/assistant/library/DeleteLibraryTask;
.super Lcom/miui/gallery/pendingtask/base/PendingTask;
.source "DeleteLibraryTask.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/gallery/pendingtask/base/PendingTask;-><init>(I)V

    .line 29
    return-void
.end method

.method private isDownloadTempFile(Ljava/io/File;)Z
    .locals 2
    .param p1, "child"    # Ljava/io/File;

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, ".download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const/4 v1, 0x1

    .line 103
    .end local v0    # "fileName":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static post()V
    .locals 3

    .prologue
    .line 107
    invoke-static {}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->getInstance()Lcom/miui/gallery/pendingtask/PendingTaskManager;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->postTask(ILjava/lang/Object;)V

    .line 108
    return-void
.end method


# virtual methods
.method public getNetworkType()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public parseData([B)Ljava/lang/Object;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method

.method public process(Ljava/lang/Object;)Z
    .locals 19
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v2, Lcom/miui/gallery/assistant/library/LibraryConstants;->sAllLibraries:[Ljava/lang/Long;

    .line 61
    .local v2, "allLibraryIds":[Ljava/lang/Long;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 62
    .local v3, "allLibrarySha1s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    array-length v13, v2

    if-lez v13, :cond_2

    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryManager;->getInstance()Lcom/miui/gallery/assistant/library/LibraryManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miui/gallery/assistant/library/LibraryManager;->isInitialized()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 63
    array-length v14, v2

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v14, :cond_3

    aget-object v15, v2, v13

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 64
    .local v10, "libraryId":J
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryManager;->getInstance()Lcom/miui/gallery/assistant/library/LibraryManager;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Lcom/miui/gallery/assistant/library/LibraryManager;->getLibrarySync(J)Lcom/miui/gallery/assistant/library/Library;

    move-result-object v9

    .line 65
    .local v9, "library":Lcom/miui/gallery/assistant/library/Library;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/miui/gallery/assistant/library/Library;->getLibraryItems()Ljava/util/List;

    move-result-object v15

    invoke-static {v15}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 66
    invoke-virtual {v9}, Lcom/miui/gallery/assistant/library/Library;->getLibraryItems()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/assistant/library/LibraryItem;

    .line 67
    .local v8, "item":Lcom/miui/gallery/assistant/library/LibraryItem;
    invoke-virtual {v8}, Lcom/miui/gallery/assistant/library/LibraryItem;->getSha1()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    .end local v8    # "item":Lcom/miui/gallery/assistant/library/LibraryItem;
    :cond_0
    const/4 v13, 0x0

    .line 93
    .end local v9    # "library":Lcom/miui/gallery/assistant/library/Library;
    .end local v10    # "libraryId":J
    :goto_2
    return v13

    .line 63
    .restart local v9    # "library":Lcom/miui/gallery/assistant/library/Library;
    .restart local v10    # "libraryId":J
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 74
    .end local v9    # "library":Lcom/miui/gallery/assistant/library/Library;
    .end local v10    # "libraryId":J
    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    .line 78
    :cond_3
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "libs"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    .line 79
    .local v5, "dir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 80
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 81
    .local v7, "files":[Ljava/io/File;
    if-eqz v7, :cond_5

    array-length v13, v7

    if-lez v13, :cond_5

    .line 82
    array-length v14, v7

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v14, :cond_5

    aget-object v4, v7, v13

    .line 83
    .local v4, "child":Ljava/io/File;
    invoke-static {v4}, Lcom/miui/gallery/util/FileUtils;->getSha1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "fileSha1":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 85
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/miui/gallery/assistant/library/DeleteLibraryTask;->isDownloadTempFile(Ljava/io/File;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 86
    invoke-static {v4}, Lcom/miui/gallery/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    move-result v12

    .line 87
    .local v12, "success":Z
    const-string v15, "DeleteLibraryTask"

    const-string v16, "Overdue Library item file (%s) delete success:%b"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-static/range {v15 .. v18}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .end local v12    # "success":Z
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 93
    .end local v4    # "child":Ljava/io/File;
    .end local v6    # "fileSha1":Ljava/lang/String;
    .end local v7    # "files":[Ljava/io/File;
    :cond_5
    const/4 v13, 0x0

    goto :goto_2
.end method

.method public requireCharging()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public requireDeviceIdle()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public wrapData(Ljava/lang/Object;)[B
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
