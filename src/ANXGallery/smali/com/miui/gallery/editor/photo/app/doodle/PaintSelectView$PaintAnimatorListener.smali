.class Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintAnimatorListener;
.super Ljava/lang/Object;
.source "PaintSelectView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaintAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintAnimatorListener;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$1;

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintAnimatorListener;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 281
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 276
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 286
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 271
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 290
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintAnimatorListener;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->access$600(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 291
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintAnimatorListener;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->access$600(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;

    .line 292
    .local v2, "doodlePaintItem":Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 293
    .local v1, "animatedValue":F
    const-string v4, "progress"

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 294
    .local v0, "alpha":F
    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->centerX()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v1, v4

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->offset(II)V

    .line 295
    invoke-virtual {v2, v0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->setAlpha(F)V

    .line 290
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 297
    .end local v0    # "alpha":F
    .end local v1    # "animatedValue":F
    .end local v2    # "doodlePaintItem":Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintAnimatorListener;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->invalidate()V

    .line 298
    return-void
.end method
