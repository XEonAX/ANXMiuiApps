.class public Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;
.super Ljava/lang/Object;
.source "BottomMenu.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/BottomMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentMaskAnimator"
.end annotation


# instance fields
.field private mHideAnimator:Landroid/animation/ObjectAnimator;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mShowAnimator:Landroid/animation/ObjectAnimator;

.field final synthetic this$0:Lcom/miui/gallery/widget/BottomMenu;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/widget/BottomMenu;Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1, "this$0"    # Lcom/miui/gallery/widget/BottomMenu;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v3, 0x2

    .line 354
    iput-object p1, p0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->this$0:Lcom/miui/gallery/widget/BottomMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p2, p0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 357
    invoke-static {p1}, Lcom/miui/gallery/widget/BottomMenu;->access$300(Lcom/miui/gallery/widget/BottomMenu;)Landroid/view/View;

    move-result-object v0

    const-string v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    .line 358
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 360
    invoke-static {p1}, Lcom/miui/gallery/widget/BottomMenu;->access$300(Lcom/miui/gallery/widget/BottomMenu;)Landroid/view/View;

    move-result-object v0

    const-string v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    .line 361
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 362
    return-void

    .line 357
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 360
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/widget/BottomMenu;Landroid/view/View$OnClickListener;Lcom/miui/gallery/widget/BottomMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/widget/BottomMenu;
    .param p2, "x1"    # Landroid/view/View$OnClickListener;
    .param p3, "x2"    # Lcom/miui/gallery/widget/BottomMenu$1;

    .prologue
    .line 346
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;-><init>(Lcom/miui/gallery/widget/BottomMenu;Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public hide()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->this$0:Lcom/miui/gallery/widget/BottomMenu;

    invoke-static {v0}, Lcom/miui/gallery/widget/BottomMenu;->access$100(Lcom/miui/gallery/widget/BottomMenu;)Lcom/miui/gallery/view/menu/ActionMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/ActionMenuView;->bringToFront()V

    .line 395
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->this$0:Lcom/miui/gallery/widget/BottomMenu;

    invoke-static {v0}, Lcom/miui/gallery/widget/BottomMenu;->access$300(Lcom/miui/gallery/widget/BottomMenu;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->this$0:Lcom/miui/gallery/widget/BottomMenu;

    invoke-static {v0}, Lcom/miui/gallery/widget/BottomMenu;->access$300(Lcom/miui/gallery/widget/BottomMenu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->this$0:Lcom/miui/gallery/widget/BottomMenu;

    invoke-static {v0}, Lcom/miui/gallery/widget/BottomMenu;->access$100(Lcom/miui/gallery/widget/BottomMenu;)Lcom/miui/gallery/view/menu/ActionMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/ActionMenuView;->bringToFront()V

    .line 386
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->this$0:Lcom/miui/gallery/widget/BottomMenu;

    invoke-static {v0}, Lcom/miui/gallery/widget/BottomMenu;->access$300(Lcom/miui/gallery/widget/BottomMenu;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->this$0:Lcom/miui/gallery/widget/BottomMenu;

    invoke-static {v0}, Lcom/miui/gallery/widget/BottomMenu;->access$300(Lcom/miui/gallery/widget/BottomMenu;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 389
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 401
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->this$0:Lcom/miui/gallery/widget/BottomMenu;

    invoke-static {v0}, Lcom/miui/gallery/widget/BottomMenu;->access$300(Lcom/miui/gallery/widget/BottomMenu;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->this$0:Lcom/miui/gallery/widget/BottomMenu;

    invoke-static {v0}, Lcom/miui/gallery/widget/BottomMenu;->access$300(Lcom/miui/gallery/widget/BottomMenu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 377
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->this$0:Lcom/miui/gallery/widget/BottomMenu;

    invoke-static {v0}, Lcom/miui/gallery/widget/BottomMenu;->access$100(Lcom/miui/gallery/widget/BottomMenu;)Lcom/miui/gallery/view/menu/ActionMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/ActionMenuView;->bringToFront()V

    .line 378
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->this$0:Lcom/miui/gallery/widget/BottomMenu;

    invoke-static {v0}, Lcom/miui/gallery/widget/BottomMenu;->access$300(Lcom/miui/gallery/widget/BottomMenu;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    :cond_0
    return-void
.end method

.method public show()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method
