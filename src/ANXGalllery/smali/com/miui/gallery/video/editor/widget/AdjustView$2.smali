.class Lcom/miui/gallery/video/editor/widget/AdjustView$2;
.super Ljava/lang/Object;
.source "AdjustView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/widget/AdjustView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/widget/AdjustView;

.field value:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/widget/AdjustView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/widget/AdjustView;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView$2;->this$0:Lcom/miui/gallery/video/editor/widget/AdjustView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView$2;->value:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 111
    iput p2, p0, Lcom/miui/gallery/video/editor/widget/AdjustView$2;->value:I

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView$2;->this$0:Lcom/miui/gallery/video/editor/widget/AdjustView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/AdjustView;->access$002(Lcom/miui/gallery/video/editor/widget/AdjustView;Z)Z

    .line 113
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView$2;->this$0:Lcom/miui/gallery/video/editor/widget/AdjustView;

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/AdjustView$2;->value:I

    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView$2;->this$0:Lcom/miui/gallery/video/editor/widget/AdjustView;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/AdjustView;->access$200(Lcom/miui/gallery/video/editor/widget/AdjustView;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/gallery/video/editor/widget/AdjustView$2;->this$0:Lcom/miui/gallery/video/editor/widget/AdjustView;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/widget/AdjustView;->access$100(Lcom/miui/gallery/video/editor/widget/AdjustView;)Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;->getSelection()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/model/AdjustData;

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/video/editor/widget/AdjustView;->access$300(Lcom/miui/gallery/video/editor/widget/AdjustView;ILcom/miui/gallery/video/editor/model/AdjustData;)V

    .line 114
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView$2;->this$0:Lcom/miui/gallery/video/editor/widget/AdjustView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/AdjustView;->access$002(Lcom/miui/gallery/video/editor/widget/AdjustView;Z)Z

    .line 119
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView$2;->this$0:Lcom/miui/gallery/video/editor/widget/AdjustView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/AdjustView;->access$002(Lcom/miui/gallery/video/editor/widget/AdjustView;Z)Z

    .line 124
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView$2;->this$0:Lcom/miui/gallery/video/editor/widget/AdjustView;

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/AdjustView$2;->value:I

    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView$2;->this$0:Lcom/miui/gallery/video/editor/widget/AdjustView;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/AdjustView;->access$200(Lcom/miui/gallery/video/editor/widget/AdjustView;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/gallery/video/editor/widget/AdjustView$2;->this$0:Lcom/miui/gallery/video/editor/widget/AdjustView;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/widget/AdjustView;->access$100(Lcom/miui/gallery/video/editor/widget/AdjustView;)Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;->getSelection()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/model/AdjustData;

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/video/editor/widget/AdjustView;->access$300(Lcom/miui/gallery/video/editor/widget/AdjustView;ILcom/miui/gallery/video/editor/model/AdjustData;)V

    .line 125
    return-void
.end method
