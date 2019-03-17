.class Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;
.super Ljava/lang/Object;
.source "CollageLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/widget/CollageLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragImageHolder"
.end annotation


# instance fields
.field private mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

.field private mDragBitmapItem:Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

.field private mDragEnable:Z

.field private mExchangeEnable:Z

.field private mTargetBitmapItem:Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field final synthetic this$0:Lcom/miui/gallery/collage/widget/CollageLayout;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/collage/widget/CollageLayout;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 330
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mDragEnable:Z

    .line 334
    iput-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mExchangeEnable:Z

    .line 335
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    invoke-direct {v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;-><init>(Lcom/miui/gallery/collage/widget/CollageLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mDragBitmapItem:Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    .line 336
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    invoke-direct {v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;-><init>(Lcom/miui/gallery/collage/widget/CollageLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mTargetBitmapItem:Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    .line 445
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$3;-><init>(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/collage/widget/CollageLayout;Lcom/miui/gallery/collage/widget/CollageLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;
    .param p2, "x1"    # Lcom/miui/gallery/collage/widget/CollageLayout$1;

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;-><init>(Lcom/miui/gallery/collage/widget/CollageLayout;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;)Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mDragBitmapItem:Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;)Lcom/miui/gallery/collage/widget/CollageImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;
    .param p1, "x1"    # Z

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mExchangeEnable:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;)Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mTargetBitmapItem:Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    return-object v0
.end method


# virtual methods
.method disableDragMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 348
    iput-boolean v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mDragEnable:Z

    .line 349
    iput-boolean v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mExchangeEnable:Z

    .line 350
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$402(Lcom/miui/gallery/collage/widget/CollageLayout;Z)Z

    .line 351
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageLayout;->invalidate()V

    .line 352
    return-void
.end method

.method draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mDragEnable:Z

    if-nez v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mExchangeEnable:Z

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mTargetBitmapItem:Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->draw(Landroid/graphics/Canvas;)V

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mDragBitmapItem:Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method enableDragMode(Lcom/miui/gallery/collage/widget/CollageImageView;)V
    .locals 2
    .param p1, "collageImageView"    # Lcom/miui/gallery/collage/widget/CollageImageView;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 341
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mDragBitmapItem:Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->setCollageImageView(Lcom/miui/gallery/collage/widget/CollageImageView;)V

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mDragEnable:Z

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mExchangeEnable:Z

    .line 344
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mDragBitmapItem:Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->show(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 345
    return-void
.end method

.method exchangeBitmapWithAnim(Lcom/miui/gallery/collage/widget/CollageImageView;)V
    .locals 8
    .param p1, "dragTargetView"    # Lcom/miui/gallery/collage/widget/CollageImageView;

    .prologue
    .line 398
    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mTargetBitmapItem:Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    invoke-virtual {v5, p1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->setCollageImageView(Lcom/miui/gallery/collage/widget/CollageImageView;)V

    .line 399
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 400
    .local v2, "mDownViewRect":Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mDownView:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-static {v2, v5}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$1500(Landroid/graphics/RectF;Lcom/miui/gallery/collage/widget/CollageImageView;)V

    .line 401
    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mTargetBitmapItem:Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v5, v2, v6}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->getTransitionAnimator(Landroid/graphics/RectF;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 403
    .local v3, "targetToDown":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 404
    .local v4, "targetViewRect":Landroid/graphics/RectF;
    invoke-static {v4, p1}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$1500(Landroid/graphics/RectF;Lcom/miui/gallery/collage/widget/CollageImageView;)V

    .line 405
    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mDragBitmapItem:Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v5, v4, v6}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->getTransitionAnimator(Landroid/graphics/RectF;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 407
    .local v1, "downToTarget":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 408
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v6, 0x15e

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 409
    new-instance v5, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v5}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 410
    new-instance v5, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;

    invoke-direct {v5, p0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;-><init>(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;Lcom/miui/gallery/collage/widget/CollageImageView;)V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 441
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 442
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 443
    return-void
.end method

.method receiveScrollEvent(FF)V
    .locals 1
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F

    .prologue
    .line 355
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mDragBitmapItem:Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->receiveScrollEvent(FF)V

    .line 356
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageLayout;->invalidate()V

    .line 357
    return-void
.end method

.method resetBitmapWithAnim()V
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mDragBitmapItem:Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v2, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$1;-><init>(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->reset(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 395
    return-void
.end method
