.class public abstract Lcom/miui/gallery/loader/CursorSetLoader;
.super Lcom/miui/gallery/loader/BaseLoader;
.source "CursorSetLoader.java"


# instance fields
.field private mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Lcom/miui/gallery/model/BaseDataSet;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/miui/gallery/loader/BaseLoader;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/miui/gallery/loader/CursorSetLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 17
    return-void
.end method


# virtual methods
.method protected abstract getOrder()Ljava/lang/String;
.end method

.method protected abstract getProjection()[Ljava/lang/String;
.end method

.method protected abstract getSelection()Ljava/lang/String;
.end method

.method protected abstract getSelectionArgs()[Ljava/lang/String;
.end method

.method protected abstract getUri()Landroid/net/Uri;
.end method

.method public loadInBackground()Lcom/miui/gallery/model/CursorDataSet;
    .locals 9

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/miui/gallery/loader/CursorSetLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/miui/gallery/loader/CursorSetLoader;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/loader/CursorSetLoader;->getProjection()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/gallery/loader/CursorSetLoader;->getSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/gallery/loader/CursorSetLoader;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/gallery/loader/CursorSetLoader;->getOrder()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 24
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 27
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_0
    invoke-virtual {p0, v7}, Lcom/miui/gallery/loader/CursorSetLoader;->wrapDataSet(Landroid/database/Cursor;)Lcom/miui/gallery/model/CursorDataSet;

    move-result-object v0

    return-object v0

    .line 30
    :catch_0
    move-exception v8

    .line 31
    .local v8, "ex":Ljava/lang/RuntimeException;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 32
    throw v8
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/miui/gallery/loader/CursorSetLoader;->loadInBackground()Lcom/miui/gallery/model/CursorDataSet;

    move-result-object v0

    return-object v0
.end method

.method protected abstract wrapDataSet(Landroid/database/Cursor;)Lcom/miui/gallery/model/CursorDataSet;
.end method
