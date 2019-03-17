.class public Lcom/miui/gallery/cloud/control/BatteryMonitor;
.super Ljava/lang/Object;
.source "BatteryMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/control/BatteryMonitor$Holder;
    }
.end annotation


# instance fields
.field private mCount:I

.field private mPowerIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/miui/gallery/cloud/control/BatteryMonitor$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/control/BatteryMonitor$1;-><init>(Lcom/miui/gallery/cloud/control/BatteryMonitor;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/control/BatteryMonitor;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor$Holder;->access$000()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v0

    return-object v0
.end method

.method public static isPowerCanSync(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 28
    const-string/jumbo v7, "status"

    const/4 v8, -0x1

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 29
    .local v4, "status":I
    const/4 v7, 0x2

    if-eq v4, v7, :cond_0

    const/4 v7, 0x5

    if-ne v4, v7, :cond_3

    :cond_0
    move v0, v6

    .line 31
    .local v0, "isCharging":Z
    :goto_0
    const-string v7, "BatteryMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_BATTERY_CHANGED, plugged:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    if-eqz p0, :cond_1

    .line 33
    if-eqz v0, :cond_4

    .line 34
    invoke-static {v6}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setIsPlugged(Z)V

    .line 35
    const-string v7, "BatteryMonitor"

    const-string v8, "power is connected"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 42
    const-string v7, "level"

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 43
    .local v1, "level":I
    const-string v7, "scale"

    const/16 v8, 0x64

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 44
    .local v3, "scale":I
    mul-int/lit8 v7, v1, 0x64

    div-int v2, v7, v3

    .line 45
    .local v2, "powerRemaining":I
    const-string v7, "BatteryMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_BATTERY_CHANGED, power remaining:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/16 v7, 0x14

    if-le v2, v7, :cond_5

    .line 48
    .end local v1    # "level":I
    .end local v2    # "powerRemaining":I
    .end local v3    # "scale":I
    :cond_2
    :goto_2
    return v6

    .end local v0    # "isCharging":Z
    :cond_3
    move v0, v5

    .line 29
    goto :goto_0

    .line 37
    .restart local v0    # "isCharging":Z
    :cond_4
    invoke-static {v5}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setIsPlugged(Z)V

    .line 38
    const-string v7, "BatteryMonitor"

    const-string v8, "power disconnected"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .restart local v1    # "level":I
    .restart local v2    # "powerRemaining":I
    .restart local v3    # "scale":I
    :cond_5
    move v6, v5

    .line 46
    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized end()V
    .locals 2

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/gallery/cloud/control/BatteryMonitor;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/gallery/cloud/control/BatteryMonitor;->mCount:I

    .line 76
    iget v0, p0, Lcom/miui/gallery/cloud/control/BatteryMonitor;->mCount:I

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloud/control/BatteryMonitor;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ReceiverUtils;->safeUnregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 4

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/gallery/cloud/control/BatteryMonitor;->mCount:I

    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloud/control/BatteryMonitor;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    :cond_0
    iget v0, p0, Lcom/miui/gallery/cloud/control/BatteryMonitor;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/cloud/control/BatteryMonitor;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
