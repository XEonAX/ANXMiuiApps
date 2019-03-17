.class public Lcom/miui/gallery/loader/DiscoveryMessageLoader;
.super Landroid/content/AsyncTaskLoader;
.source "DiscoveryMessageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/miui/gallery/model/DiscoveryMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContentObserver:Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/DiscoveryMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageTypeMask:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageTypeMask"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;

    invoke-direct {v0, p0, p2}, Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;-><init>(Lcom/miui/gallery/loader/DiscoveryMessageLoader;I)V

    iput-object v0, p0, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->mContentObserver:Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;

    .line 30
    iput p2, p0, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->mMessageTypeMask:I

    .line 31
    invoke-static {}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->getInstance()Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->mContentObserver:Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->registerContentObserver(Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;)V

    .line 32
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->deliverResult(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final deliverResult(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/DiscoveryMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/DiscoveryMessage;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->mDataSet:Ljava/util/ArrayList;

    .line 49
    .local v0, "oldSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/DiscoveryMessage;>;"
    iput-object p1, p0, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->mDataSet:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p0}, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 55
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->loadInBackground()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/DiscoveryMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->getInstance()Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->mMessageTypeMask:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->loadMessage(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected onAbandon()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onAbandon()V

    .line 91
    invoke-static {}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->getInstance()Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->mContentObserver:Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->unregisterContentObserver(Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;)V

    .line 92
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->onCanceled(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final onCanceled(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/DiscoveryMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/DiscoveryMessage;>;"
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 65
    :cond_0
    return-void
.end method

.method protected final onReset()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 80
    invoke-virtual {p0}, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->onStopLoading()V

    .line 81
    invoke-static {}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->getInstance()Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->mContentObserver:Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->unregisterContentObserver(Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;)V

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->mDataSet:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->mDataSet:Ljava/util/ArrayList;

    .line 86
    :cond_0
    return-void
.end method

.method protected final onStartLoading()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->mDataSet:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->deliverResult(Ljava/util/ArrayList;)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->mDataSet:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/loader/DiscoveryMessageLoader;->forceLoad()V

    .line 75
    :cond_2
    return-void
.end method
