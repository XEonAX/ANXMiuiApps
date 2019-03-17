.class Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2;
.super Ljava/lang/Object;
.source "FontDownloadManager.java"

# interfaces
.implements Lcom/miui/gallery/net/download/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;->downloadResource(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;

.field final synthetic val$data:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

.field final synthetic val$downloadListener:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;

    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2;->val$data:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    iput-object p3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2;->val$downloadListener:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    .line 73
    const-string v0, "FontDownloadManager"

    const-string v1, "download %s, resultCode: %d"

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2;->val$data:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    if-nez p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2;->val$data:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2;->val$downloadListener:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;)V

    .line 86
    :goto_0
    return-void

    .line 77
    :cond_0
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2;)V

    invoke-static {v0}, Lcom/miui/gallery/threadpool/ThreadManager;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onProgressUpdate(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 68
    const-string v0, "FontDownloadManager"

    const-string v1, "download progress :%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "FontDownloadManager"

    const-string v1, "font start download."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
