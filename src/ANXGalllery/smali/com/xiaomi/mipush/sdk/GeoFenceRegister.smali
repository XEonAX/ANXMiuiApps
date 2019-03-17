.class public Lcom/xiaomi/mipush/sdk/GeoFenceRegister;
.super Ljava/lang/Object;
.source "GeoFenceRegister.java"


# instance fields
.field private final GEOFENCE_RADIUS_MININUM:D

.field private final GEOFENCE_REGISER_PERIOD_IMMORATAL:I

.field private mContext:Landroid/content/Context;

.field private mGeoFencingServiceWrapper:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegister;->GEOFENCE_REGISER_PERIOD_IMMORATAL:I

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegister;->GEOFENCE_RADIUS_MININUM:D

    .line 32
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegister;->mContext:Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/GeoFenceRegister;->initBinder()V

    .line 34
    return-void
.end method

.method private initBinder()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegister;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegister;->mGeoFencingServiceWrapper:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    .line 38
    return-void
.end method


# virtual methods
.method public registerGeoFencer(Lcom/xiaomi/xmpush/thrift/GeoFencing;)Z
    .locals 13
    .param p1, "geoFencing"    # Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getCircleCenter()Lcom/xiaomi/xmpush/thrift/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getCircleRadius()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getCircleCenter()Lcom/xiaomi/xmpush/thrift/Location;

    move-result-object v12

    .line 46
    .local v12, "locationCenter":Lcom/xiaomi/xmpush/thrift/Location;
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegister;->mGeoFencingServiceWrapper:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegister;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {v12}, Lcom/xiaomi/xmpush/thrift/Location;->getLatitude()D

    move-result-wide v2

    .line 48
    invoke-virtual {v12}, Lcom/xiaomi/xmpush/thrift/Location;->getLongitude()D

    move-result-wide v4

    .line 49
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getCircleRadius()D

    move-result-wide v6

    double-to-float v6, v6

    const-wide/16 v7, -0x1

    const-string v9, "com.xiaomi.xmsf"

    .line 52
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getId()Ljava/lang/String;

    move-result-object v10

    .line 53
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getCoordinateProvider()Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    move-result-object v11

    invoke-virtual {v11}, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->name()Ljava/lang/String;

    move-result-object v11

    .line 46
    invoke-virtual/range {v0 .. v11}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->registerFenceListener(Landroid/content/Context;DDFJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .end local v12    # "locationCenter":Lcom/xiaomi/xmpush/thrift/Location;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public unRegisterGeoFencer(Ljava/lang/String;)V
    .locals 3
    .param p1, "describe"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegister;->mGeoFencingServiceWrapper:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegister;->mContext:Landroid/content/Context;

    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1, v2, p1}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->unregisterFenceListener(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
