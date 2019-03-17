.class Lcom/miui/gallery/search/transitions/FadeOutInTransform$1;
.super Ljava/lang/Object;
.source "FadeOutInTransform.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/transitions/FadeOutInTransform;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/transitions/FadeOutInTransform;

.field final synthetic val$startAlpha:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/transitions/FadeOutInTransform;Landroid/view/View;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/transitions/FadeOutInTransform;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/miui/gallery/search/transitions/FadeOutInTransform$1;->this$0:Lcom/miui/gallery/search/transitions/FadeOutInTransform;

    iput-object p2, p0, Lcom/miui/gallery/search/transitions/FadeOutInTransform$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/miui/gallery/search/transitions/FadeOutInTransform$1;->val$startAlpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    .line 51
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/miui/gallery/search/transitions/FadeOutInTransform$1;->val$view:Landroid/view/View;

    check-cast v0, Ljava/lang/Float;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/miui/gallery/search/transitions/FadeOutInTransform$1;->val$startAlpha:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 54
    :cond_0
    return-void
.end method
