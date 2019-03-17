.class public Lmiui/util/LongScreenshotUtils$ContentPort;
.super Ljava/lang/Object;
.source "LongScreenshotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LongScreenshotUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentPort"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/LongScreenshotUtils$ContentPort$H;
    }
.end annotation


# instance fields
.field private mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

.field private mIsFakeTouchForScroll:Z

.field private mIsFirstMove:Z

.field private mLastCaptureBottom:I

.field private mMainScrollView:Landroid/view/View;

.field private mMainScrollViewTop:I

.field private mNavBarHeight:I

.field private mNeedUseMultiTouch:Z

.field private mPrevScrolledY:I

.field private mPrevScrolledYChildView:Landroid/view/View;

.field private mScreenRect:Landroid/graphics/Rect;

.field private mTempLoc:[I

.field private mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mTotalScrollDistance:I

.field private mTouchY:I

.field private mVerticalEdge:I

.field private mVerticalScrollBarEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    .line 193
    new-instance v0, Lmiui/util/LongScreenshotUtils$ContentPort$H;

    invoke-direct {v0, p0}, Lmiui/util/LongScreenshotUtils$ContentPort$H;-><init>(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    .line 194
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    .line 311
    new-array v1, v0, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 312
    new-array v1, v0, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 314
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    if-ge v1, v0, :cond_4a

    .line 315
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v2, v1

    .line 316
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v2, v2, v1

    iput v1, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 317
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v2, v1

    .line 318
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 319
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v1

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 321
    .end local v1    # "i":I
    :cond_4a
    return-void
.end method

.method static synthetic access$000(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .registers 1
    .param p0, "x0"    # Lmiui/util/LongScreenshotUtils$ContentPort;

    .line 181
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->start()V

    return-void
.end method

.method static synthetic access$100(Lmiui/util/LongScreenshotUtils$ContentPort;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lmiui/util/LongScreenshotUtils$ContentPort;

    .line 181
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .registers 1
    .param p0, "x0"    # Lmiui/util/LongScreenshotUtils$ContentPort;

    .line 181
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->scrollView()V

    return-void
.end method

.method static synthetic access$300(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .registers 1
    .param p0, "x0"    # Lmiui/util/LongScreenshotUtils$ContentPort;

    .line 181
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->broadcastCallback()V

    return-void
.end method

.method static synthetic access$400(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .registers 1
    .param p0, "x0"    # Lmiui/util/LongScreenshotUtils$ContentPort;

    .line 181
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->finish()V

    return-void
.end method

.method private broadcastCallback()V
    .registers 11

    .line 350
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    .line 351
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    if-lt v0, v2, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    move v0, v1

    .line 354
    .local v0, "isEnd":Z
    :goto_19
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    if-eqz v2, :cond_33

    .line 355
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 356
    iget v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v1, v3, v1

    sub-int/2addr v2, v1

    .local v2, "scrolledY":I
    goto :goto_48

    .line 358
    .end local v2    # "scrolledY":I
    :cond_33
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 359
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v1, v3, v1

    sub-int/2addr v2, v1

    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    sub-int/2addr v2, v1

    .restart local v2    # "scrolledY":I
    :goto_48
    move v1, v2

    .line 361
    .end local v2    # "scrolledY":I
    .local v1, "scrolledY":I
    iget v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    add-int/2addr v2, v1

    iput v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    .line 363
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->calculateScrollViewTop()V

    .line 365
    iget v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 367
    .local v2, "headerViewAndScrollViewHeight":I
    iget v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mLastCaptureBottom:I

    if-nez v3, :cond_65

    .line 368
    iget v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int v3, v2, v3

    .line 369
    .local v3, "moveRectBottomLocBottom":I
    sub-int v4, v3, v1

    .line 371
    .local v4, "moveRectBottomLocTop":I
    iput v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mLastCaptureBottom:I

    goto :goto_72

    .line 373
    .end local v3    # "moveRectBottomLocBottom":I
    .end local v4    # "moveRectBottomLocTop":I
    :cond_65
    iget v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mLastCaptureBottom:I

    sub-int v4, v3, v1

    .line 374
    .restart local v4    # "moveRectBottomLocTop":I
    iget v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int v3, v2, v3

    .line 375
    .restart local v3    # "moveRectBottomLocBottom":I
    if-gt v3, v4, :cond_70

    .line 376
    move v3, v2

    .line 378
    :cond_70
    iput v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mLastCaptureBottom:I

    .line 381
    :goto_72
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.miui.util.LongScreenshotUtils.LongScreenshot"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "IsEnd"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 383
    const-string v6, "TopLoc"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    const-string v6, "BottomLoc"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    const-string v6, "ViewTop"

    iget v7, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    const-string v6, "ViewBottom"

    iget v7, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 389
    if-eqz v0, :cond_ae

    .line 390
    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v7, 0x4

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessageDelayed(IJ)Z

    .line 392
    :cond_ae
    return-void
.end method

.method private calculateScrollViewTop()V
    .registers 3

    .line 655
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 657
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    .line 658
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-static {v0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->findVisibleTop(Landroid/view/View;I)I

    move-result v0

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    .line 659
    return-void
.end method

.method private checkIsMainScrollView(Landroid/view/View;)Z
    .registers 12
    .param p1, "currView"    # Landroid/view/View;

    .line 528
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Lmiui/util/LongScreenshotUtils$ContentPort;->isKnownScrollableView(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_f

    invoke-virtual {p1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_77

    if-nez v1, :cond_f

    .line 529
    return v0

    .line 534
    :cond_f
    nop

    .line 536
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    .line 537
    .local v1, "minWidth":I
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 538
    .local v3, "halfScreenHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lt v4, v1, :cond_76

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-ge v4, v3, :cond_2d

    goto :goto_76

    .line 542
    :cond_2d
    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 543
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 544
    .local v4, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v5, v5, v0

    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v6, v6, v2

    iget-object v7, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v7, v7, v0

    .line 545
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v8, v8, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 544
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 546
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lt v5, v1, :cond_75

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge v5, v3, :cond_66

    goto :goto_75

    .line 550
    :cond_66
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v0, v0, v2

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    .line 551
    iget v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-static {p1, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->findVisibleTop(Landroid/view/View;I)I

    move-result v0

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    .line 552
    return v2

    .line 547
    :cond_75
    :goto_75
    return v0

    .line 539
    .end local v4    # "rect":Landroid/graphics/Rect;
    :cond_76
    :goto_76
    return v0

    .line 531
    .end local v1    # "minWidth":I
    .end local v3    # "halfScreenHeight":I
    :catch_77
    move-exception v1

    .line 532
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "LongScreenshotUtils"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    return v0
.end method

.method private checkIsMayHasBg()Z
    .registers 4

    .line 395
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "mainClsName":Ljava/lang/String;
    const-string v2, "com.miui.notes"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "com.miui.notes.editor.RichEditView$RichEditScrollView"

    .line 398
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    :cond_24
    const-string v2, "com.tencent.mobileqq"

    .line 399
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string v2, "com.tencent.mobileqq.bubble.ChatXListView"

    .line 400
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    :cond_34
    const-string v2, "com.tencent.mm"

    .line 401
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/ListView;

    if-eqz v2, :cond_44

    :cond_42
    const/4 v2, 0x1

    goto :goto_45

    :cond_44
    const/4 v2, 0x0

    .line 397
    :goto_45
    return v2
.end method

.method private checkNeedFakeTouchForScroll()Z
    .registers 4

    .line 406
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    if-nez v0, :cond_53

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    .line 407
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isRecyclerView(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    .line 408
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNestedScrollView(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_53

    .line 411
    :cond_20
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsoluteLayout;

    if-eqz v0, :cond_51

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-le v0, v2, :cond_50

    const-string v0, "com.ucmobile"

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    .line 413
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    const-string v0, "com.eg.android.AlipayGphone"

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    .line 414
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 415
    :cond_50
    return v1

    .line 417
    :cond_51
    const/4 v0, 0x1

    return v0

    .line 409
    :cond_53
    :goto_53
    return v1
.end method

.method private dispatchFakeTouchEvent(I)V
    .registers 21
    .param p1, "action"    # I

    move-object/from16 v0, p0

    .line 324
    iget-object v1, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 325
    iget-object v1, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v2

    iget-object v3, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 326
    iget-object v1, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v2

    iget v2, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    int-to-float v2, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v9, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v10, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v7, p1

    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 331
    .local v1, "event":Landroid/view/MotionEvent;
    iget-object v2, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 332
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 333
    return-void
.end method

.method private dispatchMoveAndReset(I)V
    .registers 6
    .param p1, "distance"    # I

    .line 336
    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFirstMove:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_11

    .line 337
    iget v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    .line 338
    invoke-direct {p0, v2}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 339
    iput-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFirstMove:Z

    goto :goto_29

    .line 341
    :cond_11
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 342
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v0

    iget v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int/2addr v0, v3

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    .line 343
    invoke-direct {p0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 344
    iget v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    .line 345
    invoke-direct {p0, v2}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 347
    :goto_29
    return-void
.end method

.method private findMainScrollView()Landroid/view/View;
    .registers 13

    .line 442
    invoke-static {}, Lmiui/util/LongScreenshotUtils$ContentPort;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 443
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    if-eqz v0, :cond_82

    .line 449
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "force_fsg_nav_bar"

    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 452
    .local v2, "forceImmersive":Z
    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 453
    .local v3, "wm":Landroid/view/WindowManager;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 454
    .local v4, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 455
    .local v5, "display":Landroid/view/Display;
    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 457
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_33

    .line 458
    iget-object v8, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    iget v9, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v8, v7, v7, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_6b

    .line 461
    :cond_33
    iget-object v8, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    iget v9, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v8, v7, v7, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 464
    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v8

    .line 465
    .local v8, "degree":I
    if-eqz v8, :cond_47

    const/4 v9, 0x2

    if-ne v8, v9, :cond_46

    goto :goto_47

    :cond_46
    goto :goto_48

    :cond_47
    :goto_47
    move v7, v6

    .line 467
    .local v7, "isPortrait":Z
    :goto_48
    sget-boolean v9, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v9, :cond_56

    .line 468
    iget-object v9, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNavBarHeight:I

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_6b

    .line 470
    :cond_56
    if-eqz v7, :cond_62

    .line 471
    iget-object v9, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNavBarHeight:I

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_6b

    .line 473
    :cond_62
    iget-object v9, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    iget v11, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNavBarHeight:I

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 478
    .end local v7    # "isPortrait":Z
    .end local v8    # "degree":I
    :goto_6b
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 479
    .local v7, "decorView":Landroid/view/View;
    invoke-direct {p0, v7}, Lmiui/util/LongScreenshotUtils$ContentPort;->findScrollView(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    .line 481
    .local v8, "scrollView":Landroid/view/View;
    if-nez v8, :cond_7a

    .line 482
    return-object v1

    .line 484
    :cond_7a
    invoke-virtual {v8, v6}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v6

    if-nez v6, :cond_81

    .line 485
    return-object v1

    .line 487
    :cond_81
    return-object v8

    .line 489
    .end local v2    # "forceImmersive":Z
    .end local v3    # "wm":Landroid/view/WindowManager;
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v5    # "display":Landroid/view/Display;
    .end local v7    # "decorView":Landroid/view/View;
    .end local v8    # "scrollView":Landroid/view/View;
    :cond_82
    const-string v2, "LongScreenshotUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get top activity in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-object v1
.end method

.method private findScrollView(Landroid/view/View;)Landroid/view/View;
    .registers 6
    .param p1, "currView"    # Landroid/view/View;

    .line 495
    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2f

    .line 498
    :cond_a
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_27

    .line 499
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 500
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_17
    if-ltz v2, :cond_27

    .line 501
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lmiui/util/LongScreenshotUtils$ContentPort;->findScrollView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 502
    .local v3, "result":Landroid/view/View;
    if-eqz v3, :cond_24

    .line 503
    return-object v3

    .line 500
    .end local v3    # "result":Landroid/view/View;
    :cond_24
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 508
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_27
    invoke-direct {p0, p1}, Lmiui/util/LongScreenshotUtils$ContentPort;->checkIsMainScrollView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 509
    return-object p1

    .line 512
    :cond_2e
    return-object v0

    .line 496
    :cond_2f
    :goto_2f
    return-object v0
.end method

.method private static findVisibleTop(Landroid/view/View;I)I
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "absTop"    # I

    .line 556
    const/4 v0, 0x0

    move-object v1, p0

    move p0, v0

    .line 558
    .local v1, "view":Landroid/view/View;
    .local p0, "offset":I
    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr p0, v2

    .line 559
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_18

    .line 560
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    goto :goto_3

    .line 565
    :cond_18
    if-gez p0, :cond_1b

    .line 566
    sub-int/2addr p1, p0

    .line 568
    :cond_1b
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private finish()V
    .registers 3

    .line 296
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 298
    :cond_5
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->removeMessages(I)V

    .line 299
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalScrollBarEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 301
    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    if-eqz v0, :cond_1a

    .line 302
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 305
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    .line 306
    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mLastCaptureBottom:I

    .line 309
    return-void
.end method

.method private getExpectScrollDistance()I
    .registers 3

    .line 580
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v0

    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 581
    .local v0, "h":I
    div-int/lit8 v1, v0, 0x2

    return v1
.end method

.method private getScrollViewVisibleHeight()I
    .registers 4

    .line 644
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 645
    .local v0, "height":I
    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gt v1, v2, :cond_12

    .line 646
    return v0

    .line 648
    :cond_12
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private static getTopActivity()Landroid/app/Activity;
    .registers 9

    .line 421
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 423
    .local v0, "activityThread":Landroid/app/ActivityThread;
    :try_start_4
    const-class v1, Landroid/app/ActivityThread;

    const-string v2, "mActivities"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 424
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 425
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 426
    .local v3, "map":Landroid/util/ArrayMap;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_3e

    .line 427
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 428
    .local v5, "activityClientRecord":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 429
    .local v6, "activityField":Ljava/lang/reflect/Field;
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 430
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    .line 431
    .local v7, "activity":Landroid/app/Activity;
    invoke-virtual {v7}, Landroid/app/Activity;->isResumed()Z

    move-result v8
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_38} :catch_3f

    if-eqz v8, :cond_3b

    .line 432
    return-object v7

    .line 426
    .end local v5    # "activityClientRecord":Ljava/lang/Object;
    .end local v6    # "activityField":Ljava/lang/reflect/Field;
    .end local v7    # "activity":Landroid/app/Activity;
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 437
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "map":Landroid/util/ArrayMap;
    .end local v4    # "i":I
    :cond_3e
    goto :goto_43

    .line 435
    :catch_3f
    move-exception v1

    .line 436
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 438
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_43
    const/4 v1, 0x0

    return-object v1
.end method

.method private isKnownScrollableView(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 516
    instance-of v0, p1, Landroid/widget/AbsListView;

    if-nez v0, :cond_23

    instance-of v0, p1, Landroid/widget/ListView;

    if-nez v0, :cond_23

    instance-of v0, p1, Landroid/widget/ScrollView;

    if-nez v0, :cond_23

    .line 519
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isRecyclerView(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 520
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNestedScrollView(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    .line 523
    :cond_21
    const/4 v0, 0x0

    return v0

    .line 521
    :cond_23
    :goto_23
    const/4 v0, 0x1

    return v0
.end method

.method private isNestedScrollView(Ljava/lang/Class;)Z
    .registers 4
    .param p1, "cls"    # Ljava/lang/Class;

    .line 590
    const-string v0, "android.support.v4.widget.NestedScrollView"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 591
    const/4 v0, 0x1

    return v0

    .line 593
    :cond_e
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 594
    const/4 v0, 0x0

    return v0

    .line 596
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNestedScrollView(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private isRecyclerView(Ljava/lang/Class;)Z
    .registers 4
    .param p1, "cls"    # Ljava/lang/Class;

    .line 600
    const-string v0, "android.support.v7.widget.RecyclerView"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 601
    const/4 v0, 0x1

    return v0

    .line 603
    :cond_e
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 604
    const/4 v0, 0x0

    return v0

    .line 606
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isRecyclerView(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private isTencentApp()Z
    .registers 3

    .line 585
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, "com.tencent."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private scrollView()V
    .registers 3

    .line 572
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 573
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getExpectScrollDistance()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->scrollY(Landroid/view/View;I)V

    .line 575
    :cond_12
    return-void
.end method

.method private scrollY(Landroid/view/View;I)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "distance"    # I

    .line 610
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_45

    instance-of v0, p1, Landroid/widget/ScrollView;

    if-nez v0, :cond_45

    .line 612
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNestedScrollView(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_45

    instance-of v0, p1, Landroid/webkit/WebView;

    if-nez v0, :cond_45

    instance-of v0, p1, Landroid/widget/AbsoluteLayout;

    if-nez v0, :cond_45

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 615
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_45

    .line 616
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 617
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 618
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    .line 619
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v1, v3, v1

    add-int/2addr v2, v1

    iput v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    .line 620
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    goto :goto_58

    .line 621
    :cond_45
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    .line 622
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 623
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v1, v2, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    .line 626
    :goto_58
    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    if-eqz v0, :cond_6e

    .line 627
    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNeedUseMultiTouch:Z

    if-eqz v0, :cond_64

    .line 628
    invoke-direct {p0, p2}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchMoveAndReset(I)V

    goto :goto_7d

    .line 630
    :cond_64
    iget v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    sub-int/2addr v0, p2

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    .line 631
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    goto :goto_7d

    .line 634
    :cond_6e
    instance-of v0, p1, Landroid/widget/AbsListView;

    if-eqz v0, :cond_79

    .line 635
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    goto :goto_7d

    .line 638
    :cond_79
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->scrollBy(II)V

    .line 641
    :goto_7d
    return-void
.end method

.method private start()V
    .registers 5

    .line 276
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    .line 277
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    iput v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    .line 278
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalScrollBarEnabled:Z

    .line 279
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->checkNeedFakeTouchForScroll()Z

    move-result v1

    iput-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    .line 281
    iget-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    if-eqz v1, :cond_3d

    .line 284
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/AbsListView;

    const/4 v2, 0x1

    if-nez v1, :cond_2c

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isTencentApp()Z

    move-result v1

    if-eqz v1, :cond_2c

    move v1, v2

    goto :goto_2d

    :cond_2c
    move v1, v0

    :goto_2d
    iput-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNeedUseMultiTouch:Z

    .line 286
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v1

    iget v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int/2addr v1, v3

    iput v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    .line 287
    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 288
    iput-boolean v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFirstMove:Z

    .line 291
    :cond_3d
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 292
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessage(I)Z

    .line 293
    return-void
.end method


# virtual methods
.method public longScreenshot(II)Z
    .registers 9
    .param p1, "cmd"    # I
    .param p2, "navBarHeight"    # I

    .line 236
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_44

    goto :goto_42

    .line 267
    :pswitch_5
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessage(I)Z

    goto :goto_42

    .line 262
    :pswitch_c
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessage(I)Z

    .line 263
    goto :goto_42

    .line 239
    :pswitch_13
    iput p2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNavBarHeight:I

    .line 241
    const/4 v1, 0x0

    .line 243
    .local v1, "mainScrollView":Landroid/view/View;
    :try_start_16
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->findMainScrollView()Landroid/view/View;

    move-result-object v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1a} :catch_1c

    move-object v1, v2

    .line 246
    goto :goto_33

    .line 244
    :catch_1c
    move-exception v2

    .line 245
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "LongScreenshotUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findMainScrollView exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_33
    if-nez v1, :cond_37

    .line 249
    const/4 v0, 0x0

    return v0

    .line 252
    :cond_37
    if-ne p1, v0, :cond_3a

    .line 253
    return v0

    .line 256
    :cond_3a
    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    .line 257
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    invoke-virtual {v2, v0}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessage(I)Z

    .line 258
    nop

    .line 272
    .end local v1    # "mainScrollView":Landroid/view/View;
    :goto_42
    return v0

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_c
        :pswitch_5
    .end packed-switch
.end method
