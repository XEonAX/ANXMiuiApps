.class Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;
.super Ljava/lang/Object;
.source "ZoomImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/ui/ZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private currentX:I

.field private currentY:I

.field private final scroller:Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;

.field final synthetic this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/ui/ZoomImageView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 936
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 937
    new-instance v0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;-><init>(Lcom/xiaomi/scanner/ui/ZoomImageView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->scroller:Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;

    .line 938
    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->scroller:Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->forceFinished(Z)V

    .line 942
    return-void
.end method

.method public fling(IIII)V
    .locals 12
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I

    .prologue
    .line 945
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v11

    .line 946
    .local v11, "rect":Landroid/graphics/RectF;
    if-nez v11, :cond_1

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    iget v0, v11, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 953
    .local v1, "startX":I
    int-to-float v0, p1

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 954
    const/4 v5, 0x0

    .line 955
    .local v5, "minX":I
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float v3, p1

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 960
    .local v6, "maxX":I
    :goto_1
    iget v0, v11, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 961
    .local v2, "startY":I
    int-to-float v0, p2

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    .line 962
    const/4 v7, 0x0

    .line 963
    .local v7, "minY":I
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v0

    int-to-float v3, p2

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 968
    .local v8, "maxY":I
    :goto_2
    iput v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->currentX:I

    .line 969
    iput v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->currentY:I

    .line 972
    if-ne v1, v6, :cond_2

    if-eq v2, v8, :cond_0

    .line 973
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->scroller:Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v10}, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->fling(IIIIIIIIII)V

    goto :goto_0

    .line 957
    .end local v2    # "startY":I
    .end local v5    # "minX":I
    .end local v6    # "maxX":I
    .end local v7    # "minY":I
    .end local v8    # "maxY":I
    :cond_3
    move v6, v1

    .restart local v6    # "maxX":I
    move v5, v1

    .restart local v5    # "minX":I
    goto :goto_1

    .line 965
    .restart local v2    # "startY":I
    :cond_4
    move v8, v2

    .restart local v8    # "maxY":I
    move v7, v2

    .restart local v7    # "minY":I
    goto :goto_2
.end method

.method public run()V
    .locals 5

    .prologue
    .line 979
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->scroller:Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 980
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->scroller:Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->getCurrX()I

    move-result v0

    .line 981
    .local v0, "newX":I
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->scroller:Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->getCurrY()I

    move-result v1

    .line 983
    .local v1, "newY":I
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$000(Lcom/xiaomi/scanner/ui/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->currentX:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->currentY:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 984
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/scanner/ui/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 986
    iput v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->currentX:I

    .line 987
    iput v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->currentY:I

    .line 990
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v2, v3, p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$1200(Lcom/xiaomi/scanner/ui/ZoomImageView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 992
    .end local v0    # "newX":I
    .end local v1    # "newY":I
    :cond_0
    return-void
.end method
