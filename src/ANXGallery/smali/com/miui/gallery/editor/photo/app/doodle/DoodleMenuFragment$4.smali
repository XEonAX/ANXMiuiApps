.class Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$4;
.super Ljava/lang/Object;
.source "DoodleMenuFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$4;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

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
    .line 163
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$4;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->access$100(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->getColor()I

    move-result v0

    .line 164
    .local v0, "color":I
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$4;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->access$100(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->setThumbColor(I)V

    .line 165
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$4;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->access$800(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractDoodleFragment;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractDoodleFragment;->setColor(I)V

    .line 167
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$4;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->access$900(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;

    .line 168
    .local v1, "doodleGesFragment":Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;
    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;->setPaintColor(I)V

    .line 169
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 173
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 177
    return-void
.end method
