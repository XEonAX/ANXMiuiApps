.class public Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;
.super Landroid/os/AsyncTask;
.source "UnzipFontTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallBack:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;

.field private mResource:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;)V
    .locals 0
    .param p1, "data"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    .param p2, "onCompletedListener"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;->mResource:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 14
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;->mCallBack:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;

    .line 15
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 23
    :goto_0
    return-object v1

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;->mResource:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "zipPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/movie/utils/UnzipUtils;->unZipFile(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;->mCallBack:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;->mCallBack:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;->onCompleted(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;->cancel(Z)Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;->mCallBack:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;

    .line 39
    return-void
.end method
