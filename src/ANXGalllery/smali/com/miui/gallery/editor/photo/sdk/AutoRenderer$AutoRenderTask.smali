.class Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$AutoRenderTask;
.super Landroid/os/AsyncTask;
.source "AutoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRenderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$Callback;

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$Callback;)V
    .locals 0
    .param p2, "callback"    # Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$Callback;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$AutoRenderTask;->this$0:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$AutoRenderTask;->mCallback:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$Callback;

    .line 50
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "params"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "filterBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$AutoRenderTask;->this$0:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;->access$000(Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;)Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$AutoRenderTask;->this$0:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;->access$000(Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;)Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterManager;->getAutoBeautifyData()Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;->render(Landroid/graphics/Bitmap;Lcom/miui/gallery/editor/photo/core/Metadata;Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$AutoRenderTask;->doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "info"    # Landroid/graphics/Bitmap;

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$AutoRenderTask;->mCallback:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$Callback;

    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$Callback;->onDone(Landroid/graphics/Bitmap;)V

    .line 68
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 69
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$AutoRenderTask;->mCallback:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$Callback;->onError(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$AutoRenderTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
