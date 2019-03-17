.class public Lcom/xiaomi/push/service/TypedShieldHelper;
.super Ljava/lang/Object;
.source "TypedShieldHelper.java"


# static fields
.field public static shieldInfoSyncTask:Ljava/lang/Runnable;


# direct methods
.method private static getShieldTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shieldTypeName"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string/jumbo v1, "typed_shield_pref"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getShieldType(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;
    .locals 3
    .param p0, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v1

    .line 56
    .local v1, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v0

    .line 57
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "__typed_shield_type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0
.end method

.method public static isShield(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    const/4 v2, 0x0

    .line 36
    const-string v3, "com.xiaomi.xmsf"

    invoke-static {p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v2

    .line 40
    :cond_1
    invoke-static {p1}, Lcom/xiaomi/push/service/TypedShieldHelper;->getShieldType(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "typeName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    const-string/jumbo v2, "typed_shield_pref"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_shield"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/xiaomi/push/service/TypedShieldHelper;->shieldInfoSyncTask:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 49
    sget-object v2, Lcom/xiaomi/push/service/TypedShieldHelper;->shieldInfoSyncTask:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 51
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_shield"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0
.end method

.method static processTypedShieldExtra(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Landroid/app/Notification;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .param p2, "notification"    # Landroid/app/Notification;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 68
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-static {p1}, Lcom/xiaomi/push/service/TypedShieldHelper;->getShieldType(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "typeName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.xiaomi.xmsf"

    .line 75
    invoke-static {p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iget-object v0, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 78
    .local v0, "notificationBundle":Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 79
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "notificationBundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .restart local v0    # "notificationBundle":Landroid/os/Bundle;
    :cond_2
    const-string v2, "miui.category"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "miui.substName"

    invoke-static {p0, v1}, Lcom/xiaomi/push/service/TypedShieldHelper;->getShieldTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iput-object v0, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    goto :goto_0
.end method
