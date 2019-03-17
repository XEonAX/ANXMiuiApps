.class Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$2;
.super Ljava/lang/Object;
.source "VideoEditorRangeSeekBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->hideProgressBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$2;->this$0:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 700
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$2;->this$0:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->access$202(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;Z)Z

    .line 695
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$2;->this$0:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->access$302(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 696
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 704
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 691
    return-void
.end method
