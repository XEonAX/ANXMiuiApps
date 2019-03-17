.class Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;
.super Ljava/lang/Object;
.source "ZoomImageView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/ui/ZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollerProxy"
.end annotation


# instance fields
.field private isOld:Z

.field private scroller:Ljava/lang/Object;

.field final synthetic this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/ui/ZoomImageView;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->isOld:Z

    .line 330
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    .line 335
    :goto_0
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->isOld:Z

    .line 333
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->isOld:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 339
    :goto_0
    return v0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    .line 339
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    goto :goto_0
.end method

.method public fling(IIIIIIIIII)V
    .locals 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->isOld:Z

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Scroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 352
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    goto :goto_0
.end method

.method public forceFinished(Z)V
    .locals 1
    .param p1, "finished"    # Z

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->isOld:Z

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    goto :goto_0
.end method

.method public getCurrX()I
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->isOld:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrY()I
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->isOld:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    goto :goto_0
.end method
