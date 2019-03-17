.class Lcom/miui/gallery/ui/PhotoPageMaskView$2;
.super Ljava/lang/Object;
.source "PhotoPageMaskView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageMaskView;->setActionBarMaskVisible(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageMaskView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageMaskView;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$2;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 186
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 187
    .local v0, "alpha":I
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$2;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageMaskView;->access$500(Lcom/miui/gallery/ui/PhotoPageMaskView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$2;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageMaskView;->access$500(Lcom/miui/gallery/ui/PhotoPageMaskView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 189
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$2;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageMaskView;->access$600(Lcom/miui/gallery/ui/PhotoPageMaskView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    int-to-float v3, v0

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v1, v2

    .line 190
    .local v1, "height":I
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$2;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageMaskView;->access$500(Lcom/miui/gallery/ui/PhotoPageMaskView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$2;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v6, v6, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 191
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$2;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-static {v2, v1}, Lcom/miui/gallery/ui/PhotoPageMaskView;->access$702(Lcom/miui/gallery/ui/PhotoPageMaskView;I)I

    .line 193
    .end local v1    # "height":I
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$2;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageMaskView;->access$800(Lcom/miui/gallery/ui/PhotoPageMaskView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$2;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageMaskView;->access$800(Lcom/miui/gallery/ui/PhotoPageMaskView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 195
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$2;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageMaskView;->access$900(Lcom/miui/gallery/ui/PhotoPageMaskView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    int-to-float v3, v0

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v1, v2

    .line 196
    .restart local v1    # "height":I
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$2;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageMaskView;->access$800(Lcom/miui/gallery/ui/PhotoPageMaskView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$2;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$2;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$2;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-virtual {v5}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getHeight()I

    move-result v5

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 197
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$2;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$2;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/miui/gallery/ui/PhotoPageMaskView;->access$1002(Lcom/miui/gallery/ui/PhotoPageMaskView;I)I

    .line 199
    .end local v1    # "height":I
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$2;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageMaskView;->invalidate()V

    .line 200
    return-void
.end method
