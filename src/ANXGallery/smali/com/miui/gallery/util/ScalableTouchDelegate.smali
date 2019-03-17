.class public Lcom/miui/gallery/util/ScalableTouchDelegate;
.super Landroid/view/TouchDelegate;
.source "ScalableTouchDelegate.java"


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mDelegateTargeted:Z

.field private mDelegateView:Landroid/view/View;

.field private mHostView:Landroid/view/View;

.field private mScale:F

.field private mSlop:I

.field private mSlopBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(FLandroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "scale"    # F
    .param p2, "hostView"    # Landroid/view/View;
    .param p3, "delegateView"    # Landroid/view/View;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0, p3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 30
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mScale:F

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mBounds:Landroid/graphics/Rect;

    .line 32
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mSlop:I

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 34
    iput-object p3, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mDelegateView:Landroid/view/View;

    .line 35
    iput-object p2, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mHostView:Landroid/view/View;

    .line 36
    return-void

    .line 30
    :cond_0
    sub-float v0, p1, v1

    goto :goto_0
.end method

.method private setBounds()V
    .locals 10

    .prologue
    .line 39
    iget-object v4, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 43
    .local v0, "delegateRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .local v3, "hostRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 45
    iget-object v4, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mHostView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 46
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    iget-object v4, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mBounds:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 52
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mScale:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 53
    .local v1, "dx":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mScale:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 54
    .local v2, "dy":I
    iget-object v4, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mBounds:Landroid/graphics/Rect;

    neg-int v5, v1

    neg-int v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 55
    iget-object v4, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 56
    iget-object v4, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    iget v5, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mSlop:I

    neg-int v5, v5

    iget v6, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mSlop:I

    neg-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 61
    .local v7, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 62
    .local v8, "y":I
    const/4 v4, 0x0

    .line 63
    .local v4, "sendToDelegate":Z
    const/4 v3, 0x1

    .line 64
    .local v3, "hit":Z
    const/4 v2, 0x0

    .line 66
    .local v2, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 91
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 92
    iget-object v1, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mDelegateView:Landroid/view/View;

    .line 94
    .local v1, "delegateView":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 103
    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 105
    .end local v1    # "delegateView":Landroid/view/View;
    :cond_1
    return v2

    .line 68
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/gallery/util/ScalableTouchDelegate;->setBounds()V

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mBounds:Landroid/graphics/Rect;

    .line 71
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 72
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mDelegateTargeted:Z

    .line 73
    const/4 v4, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :pswitch_1
    iget-boolean v4, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mDelegateTargeted:Z

    .line 79
    if-eqz v4, :cond_0

    .line 80
    iget-object v6, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 81
    .local v6, "slopBounds":Landroid/graphics/Rect;
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-nez v9, :cond_0

    .line 82
    const/4 v3, 0x0

    goto :goto_0

    .line 87
    .end local v6    # "slopBounds":Landroid/graphics/Rect;
    :pswitch_2
    iget-boolean v4, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mDelegateTargeted:Z

    .line 88
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mDelegateTargeted:Z

    goto :goto_0

    .line 100
    .restart local v1    # "delegateView":Landroid/view/View;
    :cond_2
    iget v5, p0, Lcom/miui/gallery/util/ScalableTouchDelegate;->mSlop:I

    .line 101
    .local v5, "slop":I
    mul-int/lit8 v9, v5, 0x2

    neg-int v9, v9

    int-to-float v9, v9

    mul-int/lit8 v10, v5, 0x2

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
