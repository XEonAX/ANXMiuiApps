.class Lcom/miui/gallery/editor/photo/app/ImageTransition$ConfigCropType;
.super Ljava/lang/Object;
.source "ImageTransition.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/ImageTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigCropType"
.end annotation


# instance fields
.field private mScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/app/ImageTransition$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/app/ImageTransition$1;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/ImageTransition$ConfigCropType;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 158
    move-object v0, p1

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 159
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 160
    .local v1, "view":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/ImageTransition$ConfigCropType;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 161
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 151
    move-object v0, p1

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 152
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 153
    .local v1, "view":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/ImageTransition$ConfigCropType;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 154
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 165
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 143
    move-object v0, p1

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 144
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 145
    .local v1, "view":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/ImageTransition$ConfigCropType;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 146
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 147
    return-void
.end method
