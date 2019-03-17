.class public Lcom/xiaomi/push/service/OnlineConfig;
.super Ljava/lang/Object;
.source "OnlineConfig.java"


# static fields
.field private static volatile instance:Lcom/xiaomi/push/service/OnlineConfig;


# instance fields
.field protected preferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "mipush_oc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/OnlineConfig;->preferences:Landroid/content/SharedPreferences;

    .line 39
    return-void
.end method

.method private getCustomOcKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom_oc_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v0, Lcom/xiaomi/push/service/OnlineConfig;->instance:Lcom/xiaomi/push/service/OnlineConfig;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/xiaomi/push/service/OnlineConfig;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/OnlineConfig;->instance:Lcom/xiaomi/push/service/OnlineConfig;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/xiaomi/push/service/OnlineConfig;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/OnlineConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/OnlineConfig;->instance:Lcom/xiaomi/push/service/OnlineConfig;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/OnlineConfig;->instance:Lcom/xiaomi/push/service/OnlineConfig;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getNormalOcKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "normal_oc_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private putConfig(Landroid/content/SharedPreferences$Editor;Landroid/util/Pair;Ljava/lang/String;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, "config":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 100
    :cond_3
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public getBooleanValue(IZ)Z
    .locals 4
    .param p1, "key"    # I
    .param p2, "defaultVal"    # Z

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/OnlineConfig;->getCustomOcKey(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "customKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaomi/push/service/OnlineConfig;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/xiaomi/push/service/OnlineConfig;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 157
    .end local p2    # "defaultVal":Z
    :cond_0
    :goto_0
    return p2

    .line 153
    .restart local p2    # "defaultVal":Z
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/OnlineConfig;->getNormalOcKey(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "normalKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaomi/push/service/OnlineConfig;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/xiaomi/push/service/OnlineConfig;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method public getIntValue(II)I
    .locals 4
    .param p1, "key"    # I
    .param p2, "defaultVal"    # I

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/OnlineConfig;->getCustomOcKey(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "customKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaomi/push/service/OnlineConfig;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/xiaomi/push/service/OnlineConfig;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 115
    .end local p2    # "defaultVal":I
    :cond_0
    :goto_0
    return p2

    .line 111
    .restart local p2    # "defaultVal":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/OnlineConfig;->getNormalOcKey(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "normalKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaomi/push/service/OnlineConfig;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/xiaomi/push/service/OnlineConfig;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0
.end method

.method public updateCustomConfigs(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "configList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/misc/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v3, p0, Lcom/xiaomi/push/service/OnlineConfig;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 75
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 76
    .local v0, "config":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 80
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/xiaomi/push/service/OnlineConfig;->getCustomOcKey(I)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "key":Ljava/lang/String;
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 83
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 85
    :cond_2
    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/push/service/OnlineConfig;->putConfig(Landroid/content/SharedPreferences$Editor;Landroid/util/Pair;Ljava/lang/String;)V

    goto :goto_1

    .line 88
    .end local v0    # "config":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public updateNormalConfigs(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "configList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/misc/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v3, p0, Lcom/xiaomi/push/service/OnlineConfig;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 53
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 54
    .local v0, "config":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 58
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/xiaomi/push/service/OnlineConfig;->getNormalOcKey(I)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/push/service/OnlineConfig;->putConfig(Landroid/content/SharedPreferences$Editor;Landroid/util/Pair;Ljava/lang/String;)V

    goto :goto_1

    .line 61
    .end local v0    # "config":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
