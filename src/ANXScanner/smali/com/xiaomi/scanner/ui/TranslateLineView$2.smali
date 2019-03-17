.class Lcom/xiaomi/scanner/ui/TranslateLineView$2;
.super Ljava/lang/Object;
.source "TranslateLineView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/ui/TranslateLineView;->animTextView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

.field final synthetic val$newAnimDegree:Landroid/graphics/PointF;

.field final synthetic val$newEndTran:Landroid/graphics/PointF;

.field final synthetic val$newStartTran:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/ui/TranslateLineView;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/ui/TranslateLineView;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$2;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    iput-object p2, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$2;->val$newAnimDegree:Landroid/graphics/PointF;

    iput-object p3, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$2;->val$newStartTran:Landroid/graphics/PointF;

    iput-object p4, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$2;->val$newEndTran:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 159
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$2;->val$newAnimDegree:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$2;->val$newAnimDegree:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$2;->val$newAnimDegree:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 160
    .local v0, "currentRotation":F
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$2;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v1}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$100(Lcom/xiaomi/scanner/ui/TranslateLineView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 162
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$2;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v1}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$300(Lcom/xiaomi/scanner/ui/TranslateLineView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$2;->val$newStartTran:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$2;->val$newEndTran:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$2;->val$newStartTran:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 163
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$2;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v1}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$300(Lcom/xiaomi/scanner/ui/TranslateLineView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$2;->val$newStartTran:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$2;->val$newEndTran:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$2;->val$newStartTran:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 164
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$2;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v1}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$100(Lcom/xiaomi/scanner/ui/TranslateLineView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$2;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$300(Lcom/xiaomi/scanner/ui/TranslateLineView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    return-void
.end method
