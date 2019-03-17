.class public Lcom/miui/gallery/assistant/library/Library;
.super Lcom/miui/gallery/dao/base/Entity;
.source "Library.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/assistant/library/Library$LibraryStatus;
    }
.end annotation


# instance fields
.field private mLibraryId:J

.field private mLibraryItems:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "galleryResourceInfoList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/assistant/library/LibraryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLibraryStatus:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

.field private mRefreshTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/miui/gallery/dao/base/Entity;-><init>()V

    .line 59
    sget-object v0, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_DEFAULT:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    iput-object v0, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryStatus:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    .line 62
    return-void
.end method

.method private ensureLibraryDependency()V
    .locals 14

    .prologue
    .line 124
    iget-object v8, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryItems:Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 125
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v8, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v2, v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 126
    .local v2, "libraryItemQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/miui/gallery/assistant/library/LibraryItem;>;"
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 127
    .local v7, "parentItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/library/LibraryItem;>;"
    new-instance v3, Ljava/util/LinkedList;

    iget-object v8, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryItems:Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 128
    .local v3, "libraryItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/library/LibraryItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/assistant/library/LibraryItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/assistant/library/LibraryItem;

    .line 130
    .local v1, "item":Lcom/miui/gallery/assistant/library/LibraryItem;
    invoke-virtual {v1}, Lcom/miui/gallery/assistant/library/LibraryItem;->getParentId()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 131
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 135
    .end local v1    # "item":Lcom/miui/gallery/assistant/library/LibraryItem;
    :cond_1
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 136
    .local v4, "nextParentItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/library/LibraryItem;>;"
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 137
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 138
    invoke-interface {v2, v7}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 139
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/assistant/library/LibraryItem;

    .line 140
    .local v6, "parentItem":Lcom/miui/gallery/assistant/library/LibraryItem;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/assistant/library/LibraryItem;

    .line 142
    .local v5, "otherItem":Lcom/miui/gallery/assistant/library/LibraryItem;
    invoke-virtual {v5}, Lcom/miui/gallery/assistant/library/LibraryItem;->getParentId()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/miui/gallery/assistant/library/LibraryItem;->getId()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_3

    .line 143
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 148
    .end local v5    # "otherItem":Lcom/miui/gallery/assistant/library/LibraryItem;
    .end local v6    # "parentItem":Lcom/miui/gallery/assistant/library/LibraryItem;
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 149
    invoke-interface {v7, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 151
    :cond_5
    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v8, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-object v8, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 154
    monitor-exit p0

    .line 156
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/assistant/library/LibraryItem;>;"
    .end local v2    # "libraryItemQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/miui/gallery/assistant/library/LibraryItem;>;"
    .end local v3    # "libraryItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/library/LibraryItem;>;"
    .end local v4    # "nextParentItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/library/LibraryItem;>;"
    .end local v7    # "parentItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/library/LibraryItem;>;"
    :cond_6
    return-void

    .line 154
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/assistant/library/LibraryItem;>;"
    .restart local v2    # "libraryItemQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/miui/gallery/assistant/library/LibraryItem;>;"
    .restart local v3    # "libraryItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/library/LibraryItem;>;"
    .restart local v4    # "nextParentItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/library/LibraryItem;>;"
    .restart local v7    # "parentItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/library/LibraryItem;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method private loadInternal(Ljava/lang/String;)Z
    .locals 2
    .param p1, "absolutePath"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeDynamicallyLoadedCode"
        }
    .end annotation

    .prologue
    .line 161
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    const/4 v1, 0x1

    .line 166
    :goto_0
    return v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Error;
    invoke-direct {p0, v0}, Lcom/miui/gallery/assistant/library/Library;->reportAlgorithmLoadError(Ljava/lang/Throwable;)V

    .line 166
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reportAlgorithmLoadError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 170
    const-string v1, "Library"

    invoke-static {v1, p1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v0

    .line 172
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "algorithm"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v2, "error"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "assistant"

    const-string v2, "assistant_algorithm_error"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 176
    return-void

    .line 173
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method getLibraryId()J
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryId:J

    return-wide v0
.end method

.method public getLibraryItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/library/LibraryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLibraryStatus()Lcom/miui/gallery/assistant/library/Library$LibraryStatus;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryStatus:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    return-object v0
.end method

.method protected getTableColumns()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/dao/base/TableColumn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/dao/base/TableColumn;>;"
    const-string v1, "libraryId"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/library/Library;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "libraryItems"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/library/Library;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v1, "refreshTime"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/library/Library;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-object v0
.end method

.method protected getUniqueConstraints()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 274
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "libraryId"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public declared-synchronized isExist()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryItems:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 202
    :goto_0
    monitor-exit p0

    return v1

    .line 197
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/library/LibraryItem;

    .line 198
    .local v0, "lib":Lcom/miui/gallery/assistant/library/LibraryItem;
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/library/LibraryItem;->isExist()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 202
    .end local v0    # "lib":Lcom/miui/gallery/assistant/library/LibraryItem;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isLibraryItemInfosConsistent()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 283
    iget-object v2, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryItems:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    iget-object v2, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/assistant/library/LibraryItem;

    invoke-virtual {v2}, Lcom/miui/gallery/assistant/library/LibraryItem;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "firstExtraInfo":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/assistant/library/LibraryItem;

    .line 286
    .local v1, "lib":Lcom/miui/gallery/assistant/library/LibraryItem;
    invoke-virtual {v1}, Lcom/miui/gallery/assistant/library/LibraryItem;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 292
    .end local v0    # "firstExtraInfo":Ljava/lang/String;
    .end local v1    # "lib":Lcom/miui/gallery/assistant/library/LibraryItem;
    :goto_0
    return v2

    .line 290
    .restart local v0    # "firstExtraInfo":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .end local v0    # "firstExtraInfo":Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 292
    goto :goto_0
.end method

.method public declared-synchronized isLoaded()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryItems:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/library/LibraryItem;

    .line 181
    .local v0, "lib":Lcom/miui/gallery/assistant/library/LibraryItem;
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/library/LibraryItem;->isTypeSo()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/library/LibraryItem;->isLoaded()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 187
    .end local v0    # "lib":Lcom/miui/gallery/assistant/library/LibraryItem;
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 185
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method isOverDue()Z
    .locals 6

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/gallery/assistant/library/Library;->mRefreshTime:J

    const-wide/32 v4, 0x240c8400

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized load()Z
    .locals 10

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryItems:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 78
    invoke-direct {p0}, Lcom/miui/gallery/assistant/library/Library;->ensureLibraryDependency()V

    .line 79
    iget-object v4, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/assistant/library/LibraryItem;

    .line 80
    .local v3, "libraryItem":Lcom/miui/gallery/assistant/library/LibraryItem;
    invoke-virtual {v3}, Lcom/miui/gallery/assistant/library/LibraryItem;->isLoaded()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/miui/gallery/assistant/library/LibraryItem;->isTypeSo()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    invoke-virtual {v3}, Lcom/miui/gallery/assistant/library/LibraryItem;->isLocal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    :try_start_1
    invoke-virtual {v3}, Lcom/miui/gallery/assistant/library/LibraryItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 87
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/miui/gallery/assistant/library/LibraryItem;->setLoaded(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "Library"

    const-string v6, "Load internal local library %d error"

    invoke-virtual {v3}, Lcom/miui/gallery/assistant/library/LibraryItem;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 77
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "libraryItem":Lcom/miui/gallery/assistant/library/LibraryItem;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 94
    .restart local v3    # "libraryItem":Lcom/miui/gallery/assistant/library/LibraryItem;
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/gallery/assistant/library/LibraryItem;->getTargetPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "libPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "destFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/miui/gallery/assistant/library/Library;->loadInternal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 98
    const-string v5, "Library"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Library loaded success:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/miui/gallery/assistant/library/LibraryItem;->setLoaded(Z)V

    goto :goto_0

    .line 101
    :cond_2
    const-string v5, "Library"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Library load failed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    .end local v0    # "destFile":Ljava/io/File;
    .end local v2    # "libPath":Ljava/lang/String;
    .end local v3    # "libraryItem":Lcom/miui/gallery/assistant/library/LibraryItem;
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/library/Library;->isLoaded()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    monitor-exit p0

    return v4
.end method

.method protected onConvertToContents(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 266
    const-string v0, "libraryId"

    iget-wide v2, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 267
    const-string v0, "libraryItems"

    iget-object v1, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryItems:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/miui/gallery/util/GsonUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v0, "refreshTime"

    iget-wide v2, p0, Lcom/miui/gallery/assistant/library/Library;->mRefreshTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 270
    return-void
.end method

.method protected onInitFromCursor(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 255
    const-string v1, "libraryId"

    invoke-static {p1, v1}, Lcom/miui/gallery/assistant/library/Library;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryId:J

    .line 257
    :try_start_0
    const-string v1, "libraryItems"

    invoke-static {p1, v1}, Lcom/miui/gallery/assistant/library/Library;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/assistant/library/LibraryItem;

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GsonUtils;->getArray(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryItems:Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    const-string v1, "refreshTime"

    invoke-static {p1, v1}, Lcom/miui/gallery/assistant/library/Library;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/assistant/library/Library;->mRefreshTime:J

    .line 262
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "Library"

    const-string v2, "Create libraryItems of library %d from cursor error"

    iget-wide v4, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setLibraryId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 222
    iput-wide p1, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryId:J

    .line 223
    return-void
.end method

.method public setLibraryStatus(Lcom/miui/gallery/assistant/library/Library$LibraryStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryStatus:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    .line 70
    return-void
.end method

.method setRefreshTime(J)V
    .locals 1
    .param p1, "refreshTime"    # J

    .prologue
    .line 234
    iput-wide p1, p0, Lcom/miui/gallery/assistant/library/Library;->mRefreshTime:J

    .line 235
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Library{mLibraryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/assistant/library/Library;->mLibraryId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
