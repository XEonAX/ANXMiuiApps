.class Lcom/miui/gallery/cloudcontrol/ProfileCache;
.super Ljava/lang/Object;
.source "ProfileCache.java"


# instance fields
.field private mCloudCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloudcontrol/FeatureProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudStrategyCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsLoadFinished:Z

.field private mLocalCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloudcontrol/FeatureProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalStrategyCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserverLock:Ljava/lang/Object;

.field private mObserversMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile mPendingNotify:Z

.field private final mSyncLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mSyncLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mObserverLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mCloudCache:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mCloudStrategyCache:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mLocalCache:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mLocalStrategyCache:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mObserversMap:Ljava/util/Map;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/cloudcontrol/ProfileCache;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloudcontrol/ProfileCache;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/cloudcontrol/ProfileCache;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloudcontrol/ProfileCache;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mCloudCache:Ljava/util/HashMap;

    return-object v0
.end method

.method private loadFromDB(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 262
    .local v8, "start":J
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$CloudControl;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/cloudcontrol/FeatureDBItem;->PROJECTION:[Ljava/lang/String;

    new-instance v6, Lcom/miui/gallery/cloudcontrol/ProfileCache$2;

    invoke-direct {v6, p0, v8, v9}, Lcom/miui/gallery/cloudcontrol/ProfileCache$2;-><init>(Lcom/miui/gallery/cloudcontrol/ProfileCache;J)V

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    .line 283
    return-void
.end method

.method private loadFromLocalFile(Ljava/io/Reader;)V
    .locals 9
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 300
    :try_start_0
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 301
    .local v0, "builder":Lcom/google/gson/GsonBuilder;
    const-class v5, Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    new-instance v6, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Deserializer;

    invoke-direct {v6}, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Deserializer;-><init>()V

    invoke-virtual {v0, v5, v6}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 302
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v5

    new-instance v6, Lcom/miui/gallery/cloudcontrol/ProfileCache$3;

    invoke-direct {v6, p0}, Lcom/miui/gallery/cloudcontrol/ProfileCache$3;-><init>(Lcom/miui/gallery/cloudcontrol/ProfileCache;)V

    .line 305
    invoke-virtual {v6}, Lcom/miui/gallery/cloudcontrol/ProfileCache$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 302
    invoke-virtual {v5, p1, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 307
    .local v3, "featureProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloudcontrol/FeatureProfile;>;"
    iget-object v6, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mSyncLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 308
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    .line 309
    .local v2, "featureProfile":Lcom/miui/gallery/cloudcontrol/FeatureProfile;
    iget-object v7, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mLocalCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 311
    .end local v2    # "featureProfile":Lcom/miui/gallery/cloudcontrol/FeatureProfile;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 312
    .end local v0    # "builder":Lcom/google/gson/GsonBuilder;
    .end local v3    # "featureProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloudcontrol/FeatureProfile;>;"
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "CloudControl.ProfileCache"

    const-string v6, "Failed to load from local file, errorClause: %s, errorMessage: %s."

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 314
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 315
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v4

    .line 316
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "errorMsg"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v5, "cloud_control"

    const-string v6, "parse_local_file_failed"

    invoke-static {v5, v6, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 324
    :try_start_4
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 329
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 311
    .restart local v0    # "builder":Lcom/google/gson/GsonBuilder;
    .restart local v3    # "featureProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloudcontrol/FeatureProfile;>;"
    :cond_0
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 324
    :try_start_6
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 325
    :catch_1
    move-exception v1

    .line 326
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 325
    .end local v0    # "builder":Lcom/google/gson/GsonBuilder;
    .end local v3    # "featureProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloudcontrol/FeatureProfile;>;"
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2
    move-exception v1

    .line 326
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 323
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v5

    .line 324
    :try_start_7
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 327
    :goto_2
    throw v5

    .line 325
    :catch_3
    move-exception v1

    .line 326
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private notifyObserversByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "oldStatus"    # Ljava/lang/String;
    .param p3, "newStatus"    # Ljava/lang/String;

    .prologue
    .line 98
    :try_start_0
    iget-object v8, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mObserverLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mObserversMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 100
    .local v7, "observers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;>;"
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;

    .line 102
    .local v2, "observer":Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v10

    new-instance v0, Lcom/miui/gallery/cloudcontrol/ProfileCache$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/cloudcontrol/ProfileCache$1;-><init>(Lcom/miui/gallery/cloudcontrol/ProfileCache;Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 110
    .end local v2    # "observer":Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;
    .end local v7    # "observers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;>;"
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 111
    :catch_0
    move-exception v6

    .line 112
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    const-string v0, "CloudControl.ProfileCache"

    const-string v1, "Failed to notify observers."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 110
    .restart local v7    # "observers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;>;"
    :cond_0
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method clearCloudCache()V
    .locals 7

    .prologue
    .line 286
    iget-object v5, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mSyncLock:Ljava/lang/Object;

    monitor-enter v5

    .line 287
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mCloudCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 288
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureProfile;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 289
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    invoke-virtual {v4}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStatus()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "oldStatus":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mLocalCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mLocalCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    invoke-virtual {v4}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStatus()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "newStatus":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v1, v3, v2}, Lcom/miui/gallery/cloudcontrol/ProfileCache;->notifyObserversByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureProfile;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newStatus":Ljava/lang/String;
    .end local v3    # "oldStatus":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 290
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureProfile;>;"
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v3    # "oldStatus":Ljava/lang/String;
    :cond_0
    :try_start_1
    sget-object v4, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->UNAVAILABLE:Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    invoke-virtual {v4}, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 293
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureProfile;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "oldStatus":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mCloudCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 294
    iget-object v4, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mCloudStrategyCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 295
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    return-void
.end method

.method insertToCloudCache(Lcom/miui/gallery/cloudcontrol/FeatureProfile;)V
    .locals 8
    .param p1, "featureProfile"    # Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    .prologue
    const/4 v5, 0x0

    .line 57
    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getName()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "featureName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStatus()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "featureStatus":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStrategy()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "featureStrategy":Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mCloudCache:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    .line 62
    .local v0, "cache":Lcom/miui/gallery/cloudcontrol/FeatureProfile;
    iget-object v6, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mSyncLock:Ljava/lang/Object;

    monitor-enter v6

    .line 63
    if-eqz v2, :cond_3

    :try_start_0
    sget-object v7, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->REMOVE:Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    invoke-virtual {v7}, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 65
    if-eqz v0, :cond_0

    .line 66
    iget-object v7, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mCloudCache:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v7, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mCloudStrategyCache:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStatus()Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-direct {p0, v1, v5, v2}, Lcom/miui/gallery/cloudcontrol/ProfileCache;->notifyObserversByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_2
    :goto_0
    monitor-exit v6

    .line 94
    return-void

    .line 71
    :cond_3
    if-eqz v0, :cond_6

    .line 72
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStatus()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStatus()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->ENABLE:Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    invoke-virtual {v7}, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 74
    sget-object v5, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->ENABLE:Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    invoke-virtual {v5}, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 76
    :cond_4
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStrategy()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 77
    invoke-virtual {v0, v3}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->setStrategy(Ljava/lang/String;)V

    .line 78
    iget-object v5, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mCloudStrategyCache:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_5
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 81
    invoke-virtual {v0, v2}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->setStatus(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5, v2}, Lcom/miui/gallery/cloudcontrol/ProfileCache;->notifyObserversByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 85
    :cond_6
    :try_start_1
    new-instance v4, Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    invoke-direct {v4}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;-><init>()V

    .line 86
    .local v4, "newItem":Lcom/miui/gallery/cloudcontrol/FeatureProfile;
    invoke-virtual {v4, v3}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->setStrategy(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4, v2}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->setStatus(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v4, v1}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->setName(Ljava/lang/String;)V

    .line 89
    iget-object v5, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mCloudCache:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5, v2}, Lcom/miui/gallery/cloudcontrol/ProfileCache;->notifyObserversByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method load(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloudcontrol/ProfileCache;->loadFromDB(Landroid/content/Context;)V

    .line 237
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f080000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloudcontrol/ProfileCache;->loadFromLocalFile(Ljava/io/Reader;)V

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mIsLoadFinished:Z

    .line 239
    return-void
.end method

.method notifyAfterLoadFinished()V
    .locals 7

    .prologue
    .line 245
    iget-object v3, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mSyncLock:Ljava/lang/Object;

    monitor-enter v3

    .line 246
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mPendingNotify:Z

    if-eqz v1, :cond_2

    .line 247
    const-string v1, "CloudControl.ProfileCache"

    const-string v2, "Notify all feature status after cache load finished:"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mCloudCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 249
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureProfile;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 250
    const-string v2, "CloudControl.ProfileCache"

    const-string v5, "Feature name: %s, feature status: %s"

    .line 251
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    invoke-virtual {v1}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-static {v2, v5, v6, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v5, v2}, Lcom/miui/gallery/cloudcontrol/ProfileCache;->notifyObserversByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureProfile;>;"
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 255
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mPendingNotify:Z

    .line 257
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    return-void
.end method

.method queryStatus(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 209
    iget-object v3, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mSyncLock:Ljava/lang/Object;

    monitor-enter v3

    .line 210
    :try_start_0
    iget-boolean v2, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mIsLoadFinished:Z

    if-eqz v2, :cond_3

    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, "status":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mCloudCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mCloudCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStatus()Ljava/lang/String;

    move-result-object v1

    .line 218
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    sget-object v2, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->UNAVAILABLE:Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    monitor-exit v3

    .line 232
    .end local v1    # "status":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 214
    .restart local v1    # "status":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mLocalCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mLocalCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStatus()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 222
    :cond_2
    :try_start_1
    invoke-static {v1}, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->fromValue(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    monitor-exit v3

    goto :goto_1

    .line 230
    .end local v1    # "status":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 223
    .restart local v1    # "status":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->UNAVAILABLE:Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    monitor-exit v3

    goto :goto_1

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "status":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mPendingNotify:Z

    .line 228
    sget-object v2, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->UNAVAILABLE:Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 232
    :cond_4
    sget-object v2, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->UNAVAILABLE:Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    goto :goto_1
.end method

.method queryStrategy(Ljava/lang/String;Ljava/lang/Class;Lcom/miui/gallery/cloudcontrol/Merger;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;
    .locals 10
    .param p1, "feature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/miui/gallery/cloudcontrol/Merger",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "merger":Lcom/miui/gallery/cloudcontrol/Merger;, "Lcom/miui/gallery/cloudcontrol/Merger<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 120
    const/4 v7, 0x0

    .line 163
    :goto_0
    return-object v7

    .line 122
    :cond_0
    iget-object v8, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mSyncLock:Ljava/lang/Object;

    monitor-enter v8

    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, "cloudStrategy":Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;, "TT;"
    const/4 v4, 0x0

    .line 126
    .local v4, "localStrategy":Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;, "TT;"
    :try_start_0
    iget-object v7, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mCloudStrategyCache:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 127
    .local v2, "cloudStrategyObj":Ljava/lang/Object;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 128
    move-object v0, v2

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-object v1, v0

    .line 143
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mLocalStrategyCache:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 144
    .local v5, "localStrategyObj":Ljava/lang/Object;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 145
    move-object v0, v5

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-object v4, v0

    .line 160
    :cond_2
    :goto_2
    if-eqz p3, :cond_5

    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    .line 161
    invoke-interface {p3, v4, v1}, Lcom/miui/gallery/cloudcontrol/Merger;->merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    monitor-exit v8

    goto :goto_0

    .line 164
    .end local v2    # "cloudStrategyObj":Ljava/lang/Object;
    .end local v5    # "localStrategyObj":Ljava/lang/Object;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 129
    .restart local v2    # "cloudStrategyObj":Ljava/lang/Object;
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mCloudCache:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 130
    iget-object v7, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mCloudCache:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    invoke-virtual {v7}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStrategy()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 132
    .local v6, "strategyJson":Ljava/lang/String;
    :try_start_2
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v7, v6, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-object v1, v0

    .line 133
    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {v1}, Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;->doAdditionalProcessing()V

    .line 135
    iget-object v7, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mCloudStrategyCache:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 137
    :catch_0
    move-exception v3

    .line 138
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "CloudControl.ProfileCache"

    const-string v9, "Failed to deserialize strategy: %s"

    invoke-static {v7, v9, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 146
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "strategyJson":Ljava/lang/String;
    .restart local v5    # "localStrategyObj":Ljava/lang/Object;
    :cond_4
    iget-object v7, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mLocalCache:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 147
    iget-object v7, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mLocalCache:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    invoke-virtual {v7}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStrategy()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 149
    .restart local v6    # "strategyJson":Ljava/lang/String;
    :try_start_4
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v7, v6, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-object v4, v0

    .line 150
    if-eqz v4, :cond_2

    .line 151
    invoke-virtual {v4}, Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;->doAdditionalProcessing()V

    .line 152
    iget-object v7, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mLocalStrategyCache:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 154
    :catch_1
    move-exception v3

    .line 155
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v7, "CloudControl.ProfileCache"

    const-string v9, "Failed to deserialize strategy: %s"

    invoke-static {v7, v9, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 163
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "strategyJson":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_6

    move-object v7, v1

    :goto_3
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_6
    move-object v7, v4

    goto :goto_3
.end method

.method registerStatusObserver(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;)Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;
    .locals 5
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;

    .prologue
    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "feature should not be empty or null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_0
    if-eqz p2, :cond_2

    .line 172
    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mObserverLock:Ljava/lang/Object;

    monitor-enter v2

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mObserversMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 174
    .local v0, "observers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;>;"
    if-eqz v0, :cond_3

    .line 175
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Observer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is already registered."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    .end local v0    # "observers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 178
    .restart local v0    # "observers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;>;"
    :cond_1
    :try_start_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .end local v0    # "observers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;>;"
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloudcontrol/ProfileCache;->queryStatus(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    move-result-object v1

    return-object v1

    .line 180
    .restart local v0    # "observers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;>;"
    :cond_3
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "observers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .restart local v0    # "observers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mObserversMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method unregisterStatusObserver(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;)V
    .locals 6
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;

    .prologue
    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    .line 191
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "feature and observer should not be empty or null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mObserversMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 194
    .local v1, "observers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    iget-object v3, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache;->mObserverLock:Ljava/lang/Object;

    monitor-enter v3

    .line 196
    :try_start_0
    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 197
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 198
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Observer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was not registered."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    .end local v0    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 200
    .restart local v0    # "index":I
    :cond_2
    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 201
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    return-void

    .line 203
    .end local v0    # "index":I
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Observer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was not registered."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
