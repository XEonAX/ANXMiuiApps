.class public Lcom/xiaomi/network/HostManager;
.super Ljava/lang/Object;
.source "HostManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/network/HostManager$HttpGet;,
        Lcom/xiaomi/network/HostManager$HostManagerFactory;
    }
.end annotation


# static fields
.field private static factory:Lcom/xiaomi/network/HostManager$HostManagerFactory;

.field protected static hostLoaded:Z

.field protected static sAppContext:Landroid/content/Context;

.field private static sAppName:Ljava/lang/String;

.field private static sAppVersion:Ljava/lang/String;

.field private static sInstance:Lcom/xiaomi/network/HostManager;

.field protected static sReservedHosts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/network/Fallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MAX_REQUEST_FAILURE_CNT:J

.field private currentISP:Ljava/lang/String;

.field private lastRemoteRequestTimestamp:J

.field protected mHostsMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/network/Fallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private remoteRequestFailureCount:J

.field private sHostFilter:Lcom/xiaomi/network/HostFilter;

.field protected sHttpGetter:Lcom/xiaomi/network/HostManager$HttpGet;

.field private sUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/network/HostManager;->sReservedHosts:Ljava/util/Map;

    .line 673
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/network/HostManager;->hostLoaded:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/network/HostFilter;Lcom/xiaomi/network/HostManager$HttpGet;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostFilter"    # Lcom/xiaomi/network/HostFilter;
    .param p3, "httpGet"    # Lcom/xiaomi/network/HostManager$HttpGet;
    .param p4, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 157
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/network/HostManager;-><init>(Landroid/content/Context;Lcom/xiaomi/network/HostFilter;Lcom/xiaomi/network/HostManager$HttpGet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/network/HostFilter;Lcom/xiaomi/network/HostManager$HttpGet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostFilter"    # Lcom/xiaomi/network/HostFilter;
    .param p3, "httpGet"    # Lcom/xiaomi/network/HostManager$HttpGet;
    .param p4, "userId"    # Ljava/lang/String;
    .param p5, "appName"    # Ljava/lang/String;
    .param p6, "appVersion"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    .line 91
    const-string v0, "0"

    iput-object v0, p0, Lcom/xiaomi/network/HostManager;->sUserId:Ljava/lang/String;

    .line 93
    iput-wide v2, p0, Lcom/xiaomi/network/HostManager;->remoteRequestFailureCount:J

    .line 94
    const-wide/16 v0, 0xf

    iput-wide v0, p0, Lcom/xiaomi/network/HostManager;->MAX_REQUEST_FAILURE_CNT:J

    .line 95
    iput-wide v2, p0, Lcom/xiaomi/network/HostManager;->lastRemoteRequestTimestamp:J

    .line 96
    const-string v0, "isp_prov_city_country_ip"

    iput-object v0, p0, Lcom/xiaomi/network/HostManager;->currentISP:Ljava/lang/String;

    .line 163
    iput-object p3, p0, Lcom/xiaomi/network/HostManager;->sHttpGetter:Lcom/xiaomi/network/HostManager$HttpGet;

    .line 165
    if-nez p2, :cond_0

    .line 166
    new-instance v0, Lcom/xiaomi/network/HostManager$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/network/HostManager$1;-><init>(Lcom/xiaomi/network/HostManager;)V

    iput-object v0, p0, Lcom/xiaomi/network/HostManager;->sHostFilter:Lcom/xiaomi/network/HostFilter;

    .line 175
    :goto_0
    iput-object p4, p0, Lcom/xiaomi/network/HostManager;->sUserId:Ljava/lang/String;

    .line 176
    if-eqz p5, :cond_1

    .end local p5    # "appName":Ljava/lang/String;
    :goto_1
    sput-object p5, Lcom/xiaomi/network/HostManager;->sAppName:Ljava/lang/String;

    .line 177
    if-eqz p6, :cond_2

    .end local p6    # "appVersion":Ljava/lang/String;
    :goto_2
    sput-object p6, Lcom/xiaomi/network/HostManager;->sAppVersion:Ljava/lang/String;

    .line 178
    return-void

    .line 173
    .restart local p5    # "appName":Ljava/lang/String;
    .restart local p6    # "appVersion":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/xiaomi/network/HostManager;->sHostFilter:Lcom/xiaomi/network/HostFilter;

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    goto :goto_1

    .line 177
    .end local p5    # "appName":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/network/HostManager;->getVersionName()Ljava/lang/String;

    move-result-object p6

    goto :goto_2
.end method

.method public static addReservedHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "fallback"    # Ljava/lang/String;

    .prologue
    .line 713
    sget-object v2, Lcom/xiaomi/network/HostManager;->sReservedHosts:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/network/Fallback;

    .line 714
    .local v0, "reserved":Lcom/xiaomi/network/Fallback;
    sget-object v3, Lcom/xiaomi/network/HostManager;->sReservedHosts:Ljava/util/Map;

    monitor-enter v3

    .line 715
    if-nez v0, :cond_0

    .line 716
    :try_start_0
    new-instance v1, Lcom/xiaomi/network/Fallback;

    invoke-direct {v1, p0}, Lcom/xiaomi/network/Fallback;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    .end local v0    # "reserved":Lcom/xiaomi/network/Fallback;
    .local v1, "reserved":Lcom/xiaomi/network/Fallback;
    const-wide/32 v4, 0x240c8400

    :try_start_1
    invoke-virtual {v1, v4, v5}, Lcom/xiaomi/network/Fallback;->setEffectiveDuration(J)V

    .line 718
    invoke-virtual {v1, p1}, Lcom/xiaomi/network/Fallback;->addHost(Ljava/lang/String;)V

    .line 719
    sget-object v2, Lcom/xiaomi/network/HostManager;->sReservedHosts:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 724
    .end local v1    # "reserved":Lcom/xiaomi/network/Fallback;
    .restart local v0    # "reserved":Lcom/xiaomi/network/Fallback;
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 725
    return-void

    .line 722
    :cond_0
    invoke-virtual {v0, p1}, Lcom/xiaomi/network/Fallback;->addHost(Ljava/lang/String;)V

    goto :goto_0

    .line 724
    :catchall_0
    move-exception v2

    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "reserved":Lcom/xiaomi/network/Fallback;
    .restart local v1    # "reserved":Lcom/xiaomi/network/Fallback;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "reserved":Lcom/xiaomi/network/Fallback;
    .restart local v0    # "reserved":Lcom/xiaomi/network/Fallback;
    goto :goto_1
.end method

.method static getActiveNetworkLabel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 187
    sget-object v3, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 188
    const-string/jumbo v3, "unknown"

    .line 213
    .local v0, "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return-object v3

    .line 190
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    :try_start_0
    sget-object v3, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    const-string v4, "connectivity"

    .line 191
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 192
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 193
    const-string/jumbo v3, "unknown"

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 196
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-nez v1, :cond_2

    .line 197
    const-string/jumbo v3, "unknown"

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 201
    sget-object v3, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    .line 202
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 203
    .local v2, "wifi":Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIFI-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 207
    .end local v2    # "wifi":Landroid/net/wifi/WifiManager;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 209
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v3

    .line 213
    :cond_4
    const-string/jumbo v3, "unknown"

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/xiaomi/network/HostManager;
    .locals 3

    .prologue
    .line 104
    const-class v1, Lcom/xiaomi/network/HostManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/network/HostManager;->sInstance:Lcom/xiaomi/network/HostManager;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "the host manager is not initialized yet."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 108
    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/network/HostManager;->sInstance:Lcom/xiaomi/network/HostManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private getVersionName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 871
    :try_start_0
    sget-object v1, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    .line 872
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4000

    .line 871
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 874
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 875
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 877
    :catch_0
    move-exception v1

    .line 880
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/xiaomi/network/HostFilter;Lcom/xiaomi/network/HostManager$HttpGet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hostFilter"    # Lcom/xiaomi/network/HostFilter;
    .param p2, "httpGet"    # Lcom/xiaomi/network/HostManager$HttpGet;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "appName"    # Ljava/lang/String;
    .param p5, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 140
    const-class v7, Lcom/xiaomi/network/HostManager;

    monitor-enter v7

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    .line 141
    sget-object v0, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 142
    sput-object p0, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    .line 145
    :cond_0
    sget-object v0, Lcom/xiaomi/network/HostManager;->sInstance:Lcom/xiaomi/network/HostManager;

    if-nez v0, :cond_1

    .line 146
    sget-object v0, Lcom/xiaomi/network/HostManager;->factory:Lcom/xiaomi/network/HostManager$HostManagerFactory;

    if-nez v0, :cond_2

    .line 147
    new-instance v0, Lcom/xiaomi/network/HostManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/network/HostManager;-><init>(Landroid/content/Context;Lcom/xiaomi/network/HostFilter;Lcom/xiaomi/network/HostManager$HttpGet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/network/HostManager;->sInstance:Lcom/xiaomi/network/HostManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_1
    :goto_0
    monitor-exit v7

    return-void

    .line 150
    :cond_2
    :try_start_1
    sget-object v0, Lcom/xiaomi/network/HostManager;->factory:Lcom/xiaomi/network/HostManager$HostManagerFactory;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/xiaomi/network/HostManager$HostManagerFactory;->createHostManager(Landroid/content/Context;Lcom/xiaomi/network/HostFilter;Lcom/xiaomi/network/HostManager$HttpGet;Ljava/lang/String;)Lcom/xiaomi/network/HostManager;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/network/HostManager;->sInstance:Lcom/xiaomi/network/HostManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method static obfuscate(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 917
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 918
    .local v2, "len":I
    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 919
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 920
    aget-byte v4, v0, v1

    .line 921
    .local v4, "v":B
    and-int/lit16 v5, v4, 0xf0

    const/16 v6, 0xf0

    if-eq v5, v6, :cond_0

    .line 922
    shr-int/lit8 v5, v4, 0x4

    add-int/2addr v5, v2

    and-int/lit8 v5, v5, 0xf

    int-to-byte v3, v5

    .line 923
    .local v3, "mod":B
    and-int/lit16 v5, v4, 0xf0

    and-int/lit8 v6, v4, 0xf

    xor-int/2addr v6, v3

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 919
    .end local v3    # "mod":B
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 926
    .end local v4    # "v":B
    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v5

    .line 929
    .end local v0    # "b":[B
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local p0    # "s":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 927
    .restart local p0    # "s":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private requestRemoteFallbacks(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/network/Fallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/network/HostManager;->purge()V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    move-object/from16 v31, v0

    monitor-enter v31

    .line 373
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/network/HostManager;->checkHostMapping()Z

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_0
    :goto_0
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 375
    .local v7, "existHost":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_0

    .line 376
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    .end local v7    # "existHost":Ljava/lang/String;
    :catchall_0
    move-exception v30

    monitor-exit v31
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v30

    :cond_1
    :try_start_1
    monitor-exit v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    sget-object v30, Lcom/xiaomi/network/HostManager;->sReservedHosts:Ljava/util/Map;

    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    .line 383
    .local v13, "fetchReserved":Z
    sget-object v31, Lcom/xiaomi/network/HostManager;->sReservedHosts:Ljava/util/Map;

    monitor-enter v31

    .line 384
    :try_start_2
    sget-object v30, Lcom/xiaomi/network/HostManager;->sReservedHosts:Ljava/util/Map;

    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v33, v0

    const/16 v30, 0x0

    :goto_1
    move/from16 v0, v30

    move/from16 v1, v33

    if-ge v0, v1, :cond_3

    aget-object v12, v32, v30

    .line 385
    .local v12, "fbObj":Ljava/lang/Object;
    move-object v0, v12

    check-cast v0, Lcom/xiaomi/network/Fallback;

    move-object v11, v0

    .line 386
    .local v11, "fb":Lcom/xiaomi/network/Fallback;
    invoke-virtual {v11}, Lcom/xiaomi/network/Fallback;->isEffective()Z

    move-result v34

    if-nez v34, :cond_2

    .line 387
    const/4 v13, 0x1

    .line 388
    sget-object v34, Lcom/xiaomi/network/HostManager;->sReservedHosts:Ljava/util/Map;

    iget-object v0, v11, Lcom/xiaomi/network/Fallback;->host:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-interface/range {v34 .. v35}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_2
    add-int/lit8 v30, v30, 0x1

    goto :goto_1

    .line 391
    .end local v11    # "fb":Lcom/xiaomi/network/Fallback;
    .end local v12    # "fbObj":Ljava/lang/Object;
    :cond_3
    monitor-exit v31
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/network/HostManager;->getHost()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_4

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/network/HostManager;->getHost()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_4
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 398
    .local v10, "fallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/network/Fallback;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v15, v0, :cond_5

    .line 399
    const/16 v30, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 391
    .end local v10    # "fallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/network/Fallback;>;"
    .end local v15    # "i":I
    :catchall_1
    move-exception v30

    :try_start_3
    monitor-exit v31
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v30

    .line 402
    .restart local v10    # "fallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/network/Fallback;>;"
    .restart local v15    # "i":I
    :cond_5
    :try_start_4
    sget-object v30, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    invoke-static/range {v30 .. v30}, Lcom/xiaomi/channel/commonutils/network/Network;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_6

    const-string/jumbo v21, "wifi"

    .line 403
    .local v21, "networkType":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/network/HostManager;->sUserId:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v13}, Lcom/xiaomi/network/HostManager;->getRemoteFallbackJSON(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v28

    .line 404
    .local v28, "result":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_d

    .line 405
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 406
    .local v20, "json":Lorg/json/JSONObject;
    invoke-static/range {v28 .. v28}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->i(Ljava/lang/String;)V

    .line 407
    const-string v30, "OK"

    const-string v31, "S"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_d

    .line 409
    const-string v30, "R"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    .line 410
    .local v25, "response":Lorg/json/JSONObject;
    const-string v30, "province"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 411
    .local v22, "province":Ljava/lang/String;
    const-string v30, "city"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 412
    .local v4, "city":Ljava/lang/String;
    const-string v30, "isp"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 413
    .local v17, "isp":Ljava/lang/String;
    const-string v30, "ip"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 414
    .local v16, "ip":Ljava/lang/String;
    const-string v30, "country"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 416
    .local v5, "country":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    .line 418
    .local v29, "wifiHosts":Lorg/json/JSONObject;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "get bucket: ip = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " net = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " hosts = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 419
    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 418
    invoke-static/range {v30 .. v30}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 421
    const/4 v15, 0x0

    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v15, v0, :cond_f

    .line 422
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 423
    .local v14, "host":Ljava/lang/String;
    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 424
    .local v9, "fallbackHosts":Lorg/json/JSONArray;
    if-nez v9, :cond_7

    .line 425
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "no bucket found for "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 421
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 402
    .end local v4    # "city":Ljava/lang/String;
    .end local v5    # "country":Ljava/lang/String;
    .end local v9    # "fallbackHosts":Lorg/json/JSONArray;
    .end local v14    # "host":Ljava/lang/String;
    .end local v16    # "ip":Ljava/lang/String;
    .end local v17    # "isp":Ljava/lang/String;
    .end local v20    # "json":Lorg/json/JSONObject;
    .end local v21    # "networkType":Ljava/lang/String;
    .end local v22    # "province":Ljava/lang/String;
    .end local v25    # "response":Lorg/json/JSONObject;
    .end local v28    # "result":Ljava/lang/String;
    .end local v29    # "wifiHosts":Lorg/json/JSONObject;
    :cond_6
    const-string/jumbo v21, "wap"

    goto/16 :goto_3

    .line 429
    .restart local v4    # "city":Ljava/lang/String;
    .restart local v5    # "country":Ljava/lang/String;
    .restart local v9    # "fallbackHosts":Lorg/json/JSONArray;
    .restart local v14    # "host":Ljava/lang/String;
    .restart local v16    # "ip":Ljava/lang/String;
    .restart local v17    # "isp":Ljava/lang/String;
    .restart local v20    # "json":Lorg/json/JSONObject;
    .restart local v21    # "networkType":Ljava/lang/String;
    .restart local v22    # "province":Ljava/lang/String;
    .restart local v25    # "response":Lorg/json/JSONObject;
    .restart local v28    # "result":Ljava/lang/String;
    .restart local v29    # "wifiHosts":Lorg/json/JSONObject;
    :cond_7
    new-instance v11, Lcom/xiaomi/network/Fallback;

    invoke-direct {v11, v14}, Lcom/xiaomi/network/Fallback;-><init>(Ljava/lang/String;)V

    .line 430
    .restart local v11    # "fb":Lcom/xiaomi/network/Fallback;
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_6
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v30

    move/from16 v0, v19

    move/from16 v1, v30

    if-ge v0, v1, :cond_9

    .line 431
    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 432
    .local v8, "fallbackHost":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_8

    .line 434
    new-instance v30, Lcom/xiaomi/network/WeightedHost;

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v31

    sub-int v31, v31, v19

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v0, v8, v1}, Lcom/xiaomi/network/WeightedHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Lcom/xiaomi/network/Fallback;->addHost(Lcom/xiaomi/network/WeightedHost;)V

    .line 430
    :cond_8
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 438
    .end local v8    # "fallbackHost":Ljava/lang/String;
    :cond_9
    invoke-virtual {v10, v15, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 440
    iput-object v5, v11, Lcom/xiaomi/network/Fallback;->country:Ljava/lang/String;

    .line 441
    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/xiaomi/network/Fallback;->province:Ljava/lang/String;

    .line 442
    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/xiaomi/network/Fallback;->isp:Ljava/lang/String;

    .line 443
    move-object/from16 v0, v16

    iput-object v0, v11, Lcom/xiaomi/network/Fallback;->ip:Ljava/lang/String;

    .line 444
    iput-object v4, v11, Lcom/xiaomi/network/Fallback;->city:Ljava/lang/String;

    .line 446
    const-string/jumbo v30, "stat-percent"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 447
    const-string/jumbo v30, "stat-percent"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-virtual {v11, v0, v1}, Lcom/xiaomi/network/Fallback;->setPercent(D)V

    .line 450
    :cond_a
    const-string/jumbo v30, "stat-domain"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_b

    .line 451
    const-string/jumbo v30, "stat-domain"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Lcom/xiaomi/network/Fallback;->setDomainName(Ljava/lang/String;)V

    .line 454
    :cond_b
    const-string/jumbo v30, "ttl"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_c

    .line 455
    const-string/jumbo v30, "ttl"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x3e8

    mul-long v30, v30, v32

    move-wide/from16 v0, v30

    invoke-virtual {v11, v0, v1}, Lcom/xiaomi/network/Fallback;->setEffectiveDuration(J)V

    .line 458
    :cond_c
    invoke-virtual {v11}, Lcom/xiaomi/network/Fallback;->getISP()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/xiaomi/network/HostManager;->setCurrentISP(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    .line 494
    .end local v4    # "city":Ljava/lang/String;
    .end local v5    # "country":Ljava/lang/String;
    .end local v9    # "fallbackHosts":Lorg/json/JSONArray;
    .end local v11    # "fb":Lcom/xiaomi/network/Fallback;
    .end local v14    # "host":Ljava/lang/String;
    .end local v16    # "ip":Ljava/lang/String;
    .end local v17    # "isp":Ljava/lang/String;
    .end local v19    # "j":I
    .end local v20    # "json":Lorg/json/JSONObject;
    .end local v21    # "networkType":Ljava/lang/String;
    .end local v22    # "province":Ljava/lang/String;
    .end local v25    # "response":Lorg/json/JSONObject;
    .end local v28    # "result":Ljava/lang/String;
    .end local v29    # "wifiHosts":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 495
    .local v6, "e":Ljava/lang/Exception;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "failed to get bucket "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 498
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_d
    const/4 v15, 0x0

    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v15, v0, :cond_15

    .line 499
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/xiaomi/network/Fallback;

    .line 500
    .restart local v11    # "fb":Lcom/xiaomi/network/Fallback;
    if-eqz v11, :cond_e

    .line 501
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v11}, Lcom/xiaomi/network/HostManager;->updateFallbacks(Ljava/lang/String;Lcom/xiaomi/network/Fallback;)V

    .line 498
    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 462
    .end local v11    # "fb":Lcom/xiaomi/network/Fallback;
    .restart local v4    # "city":Ljava/lang/String;
    .restart local v5    # "country":Ljava/lang/String;
    .restart local v16    # "ip":Ljava/lang/String;
    .restart local v17    # "isp":Ljava/lang/String;
    .restart local v20    # "json":Lorg/json/JSONObject;
    .restart local v21    # "networkType":Ljava/lang/String;
    .restart local v22    # "province":Ljava/lang/String;
    .restart local v25    # "response":Lorg/json/JSONObject;
    .restart local v28    # "result":Ljava/lang/String;
    .restart local v29    # "wifiHosts":Lorg/json/JSONObject;
    :cond_f
    :try_start_5
    const-string v30, "reserved"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 463
    .local v24, "reservedObjs":Lorg/json/JSONObject;
    if-eqz v24, :cond_d

    .line 464
    const-wide/32 v26, 0x240c8400

    .line 465
    .local v26, "reserved_ttl":J
    const-string v30, "reserved-ttl"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_10

    .line 466
    const-string v30, "reserved-ttl"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x3e8

    mul-long v26, v30, v32

    .line 468
    :cond_10
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v18

    .line 469
    .local v18, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_d

    .line 470
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 471
    .restart local v14    # "host":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .line 472
    .local v23, "reservedHosts":Lorg/json/JSONArray;
    if-nez v23, :cond_11

    .line 473
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "no bucket found for "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_8

    .line 476
    :cond_11
    new-instance v11, Lcom/xiaomi/network/Fallback;

    invoke-direct {v11, v14}, Lcom/xiaomi/network/Fallback;-><init>(Ljava/lang/String;)V

    .line 477
    .restart local v11    # "fb":Lcom/xiaomi/network/Fallback;
    move-wide/from16 v0, v26

    invoke-virtual {v11, v0, v1}, Lcom/xiaomi/network/Fallback;->setEffectiveDuration(J)V

    .line 478
    const/16 v19, 0x0

    .restart local v19    # "j":I
    :goto_9
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v30

    move/from16 v0, v19

    move/from16 v1, v30

    if-ge v0, v1, :cond_13

    .line 479
    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 480
    .restart local v8    # "fallbackHost":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_12

    .line 481
    new-instance v30, Lcom/xiaomi/network/WeightedHost;

    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v31

    sub-int v31, v31, v19

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v0, v8, v1}, Lcom/xiaomi/network/WeightedHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Lcom/xiaomi/network/Fallback;->addHost(Lcom/xiaomi/network/WeightedHost;)V

    .line 478
    :cond_12
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    .line 485
    .end local v8    # "fallbackHost":Ljava/lang/String;
    :cond_13
    sget-object v31, Lcom/xiaomi/network/HostManager;->sReservedHosts:Ljava/util/Map;

    monitor-enter v31
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 486
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/network/HostManager;->sHostFilter:Lcom/xiaomi/network/HostFilter;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v0, v14}, Lcom/xiaomi/network/HostFilter;->accept(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_14

    .line 487
    sget-object v30, Lcom/xiaomi/network/HostManager;->sReservedHosts:Ljava/util/Map;

    move-object/from16 v0, v30

    invoke-interface {v0, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    :cond_14
    monitor-exit v31

    goto/16 :goto_8

    :catchall_2
    move-exception v30

    monitor-exit v31
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v30
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 505
    .end local v4    # "city":Ljava/lang/String;
    .end local v5    # "country":Ljava/lang/String;
    .end local v11    # "fb":Lcom/xiaomi/network/Fallback;
    .end local v14    # "host":Ljava/lang/String;
    .end local v16    # "ip":Ljava/lang/String;
    .end local v17    # "isp":Ljava/lang/String;
    .end local v18    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v19    # "j":I
    .end local v20    # "json":Lorg/json/JSONObject;
    .end local v21    # "networkType":Ljava/lang/String;
    .end local v22    # "province":Ljava/lang/String;
    .end local v23    # "reservedHosts":Lorg/json/JSONArray;
    .end local v24    # "reservedObjs":Lorg/json/JSONObject;
    .end local v25    # "response":Lorg/json/JSONObject;
    .end local v26    # "reserved_ttl":J
    .end local v28    # "result":Ljava/lang/String;
    .end local v29    # "wifiHosts":Lorg/json/JSONObject;
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/network/HostManager;->persist()V

    .line 506
    return-object v10
.end method

.method public static declared-synchronized setHostManagerFactory(Lcom/xiaomi/network/HostManager$HostManagerFactory;)V
    .locals 2
    .param p0, "factory"    # Lcom/xiaomi/network/HostManager$HostManagerFactory;

    .prologue
    .line 112
    const-class v1, Lcom/xiaomi/network/HostManager;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/xiaomi/network/HostManager;->factory:Lcom/xiaomi/network/HostManager$HostManagerFactory;

    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/network/HostManager;->sInstance:Lcom/xiaomi/network/HostManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit v1

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected checkHostMapping()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 676
    iget-object v3, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    monitor-enter v3

    .line 677
    :try_start_0
    sget-boolean v4, Lcom/xiaomi/network/HostManager;->hostLoaded:Z

    if-nez v4, :cond_1

    .line 678
    const/4 v4, 0x1

    sput-boolean v4, Lcom/xiaomi/network/HostManager;->hostLoaded:Z

    .line 679
    iget-object v4, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/network/HostManager;->loadHosts()Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 683
    invoke-virtual {p0, v0}, Lcom/xiaomi/network/HostManager;->fromJSON(Ljava/lang/String;)V

    .line 684
    const-string v4, "loading the new hosts succeed"

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 685
    :try_start_2
    monitor-exit v3

    .line 694
    .end local v0    # "str":Ljava/lang/String;
    :goto_0
    return v2

    .line 687
    :catch_0
    move-exception v1

    .line 688
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load bucket failure: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 693
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    monitor-exit v3

    .line 694
    const/4 v2, 0x0

    goto :goto_0

    .line 691
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 693
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 576
    iget-object v1, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    monitor-enter v1

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 578
    monitor-exit v1

    .line 579
    return-void

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump()Ljava/lang/String;
    .locals 5

    .prologue
    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    monitor-enter v4

    .line 584
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    .line 585
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaomi/network/Fallbacks;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 586
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 587
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaomi/network/Fallbacks;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/network/Fallbacks;

    invoke-virtual {v3}, Lcom/xiaomi/network/Fallbacks;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 592
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaomi/network/Fallbacks;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaomi/network/Fallbacks;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaomi/network/Fallbacks;>;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 593
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected fromJSON(Ljava/lang/String;)V
    .locals 10
    .param p1, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 970
    iget-object v8, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    monitor-enter v8

    .line 971
    :try_start_0
    iget-object v7, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 972
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 973
    .local v4, "obj":Lorg/json/JSONObject;
    const-string/jumbo v7, "ver"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 974
    .local v6, "ver":I
    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 975
    new-instance v7, Lorg/json/JSONException;

    const-string v9, "Bad version"

    invoke-direct {v7, v9}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 988
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v6    # "ver":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 977
    .restart local v4    # "obj":Lorg/json/JSONObject;
    .restart local v6    # "ver":I
    :cond_0
    :try_start_1
    const-string v7, "data"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 978
    .local v3, "ja":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 979
    new-instance v7, Lcom/xiaomi/network/Fallbacks;

    invoke-direct {v7}, Lcom/xiaomi/network/Fallbacks;-><init>()V

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/xiaomi/network/Fallbacks;->fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/network/Fallbacks;

    move-result-object v1

    .line 980
    .local v1, "fbs":Lcom/xiaomi/network/Fallbacks;
    iget-object v7, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/xiaomi/network/Fallbacks;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 983
    .end local v1    # "fbs":Lcom/xiaomi/network/Fallbacks;
    :cond_1
    const-string v7, "reserved"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 984
    .local v5, "reserved":Lorg/json/JSONArray;
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 985
    new-instance v7, Lcom/xiaomi/network/Fallback;

    const-string v9, ""

    invoke-direct {v7, v9}, Lcom/xiaomi/network/Fallback;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/xiaomi/network/Fallback;->fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/network/Fallback;

    move-result-object v0

    .line 986
    .local v0, "fb":Lcom/xiaomi/network/Fallback;
    sget-object v7, Lcom/xiaomi/network/HostManager;->sReservedHosts:Ljava/util/Map;

    iget-object v9, v0, Lcom/xiaomi/network/Fallback;->host:Ljava/lang/String;

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 988
    .end local v0    # "fb":Lcom/xiaomi/network/Fallback;
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 989
    return-void
.end method

.method public getFallbacksByHost(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 233
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/network/HostManager;->getFallbacksByHost(Ljava/lang/String;Z)Lcom/xiaomi/network/Fallback;

    move-result-object v0

    return-object v0
.end method

.method public getFallbacksByHost(Ljava/lang/String;Z)Lcom/xiaomi/network/Fallback;
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "fetchRemoteIfNeed"    # Z

    .prologue
    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "the host is empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 251
    :cond_0
    iget-object v3, p0, Lcom/xiaomi/network/HostManager;->sHostFilter:Lcom/xiaomi/network/HostFilter;

    invoke-interface {v3, p1}, Lcom/xiaomi/network/HostFilter;->accept(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 252
    const/4 v1, 0x0

    .line 316
    :cond_1
    :goto_0
    return-object v1

    .line 255
    :cond_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/network/HostManager;->getLocalFallback(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;

    move-result-object v1

    .line 256
    .local v1, "localFB":Lcom/xiaomi/network/Fallback;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/xiaomi/network/Fallback;->isEffective()Z

    move-result v3

    if-nez v3, :cond_1

    .line 260
    :cond_3
    if-eqz p2, :cond_4

    sget-object v3, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/network/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 261
    invoke-virtual {p0, p1}, Lcom/xiaomi/network/HostManager;->requestRemoteFallback(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;

    move-result-object v2

    .line 262
    .local v2, "remoteFallback":Lcom/xiaomi/network/Fallback;
    if-eqz v2, :cond_4

    move-object v1, v2

    .line 263
    goto :goto_0

    .line 267
    .end local v2    # "remoteFallback":Lcom/xiaomi/network/Fallback;
    :cond_4
    new-instance v0, Lcom/xiaomi/network/HostManager$2;

    invoke-direct {v0, p0, p1, v1}, Lcom/xiaomi/network/HostManager$2;-><init>(Lcom/xiaomi/network/HostManager;Ljava/lang/String;Lcom/xiaomi/network/Fallback;)V

    .local v0, "fb":Lcom/xiaomi/network/Fallback;
    move-object v1, v0

    .line 316
    goto :goto_0
.end method

.method public getFallbacksByURL(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "the url is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, "urlObject":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "host":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/xiaomi/network/HostManager;->getFallbacksByHost(Ljava/lang/String;Z)Lcom/xiaomi/network/Fallback;

    move-result-object v2

    return-object v2
.end method

.method protected getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 510
    sget-object v1, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/AppRegionStorage;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/AppRegionStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/AppRegionStorage;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "appRegion":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 512
    sget-object v1, Lcom/xiaomi/push/service/module/PushChannelRegion;->China:Lcom/xiaomi/push/service/module/PushChannelRegion;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/module/PushChannelRegion;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "resolver.msg.xiaomi.net"

    .line 514
    :goto_0
    return-object v1

    .line 512
    :cond_0
    const-string v1, "resolver.msg.global.xiaomi.net"

    goto :goto_0

    .line 514
    :cond_1
    const-string v1, "resolver.msg.xiaomi.net"

    goto :goto_0
.end method

.method protected getLocalFallback(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;
    .locals 5
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 320
    const/4 v2, 0x0

    .line 321
    .local v2, "fallbacks":Lcom/xiaomi/network/Fallbacks;
    iget-object v4, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    monitor-enter v4

    .line 322
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/network/HostManager;->checkHostMapping()Z

    .line 323
    iget-object v3, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/xiaomi/network/Fallbacks;

    move-object v2, v0

    .line 324
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    if-eqz v2, :cond_0

    .line 326
    invoke-virtual {v2}, Lcom/xiaomi/network/Fallbacks;->getFallback()Lcom/xiaomi/network/Fallback;

    move-result-object v1

    .line 327
    .local v1, "cfb":Lcom/xiaomi/network/Fallback;
    if-eqz v1, :cond_0

    .line 331
    .end local v1    # "cfb":Lcom/xiaomi/network/Fallback;
    :goto_0
    return-object v1

    .line 324
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 331
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getProcessName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 747
    sget-object v2, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    const-string v3, "activity"

    .line 748
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 749
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 750
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v1, :cond_1

    .line 751
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 752
    .local v0, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 753
    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 757
    .end local v0    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v2

    :cond_1
    const-string v2, "com.xiaomi"

    goto :goto_0
.end method

.method protected getRemoteFallbackJSON(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 18
    .param p2, "networkType"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "fetchReserved"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    .local p1, "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v11, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v8, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/channel/commonutils/network/NameValuePair;>;"
    new-instance v12, Lcom/xiaomi/channel/commonutils/network/BasicNameValuePair;

    const-string/jumbo v13, "type"

    move-object/from16 v0, p2

    invoke-direct {v12, v13, v0}, Lcom/xiaomi/channel/commonutils/network/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    const-string/jumbo v12, "wap"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 523
    new-instance v12, Lcom/xiaomi/channel/commonutils/network/BasicNameValuePair;

    const-string v13, "conpt"

    sget-object v14, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/xiaomi/channel/commonutils/network/Network;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/xiaomi/network/HostManager;->obfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/xiaomi/channel/commonutils/network/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_0
    if-eqz p4, :cond_1

    .line 526
    new-instance v12, Lcom/xiaomi/channel/commonutils/network/BasicNameValuePair;

    const-string v13, "reserved"

    const-string v14, "1"

    invoke-direct {v12, v13, v14}, Lcom/xiaomi/channel/commonutils/network/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_1
    new-instance v12, Lcom/xiaomi/channel/commonutils/network/BasicNameValuePair;

    const-string/jumbo v13, "uuid"

    move-object/from16 v0, p3

    invoke-direct {v12, v13, v0}, Lcom/xiaomi/channel/commonutils/network/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    new-instance v12, Lcom/xiaomi/channel/commonutils/network/BasicNameValuePair;

    const-string v13, "list"

    const-string v14, ","

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/xiaomi/channel/commonutils/network/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/network/HostManager;->getHost()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/xiaomi/network/HostManager;->getLocalFallback(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;

    move-result-object v4

    .line 532
    .local v4, "localFallback":Lcom/xiaomi/network/Fallback;
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "http://%1$s/gslb/?ver=4.0"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/network/HostManager;->getHost()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 533
    .local v6, "originalURL":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 534
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    sget-object v13, Lcom/xiaomi/network/HostManager;->sReservedHosts:Ljava/util/Map;

    monitor-enter v13

    .line 536
    :try_start_0
    sget-object v12, Lcom/xiaomi/network/HostManager;->sReservedHosts:Ljava/util/Map;

    const-string v14, "resolver.msg.xiaomi.net"

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaomi/network/Fallback;

    .line 537
    .local v9, "reservedHosts":Lcom/xiaomi/network/Fallback;
    if-eqz v9, :cond_2

    .line 538
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/xiaomi/network/Fallback;->getHosts(Z)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 539
    .local v3, "host":Ljava/lang/String;
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "http://%1$s/gslb/?ver=4.0"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v3, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 542
    .end local v3    # "host":Ljava/lang/String;
    .end local v9    # "reservedHosts":Lcom/xiaomi/network/Fallback;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .restart local v9    # "reservedHosts":Lcom/xiaomi/network/Fallback;
    :cond_2
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    .end local v9    # "reservedHosts":Lcom/xiaomi/network/Fallback;
    :goto_1
    const/4 v2, 0x0

    .line 548
    .local v2, "exception":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 549
    .local v5, "newUrl":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 550
    .local v10, "uri":Landroid/net/Uri$Builder;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaomi/channel/commonutils/network/NameValuePair;

    .line 551
    .local v7, "pair":Lcom/xiaomi/channel/commonutils/network/NameValuePair;
    invoke-interface {v7}, Lcom/xiaomi/channel/commonutils/network/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7}, Lcom/xiaomi/channel/commonutils/network/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3

    .line 544
    .end local v2    # "exception":Ljava/io/IOException;
    .end local v5    # "newUrl":Ljava/lang/String;
    .end local v7    # "pair":Lcom/xiaomi/channel/commonutils/network/NameValuePair;
    .end local v10    # "uri":Landroid/net/Uri$Builder;
    :cond_3
    invoke-virtual {v4, v6}, Lcom/xiaomi/network/Fallback;->getUrls(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    goto :goto_1

    .line 554
    .restart local v2    # "exception":Ljava/io/IOException;
    .restart local v5    # "newUrl":Ljava/lang/String;
    .restart local v10    # "uri":Landroid/net/Uri$Builder;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/xiaomi/network/HostManager;->sHttpGetter:Lcom/xiaomi/network/HostManager$HttpGet;

    if-nez v13, :cond_5

    .line 555
    sget-object v13, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    new-instance v14, Ljava/net/URL;

    .line 556
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v14}, Lcom/xiaomi/channel/commonutils/network/Network;->downloadXml(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v12

    .line 569
    .end local v5    # "newUrl":Ljava/lang/String;
    .end local v10    # "uri":Landroid/net/Uri$Builder;
    :goto_4
    return-object v12

    .line 558
    .restart local v5    # "newUrl":Ljava/lang/String;
    .restart local v10    # "uri":Landroid/net/Uri$Builder;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/xiaomi/network/HostManager;->sHttpGetter:Lcom/xiaomi/network/HostManager$HttpGet;

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/xiaomi/network/HostManager$HttpGet;->doGet(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v12

    goto :goto_4

    .line 560
    :catch_0
    move-exception v1

    .line 561
    .local v1, "e":Ljava/io/IOException;
    move-object v2, v1

    .line 563
    goto :goto_2

    .line 565
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "newUrl":Ljava/lang/String;
    .end local v10    # "uri":Landroid/net/Uri$Builder;
    :cond_6
    if-eqz v2, :cond_7

    .line 566
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "network exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 567
    throw v2

    .line 569
    :cond_7
    const/4 v12, 0x0

    goto :goto_4
.end method

.method protected loadHosts()Ljava/lang/String;
    .locals 8

    .prologue
    .line 650
    const/4 v1, 0x0

    .line 652
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v6, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    .line 653
    invoke-virtual {p0}, Lcom/xiaomi/network/HostManager;->getProcessName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 654
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 655
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 659
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 660
    .local v4, "str":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 661
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 665
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v2

    .line 666
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    .local v5, "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load host exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 668
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 670
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_2
    const/4 v6, 0x0

    :goto_3
    return-object v6

    .line 663
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "str":Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    .line 668
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 663
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 668
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v6

    :goto_4
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v6

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 665
    .end local v0    # "file":Ljava/io/File;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public persist()V
    .locals 8

    .prologue
    .line 728
    iget-object v5, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    monitor-enter v5

    .line 731
    :try_start_0
    sget-object v4, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/network/HostManager;->getProcessName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 733
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 736
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {p0}, Lcom/xiaomi/network/HostManager;->toJSON()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 737
    .local v3, "jsonStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 738
    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 739
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "jsonStr":Ljava/lang/String;
    :goto_0
    :try_start_1
    monitor-exit v5

    .line 744
    return-void

    .line 740
    :catch_0
    move-exception v1

    .line 741
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persist bucket failure: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 743
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public purge()V
    .locals 6

    .prologue
    .line 887
    iget-object v4, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    monitor-enter v4

    .line 888
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/network/Fallbacks;

    .line 889
    .local v1, "fbs":Lcom/xiaomi/network/Fallbacks;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/xiaomi/network/Fallbacks;->purge(Z)V

    goto :goto_0

    .line 903
    .end local v1    # "fbs":Lcom/xiaomi/network/Fallbacks;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 892
    :cond_0
    const/4 v0, 0x0

    .line 893
    .local v0, "done":Z
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 894
    const/4 v0, 0x1

    .line 895
    :try_start_1
    iget-object v3, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 896
    .local v2, "host":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/network/Fallbacks;

    invoke-virtual {v3}, Lcom/xiaomi/network/Fallbacks;->getFallbacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 897
    iget-object v3, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    const/4 v0, 0x0

    .line 899
    goto :goto_1

    .line 903
    .end local v2    # "host":Ljava/lang/String;
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 904
    return-void
.end method

.method public refreshFallbacks()V
    .locals 8

    .prologue
    .line 626
    const/4 v2, 0x0

    .line 627
    .local v2, "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    monitor-enter v6

    .line 628
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/network/HostManager;->checkHostMapping()Z

    .line 629
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    .end local v2    # "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 633
    iget-object v5, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/network/Fallbacks;

    .line 634
    .local v0, "fbs":Lcom/xiaomi/network/Fallbacks;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/network/Fallbacks;->getFallback()Lcom/xiaomi/network/Fallback;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 635
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 632
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 638
    .end local v0    # "fbs":Lcom/xiaomi/network/Fallbacks;
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 641
    invoke-direct {p0, v3}, Lcom/xiaomi/network/HostManager;->requestRemoteFallbacks(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 642
    .local v1, "fbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/network/Fallback;>;"
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 643
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 644
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/network/Fallback;

    invoke-virtual {p0, v5, v6}, Lcom/xiaomi/network/HostManager;->updateFallbacks(Ljava/lang/String;Lcom/xiaomi/network/Fallback;)V

    .line 642
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 638
    .end local v1    # "fbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/network/Fallback;>;"
    .end local v3    # "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "i":I
    .restart local v2    # "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    :goto_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 647
    .end local v2    # "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "fbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/network/Fallback;>;"
    .restart local v3    # "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "i":I
    :cond_3
    return-void

    .line 638
    .end local v1    # "fbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/network/Fallback;>;"
    .end local v4    # "i":I
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method protected requestRemoteFallback(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;
    .locals 8
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/network/HostManager;->lastRemoteRequestTimestamp:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/xiaomi/network/HostManager;->remoteRequestFailureCount:J

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/network/HostManager;->lastRemoteRequestTimestamp:J

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v0, "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-direct {p0, v0}, Lcom/xiaomi/network/HostManager;->requestRemoteFallbacks(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/network/Fallback;

    .line 346
    .local v1, "remoteFallback":Lcom/xiaomi/network/Fallback;
    if-eqz v1, :cond_0

    .line 347
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/xiaomi/network/HostManager;->remoteRequestFailureCount:J

    .line 355
    .end local v0    # "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "remoteFallback":Lcom/xiaomi/network/Fallback;
    :goto_0
    return-object v1

    .line 350
    .restart local v0    # "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "remoteFallback":Lcom/xiaomi/network/Fallback;
    :cond_0
    iget-wide v2, p0, Lcom/xiaomi/network/HostManager;->remoteRequestFailureCount:J

    const-wide/16 v4, 0xf

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 351
    iget-wide v2, p0, Lcom/xiaomi/network/HostManager;->remoteRequestFailureCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/xiaomi/network/HostManager;->remoteRequestFailureCount:J

    .line 355
    .end local v0    # "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "remoteFallback":Lcom/xiaomi/network/Fallback;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCurrentISP(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentISP"    # Ljava/lang/String;

    .prologue
    .line 937
    iput-object p1, p0, Lcom/xiaomi/network/HostManager;->currentISP:Ljava/lang/String;

    .line 938
    return-void
.end method

.method protected toJSON()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 948
    iget-object v6, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    monitor-enter v6

    .line 949
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 950
    .local v3, "obj":Lorg/json/JSONObject;
    const-string/jumbo v5, "ver"

    const/4 v7, 0x2

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 952
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 953
    .local v2, "jsonArray":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/network/Fallbacks;

    .line 954
    .local v1, "fbs":Lcom/xiaomi/network/Fallbacks;
    invoke-virtual {v1}, Lcom/xiaomi/network/Fallbacks;->toJSON()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 966
    .end local v1    # "fbs":Lcom/xiaomi/network/Fallbacks;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 956
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    const-string v5, "data"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 958
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 959
    .local v4, "reserved":Lorg/json/JSONArray;
    sget-object v5, Lcom/xiaomi/network/HostManager;->sReservedHosts:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/network/Fallback;

    .line 960
    .local v0, "fb":Lcom/xiaomi/network/Fallback;
    invoke-virtual {v0}, Lcom/xiaomi/network/Fallback;->toJSON()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 963
    .end local v0    # "fb":Lcom/xiaomi/network/Fallback;
    :cond_1
    const-string v5, "reserved"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 965
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public updateFallbacks(Ljava/lang/String;Lcom/xiaomi/network/Fallback;)V
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "fb"    # Lcom/xiaomi/network/Fallback;

    .prologue
    .line 603
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    .line 604
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the argument is invalid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 607
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/network/HostManager;->sHostFilter:Lcom/xiaomi/network/HostFilter;

    invoke-interface {v2, p1}, Lcom/xiaomi/network/HostFilter;->accept(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 608
    iget-object v3, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    monitor-enter v3

    .line 609
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/network/HostManager;->checkHostMapping()Z

    .line 610
    iget-object v2, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 611
    iget-object v2, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/network/Fallbacks;

    .line 612
    .local v0, "currentFBS":Lcom/xiaomi/network/Fallbacks;
    invoke-virtual {v0, p2}, Lcom/xiaomi/network/Fallbacks;->addFallback(Lcom/xiaomi/network/Fallback;)V

    .line 618
    .end local v0    # "currentFBS":Lcom/xiaomi/network/Fallbacks;
    :goto_0
    monitor-exit v3

    .line 620
    :cond_2
    return-void

    .line 614
    :cond_3
    new-instance v1, Lcom/xiaomi/network/Fallbacks;

    invoke-direct {v1, p1}, Lcom/xiaomi/network/Fallbacks;-><init>(Ljava/lang/String;)V

    .line 615
    .local v1, "newfbs":Lcom/xiaomi/network/Fallbacks;
    invoke-virtual {v1, p2}, Lcom/xiaomi/network/Fallbacks;->addFallback(Lcom/xiaomi/network/Fallback;)V

    .line 616
    iget-object v2, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 618
    .end local v1    # "newfbs":Lcom/xiaomi/network/Fallbacks;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
