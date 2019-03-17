.class public Lcom/miui/gallery/provider/cache/SearchHistoryManager;
.super Lcom/miui/gallery/provider/cache/CacheManager;
.source "SearchHistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/provider/cache/CacheManager",
        "<",
        "Lcom/miui/gallery/provider/cache/SearchHistoryItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_CACHE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/cache/SearchHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sSearchHistoryManager:Lcom/miui/gallery/provider/cache/SearchHistoryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->EMPTY_CACHE:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/CacheManager;-><init>()V

    .line 21
    new-instance v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem$QueryFactory;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/SearchHistoryItem$QueryFactory;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->mQueryFactory:Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;

    .line 22
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->EMPTY_CACHE:Ljava/util/List;

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->mCache:Ljava/util/List;

    .line 23
    new-instance v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem$Generator;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/SearchHistoryItem$Generator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->mGenerator:Lcom/miui/gallery/provider/cache/CacheItem$Generator;

    .line 24
    return-void
.end method

.method private ensureCache()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->mCache:Ljava/util/List;

    sget-object v1, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->EMPTY_CACHE:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->mModifyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->load()V

    .line 126
    monitor-exit v1

    .line 128
    :cond_0
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/miui/gallery/provider/cache/SearchHistoryManager;
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->sSearchHistoryManager:Lcom/miui/gallery/provider/cache/SearchHistoryManager;

    if-nez v0, :cond_1

    .line 144
    const-class v1, Lcom/miui/gallery/provider/cache/SearchHistoryManager;

    monitor-enter v1

    .line 145
    :try_start_0
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->sSearchHistoryManager:Lcom/miui/gallery/provider/cache/SearchHistoryManager;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/SearchHistoryManager;-><init>()V

    sput-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->sSearchHistoryManager:Lcom/miui/gallery/provider/cache/SearchHistoryManager;

    .line 148
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_1
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->sSearchHistoryManager:Lcom/miui/gallery/provider/cache/SearchHistoryManager;

    return-object v0

    .line 148
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private load()V
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->mCache:Ljava/util/List;

    sget-object v2, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->EMPTY_CACHE:Ljava/util/List;

    if-ne v1, v2, :cond_0

    .line 133
    invoke-static {}, Lcom/miui/gallery/provider/cache/SearchHistoryStorageHelper;->getSavedHistories()Ljava/util/List;

    move-result-object v0

    .line 134
    .local v0, "storageHistories":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/SearchHistoryItem;>;"
    if-eqz v0, :cond_0

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->mCache:Ljava/util/List;

    .line 136
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->mCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    .end local v0    # "storageHistories":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/SearchHistoryItem;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->deleteAll()I

    move-result v0

    return v0
.end method

.method public deleteAll()I
    .locals 4

    .prologue
    .line 108
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->mModifyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 109
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/provider/cache/SearchHistoryStorageHelper;->clearSavedHistories()I

    move-result v0

    .line 111
    .local v0, "count":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->mCache:Ljava/util/List;

    sget-object v3, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->EMPTY_CACHE:Ljava/util/List;

    if-eq v1, v3, :cond_0

    .line 112
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->mCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 114
    :cond_0
    monitor-exit v2

    .line 115
    return v0

    .line 114
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public insert(JLandroid/content/ContentValues;)J
    .locals 9
    .param p1, "id"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 51
    const-wide/16 v2, -0x1

    .line 53
    .local v2, "insertId":J
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 54
    :cond_0
    const-string v6, ".searchProvider.SearchHistoryManager"

    const-string v7, "Try to insert history with empty content value!"

    invoke-static {v6, v7}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v2

    .line 78
    .end local v2    # "insertId":J
    .local v4, "insertId":J
    :goto_0
    return-wide v4

    .line 58
    .end local v4    # "insertId":J
    .restart local v2    # "insertId":J
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->mGenerator:Lcom/miui/gallery/provider/cache/CacheItem$Generator;

    invoke-interface {v6, p1, p2, p3}, Lcom/miui/gallery/provider/cache/CacheItem$Generator;->from(JLandroid/content/ContentValues;)Lcom/miui/gallery/provider/cache/CacheItem;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;

    .line 59
    .local v0, "historyItem":Lcom/miui/gallery/provider/cache/SearchHistoryItem;
    if-eqz v0, :cond_2

    iget-object v6, v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->intentActionURI:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 60
    :cond_2
    const-string v6, ".searchProvider.SearchHistoryManager"

    const-string v7, "Try to insert history with no action uri!"

    invoke-static {v6, v7}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v2

    .line 61
    .end local v2    # "insertId":J
    .restart local v4    # "insertId":J
    goto :goto_0

    .line 64
    .end local v4    # "insertId":J
    .restart local v2    # "insertId":J
    :cond_3
    iget-object v6, v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->timestamp:Ljava/lang/Long;

    if-nez v6, :cond_4

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->timestamp:Ljava/lang/Long;

    .line 69
    :cond_4
    iget-object v7, p0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->mModifyLock:Ljava/lang/Object;

    monitor-enter v7

    .line 70
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v1, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/provider/cache/SearchHistoryItem;>;"
    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/SearchHistoryStorageHelper;->addHistoryItem(Lcom/miui/gallery/provider/cache/SearchHistoryItem;Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_5

    .line 73
    iput-object v1, p0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->mCache:Ljava/util/List;

    .line 75
    const-wide/16 v2, 0x0

    .line 77
    :cond_5
    monitor-exit v7

    move-wide v4, v2

    .line 78
    .end local v2    # "insertId":J
    .restart local v4    # "insertId":J
    goto :goto_0

    .line 77
    .end local v1    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/provider/cache/SearchHistoryItem;>;"
    .end local v4    # "insertId":J
    .restart local v2    # "insertId":J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
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
            "<",
            "Lcom/miui/gallery/provider/cache/SearchHistoryItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/SearchHistoryItem;>;"
    if-eqz p5, :cond_0

    .line 98
    const-string v1, "query_limit"

    const/4 v2, -0x1

    invoke-virtual {p5, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 99
    .local v0, "limit":I
    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 100
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 103
    .end local v0    # "limit":I
    :cond_0
    new-instance v1, Lcom/miui/gallery/provider/cache/RawCursor;

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->mQueryFactory:Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;

    invoke-interface {v2}, Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;->getMapper()Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    move-result-object v2

    invoke-direct {v1, p2, p1, v2}, Lcom/miui/gallery/provider/cache/RawCursor;-><init>(Ljava/util/List;[Ljava/lang/String;Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;)V

    return-object v1
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 4
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "options"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->ensureCache()V

    .line 37
    if-eqz p6, :cond_0

    const-string v2, "query_text"

    invoke-virtual {p6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    const-string v1, "(title LIKE ? OR subTitle LIKE ?)"

    .line 40
    .local v1, "extraSelection":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "query_text"

    invoke-virtual {p6, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "query_text"

    .line 41
    invoke-virtual {p6, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 42
    .local v0, "extraArgs":[Ljava/lang/String;
    if-nez p2, :cond_1

    move-object p2, v1

    .line 43
    :goto_0
    if-nez p3, :cond_2

    move-object p3, v0

    .line 46
    .end local v0    # "extraArgs":[Ljava/lang/String;
    .end local v1    # "extraSelection":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-super/range {p0 .. p6}, Lcom/miui/gallery/provider/cache/CacheManager;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 42
    .restart local v0    # "extraArgs":[Ljava/lang/String;
    .restart local v1    # "extraSelection":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 43
    :cond_2
    invoke-static {p3, v0}, Lcom/miui/gallery/util/StringUtils;->mergeStringArray([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    goto :goto_1
.end method

.method public releaseCache()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->EMPTY_CACHE:Ljava/util/List;

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->mCache:Ljava/util/List;

    .line 28
    return-void
.end method

.method public update(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 2
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 89
    const-string v0, ".searchProvider.SearchHistoryManager"

    const-string v1, "[Update] operation not supported! "

    invoke-static {v0, v1}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    return v0
.end method
