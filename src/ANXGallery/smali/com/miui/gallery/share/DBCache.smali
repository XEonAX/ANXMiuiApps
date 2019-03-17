.class public abstract Lcom/miui/gallery/share/DBCache;
.super Ljava/lang/Object;
.source "DBCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mDirty:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final mReloadRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    .local p0, "this":Lcom/miui/gallery/share/DBCache;, "Lcom/miui/gallery/share/DBCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/share/DBCache;->mCache:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/share/DBCache;->mListeners:Ljava/util/List;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/share/DBCache;->mDirty:Z

    .line 54
    new-instance v0, Lcom/miui/gallery/share/DBCache$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/share/DBCache$1;-><init>(Lcom/miui/gallery/share/DBCache;)V

    iput-object v0, p0, Lcom/miui/gallery/share/DBCache;->mReloadRunnable:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gallery/share/DBCache;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcom/miui/gallery/share/DBCache$2;

    iget-object v1, p0, Lcom/miui/gallery/share/DBCache;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/share/DBCache$2;-><init>(Lcom/miui/gallery/share/DBCache;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gallery/share/DBCache;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/share/DBCache;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/share/DBCache;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/miui/gallery/share/DBCache;->onReloadSuccess(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/share/DBCache;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/share/DBCache;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/miui/gallery/share/DBCache;->reloadIfNeeded(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/share/DBCache;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/share/DBCache;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/miui/gallery/share/DBCache;->mDirty:Z

    return p1
.end method

.method private notifyShareUserChanged()V
    .locals 3

    .prologue
    .line 192
    .local p0, "this":Lcom/miui/gallery/share/DBCache;, "Lcom/miui/gallery/share/DBCache<TK;TV;>;"
    iget-object v1, p0, Lcom/miui/gallery/share/DBCache;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener;

    .line 193
    .local v0, "l":Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener;, "Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener<TK;TV;>;"
    invoke-interface {v0, p0}, Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener;->onDBCacheChanged(Lcom/miui/gallery/share/DBCache;)V

    goto :goto_0

    .line 195
    .end local v0    # "l":Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener;, "Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener<TK;TV;>;"
    :cond_0
    return-void
.end method

.method private onReloadSuccess(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lcom/miui/gallery/share/DBCache;, "Lcom/miui/gallery/share/DBCache<TK;TV;>;"
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    iget-object v0, p0, Lcom/miui/gallery/share/DBCache;->mCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 187
    iget-object v0, p0, Lcom/miui/gallery/share/DBCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 188
    invoke-direct {p0}, Lcom/miui/gallery/share/DBCache;->notifyShareUserChanged()V

    .line 189
    return-void
.end method

.method private reloadIfNeeded(Z)Z
    .locals 4
    .param p1, "immediately"    # Z

    .prologue
    .local p0, "this":Lcom/miui/gallery/share/DBCache;, "Lcom/miui/gallery/share/DBCache<TK;TV;>;"
    const/4 v0, 0x0

    .line 167
    iget-object v1, p0, Lcom/miui/gallery/share/DBCache;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 171
    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/share/DBCache;->mDirty:Z

    if-eqz v1, :cond_0

    .line 175
    iput-boolean v0, p0, Lcom/miui/gallery/share/DBCache;->mDirty:Z

    .line 176
    iget-object v0, p0, Lcom/miui/gallery/share/DBCache;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gallery/share/DBCache;->mReloadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    if-eqz p1, :cond_2

    .line 178
    iget-object v0, p0, Lcom/miui/gallery/share/DBCache;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gallery/share/DBCache;->mReloadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/share/DBCache;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gallery/share/DBCache;->mReloadRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/miui/gallery/share/DBCache;, "Lcom/miui/gallery/share/DBCache<TK;TV;>;"
    .local p1, "l":Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener;, "Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener<TK;TV;>;"
    const/4 v4, 0x1

    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/miui/gallery/share/DBCache;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v1, p0, Lcom/miui/gallery/share/DBCache;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 117
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    .local v0, "context":Landroid/content/Context;
    iput-boolean v4, p0, Lcom/miui/gallery/share/DBCache;->mDirty:Z

    .line 119
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/share/DBCache;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/share/DBCache;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 120
    invoke-direct {p0, v4}, Lcom/miui/gallery/share/DBCache;->reloadIfNeeded(Z)Z

    .line 124
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method public getCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/miui/gallery/share/DBCache;, "Lcom/miui/gallery/share/DBCache<TK;TV;>;"
    iget-object v0, p0, Lcom/miui/gallery/share/DBCache;->mCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/miui/gallery/share/DBCache;, "Lcom/miui/gallery/share/DBCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/miui/gallery/share/DBCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected loadInBackground()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/miui/gallery/share/DBCache;, "Lcom/miui/gallery/share/DBCache<TK;TV;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 149
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/share/DBCache;->queryInBackground()Landroid/database/Cursor;

    move-result-object v0

    .line 150
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 152
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/DBCache;->newKey(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    .line 154
    .local v1, "key":Ljava/lang/Object;, "TK;"
    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/DBCache;->newValue(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 159
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_2
    return-object v2
.end method

.method protected abstract newKey(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TK;"
        }
    .end annotation
.end method

.method protected abstract newValue(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TV;"
        }
    .end annotation
.end method

.method protected queryInBackground()Landroid/database/Cursor;
    .locals 6

    .prologue
    .local p0, "this":Lcom/miui/gallery/share/DBCache;, "Lcom/miui/gallery/share/DBCache<TK;TV;>;"
    const/4 v3, 0x0

    .line 139
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Lcom/miui/gallery/share/DBCache;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 141
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    .line 139
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/miui/gallery/share/DBCache;, "Lcom/miui/gallery/share/DBCache<TK;TV;>;"
    .local p1, "l":Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener;, "Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener<TK;TV;>;"
    if-eqz p1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/miui/gallery/share/DBCache;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 130
    iget-object v1, p0, Lcom/miui/gallery/share/DBCache;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 132
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/share/DBCache;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 136
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method
