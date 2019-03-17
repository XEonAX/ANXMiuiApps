.class public abstract Lcom/miui/gallery/loader/BaseLoader;
.super Landroid/content/AsyncTaskLoader;
.source "BaseLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/miui/gallery/model/BaseDataSet;",
        ">;"
    }
.end annotation


# instance fields
.field protected mDataSet:Lcom/miui/gallery/model/BaseDataSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method public final deliverResult(Lcom/miui/gallery/model/BaseDataSet;)V
    .locals 2
    .param p1, "data"    # Lcom/miui/gallery/model/BaseDataSet;

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/miui/gallery/loader/BaseLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataSet;->release()V

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/loader/BaseLoader;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    .line 24
    .local v0, "oldSet":Lcom/miui/gallery/model/BaseDataSet;
    iput-object p1, p0, Lcom/miui/gallery/loader/BaseLoader;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    .line 26
    invoke-virtual {p0}, Lcom/miui/gallery/loader/BaseLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 30
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 31
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataSet;->release()V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    check-cast p1, Lcom/miui/gallery/model/BaseDataSet;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/loader/BaseLoader;->deliverResult(Lcom/miui/gallery/model/BaseDataSet;)V

    return-void
.end method

.method public final onCanceled(Lcom/miui/gallery/model/BaseDataSet;)V
    .locals 0
    .param p1, "data"    # Lcom/miui/gallery/model/BaseDataSet;

    .prologue
    .line 37
    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataSet;->release()V

    .line 40
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    check-cast p1, Lcom/miui/gallery/model/BaseDataSet;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/loader/BaseLoader;->onCanceled(Lcom/miui/gallery/model/BaseDataSet;)V

    return-void
.end method

.method protected final onReset()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 60
    invoke-virtual {p0}, Lcom/miui/gallery/loader/BaseLoader;->onStopLoading()V

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/loader/BaseLoader;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/loader/BaseLoader;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataSet;->release()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/loader/BaseLoader;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    .line 65
    :cond_0
    return-void
.end method

.method protected final onStartLoading()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/loader/BaseLoader;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/loader/BaseLoader;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/loader/BaseLoader;->deliverResult(Lcom/miui/gallery/model/BaseDataSet;)V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/loader/BaseLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/loader/BaseLoader;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    if-nez v0, :cond_2

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/loader/BaseLoader;->forceLoad()V

    .line 50
    :cond_2
    return-void
.end method

.method protected final onStopLoading()V
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/miui/gallery/loader/BaseLoader;->cancelLoad()Z

    .line 55
    return-void
.end method
