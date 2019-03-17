.class Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$PowerChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncStateObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerChangedReceiver"
.end annotation


# instance fields
.field private mIsBatteryLow:Z

.field final synthetic this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;)V
    .locals 1

    .prologue
    .line 226
    iput-object p1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$PowerChangedReceiver;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 227
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getPowerCanSync()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$PowerChangedReceiver;->mIsBatteryLow:Z

    .line 228
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 232
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 234
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    invoke-static {p1, p2}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->isPowerCanSync(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 235
    .local v1, "isBatteryLow":Z
    :goto_0
    iget-boolean v4, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$PowerChangedReceiver;->mIsBatteryLow:Z

    if-eq v1, v4, :cond_0

    .line 236
    iput-boolean v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$PowerChangedReceiver;->mIsBatteryLow:Z

    .line 237
    if-nez v1, :cond_3

    :goto_1
    invoke-static {v2}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setPowerCanSync(Z)V

    .line 238
    const-string v2, "SyncStateObserver"

    const-string v3, "battery status changed: %s"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->setIsBatteryLow(Z)V

    .line 242
    .end local v1    # "isBatteryLow":Z
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 234
    goto :goto_0

    .restart local v1    # "isBatteryLow":Z
    :cond_3
    move v2, v3

    .line 237
    goto :goto_1
.end method
