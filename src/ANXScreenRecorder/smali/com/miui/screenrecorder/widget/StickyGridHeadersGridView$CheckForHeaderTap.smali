.class final Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;
.super Ljava/lang/Object;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForHeaderTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1302
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget v3, v3, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchMode:I

    if-nez v3, :cond_1

    .line 1303
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iput v5, v3, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchMode:I

    .line 1304
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget-object v4, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget v4, v4, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {v3, v4}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    .line 1305
    .local v0, "header":Landroid/view/View;
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget-boolean v3, v3, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    if-nez v3, :cond_1

    .line 1306
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget-boolean v3, v3, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v3, :cond_3

    .line 1307
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 1308
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-virtual {v3, v5}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->setPressed(Z)V

    .line 1309
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-virtual {v3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->refreshDrawableState()V

    .line 1311
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    .line 1312
    .local v2, "longPressTimeout":I
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-virtual {v3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->isLongClickable()Z

    move-result v1

    .line 1314
    .local v1, "longClickable":Z
    if-eqz v1, :cond_2

    .line 1315
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget-object v3, v3, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderLongPress;

    if-nez v3, :cond_0

    .line 1316
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    new-instance v4, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderLongPress;

    iget-object v5, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderLongPress;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;)V

    iput-object v4, v3, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderLongPress;

    .line 1318
    :cond_0
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget-object v3, v3, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderLongPress;

    invoke-virtual {v3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderLongPress;->rememberWindowAttachCount()V

    .line 1319
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget-object v4, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget-object v4, v4, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderLongPress;

    int-to-long v6, v2

    invoke-virtual {v3, v4, v6, v7}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1328
    .end local v0    # "header":Landroid/view/View;
    .end local v1    # "longClickable":Z
    .end local v2    # "longPressTimeout":I
    :cond_1
    :goto_0
    return-void

    .line 1321
    .restart local v0    # "header":Landroid/view/View;
    .restart local v1    # "longClickable":Z
    .restart local v2    # "longPressTimeout":I
    :cond_2
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iput v6, v3, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchMode:I

    goto :goto_0

    .line 1324
    .end local v1    # "longClickable":Z
    .end local v2    # "longPressTimeout":I
    :cond_3
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iput v6, v3, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchMode:I

    goto :goto_0
.end method
