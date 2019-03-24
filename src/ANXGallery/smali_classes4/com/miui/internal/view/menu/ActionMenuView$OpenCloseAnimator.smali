.class Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenCloseAnimator"
.end annotation


# instance fields
.field nl:Z

.field nm:Landroid/animation/Animator;

.field nn:Landroid/animation/Animator;

.field final synthetic no:Lcom/miui/internal/view/menu/ActionMenuView;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuView;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->no:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .line 324
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->initialize()V

    .line 326
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->nm:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->nm:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->nm:Landroid/animation/Animator;

    .line 330
    :cond_0
    return-void
.end method

.method close()V
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->cancel()V

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->nl:Z

    .line 320
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->nn:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 321
    return-void
.end method

.method initialize()V
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->nn:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 300
    const-string v0, "TranslationY"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->no:Lcom/miui/internal/view/menu/ActionMenuView;

    .line 301
    invoke-virtual {v3}, Lcom/miui/internal/view/menu/ActionMenuView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    .line 300
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->nn:Landroid/animation/Animator;

    .line 302
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->nn:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->no:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 304
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->nn:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 306
    :cond_0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 344
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 339
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->nm:Landroid/animation/Animator;

    .line 340
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 348
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->nm:Landroid/animation/Animator;

    .line 335
    return-void
.end method

.method open()V
    .locals 1

    .line 309
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->cancel()V

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->nl:Z

    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->setTranslationY(F)V

    .line 313
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->no:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->startLayoutAnimation()V

    .line 314
    return-void
.end method

.method public setTranslationY(F)V
    .locals 2

    .line 290
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->no:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->no:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    return-void
.end method
