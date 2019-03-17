.class public Lcom/miui/gallery/util/SyncStatusObserverWrapper;
.super Ljava/lang/Object;
.source "SyncStatusObserverWrapper.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# instance fields
.field private mWorker:Landroid/content/SyncStatusObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/gallery/util/SyncStatusObserverWrapper;->mWorker:Landroid/content/SyncStatusObserver;

    .line 15
    .local v0, "worker":Landroid/content/SyncStatusObserver;
    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0, p1}, Landroid/content/SyncStatusObserver;->onStatusChanged(I)V

    .line 18
    :cond_0
    return-void
.end method

.method public setSyncStatusObserverWorker(Landroid/content/SyncStatusObserver;)V
    .locals 0
    .param p1, "worker"    # Landroid/content/SyncStatusObserver;

    .prologue
    .line 9
    iput-object p1, p0, Lcom/miui/gallery/util/SyncStatusObserverWrapper;->mWorker:Landroid/content/SyncStatusObserver;

    .line 10
    return-void
.end method
