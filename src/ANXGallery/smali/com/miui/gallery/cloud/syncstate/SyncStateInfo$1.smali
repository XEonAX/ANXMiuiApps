.class Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$1;
.super Ljava/lang/Object;
.source "SyncStateInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->notifyObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$1;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 169
    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$1;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-static {v1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->access$000(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$1;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-static {v1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->access$000(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;

    .line 171
    .local v0, "observer":Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;
    iget-object v3, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$1;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-interface {v0, v3}, Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;->onSyncStateChanged(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V

    goto :goto_0

    .line 173
    .end local v0    # "observer":Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    return-void
.end method
