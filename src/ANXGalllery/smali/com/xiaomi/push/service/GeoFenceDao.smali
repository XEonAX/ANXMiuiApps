.class public Lcom/xiaomi/push/service/GeoFenceDao;
.super Ljava/lang/Object;
.source "GeoFenceDao.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/xiaomi/push/service/GeoFenceDao;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "GeoFenceDao."

    sput-object v0, Lcom/xiaomi/push/service/GeoFenceDao;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/xiaomi/push/service/GeoFenceDao;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private declared-synchronized generateCenterLocation(Landroid/database/Cursor;)Lcom/xiaomi/xmpush/thrift/Location;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 355
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Location;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/Location;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    .local v0, "center":Lcom/xiaomi/xmpush/thrift/Location;
    :try_start_1
    const-string v2, "center_lantitude"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/xmpush/thrift/Location;->setLatitude(D)Lcom/xiaomi/xmpush/thrift/Location;

    .line 358
    const-string v2, "center_longtitude"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/xmpush/thrift/Location;->setLongitude(D)Lcom/xiaomi/xmpush/thrift/Location;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    .end local v0    # "center":Lcom/xiaomi/xmpush/thrift/Location;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 360
    .restart local v0    # "center":Lcom/xiaomi/xmpush/thrift/Location;
    :catch_0
    move-exception v1

    .line 361
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    const/4 v0, 0x0

    goto :goto_0

    .line 355
    .end local v0    # "center":Lcom/xiaomi/xmpush/thrift/Location;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized generateCoordinateProvider(Landroid/database/Cursor;)Lcom/xiaomi/xmpush/thrift/CoordinateProvider;
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    const-string v2, "coordinate_provider"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "coordinateProviderStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/CoordinateProvider;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 405
    .end local v0    # "coordinateProviderStr":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    const/4 v2, 0x0

    goto :goto_0

    .line 401
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized generateGeoType(Landroid/database/Cursor;)Lcom/xiaomi/xmpush/thrift/GeoType;
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 335
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/xmpush/thrift/GeoType;->values()[Lcom/xiaomi/xmpush/thrift/GeoType;

    move-result-object v1

    .line 336
    .local v1, "geoTypes":[Lcom/xiaomi/xmpush/thrift/GeoType;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    .line 337
    .local v2, "type":Lcom/xiaomi/xmpush/thrift/GeoType;
    const-string/jumbo v6, "type"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/GeoType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 344
    .end local v1    # "geoTypes":[Lcom/xiaomi/xmpush/thrift/GeoType;
    .end local v2    # "type":Lcom/xiaomi/xmpush/thrift/GeoType;
    :goto_1
    monitor-exit p0

    return-object v2

    .line 336
    .restart local v1    # "geoTypes":[Lcom/xiaomi/xmpush/thrift/GeoType;
    .restart local v2    # "type":Lcom/xiaomi/xmpush/thrift/GeoType;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2    # "type":Lcom/xiaomi/xmpush/thrift/GeoType;
    :cond_1
    move-object v2, v3

    .line 341
    goto :goto_1

    .line 342
    .end local v1    # "geoTypes":[Lcom/xiaomi/xmpush/thrift/GeoType;
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 344
    goto :goto_1

    .line 335
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized generatePointsJSONStr(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/Location;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/xmpush/thrift/Location;>;"
    const/4 v4, 0x0

    .line 303
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    .line 304
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/xiaomi/push/service/GeoFenceDao;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " points unvalidated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :goto_0
    monitor-exit p0

    return-object v4

    .line 307
    :cond_1
    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    .local v3, "pointsArray":Lorg/json/JSONArray;
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/xmpush/thrift/Location;

    .line 312
    .local v1, "point":Lcom/xiaomi/xmpush/thrift/Location;
    if-eqz v1, :cond_2

    .line 315
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 316
    .local v2, "pointObject":Lorg/json/JSONObject;
    const-string v6, "point_lantitude"

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v2, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 317
    const-string v6, "point_longtitude"

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v2, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 318
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 321
    .end local v1    # "point":Lcom/xiaomi/xmpush/thrift/Location;
    .end local v2    # "pointObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 303
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "pointsArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 320
    .restart local v3    # "pointsArray":Lorg/json/JSONArray;
    :cond_3
    :try_start_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    goto :goto_0
.end method

.method private declared-synchronized generatePolygon(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/xmpush/thrift/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    .local v4, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Location;>;"
    :try_start_1
    const-string v7, "polygon_points"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 378
    .local v6, "pointsListStr":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 379
    .local v5, "pointsArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 380
    new-instance v2, Lcom/xiaomi/xmpush/thrift/Location;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/Location;-><init>()V

    .line 381
    .local v2, "point":Lcom/xiaomi/xmpush/thrift/Location;
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 382
    .local v3, "pointObject":Lorg/json/JSONObject;
    const-string v7, "point_lantitude"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/xiaomi/xmpush/thrift/Location;->setLatitude(D)Lcom/xiaomi/xmpush/thrift/Location;

    .line 383
    const-string v7, "point_longtitude"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/xiaomi/xmpush/thrift/Location;->setLongitude(D)Lcom/xiaomi/xmpush/thrift/Location;

    .line 384
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v1    # "i":I
    .end local v2    # "point":Lcom/xiaomi/xmpush/thrift/Location;
    .end local v3    # "pointObject":Lorg/json/JSONObject;
    .end local v5    # "pointsArray":Lorg/json/JSONArray;
    .end local v6    # "pointsListStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    const/4 v4, 0x0

    .end local v0    # "e":Lorg/json/JSONException;
    .end local v4    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Location;>;"
    :cond_0
    monitor-exit p0

    return-object v4

    .line 373
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDao;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v0, Lcom/xiaomi/push/service/GeoFenceDao;->sInstance:Lcom/xiaomi/push/service/GeoFenceDao;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/xiaomi/push/service/GeoFenceDao;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/GeoFenceDao;->sInstance:Lcom/xiaomi/push/service/GeoFenceDao;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/xiaomi/push/service/GeoFenceDao;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/GeoFenceDao;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/GeoFenceDao;->sInstance:Lcom/xiaomi/push/service/GeoFenceDao;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/GeoFenceDao;->sInstance:Lcom/xiaomi/push/service/GeoFenceDao;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized queryTheCursor(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v9, 0x0

    .line 416
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/misc/ThreadUtils;->checkNotUIThread(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    :try_start_1
    const-string v1, "geofence"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 420
    :goto_0
    monitor-exit p0

    return-object v0

    .line 419
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    move-object v0, v9

    .line 420
    goto :goto_0

    .line 416
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized deleteGeoFencingByGeoId(Ljava/lang/String;)I
    .locals 9
    .param p1, "geoId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 259
    monitor-enter p0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/misc/ThreadUtils;->checkNotUIThread(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/GeoFenceDao;->findGeoFencingById(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    move-result-object v3

    .line 262
    .local v3, "toBeDeleted":Lcom/xiaomi/xmpush/thrift/GeoFencing;
    if-eqz v3, :cond_0

    .line 263
    iget-object v5, p0, Lcom/xiaomi/push/service/GeoFenceDao;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 264
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "geofence"

    const-string v6, "id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 265
    .local v2, "result":I
    iget-object v5, p0, Lcom/xiaomi/push/service/GeoFenceDao;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->closeDatabase()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "result":I
    .end local v3    # "toBeDeleted":Lcom/xiaomi/xmpush/thrift/GeoFencing;
    :goto_0
    monitor-exit p0

    return v2

    .restart local v3    # "toBeDeleted":Lcom/xiaomi/xmpush/thrift/GeoFencing;
    :cond_0
    move v2, v4

    .line 268
    goto :goto_0

    .line 269
    .end local v3    # "toBeDeleted":Lcom/xiaomi/xmpush/thrift/GeoFencing;
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v4

    .line 271
    goto :goto_0

    .line 259
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized findAllGeoFencing()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/xmpush/thrift/GeoFencing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    monitor-enter p0

    const/4 v8, 0x0

    :try_start_0
    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/misc/ThreadUtils;->checkNotUIThread(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 59
    .local v0, "c":Landroid/database/Cursor;
    :try_start_1
    iget-object v8, p0, Lcom/xiaomi/push/service/GeoFenceDao;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 60
    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/GeoFenceDao;->queryTheCursor(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 66
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v4, "geoFencings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/GeoFencing;>;"
    if-eqz v0, :cond_7

    .line 71
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-eqz v8, :cond_6

    .line 73
    :try_start_3
    new-instance v3, Lcom/xiaomi/xmpush/thrift/GeoFencing;

    invoke-direct {v3}, Lcom/xiaomi/xmpush/thrift/GeoFencing;-><init>()V

    .line 74
    .local v3, "geoFencingTemp":Lcom/xiaomi/xmpush/thrift/GeoFencing;
    const-string v8, "id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .line 75
    const-string v8, "name"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->setName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .line 76
    const-string v8, "appId"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->setAppId(J)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .line 77
    const-string v8, "package_name"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .line 78
    const-string v8, "create_time"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->setCreateTime(J)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .line 81
    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/GeoFenceDao;->generateGeoType(Landroid/database/Cursor;)Lcom/xiaomi/xmpush/thrift/GeoType;

    move-result-object v5

    .line 82
    .local v5, "geoTypeTemp":Lcom/xiaomi/xmpush/thrift/GeoType;
    if-nez v5, :cond_0

    .line 83
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/xiaomi/push/service/GeoFenceDao;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "findAllGeoFencing: geo type null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 99
    .end local v3    # "geoFencingTemp":Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .end local v5    # "geoTypeTemp":Lcom/xiaomi/xmpush/thrift/GeoType;
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 55
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "geoFencings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/GeoFencing;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 61
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v2

    .line 62
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 63
    const/4 v4, 0x0

    .line 115
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-object v4

    .line 86
    .restart local v3    # "geoFencingTemp":Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .restart local v4    # "geoFencings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/GeoFencing;>;"
    .restart local v5    # "geoTypeTemp":Lcom/xiaomi/xmpush/thrift/GeoType;
    :cond_0
    :try_start_6
    invoke-virtual {v3, v5}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->setType(Lcom/xiaomi/xmpush/thrift/GeoType;)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .line 87
    const-string v8, "Circle"

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/GeoType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 89
    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/GeoFenceDao;->generateCenterLocation(Landroid/database/Cursor;)Lcom/xiaomi/xmpush/thrift/Location;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->setCircleCenter(Lcom/xiaomi/xmpush/thrift/Location;)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .line 90
    const-string v8, "circle_radius"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->setCircleRadius(D)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 103
    :cond_1
    :goto_2
    :try_start_7
    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/GeoFenceDao;->generateCoordinateProvider(Landroid/database/Cursor;)Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    move-result-object v7

    .line 104
    .local v7, "provider":Lcom/xiaomi/xmpush/thrift/CoordinateProvider;
    if-nez v7, :cond_5

    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/xiaomi/push/service/GeoFenceDao;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "findAllGeoFencing: geo Coordinate Provider null "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 91
    .end local v7    # "provider":Lcom/xiaomi/xmpush/thrift/CoordinateProvider;
    :cond_2
    :try_start_8
    const-string v8, "Polygon"

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/GeoType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 92
    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/GeoFenceDao;->generatePolygon(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v6

    .line 93
    .local v6, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Location;>;"
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x3

    if-ge v8, v9, :cond_4

    .line 94
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/xiaomi/push/service/GeoFenceDao;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "findAllGeoFencing: geo points null or size<3"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_4
    invoke-virtual {v3, v6}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->setPolygonPoints(Ljava/util/List;)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 108
    .end local v6    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Location;>;"
    .restart local v7    # "provider":Lcom/xiaomi/xmpush/thrift/CoordinateProvider;
    :cond_5
    :try_start_9
    invoke-virtual {v3, v7}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->setCoordinateProvider(Lcom/xiaomi/xmpush/thrift/CoordinateProvider;)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .line 109
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 111
    .end local v3    # "geoFencingTemp":Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .end local v5    # "geoTypeTemp":Lcom/xiaomi/xmpush/thrift/GeoType;
    .end local v7    # "provider":Lcom/xiaomi/xmpush/thrift/CoordinateProvider;
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_7
    iget-object v8, p0, Lcom/xiaomi/push/service/GeoFenceDao;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->closeDatabase()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1
.end method

.method public declared-synchronized findGeoFencingById(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 125
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/misc/ThreadUtils;->checkNotUIThread(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/push/service/GeoFenceDao;->findAllGeoFencing()Ljava/util/ArrayList;

    move-result-object v0

    .line 128
    .local v0, "allGeoFencing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/GeoFencing;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .line 129
    .local v2, "geoFencing":Lcom/xiaomi/xmpush/thrift/GeoFencing;
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 137
    .end local v0    # "allGeoFencing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/GeoFencing;>;"
    .end local v2    # "geoFencing":Lcom/xiaomi/xmpush/thrift/GeoFencing;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v3

    .line 135
    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "allGeoFencing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/GeoFencing;>;"
    :cond_1
    move-object v2, v3

    .line 137
    goto :goto_0

    .line 125
    .end local v0    # "allGeoFencing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/GeoFencing;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized findGeoStatueByGeoId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "geoID"    # Ljava/lang/String;

    .prologue
    .line 170
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/misc/ThreadUtils;->checkNotUIThread(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :try_start_1
    iget-object v4, p0, Lcom/xiaomi/push/service/GeoFenceDao;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 173
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v2}, Lcom/xiaomi/push/service/GeoFenceDao;->queryTheCursor(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 174
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 175
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    const-string v4, "id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    const-string v4, "current_status"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "currentStatue":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/xiaomi/push/service/GeoFenceDao;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "findGeoStatueByGeoId: geo current statue is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " geoId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 179
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "currentStatue":Ljava/lang/String;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 183
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_2
    iget-object v4, p0, Lcom/xiaomi/push/service/GeoFenceDao;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->closeDatabase()V

    .line 186
    const-string v1, "Unknown"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 187
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v3

    .line 188
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 189
    const-string v1, "Unknown"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 170
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized insertGeoFencing(Lcom/xiaomi/xmpush/thrift/GeoFencing;)J
    .locals 8
    .param p1, "geoFencing"    # Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .prologue
    .line 227
    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/misc/ThreadUtils;->checkNotUIThread(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 230
    .local v2, "geoValues":Landroid/content/ContentValues;
    const-string v3, "id"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v3, "appId"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getAppId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 232
    const-string v3, "name"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v3, "package_name"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v3, "create_time"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getCreateTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 235
    const-string/jumbo v3, "type"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getType()Lcom/xiaomi/xmpush/thrift/GeoType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/GeoType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v3, "center_longtitude"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getCircleCenter()Lcom/xiaomi/xmpush/thrift/Location;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v3, "center_lantitude"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getCircleCenter()Lcom/xiaomi/xmpush/thrift/Location;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v3, "circle_radius"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getCircleRadius()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 239
    const-string v3, "polygon_point"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getPolygonPoints()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/xiaomi/push/service/GeoFenceDao;->generatePointsJSONStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v3, "coordinate_provider"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getCoordinateProvider()Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v3, "current_status"

    const-string v6, "Unknown"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v3, p0, Lcom/xiaomi/push/service/GeoFenceDao;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 244
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "geofence"

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 245
    .local v4, "result":J
    iget-object v3, p0, Lcom/xiaomi/push/service/GeoFenceDao;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->closeDatabase()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "geoValues":Landroid/content/ContentValues;
    .end local v4    # "result":J
    :goto_0
    monitor-exit p0

    return-wide v4

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 227
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized updateGeoStatueByGeoid(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "geoID"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 201
    monitor-enter p0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/misc/ThreadUtils;->checkNotUIThread(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :try_start_1
    const-string v5, "Enter"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Leave"

    .line 204
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Unknown"

    .line 205
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    move v2, v4

    .line 216
    :goto_0
    monitor-exit p0

    return v2

    .line 208
    :cond_0
    :try_start_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 209
    .local v3, "values":Landroid/content/ContentValues;
    const-string v5, "current_status"

    invoke-virtual {v3, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v5, p0, Lcom/xiaomi/push/service/GeoFenceDao;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 211
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "geofence"

    const-string v6, "id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v0, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 212
    .local v2, "result":I
    iget-object v5, p0, Lcom/xiaomi/push/service/GeoFenceDao;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->closeDatabase()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 214
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "result":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v4

    .line 216
    goto :goto_0

    .line 201
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
