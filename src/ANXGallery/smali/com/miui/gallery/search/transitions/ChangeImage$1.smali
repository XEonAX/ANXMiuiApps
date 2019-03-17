.class Lcom/miui/gallery/search/transitions/ChangeImage$1;
.super Ljava/lang/Object;
.source "ChangeImage.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/transitions/ChangeImage;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/transitions/ChangeImage;

.field final synthetic val$endDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$startDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/transitions/ChangeImage;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/transitions/ChangeImage;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/gallery/search/transitions/ChangeImage$1;->this$0:Lcom/miui/gallery/search/transitions/ChangeImage;

    iput-object p2, p0, Lcom/miui/gallery/search/transitions/ChangeImage$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/gallery/search/transitions/ChangeImage$1;->val$endDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/miui/gallery/search/transitions/ChangeImage$1;->val$startDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 56
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/miui/gallery/search/transitions/ChangeImage$1;->val$view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 59
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/miui/gallery/search/transitions/ChangeImage$1;->val$view:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/gallery/search/transitions/ChangeImage$1;->val$endDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/search/transitions/ChangeImage$1;->val$view:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/gallery/search/transitions/ChangeImage$1;->val$startDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 65
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_2
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3

    .line 66
    iget-object v1, p0, Lcom/miui/gallery/search/transitions/ChangeImage$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gallery/search/transitions/ChangeImage$1;->val$endDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 68
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/search/transitions/ChangeImage$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gallery/search/transitions/ChangeImage$1;->val$startDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
