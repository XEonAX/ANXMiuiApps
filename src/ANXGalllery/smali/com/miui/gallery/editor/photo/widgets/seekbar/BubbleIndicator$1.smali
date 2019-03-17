.class Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$1;
.super Ljava/lang/Object;
.source "BubbleIndicator.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->onStartTrackingTouch(Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    .prologue
    .line 52
    .local p0, "this":Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$1;, "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$1;"
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$1;->this$0:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    iput-object p2, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$1;->val$seekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .local p0, "this":Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$1;, "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$1;"
    const/4 v4, -0x1

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$1;->this$0:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->access$200(Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$1;->this$0:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$1;->val$seekBar:Landroid/widget/SeekBar;

    invoke-static {v1, v2}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->access$000(Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;Landroid/widget/SeekBar;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$1;->this$0:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$1;->val$seekBar:Landroid/widget/SeekBar;

    invoke-static {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->access$100(Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;Landroid/widget/SeekBar;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 59
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 60
    return-void
.end method
