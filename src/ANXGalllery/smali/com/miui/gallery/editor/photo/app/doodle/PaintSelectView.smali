.class public Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;
.super Landroid/view/View;
.source "PaintSelectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;,
        Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintAnimatorListener;,
        Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;
    }
.end annotation


# instance fields
.field private mBasePaintRect:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCurrentPaintIndex:I

.field private mDoodlePaintItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGesListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mIsSelectMode:Z

.field private mItemOffset:I

.field private mPaintAnimator:Landroid/animation/ValueAnimator;

.field private mPaintAnimatorListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintAnimatorListener;

.field private mPaintBottomOffset:I

.field private mPaintDrawableWidth:I

.field private mPaintRightOffset:I

.field private mPaintSizeChangeListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintAnimatorListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintAnimatorListener;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintAnimatorListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintAnimatorListener;

    .line 31
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mCurrentPaintIndex:I

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mBasePaintRect:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mGesListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mIsSelectMode:Z

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mHandler:Landroid/os/Handler;

    .line 47
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintAnimatorListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintAnimatorListener;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintAnimatorListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintAnimatorListener;

    .line 31
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mCurrentPaintIndex:I

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mBasePaintRect:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mGesListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mIsSelectMode:Z

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mHandler:Landroid/os/Handler;

    .line 52
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintAnimatorListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintAnimatorListener;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintAnimatorListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintAnimatorListener;

    .line 31
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mCurrentPaintIndex:I

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mBasePaintRect:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mGesListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mIsSelectMode:Z

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mHandler:Landroid/os/Handler;

    .line 57
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->init(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;FF)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->findTouchIndex(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mIsSelectMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->setSelectIndex(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;[F)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;
    .param p2, "x2"    # [F

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->getDoodlePaintItemSizeAnim(Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mDoodlePaintItemList:Ljava/util/List;

    return-object v0
.end method

.method private doSelectAnimator(Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;)V
    .locals 2
    .param p1, "doodlePaintItem"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;

    .prologue
    .line 169
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {p0, p1, v1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->getDoodlePaintItemSizeAnim(Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 170
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$1;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 192
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 193
    return-void

    .line 169
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
    .end array-data
.end method

.method private drawPaint(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mDoodlePaintItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 98
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mCurrentPaintIndex:I

    if-eq v0, v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mDoodlePaintItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->draw(Landroid/graphics/Canvas;)V

    .line 97
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mDoodlePaintItemList:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mCurrentPaintIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->draw(Landroid/graphics/Canvas;)V

    .line 103
    return-void
.end method

.method private findTouchIndex(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 210
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mDoodlePaintItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mDoodlePaintItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;

    .line 212
    .local v0, "doodlePaintItem":Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;
    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->isContain(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    .end local v0    # "doodlePaintItem":Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 210
    .restart local v0    # "doodlePaintItem":Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "doodlePaintItem":Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private varargs getDoodlePaintItemSizeAnim(Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;[F)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "doodlePaintItem"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;
    .param p2, "scale"    # [F

    .prologue
    .line 196
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 197
    .local v0, "outAnim":Landroid/animation/ValueAnimator;
    new-instance v1, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 198
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 199
    new-instance v1, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$2;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 206
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->initPaint()V

    .line 63
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mGesListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 65
    return-void
.end method

.method private initPaint()V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->getList(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mDoodlePaintItemList:Ljava/util/List;

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mDoodlePaintItemList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintDrawableWidth:I

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintRightOffset:I

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b017f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintBottomOffset:I

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mDoodlePaintItemList:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mCurrentPaintIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->setSelect(Z)V

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b017b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mItemOffset:I

    .line 74
    return-void
.end method

.method private setPaintLocation(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 77
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mBasePaintRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintDrawableWidth:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintDrawableWidth:I

    sub-int v4, p2, v4

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 78
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mBasePaintRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintRightOffset:I

    neg-int v3, v3

    iget v4, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintBottomOffset:I

    neg-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 79
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mDoodlePaintItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mDoodlePaintItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;

    .line 81
    .local v0, "doodlePaintItem":Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mBasePaintRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->setBounds(Landroid/graphics/Rect;)V

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "doodlePaintItem":Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;
    :cond_0
    return-void
.end method

.method private setSelectIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 155
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mDoodlePaintItemList:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mCurrentPaintIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->setSelect(Z)V

    .line 157
    iput p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mCurrentPaintIndex:I

    .line 158
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mDoodlePaintItemList:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mCurrentPaintIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;

    .line 159
    .local v0, "doodlePaintItem":Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->setSelect(Z)V

    .line 160
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintSizeChangeListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintSizeChangeListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;

    iget-object v2, v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->paintType:Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

    iget v2, v2, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;->paintSize:F

    invoke-interface {v1, v2}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;->onPaintSizeChange(F)V

    .line 162
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->invalidate()V

    .line 165
    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->doSelectAnimator(Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;)V

    .line 166
    return-void
.end method


# virtual methods
.method public expansionPaint(Z)V
    .locals 10
    .param p1, "expansion"    # Z

    .prologue
    const/4 v9, 0x2

    .line 235
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mIsSelectMode:Z

    .line 236
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_0

    .line 237
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 241
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mDoodlePaintItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [Landroid/animation/PropertyValuesHolder;

    .line 242
    .local v4, "propertyValuesHolders":[Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mDoodlePaintItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 243
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mDoodlePaintItemList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;

    .line 245
    .local v1, "doodlePaintItem":Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->centerX()I

    move-result v0

    .line 246
    .local v0, "current":I
    if-eqz p1, :cond_1

    .line 247
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mBasePaintRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget v6, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintDrawableWidth:I

    iget v7, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mItemOffset:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v3

    sub-int v2, v5, v6

    .line 251
    .local v2, "expect":I
    :goto_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [F

    const/4 v7, 0x0

    int-to-float v8, v0

    aput v8, v6, v7

    const/4 v7, 0x1

    int-to-float v8, v2

    aput v8, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v3

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 239
    .end local v0    # "current":I
    .end local v1    # "doodlePaintItem":Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;
    .end local v2    # "expect":I
    .end local v3    # "i":I
    .end local v4    # "propertyValuesHolders":[Landroid/animation/PropertyValuesHolder;
    :cond_0
    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 249
    .restart local v0    # "current":I
    .restart local v1    # "doodlePaintItem":Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;
    .restart local v3    # "i":I
    .restart local v4    # "propertyValuesHolders":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mBasePaintRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .restart local v2    # "expect":I
    goto :goto_2

    .line 253
    .end local v0    # "current":I
    .end local v1    # "doodlePaintItem":Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;
    .end local v2    # "expect":I
    :cond_2
    if-eqz p1, :cond_3

    .line 254
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    const-string v6, "progress"

    new-array v7, v9, [F

    fill-array-data v7, :array_0

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v4, v5

    .line 258
    :goto_3
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 259
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintAnimator:Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintAnimatorListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintAnimatorListener;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 260
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintAnimator:Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintAnimatorListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintAnimatorListener;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 261
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintAnimator:Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 262
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 263
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 264
    return-void

    .line 256
    :cond_3
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    const-string v6, "progress"

    new-array v7, v9, [F

    fill-array-data v7, :array_1

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_3

    .line 254
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 256
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public expansionPaint(ZJ)V
    .locals 2
    .param p1, "expansion"    # Z
    .param p2, "delayed"    # J

    .prologue
    .line 226
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$3;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;Z)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->drawPaint(Landroid/graphics/Canvas;)V

    .line 94
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->setPaintLocation(II)V

    .line 89
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 221
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 222
    .local v0, "result":Z
    return v0
.end method

.method public setPaintColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 313
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mDoodlePaintItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;

    .line 314
    .local v0, "doodlePaintItem":Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->setCurrentColor(I)V

    goto :goto_0

    .line 316
    .end local v0    # "doodlePaintItem":Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->invalidate()V

    .line 317
    return-void
.end method

.method public setPaintSizeChangeListener(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;)V
    .locals 3
    .param p1, "paintSizeChangeListener"    # Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintSizeChangeListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;

    .line 303
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintSizeChangeListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;

    if-eqz v0, :cond_0

    .line 304
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mPaintSizeChangeListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mDoodlePaintItemList:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->mCurrentPaintIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->paintType:Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

    iget v0, v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;->paintSize:F

    invoke-interface {v1, v0}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;->onPaintSizeChange(F)V

    .line 306
    :cond_0
    return-void
.end method
