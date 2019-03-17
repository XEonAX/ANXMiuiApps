.class public Lcom/xiaomi/channel/commonutils/misc/MobileStatusUtils;
.super Ljava/lang/Object;
.source "MobileStatusUtils.java"


# direct methods
.method public static isCharging(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 33
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const/4 v0, 0x0

    .line 39
    .local v0, "batteryStatus":Landroid/content/Intent;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    :goto_0
    if-nez v0, :cond_1

    .line 47
    :cond_0
    :goto_1
    return v3

    .line 46
    :cond_1
    const-string/jumbo v4, "status"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 47
    .local v2, "status":I
    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 40
    .end local v2    # "status":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static isScreenLocked(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    :try_start_0
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 22
    .local v1, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 26
    .end local v1    # "mKeyguardManager":Landroid/app/KeyguardManager;
    :goto_0
    return v2

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 26
    const/4 v2, 0x0

    goto :goto_0
.end method
