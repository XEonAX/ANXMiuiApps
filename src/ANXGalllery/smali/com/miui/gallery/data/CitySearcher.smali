.class public Lcom/miui/gallery/data/CitySearcher;
.super Ljava/lang/Object;
.source "CitySearcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/CitySearcher$DataBaseFileLoader;,
        Lcom/miui/gallery/data/CitySearcher$PhotoGpsCache;
    }
.end annotation


# static fields
.field private static sThis:Lcom/miui/gallery/data/CitySearcher;


# instance fields
.field mCityBoundRects:Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;

.field mCityBoundaries:Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;

.field private mDbHelper:Lcom/miui/gallery/data/CityDatabaseHelper;

.field mPhotoGpsCache:Lcom/miui/gallery/data/CitySearcher$PhotoGpsCache;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;

    invoke-direct {v0}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/CitySearcher;->mCityBoundaries:Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;

    .line 61
    new-instance v0, Lcom/miui/gallery/data/CitySearcher$PhotoGpsCache;

    invoke-direct {v0}, Lcom/miui/gallery/data/CitySearcher$PhotoGpsCache;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/CitySearcher;->mPhotoGpsCache:Lcom/miui/gallery/data/CitySearcher$PhotoGpsCache;

    .line 62
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/CitySearcher;->openDB(Landroid/content/Context;)Z

    .line 63
    return-void
.end method

.method private declared-synchronized appendBoundaryList(Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;)V
    .locals 6
    .param p1, "newBoundaries"    # Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;

    .prologue
    const/16 v5, 0xa

    .line 78
    monitor-enter p0

    const/16 v0, 0xa

    .line 80
    .local v0, "CITY_BOUNDARY_LIST_MAX":I
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;->size()I

    move-result v3

    if-lt v3, v5, :cond_0

    .line 81
    iput-object p1, p0, Lcom/miui/gallery/data/CitySearcher;->mCityBoundaries:Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_0
    monitor-exit p0

    return-void

    .line 83
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/data/CitySearcher;->mCityBoundaries:Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;

    invoke-virtual {v4}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v5, :cond_3

    .line 85
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 86
    .local v2, "oldCityIds":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/miui/gallery/data/CitySearcher;->mCityBoundaries:Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;

    invoke-virtual {v3}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, "oldCityId":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 88
    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 78
    .end local v1    # "oldCityId":Ljava/lang/String;
    .end local v2    # "oldCityIds":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 91
    .restart local v2    # "oldCityIds":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :cond_2
    :goto_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 92
    invoke-virtual {p1}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v5, :cond_3

    .line 95
    iget-object v3, p0, Lcom/miui/gallery/data/CitySearcher;->mCityBoundaries:Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 99
    .end local v2    # "oldCityIds":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/data/CitySearcher;->mCityBoundaries:Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;

    invoke-virtual {v3, p1}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;->putAll(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private findBoundaries(Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;)Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;
    .locals 7
    .param p1, "cityBoundRects"    # Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;

    .prologue
    .line 104
    new-instance v4, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;

    invoke-direct {v4}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;-><init>()V

    .line 105
    .local v4, "result":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v3, "cityIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    .local v2, "cityId":Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/gallery/data/CitySearcher;->mCityBoundaries:Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;

    invoke-virtual {v6, v2}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;

    .line 110
    .local v1, "boundary":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;
    if-nez v1, :cond_0

    .line 112
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v4, v2, v1}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    .end local v1    # "boundary":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;
    .end local v2    # "cityId":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/data/CitySearcher;->mDbHelper:Lcom/miui/gallery/data/CityDatabaseHelper;

    invoke-virtual {v5, v3}, Lcom/miui/gallery/data/CityDatabaseHelper;->queryCityBoundary(Ljava/util/ArrayList;)Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;

    move-result-object v0

    .line 120
    .local v0, "boundariesFromDb":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 121
    invoke-virtual {v4, v0}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;->putAll(Ljava/util/Map;)V

    .line 124
    :cond_2
    return-object v4
.end method

.method private findInBoundRects(IILcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;)Ljava/lang/String;
    .locals 5
    .param p1, "intLatitude"    # I
    .param p2, "intLongitude"    # I
    .param p3, "boundRects"    # Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;

    .prologue
    const/4 v3, 0x0

    .line 128
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v2, v3

    .line 149
    :cond_1
    :goto_0
    return-object v2

    .line 131
    :cond_2
    const/4 v2, 0x0

    .line 133
    .local v2, "cityId":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/miui/gallery/data/CitySearcher;->findBoundaries(Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;)Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;

    move-result-object v0

    .line 134
    .local v0, "boundaries":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move-object v2, v3

    .line 135
    goto :goto_0

    .line 139
    :cond_4
    invoke-direct {p0, v0}, Lcom/miui/gallery/data/CitySearcher;->appendBoundaryList(Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;)V

    .line 143
    invoke-virtual {v0}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;

    .line 144
    .local v1, "boundary":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;
    invoke-virtual {v1, p1, p2}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;->containsIntCoordinate(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 145
    iget-object v2, v1, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;->cityId:Ljava/lang/String;

    .line 146
    goto :goto_0
.end method

.method private declared-synchronized getCityBoundRects()Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;
    .locals 1

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/data/CitySearcher;->mCityBoundRects:Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/miui/gallery/data/CitySearcher;->mCityBoundRects:Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :goto_0
    monitor-exit p0

    return-object v0

    .line 296
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/gallery/data/CitySearcher;->mDbHelper:Lcom/miui/gallery/data/CityDatabaseHelper;

    if-nez v0, :cond_1

    .line 297
    const/4 v0, 0x0

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/data/CitySearcher;->mDbHelper:Lcom/miui/gallery/data/CityDatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/data/CityDatabaseHelper;->loadCityBoundRects()Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/CitySearcher;->mCityBoundRects:Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;

    .line 303
    iget-object v0, p0, Lcom/miui/gallery/data/CitySearcher;->mCityBoundRects:Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/data/CitySearcher;
    .locals 2

    .prologue
    .line 66
    const-class v1, Lcom/miui/gallery/data/CitySearcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/data/CitySearcher;->sThis:Lcom/miui/gallery/data/CitySearcher;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/miui/gallery/data/CitySearcher;

    invoke-direct {v0}, Lcom/miui/gallery/data/CitySearcher;-><init>()V

    sput-object v0, Lcom/miui/gallery/data/CitySearcher;->sThis:Lcom/miui/gallery/data/CitySearcher;

    .line 69
    :cond_0
    sget-object v0, Lcom/miui/gallery/data/CitySearcher;->sThis:Lcom/miui/gallery/data/CitySearcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized isDBOpened()Z
    .locals 1

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/data/CitySearcher;->mDbHelper:Lcom/miui/gallery/data/CityDatabaseHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/data/CitySearcher;->mDbHelper:Lcom/miui/gallery/data/CityDatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/data/CityDatabaseHelper;->isDbOpened()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public decode(Lcom/miui/gallery/data/Coordinate;)Ljava/lang/String;
    .locals 12
    .param p1, "coordinate"    # Lcom/miui/gallery/data/Coordinate;

    .prologue
    .line 249
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/miui/gallery/data/CitySearcher;->isDBOpened()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 252
    :try_start_0
    invoke-static {p1}, Lcom/miui/gallery/data/CitySearcher$PhotoGpsCache;->makeKey(Lcom/miui/gallery/data/Coordinate;)Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "gpsCacheKey":Ljava/lang/String;
    iget-object v9, p0, Lcom/miui/gallery/data/CitySearcher;->mPhotoGpsCache:Lcom/miui/gallery/data/CitySearcher$PhotoGpsCache;

    invoke-virtual {v9, v6}, Lcom/miui/gallery/data/CitySearcher$PhotoGpsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 254
    .local v4, "cityId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 286
    .end local v4    # "cityId":Ljava/lang/String;
    .end local v6    # "gpsCacheKey":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 258
    .restart local v4    # "cityId":Ljava/lang/String;
    .restart local v6    # "gpsCacheKey":Ljava/lang/String;
    :cond_0
    iget-wide v10, p1, Lcom/miui/gallery/data/Coordinate;->latitude:D

    invoke-static {v10, v11}, Lcom/miui/gallery/data/LocationUtil;->convertIntLat(D)I

    move-result v7

    .line 259
    .local v7, "intLatitude":I
    iget-wide v10, p1, Lcom/miui/gallery/data/Coordinate;->longitude:D

    invoke-static {v10, v11}, Lcom/miui/gallery/data/LocationUtil;->convertIntLat(D)I

    move-result v8

    .line 261
    .local v8, "intLongitude":I
    iget-object v9, p0, Lcom/miui/gallery/data/CitySearcher;->mCityBoundaries:Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;

    invoke-virtual {v9}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;

    .line 262
    .local v3, "boundary":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;
    invoke-virtual {v3, v7, v8}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;->containsIntCoordinate(II)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 263
    iget-object v4, v3, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;->cityId:Ljava/lang/String;

    goto :goto_0

    .line 268
    .end local v3    # "boundary":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/data/CitySearcher;->getCityBoundRects()Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;

    move-result-object v0

    .line 269
    .local v0, "allBoundRects":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;
    new-instance v2, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;

    invoke-direct {v2}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;-><init>()V

    .line 270
    .local v2, "boundRects":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;
    invoke-virtual {v0}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect;

    .line 271
    .local v1, "boundRect":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect;
    invoke-virtual {v1, v7, v8}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect;->containsIntCoordinate(II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 272
    iget-object v10, v1, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect;->cityId:Ljava/lang/String;

    invoke-virtual {v2, v10, v1}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 282
    .end local v0    # "allBoundRects":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;
    .end local v1    # "boundRect":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect;
    .end local v2    # "boundRects":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;
    .end local v4    # "cityId":Ljava/lang/String;
    .end local v6    # "gpsCacheKey":Ljava/lang/String;
    .end local v7    # "intLatitude":I
    .end local v8    # "intLongitude":I
    :catch_0
    move-exception v5

    .line 283
    .local v5, "e":Ljava/lang/Exception;
    const-string v9, "CitySearcher"

    invoke-static {v9, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 275
    .restart local v0    # "allBoundRects":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;
    .restart local v2    # "boundRects":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;
    .restart local v4    # "cityId":Ljava/lang/String;
    .restart local v6    # "gpsCacheKey":Ljava/lang/String;
    .restart local v7    # "intLatitude":I
    .restart local v8    # "intLongitude":I
    :cond_5
    :try_start_1
    invoke-direct {p0, v7, v8, v2}, Lcom/miui/gallery/data/CitySearcher;->findInBoundRects(IILcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;)Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 279
    iget-object v9, p0, Lcom/miui/gallery/data/CitySearcher;->mPhotoGpsCache:Lcom/miui/gallery/data/CitySearcher$PhotoGpsCache;

    invoke-virtual {v9, v6, v4}, Lcom/miui/gallery/data/CitySearcher$PhotoGpsCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized openDB(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/data/CitySearcher;->mDbHelper:Lcom/miui/gallery/data/CityDatabaseHelper;

    if-eqz v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/miui/gallery/data/CitySearcher;->mDbHelper:Lcom/miui/gallery/data/CityDatabaseHelper;

    invoke-virtual {v2}, Lcom/miui/gallery/data/CityDatabaseHelper;->isDbOpened()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 318
    :goto_0
    monitor-exit p0

    return v2

    .line 315
    :cond_0
    :try_start_1
    new-instance v1, Lcom/miui/gallery/data/CitySearcher$DataBaseFileLoader;

    invoke-direct {v1, p1}, Lcom/miui/gallery/data/CitySearcher$DataBaseFileLoader;-><init>(Landroid/content/Context;)V

    .line 316
    .local v1, "fileLoader":Lcom/miui/gallery/data/CitySearcher$DataBaseFileLoader;
    invoke-virtual {v1}, Lcom/miui/gallery/data/CitySearcher$DataBaseFileLoader;->loadFile()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "dbName":Ljava/lang/String;
    new-instance v2, Lcom/miui/gallery/data/CityDatabaseHelper;

    invoke-direct {v2, p1, v0}, Lcom/miui/gallery/data/CityDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/gallery/data/CitySearcher;->mDbHelper:Lcom/miui/gallery/data/CityDatabaseHelper;

    .line 318
    iget-object v2, p0, Lcom/miui/gallery/data/CitySearcher;->mDbHelper:Lcom/miui/gallery/data/CityDatabaseHelper;

    invoke-virtual {v2}, Lcom/miui/gallery/data/CityDatabaseHelper;->isDbOpened()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 311
    .end local v0    # "dbName":Ljava/lang/String;
    .end local v1    # "fileLoader":Lcom/miui/gallery/data/CitySearcher$DataBaseFileLoader;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized preLoadData()V
    .locals 1

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/miui/gallery/data/CitySearcher;->isDBOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/miui/gallery/data/CitySearcher;->getCityBoundRects()Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :cond_0
    monitor-exit p0

    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
