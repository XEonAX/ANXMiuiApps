.class public Lcom/miui/gallery/movie/utils/UnzipTask;
.super Landroid/os/AsyncTask;
.source "UnzipTask.java"


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
.field private mOnCompletedListener:Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;

.field private mResource:Lcom/miui/gallery/movie/entity/MovieResource;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/movie/entity/MovieResource;Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;)V
    .locals 0
    .param p1, "data"    # Lcom/miui/gallery/movie/entity/MovieResource;
    .param p2, "onCompletedListener"    # Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/miui/gallery/movie/utils/UnzipTask;->mResource:Lcom/miui/gallery/movie/entity/MovieResource;

    .line 15
    iput-object p2, p0, Lcom/miui/gallery/movie/utils/UnzipTask;->mOnCompletedListener:Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;

    .line 16
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 20
    iget-object v1, p0, Lcom/miui/gallery/movie/utils/UnzipTask;->mResource:Lcom/miui/gallery/movie/entity/MovieResource;

    invoke-virtual {v1}, Lcom/miui/gallery/movie/entity/MovieResource;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "zipPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/movie/utils/UnzipUtils;->unZipFile(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/utils/UnzipTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/miui/gallery/movie/utils/UnzipTask;->mOnCompletedListener:Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/miui/gallery/movie/utils/UnzipTask;->mOnCompletedListener:Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;->onCompleted(Z)V

    .line 30
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/utils/UnzipTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
