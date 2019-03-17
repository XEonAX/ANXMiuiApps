.class Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper$2;
.super Ljava/lang/Object;
.source "CollageStitchingLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper$2;->this$1:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 655
    const-string v3, "property_name_alpha"

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 656
    .local v0, "alpha":I
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper$2;->this$1:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

    iget-object v3, v3, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 657
    const-string v3, "property_name_matrix"

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 658
    .local v2, "matrixValue":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 659
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper$2;->this$1:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

    iget-object v3, v3, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mMatrix:Landroid/graphics/Matrix;

    check-cast v2, Landroid/graphics/Matrix;

    .end local v2    # "matrixValue":Ljava/lang/Object;
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 661
    :cond_0
    const-string v3, "property_name_rect"

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 662
    .local v1, "clipValue":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 663
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper$2;->this$1:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

    iget-object v3, v3, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mClipRect:Landroid/graphics/RectF;

    check-cast v1, Landroid/graphics/RectF;

    .end local v1    # "clipValue":Ljava/lang/Object;
    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 665
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper$2;->this$1:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

    iget-object v3, v3, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-virtual {v3}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->invalidate()V

    .line 666
    return-void
.end method
