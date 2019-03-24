.class public Lmiui/notification/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Lmiui/notification/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/notification/SwipeHelper$Callback;
    }
.end annotation


# static fields
.field static final ALPHA_FADE_END:F = 0.5f

.field public static ALPHA_FADE_START:F = 0.0f

.field private static final CONSTRAIN_SWIPE:Z = true

.field private static final DEBUG:Z = false

.field private static final DEBUG_INVALIDATE:Z = false

.field private static final DISMISS_IF_SWIPED_FAR_ENOUGH:Z = true

.field private static final FADE_OUT_DURING_SWIPE:Z = true

.field private static final SLOW_ANIMATIONS:Z = false

.field private static final SNAP_ANIM_LEN:I = 0x96

.field static final TAG:Ljava/lang/String; = "com.android.systemui.SwipeHelper"

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field private mCallback:Lmiui/notification/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mCurrAnimView:Landroid/view/View;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDragging:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitialTouchPos:F

.field private mLongPressListener:Landroid/view/View$OnLongClickListener;

.field private mLongPressSent:Z

.field private mLongPressTimeout:J

.field private mMinAlpha:F

.field private mPagingTouchSlop:F

.field private mSwipeDirection:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchLongPress:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lmiui/notification/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 54
    const/4 v0, 0x0

    sput v0, Lmiui/notification/SwipeHelper;->ALPHA_FADE_START:F

    return-void
.end method

.method public constructor <init>(ILmiui/notification/SwipeHelper$Callback;FF)V
    .locals 2
    .param p1, "swipeDirection"    # I
    .param p2, "callback"    # Lmiui/notification/SwipeHelper$Callback;
    .param p3, "densityScale"    # F
    .param p4, "pagingTouchSlop"    # F

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lmiui/notification/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    .line 49
    const/16 v0, 0xc8

    iput v0, p0, Lmiui/notification/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 50
    const/16 v0, 0x190

    iput v0, p0, Lmiui/notification/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 51
    const/16 v0, 0x7d0

    iput v0, p0, Lmiui/notification/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lmiui/notification/SwipeHelper;->mMinAlpha:F

    .line 80
    iput-object p2, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/notification/SwipeHelper;->mHandler:Landroid/os/Handler;

    .line 82
    iput p1, p0, Lmiui/notification/SwipeHelper;->mSwipeDirection:I

    .line 83
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 84
    iput p3, p0, Lmiui/notification/SwipeHelper;->mDensityScale:F

    .line 85
    iput p4, p0, Lmiui/notification/SwipeHelper;->mPagingTouchSlop:F

    .line 87
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lmiui/notification/SwipeHelper;->mLongPressTimeout:J

    .line 88
    return-void
.end method

.method static synthetic access$000(Lmiui/notification/SwipeHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lmiui/notification/SwipeHelper;

    .line 34
    iget-object v0, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/notification/SwipeHelper;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/notification/SwipeHelper;

    .line 34
    iget-boolean v0, p0, Lmiui/notification/SwipeHelper;->mLongPressSent:Z

    return v0
.end method

.method static synthetic access$102(Lmiui/notification/SwipeHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/notification/SwipeHelper;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lmiui/notification/SwipeHelper;->mLongPressSent:Z

    return p1
.end method

.method static synthetic access$200(Lmiui/notification/SwipeHelper;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p0, "x0"    # Lmiui/notification/SwipeHelper;

    .line 34
    iget-object v0, p0, Lmiui/notification/SwipeHelper;->mLongPressListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/notification/SwipeHelper;)Lmiui/notification/SwipeHelper$Callback;
    .locals 1
    .param p0, "x0"    # Lmiui/notification/SwipeHelper;

    .line 34
    iget-object v0, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/notification/SwipeHelper;Landroid/view/View;)F
    .locals 1
    .param p0, "x0"    # Lmiui/notification/SwipeHelper;
    .param p1, "x1"    # Landroid/view/View;

    .line 34
    invoke-direct {p0, p1}, Lmiui/notification/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F

    .line 116
    nop

    .line 117
    iget v0, p0, Lmiui/notification/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    const-string v0, "translationX"

    goto :goto_0

    :cond_0
    const-string v0, "translationY"

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    .line 116
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 118
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0
.end method

.method private getAlphaForOffset(Landroid/view/View;)F
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 144
    invoke-direct {p0, p1}, Lmiui/notification/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v0

    .line 145
    .local v0, "viewSize":F
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    .line 146
    .local v1, "fadeSize":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 147
    .local v2, "result":F
    invoke-direct {p0, p1}, Lmiui/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v3

    .line 148
    .local v3, "pos":F
    sget v4, Lmiui/notification/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v0

    cmpl-float v4, v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-ltz v4, :cond_0

    .line 149
    sget v4, Lmiui/notification/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v0

    sub-float v4, v3, v4

    div-float/2addr v4, v1

    sub-float v2, v5, v4

    goto :goto_0

    .line 150
    :cond_0
    sget v4, Lmiui/notification/SwipeHelper;->ALPHA_FADE_START:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    .line 151
    sget v4, Lmiui/notification/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    div-float/2addr v4, v1

    add-float v2, v5, v4

    .line 153
    :cond_1
    :goto_0
    iget v4, p0, Lmiui/notification/SwipeHelper;->mMinAlpha:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .line 122
    iget v0, p0, Lmiui/notification/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 122
    :goto_0
    return v0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 103
    iget v0, p0, Lmiui/notification/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_0
    return v0
.end method

.method private getSize(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 135
    iget v0, p0, Lmiui/notification/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    .line 135
    :goto_0
    return v0
.end method

.method private getTranslation(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 107
    iget v0, p0, Lmiui/notification/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    :goto_0
    return v0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .line 111
    iget v0, p0, Lmiui/notification/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 111
    :goto_0
    return v0
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 158
    new-instance v0, Landroid/graphics/RectF;

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 158
    invoke-static {p0, v0}, Lmiui/notification/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 161
    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "childBounds"    # Landroid/graphics/RectF;

    .line 169
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object p0, v0

    check-cast p0, Landroid/view/View;

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 172
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    .line 173
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    .line 174
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    .line 175
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 172
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .line 127
    iget v0, p0, Lmiui/notification/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 132
    :goto_0
    return-void
.end method


# virtual methods
.method public dismissChild(Landroid/view/View;F)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .line 259
    iget-object v0, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    invoke-interface {v0, p1}, Lmiui/notification/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, "animView":Landroid/view/View;
    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    invoke-interface {v1, p1}, Lmiui/notification/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    .line 263
    .local v1, "canAnimViewBeDismissed":Z
    const/4 v2, 0x0

    cmpg-float v3, p2, v2

    if-ltz v3, :cond_2

    cmpl-float v3, p2, v2

    if-nez v3, :cond_0

    .line 264
    invoke-direct {p0, v0}, Lmiui/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v3

    cmpg-float v3, v3, v2

    if-ltz v3, :cond_2

    :cond_0
    cmpl-float v3, p2, v2

    if-nez v3, :cond_1

    .line 266
    invoke-direct {p0, v0}, Lmiui/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_1

    iget v3, p0, Lmiui/notification/SwipeHelper;->mSwipeDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 269
    :cond_1
    invoke-direct {p0, v0}, Lmiui/notification/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    goto :goto_1

    .line 267
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lmiui/notification/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    neg-float v3, v3

    .line 269
    .local v3, "newPos":F
    :goto_1
    nop

    .line 271
    iget v4, p0, Lmiui/notification/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 272
    .local v4, "duration":I
    cmpl-float v2, p2, v2

    if-eqz v2, :cond_3

    .line 273
    nop

    .line 274
    invoke-direct {p0, v0}, Lmiui/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v5

    .line 275
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v2, v5

    float-to-int v2, v2

    .line 273
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .end local v4    # "duration":I
    .local v2, "duration":I
    :goto_2
    goto :goto_3

    .line 277
    .end local v2    # "duration":I
    .restart local v4    # "duration":I
    :cond_3
    iget v2, p0, Lmiui/notification/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_2

    .line 280
    .end local v4    # "duration":I
    .restart local v2    # "duration":I
    :goto_3
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 281
    invoke-direct {p0, v0, v3}, Lmiui/notification/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 282
    .local v4, "anim":Landroid/animation/ObjectAnimator;
    sget-object v5, Lmiui/notification/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 283
    int-to-long v5, v2

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 284
    new-instance v5, Lmiui/notification/SwipeHelper$2;

    invoke-direct {v5, p0, p1, v0}, Lmiui/notification/SwipeHelper$2;-><init>(Lmiui/notification/SwipeHelper;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 290
    new-instance v5, Lmiui/notification/SwipeHelper$3;

    invoke-direct {v5, p0, v1, v0}, Lmiui/notification/SwipeHelper$3;-><init>(Lmiui/notification/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 298
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 299
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 195
    .local v0, "action":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 227
    :pswitch_0
    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lmiui/notification/SwipeHelper;->mLongPressSent:Z

    if-nez v1, :cond_2

    .line 228
    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 229
    invoke-direct {p0, p1}, Lmiui/notification/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v1

    .line 230
    .local v1, "pos":F
    iget v2, p0, Lmiui/notification/SwipeHelper;->mInitialTouchPos:F

    sub-float v2, v1, v2

    .line 231
    .local v2, "delta":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lmiui/notification/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 232
    iget-object v3, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    iget-object v4, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lmiui/notification/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 233
    const/4 v3, 0x1

    iput-boolean v3, p0, Lmiui/notification/SwipeHelper;->mDragging:Z

    .line 234
    invoke-direct {p0, p1}, Lmiui/notification/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    iget-object v4, p0, Lmiui/notification/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v4}, Lmiui/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p0, Lmiui/notification/SwipeHelper;->mInitialTouchPos:F

    .line 236
    invoke-virtual {p0}, Lmiui/notification/SwipeHelper;->removeLongPressCallback()V

    .line 238
    .end local v1    # "pos":F
    .end local v2    # "delta":F
    :cond_0
    goto :goto_0

    .line 244
    :pswitch_1
    iput-boolean v1, p0, Lmiui/notification/SwipeHelper;->mDragging:Z

    .line 245
    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 246
    iput-object v2, p0, Lmiui/notification/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 247
    iput-boolean v1, p0, Lmiui/notification/SwipeHelper;->mLongPressSent:Z

    .line 248
    invoke-virtual {p0}, Lmiui/notification/SwipeHelper;->removeLongPressCallback()V

    goto :goto_0

    .line 197
    :pswitch_2
    iput-boolean v1, p0, Lmiui/notification/SwipeHelper;->mDragging:Z

    .line 198
    iput-boolean v1, p0, Lmiui/notification/SwipeHelper;->mLongPressSent:Z

    .line 199
    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    invoke-interface {v1, p1}, Lmiui/notification/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 200
    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 201
    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 202
    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    iget-object v2, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v1, v2}, Lmiui/notification/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/notification/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 203
    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    iget-object v2, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v1, v2}, Lmiui/notification/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/notification/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 204
    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 205
    invoke-direct {p0, p1}, Lmiui/notification/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lmiui/notification/SwipeHelper;->mInitialTouchPos:F

    .line 207
    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mLongPressListener:Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_2

    .line 208
    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    .line 209
    new-instance v1, Lmiui/notification/SwipeHelper$1;

    invoke-direct {v1, p0}, Lmiui/notification/SwipeHelper$1;-><init>(Lmiui/notification/SwipeHelper;)V

    iput-object v1, p0, Lmiui/notification/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 220
    :cond_1
    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lmiui/notification/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v3, p0, Lmiui/notification/SwipeHelper;->mLongPressTimeout:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lmiui/notification/SwipeHelper;->mDragging:Z

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 319
    iget-boolean v0, p0, Lmiui/notification/SwipeHelper;->mLongPressSent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 320
    return v1

    .line 323
    :cond_0
    iget-boolean v0, p0, Lmiui/notification/SwipeHelper;->mDragging:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 326
    invoke-virtual {p0}, Lmiui/notification/SwipeHelper;->removeLongPressCallback()V

    .line 327
    return v2

    .line 330
    :cond_1
    iget-object v0, p0, Lmiui/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 332
    .local v0, "action":I
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 335
    :pswitch_0
    iget-object v2, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v2, :cond_e

    .line 336
    invoke-direct {p0, p1}, Lmiui/notification/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v2

    iget v4, p0, Lmiui/notification/SwipeHelper;->mInitialTouchPos:F

    sub-float/2addr v2, v4

    .line 339
    .local v2, "delta":F
    iget-object v4, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    iget-object v5, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v4, v5}, Lmiui/notification/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 340
    iget-object v4, p0, Lmiui/notification/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v4}, Lmiui/notification/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    .line 341
    .local v4, "size":F
    const v5, 0x3e19999a    # 0.15f

    mul-float/2addr v5, v4

    .line 342
    .local v5, "maxScrollDistance":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v4

    if-ltz v6, :cond_3

    .line 343
    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    neg-float v3, v5

    :goto_0
    move v2, v3

    goto :goto_1

    .line 345
    :cond_3
    div-float v3, v2, v4

    float-to-double v6, v3

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v3, v6

    mul-float v2, v5, v3

    .line 348
    .end local v4    # "size":F
    .end local v5    # "maxScrollDistance":F
    :cond_4
    :goto_1
    iget-object v3, p0, Lmiui/notification/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v3, v2}, Lmiui/notification/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 349
    iget-boolean v3, p0, Lmiui/notification/SwipeHelper;->mCanCurrViewBeDimissed:Z

    if-eqz v3, :cond_5

    .line 350
    iget-object v3, p0, Lmiui/notification/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    iget-object v4, p0, Lmiui/notification/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v4}, Lmiui/notification/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 352
    :cond_5
    iget-object v3, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-static {v3}, Lmiui/notification/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    .line 353
    .end local v2    # "delta":F
    goto/16 :goto_6

    .line 357
    :pswitch_1
    iget-object v4, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v4, :cond_e

    .line 358
    iget v4, p0, Lmiui/notification/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    int-to-float v4, v4

    iget v5, p0, Lmiui/notification/SwipeHelper;->mDensityScale:F

    mul-float/2addr v4, v5

    .line 359
    .local v4, "maxVelocity":F
    iget-object v5, p0, Lmiui/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 360
    iget v5, p0, Lmiui/notification/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    iget v6, p0, Lmiui/notification/SwipeHelper;->mDensityScale:F

    mul-float/2addr v5, v6

    .line 361
    .local v5, "escapeVelocity":F
    iget-object v6, p0, Lmiui/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v6}, Lmiui/notification/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v6

    .line 362
    .local v6, "velocity":F
    iget-object v7, p0, Lmiui/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v7}, Lmiui/notification/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v7

    .line 365
    .local v7, "perpendicularVelocity":F
    iget-object v8, p0, Lmiui/notification/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 366
    invoke-direct {p0, v8}, Lmiui/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3fd999999999999aL    # 0.4

    iget-object v12, p0, Lmiui/notification/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v12}, Lmiui/notification/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v12

    float-to-double v12, v12

    mul-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-lez v8, :cond_6

    move v8, v1

    goto :goto_2

    :cond_6
    move v8, v2

    .line 367
    .local v8, "childSwipedFarEnough":Z
    :goto_2
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v5

    if-lez v9, :cond_9

    .line 368
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_9

    cmpl-float v9, v6, v3

    if-lez v9, :cond_7

    move v9, v1

    goto :goto_3

    :cond_7
    move v9, v2

    :goto_3
    iget-object v10, p0, Lmiui/notification/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 369
    invoke-direct {p0, v10}, Lmiui/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v10

    cmpl-float v10, v10, v3

    if-lez v10, :cond_8

    move v10, v1

    goto :goto_4

    :cond_8
    move v10, v2

    :goto_4
    if-ne v9, v10, :cond_9

    move v9, v1

    goto :goto_5

    :cond_9
    move v9, v2

    .line 371
    .local v9, "childSwipedFastEnough":Z
    :goto_5
    iget-object v10, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    iget-object v11, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v10, v11}, Lmiui/notification/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_b

    if-nez v9, :cond_a

    if-eqz v8, :cond_b

    :cond_a
    move v2, v1

    nop

    .line 374
    .local v2, "dismissChild":Z
    :cond_b
    if-eqz v2, :cond_d

    .line 376
    iget-object v10, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v9, :cond_c

    move v3, v6

    nop

    :cond_c
    invoke-virtual {p0, v10, v3}, Lmiui/notification/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    goto :goto_6

    .line 379
    :cond_d
    iget-object v3, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    iget-object v10, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v10}, Lmiui/notification/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 380
    iget-object v3, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v3, v6}, Lmiui/notification/SwipeHelper;->snapChild(Landroid/view/View;F)V

    .line 385
    .end local v2    # "dismissChild":Z
    .end local v4    # "maxVelocity":F
    .end local v5    # "escapeVelocity":F
    .end local v6    # "velocity":F
    .end local v7    # "perpendicularVelocity":F
    .end local v8    # "childSwipedFarEnough":Z
    .end local v9    # "childSwipedFastEnough":Z
    :cond_e
    :goto_6
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeLongPressCallback()V
    .locals 2

    .line 186
    iget-object v0, p0, Lmiui/notification/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lmiui/notification/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/notification/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 190
    :cond_0
    return-void
.end method

.method public setDensityScale(F)V
    .locals 0
    .param p1, "densityScale"    # F

    .line 95
    iput p1, p0, Lmiui/notification/SwipeHelper;->mDensityScale:F

    .line 96
    return-void
.end method

.method public setLongPressListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .line 91
    iput-object p1, p0, Lmiui/notification/SwipeHelper;->mLongPressListener:Landroid/view/View$OnLongClickListener;

    .line 92
    return-void
.end method

.method public setMinAlpha(F)V
    .locals 0
    .param p1, "minAlpha"    # F

    .line 140
    iput p1, p0, Lmiui/notification/SwipeHelper;->mMinAlpha:F

    .line 141
    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 0
    .param p1, "pagingTouchSlop"    # F

    .line 99
    iput p1, p0, Lmiui/notification/SwipeHelper;->mPagingTouchSlop:F

    .line 100
    return-void
.end method

.method public snapChild(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .line 302
    iget-object v0, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    invoke-interface {v0, p1}, Lmiui/notification/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 303
    .local v0, "animView":Landroid/view/View;
    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    invoke-interface {v1, v0}, Lmiui/notification/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    .line 304
    .local v1, "canAnimViewBeDismissed":Z
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lmiui/notification/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 305
    .local v2, "anim":Landroid/animation/ObjectAnimator;
    const/16 v3, 0x96

    .line 306
    .local v3, "duration":I
    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 307
    new-instance v4, Lmiui/notification/SwipeHelper$4;

    invoke-direct {v4, p0, v1, v0}, Lmiui/notification/SwipeHelper$4;-><init>(Lmiui/notification/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 315
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 316
    return-void
.end method
