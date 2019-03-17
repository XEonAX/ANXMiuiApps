.class Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;
.super Ljava/lang/Object;
.source "PhotoPageFaceItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFaceItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceHighLightManager"
.end annotation


# instance fields
.field private isAnimatorStarted:Z

.field private isExiting:Z

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentAlpha:F

.field private mCurrentRadius:I

.field private mCurrentX:I

.field private mCurrentY:I

.field private mExitAlpha:F

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPeopleFace:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

.field private mStartRadius:I

.field private mStartX:I

.field private mStartY:I

.field private mTargetRadius:I

.field private mTargetX:I

.field private mTargetY:I

.field private mXfermode:Landroid/graphics/PorterDuffXfermode;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageFaceItem;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 475
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mOrientation:I

    .line 493
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mExitAlpha:F

    .line 496
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isAnimatorStarted:Z

    .line 498
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isExiting:Z

    .line 500
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPaint:Landroid/graphics/Paint;

    .line 501
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageFaceItem;Lcom/miui/gallery/ui/PhotoPageFaceItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$1;

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFaceItem;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    .prologue
    .line 475
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentAlpha:F

    return v0
.end method

.method static synthetic access$1202(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;
    .param p1, "x1"    # F

    .prologue
    .line 475
    iput p1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentAlpha:F

    return p1
.end method

.method static synthetic access$1302(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;
    .param p1, "x1"    # F

    .prologue
    .line 475
    iput p1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mExitAlpha:F

    return p1
.end method

.method static synthetic access$1402(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;
    .param p1, "x1"    # I

    .prologue
    .line 475
    iput p1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentX:I

    return p1
.end method

.method static synthetic access$1500(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    .prologue
    .line 475
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mTargetX:I

    return v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    .prologue
    .line 475
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mStartX:I

    return v0
.end method

.method static synthetic access$1702(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;
    .param p1, "x1"    # I

    .prologue
    .line 475
    iput p1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentY:I

    return p1
.end method

.method static synthetic access$1800(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    .prologue
    .line 475
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mTargetY:I

    return v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    .prologue
    .line 475
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mStartY:I

    return v0
.end method

.method static synthetic access$2002(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;
    .param p1, "x1"    # I

    .prologue
    .line 475
    iput p1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentRadius:I

    return p1
.end method

.method static synthetic access$2100(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    .prologue
    .line 475
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mTargetRadius:I

    return v0
.end method

.method static synthetic access$2200(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    .prologue
    .line 475
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mStartRadius:I

    return v0
.end method

.method private initTargetValues()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 535
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPeopleFace:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    if-nez v2, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoView;->getDrawableSize()Landroid/graphics/RectF;

    move-result-object v1

    .line 543
    .local v1, "size":Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 544
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPeopleFace:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget v5, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mOrientation:I

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->access$900(FFLcom/miui/gallery/cloud/peopleface/PeopleFace;I)Landroid/graphics/RectF;

    move-result-object v0

    .line 545
    .local v0, "faceRect":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoView;->getBaseMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 547
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mTargetRadius:I

    .line 548
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mTargetX:I

    .line 549
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mTargetY:I

    goto :goto_0
.end method


# virtual methods
.method protected bindViewAndData(Lcom/miui/gallery/model/CloudItem;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "item"    # Lcom/miui/gallery/model/CloudItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/model/CloudItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/peopleface/PeopleFace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p2, "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/peopleface/PeopleFace;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isAnimatorStarted:Z

    if-eqz v1, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-virtual {v1, p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/model/CloudItem;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 511
    invoke-virtual {p1}, Lcom/miui/gallery/model/CloudItem;->getOrientation()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mOrientation:I

    .line 512
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    .line 513
    .local v0, "face":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->access$800(Lcom/miui/gallery/ui/PhotoPageFaceItem;)Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->getRecommendFaceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 514
    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPeopleFace:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    .line 515
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->initTargetValues()V

    .line 516
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->invalidate()V

    goto :goto_0
.end method

.method protected isExiting()Z
    .locals 1

    .prologue
    .line 627
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isExiting:Z

    return v0
.end method

.method protected isVisible()Z
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->access$800(Lcom/miui/gallery/ui/PhotoPageFaceItem;)Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->access$800(Lcom/miui/gallery/ui/PhotoPageFaceItem;)Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->getRecommendFaceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 621
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->access$800(Lcom/miui/gallery/ui/PhotoPageFaceItem;)Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->access$800(Lcom/miui/gallery/ui/PhotoPageFaceItem;)Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->exit()V

    .line 624
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 644
    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mTargetRadius:I

    .line 645
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPeopleFace:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    .line 646
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isAnimatorStarted:Z

    .line 647
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isExiting:Z

    .line 648
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mExitAlpha:F

    .line 649
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 652
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x437f0000    # 255.0f

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 561
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPeopleFace:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mTargetRadius:I

    if-gtz v0, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isAnimatorStarted:Z

    if-nez v0, :cond_2

    .line 566
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    .line 567
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentAlpha:F

    aput v4, v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    aput v3, v2, v9

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 568
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 569
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 570
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 590
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 591
    iput-boolean v9, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isAnimatorStarted:Z

    .line 595
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentAlpha:F

    mul-float/2addr v0, v10

    float-to-int v5, v0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    .line 594
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v8

    .line 598
    .local v8, "saveCount":I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isExiting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 599
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoView;->getSuppMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 600
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 601
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_3

    .line 602
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mExitAlpha:F

    mul-float/2addr v0, v10

    float-to-int v0, v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 606
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 607
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 608
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 609
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 610
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 611
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 612
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method

.method protected onExiting()Z
    .locals 4

    .prologue
    .line 631
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isAnimatorStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isExiting:Z

    if-nez v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 636
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 637
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isExiting:Z

    .line 640
    :cond_1
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isExiting:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 524
    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isAnimatorStarted:Z

    if-nez v3, :cond_0

    .line 525
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->getWidth()I

    move-result v2

    .line 526
    .local v2, "width":I
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->getHeight()I

    move-result v0

    .line 527
    .local v0, "height":I
    int-to-double v4, v2

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-double v6, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v4, v8

    double-to-int v1, v4

    .line 528
    .local v1, "radius":I
    div-int/lit8 v3, v2, 0x2

    iput v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mStartX:I

    iput v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentX:I

    .line 529
    div-int/lit8 v3, v0, 0x2

    iput v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mStartY:I

    iput v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentY:I

    .line 530
    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mStartRadius:I

    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentRadius:I

    .line 532
    .end local v0    # "height":I
    .end local v1    # "radius":I
    .end local v2    # "width":I
    :cond_0
    return-void
.end method

.method public final onMatrixChanged()V
    .locals 1

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->initTargetValues()V

    .line 556
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->invalidate()V

    .line 558
    :cond_0
    return-void
.end method
