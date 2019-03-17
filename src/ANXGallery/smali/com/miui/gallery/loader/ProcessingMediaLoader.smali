.class public Lcom/miui/gallery/loader/ProcessingMediaLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ProcessingMediaLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/miui/gallery/provider/ProcessingMedia;",
        ">;>;"
    }
.end annotation


# static fields
.field private static sHasSpecialTypesProvider:Z


# instance fields
.field private mDataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/ProcessingMedia;",
            ">;"
        }
    .end annotation
.end field

.field private final mForceLoadContentObserver:Landroid/database/ContentObserver;

.field private mIsObserversRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/gallery/loader/ProcessingMediaLoader;->sHasSpecialTypesProvider:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/miui/gallery/loader/ProcessingMediaLoader;->mForceLoadContentObserver:Landroid/database/ContentObserver;

    .line 26
    return-void
.end method

.method private registerContentObservers()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 95
    iget-boolean v2, p0, Lcom/miui/gallery/loader/ProcessingMediaLoader;->mIsObserversRegistered:Z

    if-eqz v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iput-boolean v3, p0, Lcom/miui/gallery/loader/ProcessingMediaLoader;->mIsObserversRegistered:Z

    .line 99
    invoke-virtual {p0}, Lcom/miui/gallery/loader/ProcessingMediaLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 102
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-boolean v2, Lcom/miui/gallery/loader/ProcessingMediaLoader;->sHasSpecialTypesProvider:Z

    if-eqz v2, :cond_0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/loader/ProcessingMediaLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/photosapi/PhotosOemApi;->getQueryProcessingUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/gallery/loader/ProcessingMediaLoader;->mForceLoadContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/miui/gallery/loader/ProcessingMediaLoader;->sHasSpecialTypesProvider:Z

    goto :goto_0
.end method

.method private unregisterContentObservers()V
    .locals 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/miui/gallery/loader/ProcessingMediaLoader;->mIsObserversRegistered:Z

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/loader/ProcessingMediaLoader;->mIsObserversRegistered:Z

    .line 117
    invoke-virtual {p0}, Lcom/miui/gallery/loader/ProcessingMediaLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/loader/ProcessingMediaLoader;->mForceLoadContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/loader/ProcessingMediaLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public final deliverResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/ProcessingMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/ProcessingMedia;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/loader/ProcessingMediaLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/loader/ProcessingMediaLoader;->mDataSet:Ljava/util/List;

    .line 43
    .local v0, "oldSet":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/ProcessingMedia;>;"
    iput-object p1, p0, Lcom/miui/gallery/loader/ProcessingMediaLoader;->mDataSet:Ljava/util/List;

    .line 45
    invoke-virtual {p0}, Lcom/miui/gallery/loader/ProcessingMediaLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 49
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 50
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/miui/gallery/loader/ProcessingMediaLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/ProcessingMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Lcom/miui/gallery/provider/ProcessingMediaManager;->queryProcessingMedias()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onAbandon()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onAbandon()V

    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/loader/ProcessingMediaLoader;->unregisterContentObservers()V

    .line 92
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/loader/ProcessingMediaLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public final onCanceled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/ProcessingMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/ProcessingMedia;>;"
    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 86
    :cond_0
    return-void
.end method

.method protected final onReset()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 73
    invoke-virtual {p0}, Lcom/miui/gallery/loader/ProcessingMediaLoader;->onStopLoading()V

    .line 74
    invoke-direct {p0}, Lcom/miui/gallery/loader/ProcessingMediaLoader;->unregisterContentObservers()V

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/loader/ProcessingMediaLoader;->mDataSet:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/loader/ProcessingMediaLoader;->mDataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/loader/ProcessingMediaLoader;->mDataSet:Ljava/util/List;

    .line 79
    :cond_0
    return-void
.end method

.method protected final onStartLoading()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/loader/ProcessingMediaLoader;->mDataSet:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/loader/ProcessingMediaLoader;->mDataSet:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/loader/ProcessingMediaLoader;->deliverResult(Ljava/util/List;)V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/loader/ProcessingMediaLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/loader/ProcessingMediaLoader;->mDataSet:Ljava/util/List;

    if-nez v0, :cond_2

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/loader/ProcessingMediaLoader;->forceLoad()V

    .line 62
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/loader/ProcessingMediaLoader;->registerContentObservers()V

    .line 63
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/miui/gallery/loader/ProcessingMediaLoader;->cancelLoad()Z

    .line 68
    return-void
.end method
