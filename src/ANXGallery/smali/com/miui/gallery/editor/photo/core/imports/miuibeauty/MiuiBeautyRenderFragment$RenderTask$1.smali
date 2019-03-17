.class Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$RenderTask$1;
.super Ljava/lang/Object;
.source "MiuiBeautyRenderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$RenderTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$RenderTask;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$RenderTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$RenderTask;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$RenderTask$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$RenderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 284
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$RenderTask$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$RenderTask;

    iget-boolean v1, v1, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$RenderTask;->mTaskDone:Z

    if-nez v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$RenderTask$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$RenderTask;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$RenderTask;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$RenderTask;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    .line 286
    .local v0, "fragment":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;
    if-eqz v0, :cond_0

    .line 287
    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->access$1200(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 290
    .end local v0    # "fragment":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;
    :cond_0
    return-void
.end method
