.class Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2$1;
.super Ljava/lang/Object;
.source "FontDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2;->onComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2$1;->this$1:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2$1;->this$1:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2;->val$downloadListener:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2$1;->this$1:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2;->val$downloadListener:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;->onCompleted(Z)V

    .line 83
    :cond_0
    return-void
.end method
