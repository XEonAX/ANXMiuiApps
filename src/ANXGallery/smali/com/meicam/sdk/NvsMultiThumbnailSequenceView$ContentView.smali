.class Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;
.super Landroid/view/ViewGroup;
.source "NvsMultiThumbnailSequenceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;


# direct methods
.method public constructor <init>(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;->this$0:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    .line 190
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 191
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;->this$0:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-static {v0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->access$100(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;)V

    .line 230
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 207
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;->this$0:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-static {v0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->access$000(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;)I

    move-result v1

    .line 209
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 210
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 211
    const/high16 v3, 0x40000000    # 2.0f

    if-eq v2, v3, :cond_0

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 217
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 218
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 220
    invoke-static {v1, p1, v4}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;->resolveSizeAndState(III)I

    move-result v1

    .line 221
    invoke-static {v0, p2, v4}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;->resolveSizeAndState(III)I

    move-result v0

    .line 223
    invoke-virtual {p0, v1, v0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;->setMeasuredDimension(II)V

    .line 224
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;->this$0:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 235
    if-eq p2, p4, :cond_0

    .line 236
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;->this$0:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-static {v0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->access$200(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;)V

    .line 238
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 239
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method
