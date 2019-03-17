.class Lcom/miui/gallery/data/LocationManager$AddressCache;
.super Ljava/util/ArrayList;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/miui/gallery/data/LocationManager$CacheItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/data/LocationManager;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/data/LocationManager;)V
    .locals 0

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/miui/gallery/data/LocationManager$AddressCache;->this$0:Lcom/miui/gallery/data/LocationManager;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/data/LocationManager;Lcom/miui/gallery/data/LocationManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/data/LocationManager;
    .param p2, "x1"    # Lcom/miui/gallery/data/LocationManager$1;

    .prologue
    .line 1170
    invoke-direct {p0, p1}, Lcom/miui/gallery/data/LocationManager$AddressCache;-><init>(Lcom/miui/gallery/data/LocationManager;)V

    return-void
.end method

.method private distance(DDDD)D
    .locals 19
    .param p1, "startLat"    # D
    .param p3, "startLng"    # D
    .param p5, "endLat"    # D
    .param p7, "endLng"    # D

    .prologue
    .line 1201
    const-wide v12, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v4, v12, p1

    .line 1202
    .local v4, "lat1":D
    const-wide v12, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v6, v12, p5

    .line 1203
    .local v6, "lat2":D
    const-wide v12, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v8, v12, p3

    .line 1204
    .local v8, "lon1":D
    const-wide v12, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v10, v12, p7

    .line 1206
    .local v10, "lon2":D
    const-wide v0, 0x40b8e30000000000L    # 6371.0

    .line 1207
    .local v0, "R":D
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double v16, v10, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    mul-double v2, v12, v0

    .line 1208
    .local v2, "d":D
    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v12, v2

    return-wide v12
.end method


# virtual methods
.method public declared-synchronized get(Ljava/util/Locale;DD)Lcom/miui/gallery/data/LocationManager$CacheItem;
    .locals 14
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "lat"    # D
    .param p4, "lng"    # D

    .prologue
    .line 1186
    monitor-enter p0

    const/4 v12, 0x0

    .local v12, "i":I
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocationManager$AddressCache;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v12, v0, :cond_2

    .line 1187
    invoke-virtual {p0, v12}, Lcom/miui/gallery/data/LocationManager$AddressCache;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/gallery/data/LocationManager$CacheItem;

    .line 1188
    .local v13, "item":Lcom/miui/gallery/data/LocationManager$CacheItem;
    if-eqz p1, :cond_1

    iget-object v1, v13, Lcom/miui/gallery/data/LocationManager$CacheItem;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_1

    iget-object v1, v13, Lcom/miui/gallery/data/LocationManager$CacheItem;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1186
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1190
    :cond_1
    iget-wide v2, v13, Lcom/miui/gallery/data/LocationManager$CacheItem;->lat:D

    iget-wide v4, v13, Lcom/miui/gallery/data/LocationManager$CacheItem;->lng:D

    move-object v1, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/miui/gallery/data/LocationManager$AddressCache;->distance(DDDD)D

    move-result-wide v10

    .line 1191
    .local v10, "distance":D
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    cmpg-double v1, v10, v2

    if-gez v1, :cond_0

    .line 1192
    double-to-int v1, v10

    iput v1, v13, Lcom/miui/gallery/data/LocationManager$CacheItem;->distance:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    .end local v10    # "distance":D
    .end local v13    # "item":Lcom/miui/gallery/data/LocationManager$CacheItem;
    :goto_1
    monitor-exit p0

    return-object v13

    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .line 1186
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized put(Ljava/util/Locale;DDLandroid/location/Address;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "lat"    # D
    .param p4, "lng"    # D
    .param p6, "address"    # Landroid/location/Address;

    .prologue
    .line 1173
    monitor-enter p0

    if-nez p6, :cond_0

    .line 1183
    :goto_0
    monitor-exit p0

    return-void

    .line 1177
    :cond_0
    :try_start_0
    new-instance v0, Lcom/miui/gallery/data/LocationManager$CacheItem;

    iget-object v1, p0, Lcom/miui/gallery/data/LocationManager$AddressCache;->this$0:Lcom/miui/gallery/data/LocationManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/data/LocationManager$CacheItem;-><init>(Lcom/miui/gallery/data/LocationManager;Lcom/miui/gallery/data/LocationManager$1;)V

    .line 1178
    .local v0, "item":Lcom/miui/gallery/data/LocationManager$CacheItem;
    iput-object p1, v0, Lcom/miui/gallery/data/LocationManager$CacheItem;->locale:Ljava/util/Locale;

    .line 1179
    iput-wide p2, v0, Lcom/miui/gallery/data/LocationManager$CacheItem;->lat:D

    .line 1180
    iput-wide p4, v0, Lcom/miui/gallery/data/LocationManager$CacheItem;->lng:D

    .line 1181
    iput-object p6, v0, Lcom/miui/gallery/data/LocationManager$CacheItem;->address:Landroid/location/Address;

    .line 1182
    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/LocationManager$AddressCache;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1173
    .end local v0    # "item":Lcom/miui/gallery/data/LocationManager$CacheItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
