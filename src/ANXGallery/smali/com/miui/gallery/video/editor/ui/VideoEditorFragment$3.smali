.class Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$3;
.super Ljava/lang/Object;
.source "VideoEditorFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 89
    return-void
.end method

.method public onTimeChanged(I)V
    .locals 4
    .param p1, "currenTime"    # I

    .prologue
    const/4 v3, 0x0

    .line 93
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v1, p1}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$302(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;I)I

    .line 94
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$400(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    int-to-float v1, p1

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$400(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/VideoEditor;->getProjectTotalTime()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 96
    .local v0, "percent":F
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$600(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->getViewWidth()F

    move-result v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$502(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;I)I

    .line 97
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$600(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$500(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, v3}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->updatePlayProgress(IIII)V

    .line 99
    .end local v0    # "percent":F
    :cond_0
    return-void
.end method
