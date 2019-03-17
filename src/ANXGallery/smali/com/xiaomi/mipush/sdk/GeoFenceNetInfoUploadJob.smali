.class public Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;
.super Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;
.source "GeoFenceNetInfoUploadJob.java"


# instance fields
.field private final DEFAULT_LAST_UPDATE_DATA_TIMESTAMP:I

.field private final PERIOD_UPLOAD_WITHOUT_WIFI:I

.field private mContext:Landroid/content/Context;

.field private period:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "period"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->DEFAULT_LAST_UPDATE_DATA_TIMESTAMP:I

    .line 56
    const/16 v0, 0xe10

    iput v0, p0, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->PERIOD_UPLOAD_WITHOUT_WIFI:I

    .line 62
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->mContext:Landroid/content/Context;

    .line 63
    iput p2, p0, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->period:I

    .line 64
    return-void
.end method

.method protected static checkGPSPermission(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 298
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "pkgName":Ljava/lang/String;
    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    .line 300
    invoke-virtual {v2, v6, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    move v0, v4

    .line 301
    .local v0, "coarseLocation":Z
    :goto_0
    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    .line 302
    invoke-virtual {v2, v6, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    move v1, v4

    .line 303
    .local v1, "fineLocation":Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v5, v4

    :cond_1
    return v5

    .end local v0    # "coarseLocation":Z
    .end local v1    # "fineLocation":Z
    :cond_2
    move v0, v5

    .line 300
    goto :goto_0

    .restart local v0    # "coarseLocation":Z
    :cond_3
    move v1, v5

    .line 302
    goto :goto_1
.end method

.method private static collectCellListInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/Cellular;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    const/4 v1, 0x0

    .line 206
    .local v1, "cellularArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Cellular;>;"
    :try_start_0
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 208
    .local v7, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 209
    .local v6, "infoLists":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v2, v1

    .end local v1    # "cellularArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Cellular;>;"
    .local v2, "cellularArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Cellular;>;"
    :goto_0
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 210
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/NeighboringCellInfo;

    .line 211
    .local v5, "info":Landroid/telephony/NeighboringCellInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    .end local v2    # "cellularArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Cellular;>;"
    .restart local v1    # "cellularArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Cellular;>;"
    :try_start_2
    invoke-virtual {v5}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v9

    if-gtz v9, :cond_0

    invoke-virtual {v5}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v9

    if-lez v9, :cond_1

    .line 215
    :cond_0
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Cellular;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/Cellular;-><init>()V

    .line 216
    .local v0, "cellular":Lcom/xiaomi/xmpush/thrift/Cellular;
    invoke-virtual {v5}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/xiaomi/xmpush/thrift/Cellular;->setId(I)Lcom/xiaomi/xmpush/thrift/Cellular;

    .line 217
    invoke-virtual {v5}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v8, v9, -0x71

    .line 218
    .local v8, "strength":I
    invoke-virtual {v0, v8}, Lcom/xiaomi/xmpush/thrift/Cellular;->setSignalStrength(I)Lcom/xiaomi/xmpush/thrift/Cellular;

    .line 219
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 209
    .end local v0    # "cellular":Lcom/xiaomi/xmpush/thrift/Cellular;
    .end local v8    # "strength":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-object v2, v1

    .end local v1    # "cellularArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Cellular;>;"
    .restart local v2    # "cellularArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Cellular;>;"
    goto :goto_0

    .end local v5    # "info":Landroid/telephony/NeighboringCellInfo;
    :cond_2
    move-object v1, v2

    .line 224
    .end local v2    # "cellularArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Cellular;>;"
    .end local v3    # "i":I
    .end local v6    # "infoLists":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    .end local v7    # "manager":Landroid/telephony/TelephonyManager;
    .restart local v1    # "cellularArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Cellular;>;"
    :goto_1
    return-object v2

    .line 223
    :catch_0
    move-exception v4

    .line 224
    .local v4, "ignored":Ljava/lang/Throwable;
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 223
    .end local v1    # "cellularArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Cellular;>;"
    .end local v4    # "ignored":Ljava/lang/Throwable;
    .restart local v2    # "cellularArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Cellular;>;"
    .restart local v3    # "i":I
    .restart local v6    # "infoLists":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    .restart local v7    # "manager":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "cellularArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Cellular;>;"
    .restart local v1    # "cellularArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Cellular;>;"
    goto :goto_2
.end method

.method private static collectGPSInfo(Landroid/content/Context;)Lcom/xiaomi/xmpush/thrift/GPS;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 229
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->checkGPSPermission(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-object v1

    .line 233
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v2

    .line 234
    .local v2, "lastKnownLocation":Landroid/location/Location;
    if-eqz v2, :cond_0

    .line 235
    new-instance v3, Lcom/xiaomi/xmpush/thrift/Location;

    invoke-direct {v3}, Lcom/xiaomi/xmpush/thrift/Location;-><init>()V

    .line 236
    .local v3, "mLocation":Lcom/xiaomi/xmpush/thrift/Location;
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/xmpush/thrift/Location;->setLatitude(D)Lcom/xiaomi/xmpush/thrift/Location;

    .line 237
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/xmpush/thrift/Location;->setLongitude(D)Lcom/xiaomi/xmpush/thrift/Location;

    .line 238
    new-instance v1, Lcom/xiaomi/xmpush/thrift/GPS;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/GPS;-><init>()V

    .line 239
    .local v1, "gps":Lcom/xiaomi/xmpush/thrift/GPS;
    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1, v4, v5}, Lcom/xiaomi/xmpush/thrift/GPS;->setAccuracy(D)Lcom/xiaomi/xmpush/thrift/GPS;

    .line 240
    invoke-virtual {v1, v3}, Lcom/xiaomi/xmpush/thrift/GPS;->setLocation(Lcom/xiaomi/xmpush/thrift/Location;)Lcom/xiaomi/xmpush/thrift/GPS;

    .line 241
    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/xiaomi/xmpush/thrift/GPS;->setProvider(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/GPS;

    .line 242
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 243
    .local v0, "current":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/xiaomi/xmpush/thrift/GPS;->setPeriod(J)Lcom/xiaomi/xmpush/thrift/GPS;

    goto :goto_0
.end method

.method private static collectLocationInfo(Landroid/content/Context;)Lcom/xiaomi/xmpush/thrift/LocationInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    new-instance v0, Lcom/xiaomi/xmpush/thrift/LocationInfo;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/LocationInfo;-><init>()V

    .line 158
    .local v0, "locationInfo":Lcom/xiaomi/xmpush/thrift/LocationInfo;
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isGDPREnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    :goto_0
    return-object v0

    .line 161
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->collectWIFIListInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->setWifiList(Ljava/util/List;)Lcom/xiaomi/xmpush/thrift/LocationInfo;

    .line 162
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->collectCellListInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->setCellList(Ljava/util/List;)Lcom/xiaomi/xmpush/thrift/LocationInfo;

    .line 163
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->collectGPSInfo(Landroid/content/Context;)Lcom/xiaomi/xmpush/thrift/GPS;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->setGps(Lcom/xiaomi/xmpush/thrift/GPS;)Lcom/xiaomi/xmpush/thrift/LocationInfo;

    goto :goto_0
.end method

.method private static collectWIFIListInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/Wifi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    const/4 v6, 0x0

    .line 171
    .local v6, "wifiListRes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Wifi;>;"
    new-instance v0, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob$1;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob$1;-><init>()V

    .line 178
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/net/wifi/ScanResult;>;"
    :try_start_0
    const-string/jumbo v9, "wifi"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 180
    .local v8, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 181
    .local v5, "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/misc/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 182
    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 184
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v6    # "wifiListRes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Wifi;>;"
    .local v7, "wifiListRes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Wifi;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v9, 0x1e

    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 186
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 187
    .local v3, "result":Landroid/net/wifi/ScanResult;
    if-eqz v3, :cond_0

    .line 188
    new-instance v4, Lcom/xiaomi/xmpush/thrift/Wifi;

    invoke-direct {v4}, Lcom/xiaomi/xmpush/thrift/Wifi;-><init>()V

    .line 189
    .local v4, "wifi":Lcom/xiaomi/xmpush/thrift/Wifi;
    iget-object v9, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, ""

    :goto_1
    invoke-virtual {v4, v9}, Lcom/xiaomi/xmpush/thrift/Wifi;->setMacAddress(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/Wifi;

    .line 190
    iget v9, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v9}, Lcom/xiaomi/xmpush/thrift/Wifi;->setSignalStrength(I)Lcom/xiaomi/xmpush/thrift/Wifi;

    .line 191
    iget-object v9, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/xiaomi/xmpush/thrift/Wifi;->setSsid(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/Wifi;

    .line 192
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v4    # "wifi":Lcom/xiaomi/xmpush/thrift/Wifi;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .restart local v4    # "wifi":Lcom/xiaomi/xmpush/thrift/Wifi;
    :cond_1
    iget-object v9, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    .end local v4    # "wifi":Lcom/xiaomi/xmpush/thrift/Wifi;
    :cond_2
    move-object v6, v7

    .end local v1    # "i":I
    .end local v7    # "wifiListRes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Wifi;>;"
    .restart local v6    # "wifiListRes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Wifi;>;"
    :cond_3
    move-object v9, v6

    .line 198
    .end local v5    # "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v8    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_2
    return-object v9

    .line 197
    :catch_0
    move-exception v2

    .line 198
    .local v2, "ignored":Ljava/lang/Throwable;
    :goto_3
    const/4 v9, 0x0

    goto :goto_2

    .line 197
    .end local v2    # "ignored":Ljava/lang/Throwable;
    .end local v6    # "wifiListRes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Wifi;>;"
    .restart local v1    # "i":I
    .restart local v5    # "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .restart local v7    # "wifiListRes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Wifi;>;"
    .restart local v8    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_1
    move-exception v2

    move-object v6, v7

    .end local v7    # "wifiListRes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Wifi;>;"
    .restart local v6    # "wifiListRes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/Wifi;>;"
    goto :goto_3
.end method

.method private static findAccurateLocation(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .locals 4
    .param p0, "locationA"    # Landroid/location/Location;
    .param p1, "locationB"    # Landroid/location/Location;

    .prologue
    .line 287
    if-nez p0, :cond_1

    move-object p0, p1

    .line 293
    .end local p0    # "locationA":Landroid/location/Location;
    :cond_0
    :goto_0
    return-object p0

    .line 290
    .restart local p0    # "locationA":Landroid/location/Location;
    :cond_1
    if-eqz p1, :cond_0

    .line 293
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    move-object p0, p1

    goto :goto_0
.end method

.method private static getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    const-string v5, "location"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 260
    .local v2, "locationManager":Landroid/location/LocationManager;
    :try_start_0
    const-string v5, "network"

    invoke-virtual {v2, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 265
    .local v3, "networkLocation":Landroid/location/Location;
    :goto_0
    :try_start_1
    const-string v5, "gps"

    invoke-virtual {v2, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 270
    .local v1, "gpslastKnownLocation":Landroid/location/Location;
    :goto_1
    :try_start_2
    const-string v5, "passive"

    invoke-virtual {v2, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 276
    .local v4, "passlastKnownLocation":Landroid/location/Location;
    :goto_2
    invoke-static {v3, v1}, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->findAccurateLocation(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v5

    .line 275
    invoke-static {v4, v5}, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->findAccurateLocation(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v5

    return-object v5

    .line 261
    .end local v1    # "gpslastKnownLocation":Landroid/location/Location;
    .end local v3    # "networkLocation":Landroid/location/Location;
    .end local v4    # "passlastKnownLocation":Landroid/location/Location;
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3    # "networkLocation":Landroid/location/Location;
    goto :goto_0

    .line 266
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 267
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1    # "gpslastKnownLocation":Landroid/location/Location;
    goto :goto_1

    .line 271
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 272
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .restart local v4    # "passlastKnownLocation":Landroid/location/Location;
    goto :goto_2
.end method

.method public static reportLocInfo(Landroid/content/Context;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isGeoInitilization"    # Z

    .prologue
    const/4 v5, 0x0

    .line 97
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->collectLocationInfo(Landroid/content/Context;)Lcom/xiaomi/xmpush/thrift/LocationInfo;

    move-result-object v3

    .line 98
    .local v3, "locationInfo":Lcom/xiaomi/xmpush/thrift/LocationInfo;
    invoke-static {v3}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v0

    .line 100
    .local v0, "data":[B
    new-instance v2, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    const-string v4, "-1"

    const/4 v6, 0x0

    invoke-direct {v2, v4, v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>(Ljava/lang/String;Z)V

    .line 101
    .local v2, "lbsLocationNotification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    sget-object v4, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoUpdateLoc:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v4, v4, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 102
    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setBinaryExtra([B)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 103
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setExtra(Ljava/util/Map;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 104
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v4

    const-string v6, "initial_wifi_upload"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {p0}, Lcom/xiaomi/push/service/GeoFenceUtils;->isXMSFGeoWork(Landroid/content/Context;)Z

    move-result v1

    .line 106
    .local v1, "isXMSFGeoWork":Z
    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v6, "xmsf_geo_is_work"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reportLocInfo locInfo timestamp:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 110
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->getGps()Lcom/xiaomi/xmpush/thrift/GPS;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->getGps()Lcom/xiaomi/xmpush/thrift/GPS;

    move-result-object v4

    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v3, Lcom/xiaomi/xmpush/thrift/LocationInfo;->cellList:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/xiaomi/xmpush/thrift/LocationInfo;->cellList:Ljava/util/List;

    .line 111
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v3, Lcom/xiaomi/xmpush/thrift/LocationInfo;->wifiList:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/xiaomi/xmpush/thrift/LocationInfo;->wifiList:Ljava/util/List;

    .line 112
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 113
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v4

    sget-object v6, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v7, 0x1

    invoke-virtual {v4, v2, v6, v7, v5}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 114
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->updateUploadTimeStamp(Landroid/content/Context;)V

    .line 115
    return-void

    .line 110
    :cond_1
    const-string v4, "null"

    goto :goto_0

    :cond_2
    move-object v4, v5

    .line 111
    goto :goto_1

    :cond_3
    move-object v4, v5

    .line 112
    goto :goto_2
.end method

.method private static updateUploadTimeStamp(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    const-string v2, "mipush_extra"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 309
    .local v1, "sharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 310
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_upload_lbs_data_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 311
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 312
    return-void
.end method

.method private verifyUploadData()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 124
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/network/Network;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v1

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/xmpush/thrift/ConfigKey;->UploadNOWIFIGeoLocFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v3

    const/16 v4, 0xe10

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v0

    .line 129
    .local v0, "frequency":I
    const/16 v2, 0x3c

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 131
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/network/Network;->isUsingMobileDataConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->verifyUploadDataPeriod(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private verifyUploadDataPeriod(J)Z
    .locals 11
    .param p1, "period"    # J

    .prologue
    .line 143
    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->mContext:Landroid/content/Context;

    const-string v6, "mipush_extra"

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 145
    .local v4, "sharedPreference":Landroid/content/SharedPreferences;
    const-string v5, "last_upload_lbs_data_timestamp"

    const-wide/16 v6, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 146
    .local v2, "lastUpdateDataTimestamp":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v0, v6, v8

    .line 147
    .local v0, "currentInSecond":J
    sub-long v6, v0, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    long-to-float v5, v6

    long-to-float v6, p1

    const v7, 0x3f666666    # 0.9f

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getJobId()I
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0xb

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/GeoFenceUtils;->getGeoEnableSwitch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ConfigKey;->UploadGeoAppLocSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/network/Network;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->verifyUploadData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->mContext:Landroid/content/Context;

    const/16 v1, 0xb

    .line 90
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->period:I

    int-to-long v2, v2

    .line 89
    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/channel/commonutils/misc/JobMutualExclusor;->checkPeriodAndRecordWithFileLock(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->reportLocInfo(Landroid/content/Context;Z)V

    goto :goto_0
.end method
