.class public Lcom/xiaomi/micloudsdk/request/utils/CloudNetworkAvailabilityManager;
.super Ljava/lang/Object;
.source "CloudNetworkAvailabilityManager.java"


# direct methods
.method public static declared-synchronized getAvailability(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 30
    const-class v2, Lcom/xiaomi/micloudsdk/request/utils/CloudNetworkAvailabilityManager;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 31
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "context cannot be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 33
    :cond_0
    :try_start_1
    const-string v3, "micloud_network_availability"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 34
    .local v0, "oldValue":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v2

    return v1
.end method

.method private static sendNetworkAvailabilityChangedBroadcast(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "active"    # Z

    .prologue
    .line 38
    const-string v1, "NetworkAvailability"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendNetworkAvailabilityChangedBroadcast active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.MICLOUD_NETWORK_AVAILABILITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "syncStateIntent":Landroid/content/Intent;
    const-string v1, "active"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    return-void
.end method

.method public static declared-synchronized setRequestResult(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "available"    # Z

    .prologue
    .line 17
    const-class v2, Lcom/xiaomi/micloudsdk/request/utils/CloudNetworkAvailabilityManager;

    monitor-enter v2

    if-nez p0, :cond_1

    .line 18
    :try_start_0
    const-string v1, "NetworkAvailability"

    const-string v3, "context is null, ignore"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 21
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudNetworkAvailabilityManager;->getAvailability(Landroid/content/Context;)Z

    move-result v0

    .line 22
    .local v0, "oldNetworkState":Z
    if-eq v0, p1, :cond_0

    .line 23
    const-string v3, "micloud_network_availability"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {p0, v3, v1}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 24
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudNetworkAvailabilityManager;->sendNetworkAvailabilityChangedBroadcast(Landroid/content/Context;Z)V

    .line 25
    const-string v1, "NetworkAvailability"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "micloud network state changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 17
    .end local v0    # "oldNetworkState":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 23
    .restart local v0    # "oldNetworkState":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
