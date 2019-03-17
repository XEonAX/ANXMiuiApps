.class Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$1;
.super Ljava/lang/Object;
.source "RemoverFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

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
    .line 87
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    invoke-static {v1, p2}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->access$000(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;I)I

    move-result v0

    .line 88
    .local v0, "value":I
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->access$100(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->setPaintSize(I)V

    .line 89
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->access$200(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;->setPaintSize(F)V

    .line 90
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 94
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->access$000(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;I)I

    move-result v0

    .line 95
    .local v0, "value":I
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->access$100(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->setPaintSize(I)V

    .line 96
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->access$100(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->access$300(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    move-result-object v2

    const/16 v3, 0x11

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0273

    .line 97
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    .line 96
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 98
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->access$100(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->dismiss()V

    .line 103
    return-void
.end method
