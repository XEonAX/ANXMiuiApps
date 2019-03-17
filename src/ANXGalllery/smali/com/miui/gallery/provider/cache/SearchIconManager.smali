.class public Lcom/miui/gallery/provider/cache/SearchIconManager;
.super Ljava/lang/Object;
.source "SearchIconManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/cache/SearchIconManager$PeopleCoverIconLoader;,
        Lcom/miui/gallery/provider/cache/SearchIconManager$AlbumCoverIconLoader;,
        Lcom/miui/gallery/provider/cache/SearchIconManager$LocalImageIconLoader;,
        Lcom/miui/gallery/provider/cache/SearchIconManager$LocalImageFaceLoader;
    }
.end annotation


# static fields
.field private static final sIconURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mIconCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/provider/cache/SearchIconItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mModifyLock:Ljava/lang/Object;

.field private final mObserveUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueryFactory:Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory",
            "<",
            "Lcom/miui/gallery/provider/cache/SearchIconItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 134
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/provider/cache/SearchIconManager;->sIconURIMatcher:Landroid/content/UriMatcher;

    .line 135
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchIconManager;->sIconURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "people"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchIconManager;->sIconURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "album"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchIconManager;->sIconURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "image"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/SearchIconManager;->mModifyLock:Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/SearchIconManager;->mObserveUris:Ljava/util/List;

    .line 57
    new-instance v0, Lcom/miui/gallery/provider/cache/SearchIconItem$QueryFactory;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/SearchIconItem$QueryFactory;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/SearchIconManager;->mQueryFactory:Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;

    .line 58
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/SearchIconManager;->mIconCache:Landroid/util/LruCache;

    .line 59
    new-instance v0, Lcom/miui/gallery/provider/cache/SearchIconManager$1;

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/provider/cache/SearchIconManager$1;-><init>(Lcom/miui/gallery/provider/cache/SearchIconManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/SearchIconManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 72
    return-void
.end method

.method static synthetic access$100(Landroid/net/Uri;Ljava/lang/String;JLandroid/net/Uri;)Lcom/miui/gallery/provider/cache/SearchIconItem;
    .locals 2
    .param p0, "x0"    # Landroid/net/Uri;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # Landroid/net/Uri;

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/gallery/provider/cache/SearchIconManager;->createIconItem(Landroid/net/Uri;Ljava/lang/String;JLandroid/net/Uri;)Lcom/miui/gallery/provider/cache/SearchIconItem;

    move-result-object v0

    return-object v0
.end method

.method private static createIconItem(Landroid/net/Uri;Ljava/lang/String;JLandroid/net/Uri;)Lcom/miui/gallery/provider/cache/SearchIconItem;
    .locals 2
    .param p0, "iconUri"    # Landroid/net/Uri;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "cloudId"    # J
    .param p4, "notifyUri"    # Landroid/net/Uri;

    .prologue
    .line 396
    new-instance v0, Lcom/miui/gallery/provider/cache/SearchIconItem;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/SearchIconItem;-><init>()V

    .line 397
    .local v0, "iconItem":Lcom/miui/gallery/provider/cache/SearchIconItem;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/provider/cache/SearchIconItem;->iconUri:Ljava/lang/String;

    .line 398
    iput-object p1, v0, Lcom/miui/gallery/provider/cache/SearchIconItem;->filePath:Ljava/lang/String;

    .line 399
    invoke-static {p2, p3}, Lcom/miui/gallery/provider/cache/SearchIconManager;->getDownloadUri(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/provider/cache/SearchIconItem;->downloadUri:Ljava/lang/String;

    .line 400
    iput-object p4, v0, Lcom/miui/gallery/provider/cache/SearchIconItem;->notifyUri:Landroid/net/Uri;

    .line 401
    return-object v0
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/SearchIconManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getDownloadUri(J)Ljava/lang/String;
    .locals 2
    .param p0, "cloudId"    # J

    .prologue
    .line 405
    invoke-static {p0, p1}, Lcom/miui/gallery/util/uil/CloudUriAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 406
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private observerUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchIconManager;->mObserveUris:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/SearchIconManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/SearchIconManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 124
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchIconManager;->mObserveUris:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_0
    return-void
.end method

.method private queryIcon(Landroid/net/Uri;)Lcom/miui/gallery/provider/cache/SearchIconItem;
    .locals 3
    .param p1, "iconUri"    # Landroid/net/Uri;

    .prologue
    .line 144
    sget-object v2, Lcom/miui/gallery/provider/cache/SearchIconManager;->sIconURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 145
    .local v0, "matchResult":I
    const/4 v1, 0x0

    .line 146
    .local v1, "result":Lcom/miui/gallery/provider/cache/SearchIconItem;
    packed-switch v0, :pswitch_data_0

    .line 161
    :goto_0
    return-object v1

    .line 148
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/SearchIconManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/miui/gallery/provider/cache/SearchIconManager$PeopleCoverIconLoader;->access$000(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/miui/gallery/provider/cache/SearchIconItem;

    move-result-object v1

    .line 149
    goto :goto_0

    .line 151
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/SearchIconManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/miui/gallery/provider/cache/SearchIconManager$AlbumCoverIconLoader;->queryIcon(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/miui/gallery/provider/cache/SearchIconItem;

    move-result-object v1

    .line 152
    goto :goto_0

    .line 154
    :pswitch_2
    const-string v2, "faceId"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/SearchIconManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/miui/gallery/provider/cache/SearchIconManager$LocalImageFaceLoader;->queryIcon(Landroid/net/Uri;Landroid/content/Context;)Lcom/miui/gallery/provider/cache/SearchIconItem;

    move-result-object v1

    goto :goto_0

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/SearchIconManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/miui/gallery/provider/cache/SearchIconManager$LocalImageIconLoader;->queryIcon(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/miui/gallery/provider/cache/SearchIconItem;

    move-result-object v1

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 7
    .param p1, "iconUri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/SearchIconItem;>;"
    const/4 v3, 0x1

    .line 86
    .local v3, "useCache":Z
    if-eqz p3, :cond_0

    .line 87
    const-string/jumbo v4, "use_cache"

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 90
    :cond_0
    const/4 v1, 0x0

    .line 92
    .local v1, "iconItem":Lcom/miui/gallery/provider/cache/SearchIconItem;
    if-eqz v3, :cond_1

    .line 93
    iget-object v5, p0, Lcom/miui/gallery/provider/cache/SearchIconManager;->mModifyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 94
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/SearchIconManager;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/miui/gallery/provider/cache/SearchIconItem;

    move-object v1, v0

    .line 95
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_1
    if-nez v1, :cond_2

    .line 98
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/cache/SearchIconManager;->queryIcon(Landroid/net/Uri;)Lcom/miui/gallery/provider/cache/SearchIconItem;

    move-result-object v1

    .line 101
    :cond_2
    if-eqz v1, :cond_3

    .line 102
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v5, p0, Lcom/miui/gallery/provider/cache/SearchIconManager;->mModifyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 104
    :try_start_1
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/SearchIconManager;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    iget-object v4, v1, Lcom/miui/gallery/provider/cache/SearchIconItem;->notifyUri:Landroid/net/Uri;

    if-eqz v4, :cond_3

    .line 107
    iget-object v4, v1, Lcom/miui/gallery/provider/cache/SearchIconItem;->notifyUri:Landroid/net/Uri;

    invoke-direct {p0, v4}, Lcom/miui/gallery/provider/cache/SearchIconManager;->observerUri(Landroid/net/Uri;)V

    .line 110
    :cond_3
    new-instance v4, Lcom/miui/gallery/provider/cache/RawCursor;

    iget-object v5, p0, Lcom/miui/gallery/provider/cache/SearchIconManager;->mQueryFactory:Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;

    invoke-interface {v5}, Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;->getMapper()Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    move-result-object v5

    invoke-direct {v4, v2, p2, v5}, Lcom/miui/gallery/provider/cache/RawCursor;-><init>(Ljava/util/List;[Ljava/lang/String;Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;)V

    return-object v4

    .line 95
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 105
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method public releaseCache()V
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/SearchIconManager;->mModifyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchIconManager;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 77
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/SearchIconManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/SearchIconManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchIconManager;->mObserveUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    return-void

    .line 77
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
