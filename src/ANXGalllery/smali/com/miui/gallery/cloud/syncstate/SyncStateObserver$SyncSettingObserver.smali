.class Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$SyncSettingObserver;
.super Ljava/lang/Object;
.source "SyncStateObserver.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$SyncSettingObserver;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;
    .param p2, "x1"    # Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$1;

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$SyncSettingObserver;-><init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 306
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 307
    const-string v0, "SyncStateObserver"

    const-string v1, "SyncSettingObserver"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->updateSyncStatus()V

    .line 310
    :cond_0
    return-void
.end method
