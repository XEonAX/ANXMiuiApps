.class Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;
.super Ljava/lang/Object;
.source "PhotoPageFaceItem.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->onDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 573
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->access$1202(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;F)F

    .line 574
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->access$1200(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    div-float v0, v1, v2

    .line 575
    .local v0, "factor":F
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isExiting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->access$1200(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->access$1202(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;F)F

    .line 581
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    float-to-double v4, v0

    const-wide/high16 v6, 0x3fec000000000000L    # 0.875

    cmpl-double v1, v4, v6

    if-lez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {v2, v1}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->access$1302(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;F)F

    .line 587
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->invalidate()V

    .line 588
    return-void

    .line 581
    :cond_0
    const/high16 v1, 0x3f600000    # 0.875f

    div-float v1, v0, v1

    goto :goto_0

    .line 583
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->access$1500(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->access$1600(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->access$1600(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->access$1402(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;I)I

    .line 584
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->access$1800(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->access$1900(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->access$1900(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->access$1702(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;I)I

    .line 585
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->access$2100(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->access$2200(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->access$2200(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->access$2002(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;I)I

    goto :goto_1
.end method
