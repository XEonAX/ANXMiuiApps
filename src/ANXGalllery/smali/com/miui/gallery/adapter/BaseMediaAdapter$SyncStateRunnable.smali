.class Lcom/miui/gallery/adapter/BaseMediaAdapter$SyncStateRunnable;
.super Ljava/lang/Object;
.source "BaseMediaAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/BaseMediaAdapter;
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
            "Lcom/miui/gallery/adapter/BaseMediaAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gallery/adapter/BaseMediaAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/miui/gallery/adapter/BaseMediaAdapter;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$SyncStateRunnable;->mAdapterRef:Ljava/lang/ref/WeakReference;

    .line 119
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/adapter/BaseMediaAdapter$SyncStateRunnable;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BaseMediaAdapter$SyncStateRunnable;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$SyncStateRunnable;->mAdapterRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private notifyStateChanged()V
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/adapter/BaseMediaAdapter$SyncStateRunnable$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/adapter/BaseMediaAdapter$SyncStateRunnable$1;-><init>(Lcom/miui/gallery/adapter/BaseMediaAdapter$SyncStateRunnable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 148
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 123
    iget-object v3, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter$SyncStateRunnable;->mAdapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/adapter/BaseMediaAdapter;

    .line 124
    .local v0, "adapter":Lcom/miui/gallery/adapter/BaseMediaAdapter;
    if-eqz v0, :cond_1

    .line 125
    iget-object v3, v0, Lcom/miui/gallery/adapter/BaseMediaAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 126
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Lcom/miui/gallery/adapter/BaseMediaAdapter;->access$002(Z)Z

    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "syncable":Z
    invoke-static {}, Lcom/miui/gallery/adapter/BaseMediaAdapter;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    invoke-static {v1}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v2

    .line 131
    :cond_0
    invoke-static {}, Lcom/miui/gallery/adapter/BaseMediaAdapter;->access$100()Z

    move-result v3

    if-eq v3, v2, :cond_1

    .line 132
    invoke-static {v2}, Lcom/miui/gallery/adapter/BaseMediaAdapter;->access$102(Z)Z

    .line 133
    invoke-direct {p0}, Lcom/miui/gallery/adapter/BaseMediaAdapter$SyncStateRunnable;->notifyStateChanged()V

    .line 136
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "syncable":Z
    :cond_1
    return-void
.end method
