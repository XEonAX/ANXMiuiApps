.class Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderLongPress;
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
    name = "CheckForHeaderLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;


# direct methods
.method private constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;)V
    .locals 1

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$WindowRunnable;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;
    .param p2, "x1"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;

    .prologue
    .line 1237
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderLongPress;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1240
    iget-object v2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget v3, v3, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {v2, v3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    .line 1241
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1244
    const/4 v1, 0x0

    .line 1245
    .local v1, "handled":Z
    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderLongPress;->sameWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget-boolean v2, v2, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v2, :cond_0

    .line 1248
    :cond_0
    if-eqz v1, :cond_2

    .line 1249
    iget-object v2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    const/4 v3, -0x2

    iput v3, v2, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchMode:I

    .line 1250
    iget-object v2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-virtual {v2, v4}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->setPressed(Z)V

    .line 1251
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1256
    .end local v1    # "handled":Z
    :cond_1
    :goto_0
    return-void

    .line 1253
    .restart local v1    # "handled":Z
    :cond_2
    iget-object v2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    const/4 v3, 0x2

    iput v3, v2, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchMode:I

    goto :goto_0
.end method
