.class Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncStateObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkReceiver"
.end annotation


# instance fields
.field private mIsNetConnected:Z

.field private mIsWifiConnected:Z

.field final synthetic this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;)V
    .locals 1

    .prologue
    .line 196
    iput-object p1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$NetworkReceiver;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 197
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$NetworkReceiver;->mIsNetConnected:Z

    .line 198
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$NetworkReceiver;->mIsWifiConnected:Z

    .line 199
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 203
    const-string v5, "noConnectivity"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    move v2, v3

    .line 204
    .local v2, "netConnected":Z
    :goto_0
    const/4 v1, 0x0

    .line 205
    .local v1, "netChanged":Z
    iget-boolean v5, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$NetworkReceiver;->mIsNetConnected:Z

    if-eq v5, v2, :cond_0

    .line 206
    const-string v5, "SyncStateObserver"

    const-string v6, "NetworkReceiver mLastConnected: %s, connect: %s"

    iget-boolean v7, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$NetworkReceiver;->mIsNetConnected:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    iput-boolean v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$NetworkReceiver;->mIsNetConnected:Z

    .line 208
    const/4 v1, 0x1

    .line 210
    :cond_0
    iget-boolean v5, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$NetworkReceiver;->mIsNetConnected:Z

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v5

    if-nez v5, :cond_4

    move v0, v3

    .line 211
    .local v0, "isWifiConnected":Z
    :goto_1
    iget-boolean v3, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$NetworkReceiver;->mIsWifiConnected:Z

    if-eq v3, v0, :cond_1

    .line 212
    const-string v3, "SyncStateObserver"

    const-string v4, "NetworkReceiver mLastWifiConnect: %s, wifiConnect: %s"

    iget-boolean v5, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$NetworkReceiver;->mIsWifiConnected:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    iput-boolean v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$NetworkReceiver;->mIsWifiConnected:Z

    .line 214
    const/4 v1, 0x1

    .line 216
    :cond_1
    if-eqz v1, :cond_2

    .line 217
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->updateSyncStatus()V

    .line 219
    :cond_2
    return-void

    .end local v0    # "isWifiConnected":Z
    .end local v1    # "netChanged":Z
    .end local v2    # "netConnected":Z
    :cond_3
    move v2, v4

    .line 203
    goto :goto_0

    .restart local v1    # "netChanged":Z
    .restart local v2    # "netConnected":Z
    :cond_4
    move v0, v4

    .line 210
    goto :goto_1
.end method
