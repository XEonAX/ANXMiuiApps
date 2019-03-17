.class public Lcom/xiaomi/push/mpcd/job/BatteryCollectionJob;
.super Lcom/xiaomi/push/mpcd/job/CollectionJob;
.source "BatteryCollectionJob.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "period"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/mpcd/job/CollectionJob;-><init>(Landroid/content/Context;I)V

    .line 47
    return-void
.end method

.method private doFormatData()Ljava/lang/String;
    .locals 9

    .prologue
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v1, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v3, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .local v3, "iFilter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/xiaomi/push/mpcd/job/BatteryCollectionJob;->context:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 68
    .local v0, "batteryStatus":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 70
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 71
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 72
    .local v6, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .local v4, "json":Lorg/json/JSONObject;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 74
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 75
    .local v5, "key":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-nez v8, :cond_0

    .line 77
    :try_start_1
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v8

    goto :goto_0

    .line 83
    .end local v5    # "key":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 92
    .end local v0    # "batteryStatus":Landroid/content/Intent;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "iFilter":Landroid/content/IntentFilter;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v6    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 89
    :catch_1
    move-exception v7

    goto :goto_1
.end method


# virtual methods
.method public collectInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/xiaomi/push/mpcd/job/BatteryCollectionJob;->doFormatData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionType()Lcom/xiaomi/xmpush/thrift/ClientCollectionType;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->Battery:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    return-object v0
.end method

.method public getJobId()I
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x14

    return v0
.end method
