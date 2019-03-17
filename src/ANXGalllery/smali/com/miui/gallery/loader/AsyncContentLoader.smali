.class public Lcom/miui/gallery/loader/AsyncContentLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AsyncContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Closeable;",
        ">",
        "Landroid/content/AsyncTaskLoader",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mCursorConvertCallback:Lcom/miui/gallery/loader/CursorConvertCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/loader/CursorConvertCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mData:Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mIsObserversRegistered:Z

.field private final mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<TT;>.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mProjection:[Ljava/lang/String;

.field private mSelection:Ljava/lang/String;

.field private mSelectionArgs:[Ljava/lang/String;

.field private mSortOrder:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/loader/CursorConvertCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/gallery/loader/CursorConvertCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<TT;>;"
    .local p2, "converter":Lcom/miui/gallery/loader/CursorConvertCallback;, "Lcom/miui/gallery/loader/CursorConvertCallback<TT;>;"
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 35
    iput-object p2, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mCursorConvertCallback:Lcom/miui/gallery/loader/CursorConvertCallback;

    .line 36
    return-void
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<TT;>;"
    const/4 v3, 0x1

    .line 209
    iget-boolean v1, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mIsObserversRegistered:Z

    if-eqz v1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    iput-boolean v3, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mIsObserversRegistered:Z

    .line 213
    invoke-virtual {p0}, Lcom/miui/gallery/loader/AsyncContentLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 214
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private unregisterContentObservers()V
    .locals 2

    .prologue
    .line 218
    .local p0, "this":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<TT;>;"
    iget-boolean v0, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mIsObserversRegistered:Z

    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mIsObserversRegistered:Z

    .line 222
    invoke-virtual {p0}, Lcom/miui/gallery/loader/AsyncContentLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<TT;>;"
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 84
    :cond_0
    monitor-exit p0

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deliverResult(Ljava/io/Closeable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<TT;>;"
    .local p1, "data":Ljava/io/Closeable;, "TT;"
    invoke-virtual {p0}, Lcom/miui/gallery/loader/AsyncContentLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mData:Ljava/io/Closeable;

    .line 98
    .local v0, "oldData":Ljava/io/Closeable;, "TT;"
    iput-object p1, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mData:Ljava/io/Closeable;

    .line 100
    invoke-virtual {p0}, Lcom/miui/gallery/loader/AsyncContentLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 104
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 105
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    .local p0, "this":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<TT;>;"
    check-cast p1, Ljava/io/Closeable;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/loader/AsyncContentLoader;->deliverResult(Ljava/io/Closeable;)V

    return-void
.end method

.method public final loadInBackground()Ljava/io/Closeable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<TT;>;"
    monitor-enter p0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/loader/AsyncContentLoader;->isLoadInBackgroundCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    throw v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 56
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 57
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    const/4 v7, 0x0

    .line 60
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 61
    .local v8, "data":Ljava/io/Closeable;, "TT;"
    :try_start_2
    invoke-virtual {p0}, Lcom/miui/gallery/loader/AsyncContentLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mSortOrder:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 64
    if-eqz v7, :cond_1

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mCursorConvertCallback:Lcom/miui/gallery/loader/CursorConvertCallback;

    invoke-interface {v0, v7}, Lcom/miui/gallery/loader/CursorConvertCallback;->convert(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "data":Ljava/io/Closeable;, "TT;"
    check-cast v8, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 69
    .restart local v8    # "data":Ljava/io/Closeable;, "TT;"
    :cond_1
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 70
    monitor-enter p0

    .line 71
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 72
    monitor-exit p0

    return-object v8

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 69
    .end local v8    # "data":Ljava/io/Closeable;, "TT;"
    :catchall_2
    move-exception v0

    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 70
    monitor-enter p0

    .line 71
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 72
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    .local p0, "this":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/loader/AsyncContentLoader;->loadInBackground()Ljava/io/Closeable;

    move-result-object v0

    return-object v0
.end method

.method protected onAbandon()V
    .locals 0

    .prologue
    .line 159
    .local p0, "this":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<TT;>;"
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onAbandon()V

    .line 160
    invoke-direct {p0}, Lcom/miui/gallery/loader/AsyncContentLoader;->unregisterContentObservers()V

    .line 161
    return-void
.end method

.method public onCanceled(Ljava/io/Closeable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<TT;>;"
    .local p1, "data":Ljava/io/Closeable;, "TT;"
    if-eqz p1, :cond_0

    .line 139
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 141
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    .local p0, "this":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<TT;>;"
    check-cast p1, Ljava/io/Closeable;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/loader/AsyncContentLoader;->onCanceled(Ljava/io/Closeable;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<TT;>;"
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 148
    invoke-virtual {p0}, Lcom/miui/gallery/loader/AsyncContentLoader;->onStopLoading()V

    .line 149
    invoke-direct {p0}, Lcom/miui/gallery/loader/AsyncContentLoader;->unregisterContentObservers()V

    .line 151
    iget-object v0, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mData:Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mData:Ljava/io/Closeable;

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mData:Ljava/io/Closeable;

    .line 155
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mData:Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mData:Ljava/io/Closeable;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/loader/AsyncContentLoader;->deliverResult(Ljava/io/Closeable;)V

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/loader/AsyncContentLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mData:Ljava/io/Closeable;

    if-nez v0, :cond_2

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/loader/AsyncContentLoader;->forceLoad()V

    .line 124
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/loader/AsyncContentLoader;->registerContentObservers()V

    .line 125
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 133
    .local p0, "this":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/loader/AsyncContentLoader;->cancelLoad()Z

    .line 134
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 178
    .local p0, "this":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<TT;>;"
    iput-object p1, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mProjection:[Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 187
    .local p0, "this":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<TT;>;"
    iput-object p1, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mSelection:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 205
    .local p0, "this":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<TT;>;"
    iput-object p1, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mSortOrder:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 169
    .local p0, "this":Lcom/miui/gallery/loader/AsyncContentLoader;, "Lcom/miui/gallery/loader/AsyncContentLoader<TT;>;"
    iput-object p1, p0, Lcom/miui/gallery/loader/AsyncContentLoader;->mUri:Landroid/net/Uri;

    .line 170
    return-void
.end method
