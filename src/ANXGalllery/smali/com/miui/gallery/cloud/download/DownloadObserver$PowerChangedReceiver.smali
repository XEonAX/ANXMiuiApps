.class Lcom/miui/gallery/cloud/download/DownloadObserver$PowerChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/download/DownloadObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerChangedReceiver"
.end annotation


# instance fields
.field private mIsBatteryLow:Z

.field final synthetic this$0:Lcom/miui/gallery/cloud/download/DownloadObserver;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/cloud/download/DownloadObserver;)V
    .locals 1

    .prologue
    .line 151
    iput-object p1, p0, Lcom/miui/gallery/cloud/download/DownloadObserver$PowerChangedReceiver;->this$0:Lcom/miui/gallery/cloud/download/DownloadObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 152
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getPowerCanSync()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/cloud/download/DownloadObserver$PowerChangedReceiver;->mIsBatteryLow:Z

    .line 153
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 159
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getIsPlugged()Z

    move-result v2

    .line 160
    .local v2, "isCharging":Z
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    invoke-static {p1, p2}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->isPowerCanSync(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_1

    move v1, v3

    .line 161
    .local v1, "isBatteryLow":Z
    :goto_0
    iget-boolean v5, p0, Lcom/miui/gallery/cloud/download/DownloadObserver$PowerChangedReceiver;->mIsBatteryLow:Z

    if-eq v1, v5, :cond_3

    .line 162
    iput-boolean v1, p0, Lcom/miui/gallery/cloud/download/DownloadObserver$PowerChangedReceiver;->mIsBatteryLow:Z

    .line 163
    if-nez v1, :cond_2

    :goto_1
    invoke-static {v3}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setPowerCanSync(Z)V

    .line 164
    invoke-static {}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getInstance()Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->onConditionChanged(Landroid/content/Context;)V

    .line 165
    const-string v3, "DownloadObserver"

    const-string v4, "battery status changed: %s"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    .end local v1    # "isBatteryLow":Z
    .end local v2    # "isCharging":Z
    :cond_0
    :goto_2
    return-void

    .restart local v2    # "isCharging":Z
    :cond_1
    move v1, v4

    .line 160
    goto :goto_0

    .restart local v1    # "isBatteryLow":Z
    :cond_2
    move v3, v4

    .line 163
    goto :goto_1

    .line 166
    :cond_3
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getIsPlugged()Z

    move-result v5

    if-eq v2, v5, :cond_0

    .line 167
    invoke-static {}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getInstance()Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->onConditionChanged(Landroid/content/Context;)V

    .line 168
    const-string v5, "DownloadObserver"

    const-string v6, "charging state changed: %s"

    if-nez v2, :cond_4

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3
.end method
