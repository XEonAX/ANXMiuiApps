.class Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable$1;
.super Ljava/lang/Object;
.source "BaseMediaSyncStateAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable;->notifyStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable;


# direct methods
.method constructor <init>(Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable$1;->this$0:Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable$1;->this$0:Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable;

    invoke-static {v1}, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable;->access$200(Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;

    .line 85
    .local v0, "adapter":Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->notifyDataSetChanged()V

    .line 88
    :cond_0
    return-void
.end method
