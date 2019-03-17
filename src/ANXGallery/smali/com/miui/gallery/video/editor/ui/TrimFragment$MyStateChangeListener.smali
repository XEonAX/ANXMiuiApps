.class Lcom/miui/gallery/video/editor/ui/TrimFragment$MyStateChangeListener;
.super Ljava/lang/Object;
.source "TrimFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/ui/TrimFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/video/editor/ui/TrimFragment;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$MyStateChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/video/editor/ui/TrimFragment;Lcom/miui/gallery/video/editor/ui/TrimFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/video/editor/ui/TrimFragment;
    .param p2, "x1"    # Lcom/miui/gallery/video/editor/ui/TrimFragment$1;

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/TrimFragment$MyStateChangeListener;-><init>(Lcom/miui/gallery/video/editor/ui/TrimFragment;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 284
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$MyStateChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->access$100(Lcom/miui/gallery/video/editor/ui/TrimFragment;)Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$MyStateChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/VideoEditor;->getProjectTotalTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->setMax(I)V

    .line 286
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$MyStateChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->updatePalyBtnView()V

    .line 288
    :cond_0
    return-void
.end method

.method public onTimeChanged(I)V
    .locals 1
    .param p1, "currenTime"    # I

    .prologue
    .line 292
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$MyStateChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->access$100(Lcom/miui/gallery/video/editor/ui/TrimFragment;)Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->setProgress(I)V

    .line 293
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$MyStateChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->access$100(Lcom/miui/gallery/video/editor/ui/TrimFragment;)Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->showProgressBar()V

    .line 294
    return-void
.end method
