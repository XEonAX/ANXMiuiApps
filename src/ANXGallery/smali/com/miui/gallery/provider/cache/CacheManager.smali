.class public abstract Lcom/miui/gallery/provider/cache/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/gallery/provider/cache/CacheItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mGenerator:Lcom/miui/gallery/provider/cache/CacheItem$Generator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/provider/cache/CacheItem$Generator",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final mModifyLock:Ljava/lang/Object;

.field protected mQueryFactory:Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/miui/gallery/provider/cache/CacheManager;, "Lcom/miui/gallery/provider/cache/CacheManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/CacheManager;->mModifyLock:Ljava/lang/Object;

    return-void
.end method

.method private sort(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p2, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/miui/gallery/provider/cache/CacheManager;, "Lcom/miui/gallery/provider/cache/CacheManager<TT;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 161
    .local v4, "sortStart":J
    const/16 v6, 0x20

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 162
    .local v3, "spacePos":I
    if-lez v3, :cond_0

    move v6, v3

    :goto_0
    invoke-virtual {p2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "identifier":Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/gallery/provider/cache/CacheManager;->mQueryFactory:Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;

    invoke-interface {v6}, Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;->getMapper()Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;->getIndex(Ljava/lang/String;)I

    move-result v2

    .line 164
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 165
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 162
    .end local v1    # "identifier":Ljava/lang/String;
    .end local v2    # "index":I
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_0

    .line 167
    .restart local v1    # "identifier":Ljava/lang/String;
    .restart local v2    # "index":I
    :cond_1
    if-lez v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "desc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    .line 169
    .local v0, "desc":Z
    :cond_2
    invoke-virtual {p0, p1, v2, v0}, Lcom/miui/gallery/provider/cache/CacheManager;->sort(Ljava/util/List;IZ)V

    .line 170
    const-string v6, ".provider.cache.CacheManager"

    const-string/jumbo v7, "sort cost: %sms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    return-object p1
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 68
    .local p0, "this":Lcom/miui/gallery/provider/cache/CacheManager;, "Lcom/miui/gallery/provider/cache/CacheManager<TT;>;"
    const-string v1, ".provider.cache.CacheManager"

    const-string v2, "deleting %s, %s"

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, p1, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/CacheManager;->mModifyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/CacheManager;->mCache:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/gallery/provider/cache/CacheManager;->internalDelete(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    .line 72
    .local v0, "count":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    const-string v1, ".provider.cache.CacheManager"

    const-string v2, "delete finished"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return v0

    .line 72
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected filter(Lcom/miui/gallery/provider/cache/Filter;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/provider/cache/Filter",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/miui/gallery/provider/cache/CacheManager;, "Lcom/miui/gallery/provider/cache/CacheManager<TT;>;"
    .local p1, "filter":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 120
    .local v2, "start":J
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miui/gallery/provider/cache/CacheManager;->mCache:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/CacheManager;->mCache:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/cache/CacheItem;

    .line 122
    .local v0, "item":Lcom/miui/gallery/provider/cache/CacheItem;, "TT;"
    invoke-virtual {p1, v0}, Lcom/miui/gallery/provider/cache/Filter;->filter(Lcom/miui/gallery/provider/cache/CacheItem;)Lcom/miui/gallery/provider/cache/CacheItem;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 123
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    .end local v0    # "item":Lcom/miui/gallery/provider/cache/CacheItem;, "TT;"
    :cond_1
    const-string v4, ".provider.cache.CacheManager"

    const-string v5, "filter cost: %sms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    return-object v1
.end method

.method protected filterLogInfo(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 90
    .local p0, "this":Lcom/miui/gallery/provider/cache/CacheManager;, "Lcom/miui/gallery/provider/cache/CacheManager<TT;>;"
    return-object p1
.end method

.method protected group(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .param p2, "groupBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/miui/gallery/provider/cache/CacheManager;, "Lcom/miui/gallery/provider/cache/CacheManager<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 134
    .local v10, "start":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/provider/cache/CacheManager;->mQueryFactory:Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;

    invoke-interface {v9}, Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;->getMapper()Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-interface {v9, v0}, Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;->getIndex(Ljava/lang/String;)I

    move-result v3

    .line 135
    .local v3, "index":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/provider/cache/CacheManager;->mQueryFactory:Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;

    invoke-interface {v9, v3}, Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;->getMerger(I)Lcom/miui/gallery/provider/cache/CacheItem$Merger;

    move-result-object v6

    .line 137
    .local v6, "merger":Lcom/miui/gallery/provider/cache/CacheItem$Merger;, "Lcom/miui/gallery/provider/cache/CacheItem$Merger<TT;>;"
    const/4 v9, -0x1

    if-ne v3, v9, :cond_0

    .line 138
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not found."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 142
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    mul-int/lit8 v9, v9, 0x4

    div-int/lit8 v9, v9, 0x3

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 143
    .local v8, "results":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;TT;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/provider/cache/CacheItem;

    .line 144
    .local v4, "item":Lcom/miui/gallery/provider/cache/CacheItem;, "TT;"
    const/4 v12, 0x0

    invoke-interface {v4, v3, v12}, Lcom/miui/gallery/provider/cache/CacheItem;->get(IZ)Ljava/lang/Object;

    move-result-object v5

    .line 145
    .local v5, "key":Ljava/lang/Object;
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/provider/cache/CacheItem;

    .line 146
    .local v2, "inResult":Lcom/miui/gallery/provider/cache/CacheItem;, "TT;"
    if-nez v2, :cond_1

    .line 147
    invoke-virtual {v8, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    :cond_1
    invoke-interface {v6, v2, v4, v3}, Lcom/miui/gallery/provider/cache/CacheItem$Merger;->merge(Lcom/miui/gallery/provider/cache/CacheItem;Lcom/miui/gallery/provider/cache/CacheItem;I)Lcom/miui/gallery/provider/cache/CacheItem;

    move-result-object v12

    invoke-virtual {v8, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 153
    .end local v2    # "inResult":Lcom/miui/gallery/provider/cache/CacheItem;, "TT;"
    .end local v4    # "item":Lcom/miui/gallery/provider/cache/CacheItem;, "TT;"
    .end local v5    # "key":Ljava/lang/Object;
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 154
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v9, ".provider.cache.CacheManager"

    const-string v12, "group cost: %sms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v9, v12, v13}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    return-object v7
.end method

.method public insert(JLandroid/content/ContentValues;)J
    .locals 3
    .param p1, "id"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 56
    .local p0, "this":Lcom/miui/gallery/provider/cache/CacheManager;, "Lcom/miui/gallery/provider/cache/CacheManager<TT;>;"
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/CacheManager;->mGenerator:Lcom/miui/gallery/provider/cache/CacheItem$Generator;

    invoke-interface {v1, p1, p2, p3}, Lcom/miui/gallery/provider/cache/CacheItem$Generator;->from(JLandroid/content/ContentValues;)Lcom/miui/gallery/provider/cache/CacheItem;

    move-result-object v0

    .line 57
    .local v0, "item":Lcom/miui/gallery/provider/cache/CacheItem;, "TT;"
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/CacheManager;->mModifyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/CacheManager;->mCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    monitor-exit v2

    .line 64
    :goto_0
    return-wide p1

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/CacheManager;->mCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final internalDelete(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)I
    .locals 7
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/miui/gallery/provider/cache/CacheManager;, "Lcom/miui/gallery/provider/cache/CacheManager<TT;>;"
    .local p3, "cache":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .line 79
    .local v0, "count":I
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/CacheManager;->mGenerator:Lcom/miui/gallery/provider/cache/CacheItem$Generator;

    invoke-static {p1, p2, v4}, Lcom/miui/gallery/provider/cache/Filter;->from(Ljava/lang/String;[Ljava/lang/String;Lcom/miui/gallery/provider/cache/Filter$FilterFactory;)Lcom/miui/gallery/provider/cache/Filter;

    move-result-object v1

    .line 80
    .local v1, "filter":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    invoke-virtual {p0, v1}, Lcom/miui/gallery/provider/cache/CacheManager;->filter(Lcom/miui/gallery/provider/cache/Filter;)Ljava/util/List;

    move-result-object v3

    .line 81
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/provider/cache/CacheItem;

    .line 82
    .local v2, "item":Lcom/miui/gallery/provider/cache/CacheItem;, "TT;"
    invoke-interface {p3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 83
    const-string v5, ".provider.cache.CacheManager"

    const-string v6, "deleted %s"

    invoke-static {v5, v6, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 85
    goto :goto_0

    .line 86
    .end local v2    # "item":Lcom/miui/gallery/provider/cache/CacheItem;, "TT;"
    :cond_0
    return v0
.end method

.method protected final internalUpdate(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 7
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 104
    .local p0, "this":Lcom/miui/gallery/provider/cache/CacheManager;, "Lcom/miui/gallery/provider/cache/CacheManager<TT;>;"
    const/4 v0, 0x0

    .line 105
    .local v0, "count":I
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/CacheManager;->mGenerator:Lcom/miui/gallery/provider/cache/CacheItem$Generator;

    invoke-static {p1, p2, v4}, Lcom/miui/gallery/provider/cache/Filter;->from(Ljava/lang/String;[Ljava/lang/String;Lcom/miui/gallery/provider/cache/Filter$FilterFactory;)Lcom/miui/gallery/provider/cache/Filter;

    move-result-object v1

    .line 107
    .local v1, "filter":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    iget-object v5, p0, Lcom/miui/gallery/provider/cache/CacheManager;->mModifyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 108
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/miui/gallery/provider/cache/CacheManager;->filter(Lcom/miui/gallery/provider/cache/Filter;)Ljava/util/List;

    move-result-object v3

    .line 109
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/provider/cache/CacheItem;

    .line 111
    .local v2, "item":Lcom/miui/gallery/provider/cache/CacheItem;, "TT;"
    iget-object v5, p0, Lcom/miui/gallery/provider/cache/CacheManager;->mGenerator:Lcom/miui/gallery/provider/cache/CacheItem$Generator;

    invoke-interface {v5, v2, p3}, Lcom/miui/gallery/provider/cache/CacheItem$Generator;->update(Lcom/miui/gallery/provider/cache/CacheItem;Landroid/content/ContentValues;)V

    .line 112
    const-string v5, ".provider.cache.CacheManager"

    const-string/jumbo v6, "updated %s"

    invoke-static {v5, v6, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    .line 114
    goto :goto_0

    .line 109
    .end local v2    # "item":Lcom/miui/gallery/provider/cache/CacheItem;, "TT;"
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 115
    .restart local v3    # "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    return v0
.end method

.method protected onCreateCursor([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 3
    .param p1, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;
    .param p5, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/miui/gallery/provider/cache/CacheManager;, "Lcom/miui/gallery/provider/cache/CacheManager<TT;>;"
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Lcom/miui/gallery/provider/cache/MemoryCursor;

    new-instance v1, Lcom/miui/gallery/provider/cache/DataResult;

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/CacheManager;->mQueryFactory:Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;

    invoke-interface {v2}, Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;->getMapper()Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/miui/gallery/provider/cache/DataResult;-><init>([Ljava/lang/String;Ljava/util/List;Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;)V

    invoke-direct {v0, v1, p3}, Lcom/miui/gallery/provider/cache/MemoryCursor;-><init>(Lcom/miui/gallery/provider/cache/ResultSet;Ljava/lang/String;)V

    return-object v0
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 10
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "options"    # Landroid/os/Bundle;

    .prologue
    .line 29
    .local p0, "this":Lcom/miui/gallery/provider/cache/CacheManager;, "Lcom/miui/gallery/provider/cache/CacheManager<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 31
    .local v8, "queryStart":J
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/CacheManager;->mQueryFactory:Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;

    invoke-static {p2, p3, v0}, Lcom/miui/gallery/provider/cache/Filter;->from(Ljava/lang/String;[Ljava/lang/String;Lcom/miui/gallery/provider/cache/Filter$FilterFactory;)Lcom/miui/gallery/provider/cache/Filter;

    move-result-object v6

    .line 34
    .local v6, "filter":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/CacheManager;->mModifyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    invoke-virtual {p0, v6}, Lcom/miui/gallery/provider/cache/CacheManager;->filter(Lcom/miui/gallery/provider/cache/Filter;)Ljava/util/List;

    move-result-object v2

    .line 36
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0, v2, p5}, Lcom/miui/gallery/provider/cache/CacheManager;->group(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 42
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    invoke-direct {p0, v2, p4}, Lcom/miui/gallery/provider/cache/CacheManager;->sort(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 46
    :cond_1
    const-string v0, ".provider.cache.CacheManager"

    const-string v1, "query cost: %sms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p4

    move-object/from16 v5, p6

    .line 48
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/provider/cache/CacheManager;->onCreateCursor([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 36
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected sort(Ljava/util/List;IZ)V
    .locals 2
    .param p2, "index"    # I
    .param p3, "desc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lcom/miui/gallery/provider/cache/CacheManager;, "Lcom/miui/gallery/provider/cache/CacheManager<TT;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/CacheManager;->mQueryFactory:Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;

    invoke-interface {v1, p2, p3}, Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;->getComparator(IZ)Ljava/util/Comparator;

    move-result-object v0

    .line 177
    .local v0, "sortComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    if-eqz v0, :cond_0

    .line 178
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 180
    :cond_0
    return-void
.end method

.method public update(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 5
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 94
    .local p0, "this":Lcom/miui/gallery/provider/cache/CacheManager;, "Lcom/miui/gallery/provider/cache/CacheManager<TT;>;"
    const-string v1, ".provider.cache.CacheManager"

    const-string/jumbo v2, "updating %s, args: %s with ContentValues[%s]"

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p3}, Lcom/miui/gallery/provider/cache/CacheManager;->filterLogInfo(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-static {v1, v2, p1, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "count":I
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/CacheManager;->mModifyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 97
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/provider/cache/CacheManager;->internalUpdate(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 98
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    const-string v1, ".provider.cache.CacheManager"

    const-string/jumbo v2, "update finished"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return v0

    .line 98
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
