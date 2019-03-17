.class Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment$2;
.super Ljava/lang/Object;
.source "FrameMenuFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 86
    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 87
    .local v0, "scaleProgress":F
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->access$200(Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractFrameFragment;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractFrameFragment;->setScaleProgress(F)V

    .line 88
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 93
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->access$000(Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;)Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;->getSelection()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->putStatus(II)V

    .line 98
    return-void
.end method
