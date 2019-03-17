.class Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;
.super Landroid/os/AsyncTask;
.source "DraftManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/DraftManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewRenderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/miui/gallery/editor/photo/core/RenderData;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/miui/gallery/editor/photo/utils/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/utils/Callback",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderData:Lcom/miui/gallery/editor/photo/core/RenderData;

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/editor/photo/app/DraftManager;Lcom/miui/gallery/editor/photo/utils/Callback;Lcom/miui/gallery/editor/photo/core/RenderData;)V
    .locals 0
    .param p3, "renderData"    # Lcom/miui/gallery/editor/photo/core/RenderData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/editor/photo/utils/Callback",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/miui/gallery/editor/photo/core/RenderData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 401
    .local p2, "callback":Lcom/miui/gallery/editor/photo/utils/Callback;, "Lcom/miui/gallery/editor/photo/utils/Callback<Landroid/graphics/Bitmap;Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 402
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->mCallback:Lcom/miui/gallery/editor/photo/utils/Callback;

    .line 403
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->mRenderData:Lcom/miui/gallery/editor/photo/core/RenderData;

    .line 404
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/miui/gallery/editor/photo/core/RenderData;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "params"    # [Lcom/miui/gallery/editor/photo/core/RenderData;

    .prologue
    .line 413
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->mCallback:Lcom/miui/gallery/editor/photo/utils/Callback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/miui/gallery/editor/photo/utils/Callback;->onExecute(Ljava/lang/Object;)V

    .line 414
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/DraftManager;->access$600(Lcom/miui/gallery/editor/photo/app/DraftManager;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/DraftManager;->access$300(Lcom/miui/gallery/editor/photo/app/DraftManager;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 415
    const-string v1, "DraftManager"

    const-string v2, "copy process preview start"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/DraftManager;->access$300(Lcom/miui/gallery/editor/photo/app/DraftManager;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/editor/photo/app/DraftManager;->access$302(Lcom/miui/gallery/editor/photo/app/DraftManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 417
    const-string v1, "DraftManager"

    const-string v2, "copy process preview done"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/DraftManager;->access$700(Lcom/miui/gallery/editor/photo/app/DraftManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->mRenderData:Lcom/miui/gallery/editor/photo/core/RenderData;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/app/DraftManager;->access$800(Lcom/miui/gallery/editor/photo/app/DraftManager;)[Lcom/miui/gallery/editor/photo/core/RenderEngine;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/editor/photo/core/RenderEngine;->findEngine(Landroid/content/Context;Lcom/miui/gallery/editor/photo/core/RenderData;[Lcom/miui/gallery/editor/photo/core/RenderEngine;)Lcom/miui/gallery/editor/photo/core/RenderEngine;

    move-result-object v0

    .line 420
    .local v0, "engine":Lcom/miui/gallery/editor/photo/core/RenderEngine;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/DraftManager;->access$300(Lcom/miui/gallery/editor/photo/app/DraftManager;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->mRenderData:Lcom/miui/gallery/editor/photo/core/RenderData;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/RenderEngine;->render(Landroid/graphics/Bitmap;Lcom/miui/gallery/editor/photo/core/RenderData;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 397
    check-cast p1, [Lcom/miui/gallery/editor/photo/core/RenderData;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->doInBackground([Lcom/miui/gallery/editor/photo/core/RenderData;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->mCallback:Lcom/miui/gallery/editor/photo/utils/Callback;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/utils/Callback;->onCancel()V

    .line 437
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 397
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 425
    if-eqz p1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-static {v0, p1}, Lcom/miui/gallery/editor/photo/app/DraftManager;->access$302(Lcom/miui/gallery/editor/photo/app/DraftManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 427
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->access$900(Lcom/miui/gallery/editor/photo/app/DraftManager;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->mRenderData:Lcom/miui/gallery/editor/photo/core/RenderData;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->mCallback:Lcom/miui/gallery/editor/photo/utils/Callback;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/DraftManager;->access$300(Lcom/miui/gallery/editor/photo/app/DraftManager;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/editor/photo/utils/Callback;->onDone(Ljava/lang/Object;)V

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->mCallback:Lcom/miui/gallery/editor/photo/utils/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/gallery/editor/photo/utils/Callback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 397
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->mCallback:Lcom/miui/gallery/editor/photo/utils/Callback;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/utils/Callback;->onPrepare()V

    .line 409
    return-void
.end method
