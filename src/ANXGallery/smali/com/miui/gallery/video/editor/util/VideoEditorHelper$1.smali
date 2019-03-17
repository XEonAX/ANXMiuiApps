.class Lcom/miui/gallery/video/editor/util/VideoEditorHelper$1;
.super Ljava/lang/Object;
.source "VideoEditorHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->initListener()V
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
    .line 100
    iput-object p1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$1;->this$0:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$1;->this$0:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->access$000(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->getAudioVoiceSelected()Z

    move-result v0

    .line 104
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$1;->this$0:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->access$000(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->setAudioVoiceSelected(Z)V

    .line 105
    iget-object v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$1;->this$0:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->access$100(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)Lcom/miui/gallery/video/editor/ui/MenuFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->updateVoiceState(Z)V

    .line 106
    return-void

    .line 104
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
