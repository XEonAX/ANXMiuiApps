.class Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;
.super Ljava/lang/Object;
.source "VideoEditorFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/widget/DisplayWrapper$IProgress;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field tempCurrentTime:I

.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoProgressChanged()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    iget v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->tempCurrentTime:I

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$302(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;I)I

    .line 150
    return-void
.end method

.method public onVideoProgressChanging(IF)V
    .locals 6
    .param p1, "layout"    # I
    .param p2, "percent"    # F

    .prologue
    const/4 v3, 0x0

    .line 122
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$300(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->tempCurrentTime:I

    .line 123
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$400(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$400(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/VideoEditor;->getProjectTotalTime()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v0, v2

    .line 125
    .local v0, "dTime":I
    sget v2, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->LEFT:I

    if-ne p1, v2, :cond_5

    .line 126
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$300(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 145
    .end local v0    # "dTime":I
    :cond_0
    :goto_0
    return-void

    .line 129
    .restart local v0    # "dTime":I
    :cond_1
    iget v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->tempCurrentTime:I

    if-le v2, v0, :cond_4

    iget v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->tempCurrentTime:I

    sub-int/2addr v2, v0

    :goto_1
    iput v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->tempCurrentTime:I

    .line 139
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$400(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v2

    iget v4, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->tempCurrentTime:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/miui/gallery/video/editor/VideoEditor;->seek(ILcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    .line 140
    iget v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->tempCurrentTime:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$400(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/video/editor/VideoEditor;->getProjectTotalTime()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v2, v4

    .line 141
    .local v1, "percent2":F
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$600(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->getViewWidth()F

    move-result v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-static {v2, v4}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$502(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;I)I

    .line 142
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$600(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$500(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)I

    move-result v4

    invoke-virtual {v2, v3, v3, v4, v3}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->updatePlayProgress(IIII)V

    .line 143
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$600(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    move-result-object v2

    iget v4, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->tempCurrentTime:I

    if-lez v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v2, v3}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->showPlayProgress(Z)V

    goto :goto_0

    .end local v1    # "percent2":F
    :cond_4
    move v2, v3

    .line 129
    goto :goto_1

    .line 131
    :cond_5
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$300(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)I

    move-result v2

    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$400(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/video/editor/VideoEditor;->getProjectTotalTime()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 134
    iget v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->tempCurrentTime:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->tempCurrentTime:I

    .line 135
    iget v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->tempCurrentTime:I

    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$400(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/video/editor/VideoEditor;->getProjectTotalTime()I

    move-result v4

    if-le v2, v4, :cond_2

    .line 136
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$400(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/VideoEditor;->getProjectTotalTime()I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;->tempCurrentTime:I

    goto :goto_2
.end method
