.class Lcom/miui/gallery/net/download/DownloadTask$CoreTask;
.super Landroid/os/AsyncTask;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/net/download/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoreTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mRequest:Lcom/miui/gallery/net/download/Request;

.field final synthetic this$0:Lcom/miui/gallery/net/download/DownloadTask;


# direct methods
.method constructor <init>(Lcom/miui/gallery/net/download/DownloadTask;Lcom/miui/gallery/net/download/Request;)V
    .locals 0
    .param p2, "request"    # Lcom/miui/gallery/net/download/Request;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->this$0:Lcom/miui/gallery/net/download/DownloadTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 264
    iput-object p2, p0, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->mRequest:Lcom/miui/gallery/net/download/Request;

    .line 265
    return-void
.end method

.method private onComplete(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v1, p0, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->mRequest:Lcom/miui/gallery/net/download/Request;

    if-eqz v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->mRequest:Lcom/miui/gallery/net/download/Request;

    invoke-virtual {v1}, Lcom/miui/gallery/net/download/Request;->getListener()Lcom/miui/gallery/net/download/Request$Listener;

    move-result-object v0

    .line 302
    .local v0, "listener":Lcom/miui/gallery/net/download/Request$Listener;
    if-eqz v0, :cond_0

    .line 303
    invoke-interface {v0, p1}, Lcom/miui/gallery/net/download/Request$Listener;->onComplete(I)V

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->mRequest:Lcom/miui/gallery/net/download/Request;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/net/download/Request;->setListener(Lcom/miui/gallery/net/download/Request$Listener;)V

    .line 307
    iput-object v2, p0, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->mRequest:Lcom/miui/gallery/net/download/Request;

    .line 309
    .end local v0    # "listener":Lcom/miui/gallery/net/download/Request$Listener;
    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->this$0:Lcom/miui/gallery/net/download/DownloadTask;

    iget-object v1, p0, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->mRequest:Lcom/miui/gallery/net/download/Request;

    invoke-static {v0, v1}, Lcom/miui/gallery/net/download/DownloadTask;->access$100(Lcom/miui/gallery/net/download/DownloadTask;Lcom/miui/gallery/net/download/Request;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "downloadResult"    # Ljava/lang/Integer;

    .prologue
    .line 288
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 289
    .local v0, "status":I
    :goto_0
    const-string v1, "DownloadTask"

    const-string v2, "process download cancelled %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    invoke-direct {p0, v0}, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->onComplete(I)V

    .line 291
    return-void

    .line 288
    .end local v0    # "status":I
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 260
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->onCancelled(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "downloadResult"    # Ljava/lang/Integer;

    .prologue
    .line 274
    const-string v0, "DownloadTask"

    const-string v1, "process download finish %d"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->onComplete(I)V

    .line 276
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 260
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 280
    iget-object v1, p0, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->mRequest:Lcom/miui/gallery/net/download/Request;

    invoke-virtual {v1}, Lcom/miui/gallery/net/download/Request;->getListener()Lcom/miui/gallery/net/download/Request$Listener;

    move-result-object v0

    .line 281
    .local v0, "listener":Lcom/miui/gallery/net/download/Request$Listener;
    if-eqz v0, :cond_0

    .line 282
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/net/download/Request$Listener;->onProgressUpdate(I)V

    .line 284
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 260
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method publishProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->mRequest:Lcom/miui/gallery/net/download/Request;

    invoke-virtual {v0}, Lcom/miui/gallery/net/download/Request;->getListener()Lcom/miui/gallery/net/download/Request$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 297
    :cond_0
    return-void
.end method
