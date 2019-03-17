.class Lcom/miui/gallery/video/editor/util/VideoEditorHelper$3;
.super Ljava/lang/Object;
.source "VideoEditorHelper.java"

# interfaces
.implements Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->onBackPressed()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$3;->this$0:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/app/DialogFragment;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .prologue
    .line 272
    return-void
.end method

.method public onConfirm(Landroid/app/DialogFragment;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .prologue
    .line 262
    const-string/jumbo v0, "video_editor"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$3;->this$0:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->access$400(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$3;->this$0:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->access$500(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->exit()V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$3;->this$0:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->access$600(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)V

    goto :goto_0
.end method
