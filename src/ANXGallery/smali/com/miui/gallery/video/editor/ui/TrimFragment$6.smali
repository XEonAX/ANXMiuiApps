.class Lcom/miui/gallery/video/editor/ui/TrimFragment$6;
.super Ljava/lang/Object;
.source "TrimFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/TrimFragment;->doCancel()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/TrimFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/ui/TrimFragment;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->access$202(Lcom/miui/gallery/video/editor/ui/TrimFragment;Z)Z

    .line 217
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->play()V

    .line 218
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->access$100(Lcom/miui/gallery/video/editor/ui/TrimFragment;)Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->access$300(Lcom/miui/gallery/video/editor/ui/TrimFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->setStartRange(I)V

    .line 219
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->access$100(Lcom/miui/gallery/video/editor/ui/TrimFragment;)Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->access$400(Lcom/miui/gallery/video/editor/ui/TrimFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->setEndRange(I)V

    .line 220
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->access$502(Lcom/miui/gallery/video/editor/ui/TrimFragment;Z)Z

    .line 221
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->recordEventWithCancel()V

    .line 222
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->onExitMode()V

    goto :goto_0
.end method
