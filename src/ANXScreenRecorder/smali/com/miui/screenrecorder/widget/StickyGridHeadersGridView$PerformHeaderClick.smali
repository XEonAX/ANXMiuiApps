.class Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;
.super Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$WindowRunnable;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformHeaderClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;


# direct methods
.method private constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;)V
    .locals 1

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$WindowRunnable;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;
    .param p2, "x1"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;

    .prologue
    .line 1259
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1266
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget-boolean v1, v1, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mDataChanged:Z

    if-eqz v1, :cond_1

    .line 1280
    :cond_0
    :goto_0
    return-void

    .line 1269
    :cond_1
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget-object v1, v1, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget-object v1, v1, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;->mClickMotionPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;->mClickMotionPosition:I

    iget-object v2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget-object v2, v2, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    .line 1271
    invoke-virtual {v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;->sameWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1272
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget v2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;->mClickMotionPosition:I

    invoke-virtual {v1, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    .line 1276
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1277
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget-object v2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;->mClickMotionPosition:I

    invoke-static {v2, v3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->access$400(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;I)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->performHeaderClick(Landroid/view/View;J)Z

    goto :goto_0
.end method
