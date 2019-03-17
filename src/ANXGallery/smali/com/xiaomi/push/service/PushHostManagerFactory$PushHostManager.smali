.class Lcom/xiaomi/push/service/PushHostManagerFactory$PushHostManager;
.super Lcom/xiaomi/network/HostManager;
.source "PushHostManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/PushHostManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PushHostManager"
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/network/HostFilter;Lcom/xiaomi/network/HostManager$HttpGet;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostFilter"    # Lcom/xiaomi/network/HostFilter;
    .param p3, "httpGet"    # Lcom/xiaomi/network/HostManager$HttpGet;
    .param p4, "userId"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/network/HostManager;-><init>(Landroid/content/Context;Lcom/xiaomi/network/HostFilter;Lcom/xiaomi/network/HostManager$HttpGet;Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected getRemoteFallbackJSON(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
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
    .local p1, "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 92
    :try_start_0
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getInstance()Lcom/xiaomi/stats/StatsHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/stats/StatsHandler;->isAllowStats()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    invoke-static {}, Lcom/xiaomi/push/service/ServiceConfig;->getDeviceUUID()Ljava/lang/String;

    move-result-object p3

    .line 95
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaomi/network/HostManager;->getRemoteFallbackJSON(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lcom/xiaomi/push/service/PushHostManagerFactory$PushHostManager;->sAppContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/network/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 98
    .local v0, "causedByNetwork":I
    :goto_0
    sget-object v4, Lcom/xiaomi/push/thrift/ChannelStatsType;->GSLB_ERR:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v4}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v0}, Lcom/xiaomi/stats/StatsHelper;->stats(IIILjava/lang/String;I)V

    .line 99
    throw v1

    .end local v0    # "causedByNetwork":I
    :cond_1
    move v0, v3

    .line 97
    goto :goto_0
.end method
