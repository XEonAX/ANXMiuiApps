.class public Lcom/xiaomi/push/service/OnlineConfigHelper;
.super Ljava/lang/Object;
.source "OnlineConfigHelper.java"


# direct methods
.method private static convertMessage(Ljava/util/List;Z)Ljava/util/List;
    .locals 10
    .param p1, "supportClear"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p0, "configList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;>;"
    const/4 v5, 0x0

    .line 71
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/misc/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v3, v5

    .line 104
    :cond_0
    return-object v3

    .line 75
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;

    .line 77
    .local v0, "config":Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;
    const/4 v2, 0x0

    .line 78
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->getKey()I

    move-result v1

    .line 79
    .local v1, "key":I
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->getType()I

    move-result v7

    invoke-static {v7}, Lcom/xiaomi/xmpush/thrift/ConfigType;->findByValue(I)Lcom/xiaomi/xmpush/thrift/ConfigType;

    move-result-object v4

    .line 80
    .local v4, "type":Lcom/xiaomi/xmpush/thrift/ConfigType;
    if-eqz v4, :cond_2

    .line 83
    if-eqz p1, :cond_3

    iget-boolean v7, v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->clear:Z

    if-eqz v7, :cond_3

    .line 85
    new-instance v7, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_3
    sget-object v7, Lcom/xiaomi/push/service/OnlineConfigHelper$1;->$SwitchMap$com$xiaomi$xmpush$thrift$ConfigType:[I

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 101
    :goto_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :pswitch_0
    new-instance v2, Landroid/util/Pair;

    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->getIntValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .restart local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    goto :goto_1

    .line 92
    :pswitch_1
    new-instance v2, Landroid/util/Pair;

    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->getLongValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .restart local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    goto :goto_1

    .line 95
    :pswitch_2
    new-instance v2, Landroid/util/Pair;

    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->getStringValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .restart local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    goto :goto_1

    .line 98
    :pswitch_3
    new-instance v2, Landroid/util/Pair;

    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isBoolValue()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .restart local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    goto :goto_1

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getVersion(Lcom/xiaomi/push/service/OnlineConfig;Lcom/xiaomi/xmpush/thrift/ConfigListType;)I
    .locals 4
    .param p0, "onlineConfig"    # Lcom/xiaomi/push/service/OnlineConfig;
    .param p1, "type"    # Lcom/xiaomi/xmpush/thrift/ConfigListType;

    .prologue
    .line 52
    invoke-static {p1}, Lcom/xiaomi/push/service/OnlineConfigHelper;->getVersionKey(Lcom/xiaomi/xmpush/thrift/ConfigListType;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "key":Ljava/lang/String;
    const/4 v0, 0x0

    .line 54
    .local v0, "defaultVersion":I
    sget-object v2, Lcom/xiaomi/push/service/OnlineConfigHelper$1;->$SwitchMap$com$xiaomi$xmpush$thrift$ConfigListType:[I

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ConfigListType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 62
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/push/service/OnlineConfig;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 56
    :pswitch_0
    const/4 v0, 0x1

    .line 57
    goto :goto_0

    .line 59
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getVersionKey(Lcom/xiaomi/xmpush/thrift/ConfigListType;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Lcom/xiaomi/xmpush/thrift/ConfigListType;

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oc_version_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ConfigListType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setVersion(Lcom/xiaomi/push/service/OnlineConfig;Lcom/xiaomi/xmpush/thrift/ConfigListType;I)V
    .locals 2
    .param p0, "onlineConfig"    # Lcom/xiaomi/push/service/OnlineConfig;
    .param p1, "type"    # Lcom/xiaomi/xmpush/thrift/ConfigListType;
    .param p2, "value"    # I

    .prologue
    .line 66
    invoke-static {p1}, Lcom/xiaomi/push/service/OnlineConfigHelper;->getVersionKey(Lcom/xiaomi/xmpush/thrift/ConfigListType;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaomi/push/service/OnlineConfig;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    return-void
.end method

.method public static updateCustomConfigs(Lcom/xiaomi/push/service/OnlineConfig;Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;)V
    .locals 3
    .param p0, "onlineConfig"    # Lcom/xiaomi/push/service/OnlineConfig;
    .param p1, "configMessage"    # Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->getCustomConfigs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaomi/push/service/OnlineConfigHelper;->convertMessage(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 48
    .local v0, "configList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/OnlineConfig;->updateCustomConfigs(Ljava/util/List;)V

    .line 49
    return-void
.end method

.method public static updateNormalConfigs(Lcom/xiaomi/push/service/OnlineConfig;Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;)V
    .locals 5
    .param p0, "onlineConfig"    # Lcom/xiaomi/push/service/OnlineConfig;
    .param p1, "configMessage"    # Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->getNormalConfigs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/xmpush/thrift/NormalConfig;

    .line 31
    .local v1, "normalConfig":Lcom/xiaomi/xmpush/thrift/NormalConfig;
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->getVersion()I

    move-result v3

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->getType()Lcom/xiaomi/xmpush/thrift/ConfigListType;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/xiaomi/push/service/OnlineConfigHelper;->getVersion(Lcom/xiaomi/push/service/OnlineConfig;Lcom/xiaomi/xmpush/thrift/ConfigListType;)I

    move-result v4

    if-le v3, v4, :cond_0

    .line 35
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->getType()Lcom/xiaomi/xmpush/thrift/ConfigListType;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->getVersion()I

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/xiaomi/push/service/OnlineConfigHelper;->setVersion(Lcom/xiaomi/push/service/OnlineConfig;Lcom/xiaomi/xmpush/thrift/ConfigListType;I)V

    .line 38
    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/xiaomi/push/service/OnlineConfigHelper;->convertMessage(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 39
    .local v0, "configList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/OnlineConfig;->updateNormalConfigs(Ljava/util/List;)V

    goto :goto_0

    .line 41
    .end local v0    # "configList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    .end local v1    # "normalConfig":Lcom/xiaomi/xmpush/thrift/NormalConfig;
    :cond_1
    return-void
.end method
