.class Lcom/miui/gallery/view/menu/ActionMenuView$OpenCloseAnimator;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/view/menu/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenCloseAnimator"
.end annotation


# instance fields
.field mCurrentAnimator:Landroid/animation/Animator;

.field final synthetic this$0:Lcom/miui/gallery/view/menu/ActionMenuView;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/view/menu/ActionMenuView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/view/menu/ActionMenuView;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/miui/gallery/view/menu/ActionMenuView$OpenCloseAnimator;->this$0:Lcom/miui/gallery/view/menu/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 340
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuView$OpenCloseAnimator;->mCurrentAnimator:Landroid/animation/Animator;

    .line 336
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 344
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/miui/gallery/view/menu/ActionMenuView$OpenCloseAnimator;->mCurrentAnimator:Landroid/animation/Animator;

    .line 331
    return-void
.end method
