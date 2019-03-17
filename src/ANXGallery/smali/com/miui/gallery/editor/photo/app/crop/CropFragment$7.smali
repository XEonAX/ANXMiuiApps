.class Lcom/miui/gallery/editor/photo/app/crop/CropFragment$7;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/crop/CropFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mStart:Z

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$7;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$7;->mStart:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$7;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$1500(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)I

    move-result v0

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 219
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$7;->mStart:Z

    .line 220
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$7;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0, p2}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$1502(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;I)I

    .line 221
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$7;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$1700(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$7;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v1, p2}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$1600(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->tuning(F)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$7;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$1800(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->prepareTuning()V

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$7;->mStart:Z

    .line 229
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$7;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$1900(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->finishTuning()V

    .line 234
    return-void
.end method
