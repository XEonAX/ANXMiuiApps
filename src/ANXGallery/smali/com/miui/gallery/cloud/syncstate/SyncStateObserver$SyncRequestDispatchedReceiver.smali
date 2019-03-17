.class Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$SyncRequestDispatchedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncStateObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncRequestDispatchedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$SyncRequestDispatchedReceiver;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;
    .param p2, "x1"    # Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$1;

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$SyncRequestDispatchedReceiver;-><init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 265
    const-string v0, "SyncStateObserver"

    const-string v1, "SyncRequestDispatchedReceiver: %s"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    const-string v0, "com.miui.gallery.SYNC_COMMAND_DISPATCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->onSyncCommandDispatched()V

    .line 269
    :cond_0
    return-void
.end method
