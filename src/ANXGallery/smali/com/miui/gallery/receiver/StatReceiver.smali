.class public Lcom/miui/gallery/receiver/StatReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    const-string/jumbo v5, "stat_type"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, "statType":Ljava/lang/String;
    const-string v5, "count_event"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 33
    const/4 v3, 0x0

    .line 34
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "param_keys"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "paramKeys":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v5, v1

    if-lez v5, :cond_2

    .line 36
    const-string v5, "param_values"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "paramValues":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v5, v2

    array-length v6, v1

    if-eq v5, v6, :cond_1

    .line 38
    :cond_0
    const-string v5, "StatReceiver"

    const-string v6, "Param keys and values has not the same count."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v1    # "paramKeys":[Ljava/lang/String;
    .end local v2    # "paramValues":[Ljava/lang/String;
    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 41
    .restart local v1    # "paramKeys":[Ljava/lang/String;
    .restart local v2    # "paramValues":[Ljava/lang/String;
    .restart local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 42
    .restart local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_2

    .line 43
    aget-object v5, v1, v0

    aget-object v6, v2, v0

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    .end local v0    # "i":I
    .end local v2    # "paramValues":[Ljava/lang/String;
    :cond_2
    const-string v5, "category"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "event"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 47
    .end local v1    # "paramKeys":[Ljava/lang/String;
    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v5, "numeric_event"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 48
    const-string v5, "category"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "event"

    .line 49
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "value"

    const-wide/16 v8, 0x0

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 48
    invoke-static {v5, v6, v8, v9}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 51
    :cond_4
    const-string v5, "StatReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported stat broadcast: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
