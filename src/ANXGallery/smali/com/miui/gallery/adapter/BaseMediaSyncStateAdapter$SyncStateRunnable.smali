.class Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable;
.super Ljava/lang/Object;
.source "BaseMediaSyncStateAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncStateRunnable"
.end annotation


# instance fields
.field private final mAdapterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable;->mAdapterRef:Ljava/lang/ref/WeakReference;

    .line 61
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable;->mAdapterRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private notifyStateChanged()V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable$1;-><init>(Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 65
    iget-object v3, p0, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable;->mAdapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;

    .line 66
    .local v0, "adapter":Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;
    if-eqz v0, :cond_1

    .line 67
    iget-object v3, v0, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 68
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->access$002(Z)Z

    .line 69
    const/4 v2, 0x0

    .line 70
    .local v2, "syncable":Z
    invoke-static {}, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    invoke-static {v1}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v2

    .line 73
    :cond_0
    invoke-static {}, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->access$100()Z

    move-result v3

    if-eq v3, v2, :cond_1

    .line 74
    invoke-static {v2}, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->access$102(Z)Z

    .line 75
    invoke-direct {p0}, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable;->notifyStateChanged()V

    .line 78
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "syncable":Z
    :cond_1
    return-void
.end method
