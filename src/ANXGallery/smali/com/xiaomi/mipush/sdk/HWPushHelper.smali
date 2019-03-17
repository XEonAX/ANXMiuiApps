.class public Lcom/xiaomi/mipush/sdk/HWPushHelper;
.super Ljava/lang/Object;
.source "HWPushHelper.java"


# static fields
.field private static isFailed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mipush/sdk/HWPushHelper;->isFailed:Z

    return-void
.end method

.method public static needConnect()Z
    .locals 1

    .prologue
    .line 143
    sget-boolean v0, Lcom/xiaomi/mipush/sdk/HWPushHelper;->isFailed:Z

    return v0
.end method

.method public static registerHuaWeiAssemblePush(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_HUAWEI:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {v1, v2}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->getManager(Lcom/xiaomi/mipush/sdk/AssemblePush;)Lcom/xiaomi/mipush/sdk/AbstractPushManager;

    move-result-object v0

    .line 119
    .local v0, "manager":Lcom/xiaomi/mipush/sdk/AbstractPushManager;
    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0}, Lcom/xiaomi/mipush/sdk/AbstractPushManager;->register()V

    .line 122
    :cond_0
    return-void
.end method

.method public static declared-synchronized setConnectTime(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-class v2, Lcom/xiaomi/mipush/sdk/HWPushHelper;

    monitor-enter v2

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "last_connect_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit v2

    return-void

    .line 27
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized shouldTryConnect(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 33
    const-class v2, Lcom/xiaomi/mipush/sdk/HWPushHelper;

    monitor-enter v2

    :try_start_0
    const-string v3, "mipush_extra"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "last_connect_time"

    const-wide/16 v6, -0x1

    invoke-interface {v0, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x1388

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit v2

    return v1

    .line 33
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
