.class public Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;
.super Ljava/lang/Object;
.source "RecorderThumbnailWindow.java"


# static fields
.field private static final SHAKE_ANIMATOR_DURATION:I = 0x258

.field private static final SLIDE_OUT_VELOCITY_THRESHOLD_DP:I = -0xaa

.field public static final TAG:Ljava/lang/String; = "RecorderThumbnailWindow"

.field private static final THUMBNAIL_SCALE:F = 0.185f

.field private static final THUMBNAIL_SUSPENDING_TIME:I = 0xe10


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFilePath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsInOutAnimating:Z

.field private mIsQuited:Z

.field private mIsThumbnailMoving:Z

.field private mQuitThumbnailRunnable:Ljava/lang/Runnable;

.field private mRingtone:Landroid/media/Ringtone;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenshotAnimation:Landroid/animation/AnimatorSet;

.field private mScreenshotLayout:Landroid/view/View;

.field private mScreenshotMaskPenal:Landroid/view/View;

.field private mScreenshotView:Landroid/widget/ImageView;

.field private mShotMarginTop:I

.field private mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mThumbnailMarginRight:I

.field private mThumbnailMarginTop:I

.field private mThumbnailRootView:Landroid/view/View;

.field private mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

.field private mThumbnailView:Landroid/widget/ImageView;

.field private mTouchDownY:F

.field private mVTracker:Landroid/view/VelocityTracker;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mHandler:Landroid/os/Handler;

    .line 75
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mVTracker:Landroid/view/VelocityTracker;

    .line 259
    new-instance v0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$6;

    invoke-direct {v0, p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$6;-><init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)V

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mQuitThumbnailRunnable:Ljava/lang/Runnable;

    .line 86
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mFilePath:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->init()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->onThumbnailViewTouch(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 45
    iget v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailMarginTop:I

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->hasScreenshotSoundEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 45
    iget v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailMarginRight:I

    return v0
.end method

.method static synthetic access$1800(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->moveThumbnailWindowY(I)V

    return-void
.end method

.method static synthetic access$2000(FFFF)F
    .locals 1
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->calcPivot(FFFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 45
    iget v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mShotMarginTop:I

    return v0
.end method

.method static synthetic access$2200(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotMaskPenal:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->quitThumbnailWindow(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mIsInOutAnimating:Z

    return p1
.end method

.method static synthetic access$800(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->isShowThumbnail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->startGotoThumbnailAnimation()V

    return-void
.end method

.method private static calcPivot(FFFF)F
    .locals 2
    .param p0, "bigStart"    # F
    .param p1, "bigSize"    # F
    .param p2, "shortStart"    # F
    .param p3, "shortSize"    # F

    .prologue
    .line 500
    sub-float v0, p2, p0

    mul-float/2addr v0, p3

    sub-float v1, p1, p3

    div-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method private createFinishAnimation()Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 504
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 505
    .local v0, "anim":Landroid/animation/Animator;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 506
    new-instance v1, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$13;

    invoke-direct {v1, p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$13;-><init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 512
    return-object v0

    .line 504
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getRecorderBitmap()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 373
    :try_start_0
    const-string v4, "miui.util.ScreenshotUtils"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 374
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getScreenshot"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v1, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 375
    .local v3, "method":Ljava/lang/reflect/Method;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v4, v7, :cond_0

    .line 376
    const/4 v4, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mContext:Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v3, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 377
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 378
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    move v4, v5

    .line 397
    :goto_1
    return v4

    .line 380
    .restart local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    const/4 v4, 0x0

    const/4 v7, 0x1

    :try_start_1
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mContext:Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v3, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 382
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 383
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "RecorderThumbnailWindow"

    const-string v7, "error in getRecorderBitmap"

    invoke-static {v4, v7, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 390
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 391
    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 394
    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mDisplay:Landroid/view/Display;

    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 395
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->startAnimation()V

    move v4, v6

    .line 397
    goto :goto_1
.end method

.method private hasScreenshotSoundEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 445
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "has_screenshot_sound"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->initWindow()V

    .line 171
    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    .line 172
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 174
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-direct {p0, v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->initScreenshotView(Landroid/view/LayoutInflater;)V

    .line 175
    invoke-direct {p0, v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->initThumbnailView(Landroid/view/LayoutInflater;)V

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/high16 v3, 0x7f050000

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 180
    .local v1, "screenShotUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mRingtone:Landroid/media/Ringtone;

    .line 181
    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mRingtone:Landroid/media/Ringtone;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mRingtone:Landroid/media/Ringtone;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 184
    :cond_0
    return-void
.end method

.method private initScreenshotView(Landroid/view/LayoutInflater;)V
    .locals 2
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 111
    const v0, 0x7f030002

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotLayout:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotLayout:Landroid/view/View;

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotView:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotLayout:Landroid/view/View;

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotMaskPenal:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotLayout:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 115
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotLayout:Landroid/view/View;

    new-instance v1, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$1;

    invoke-direct {v1, p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$1;-><init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 122
    return-void
.end method

.method private initThumbnailView(Landroid/view/LayoutInflater;)V
    .locals 10
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x0

    .line 126
    const v0, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailRootView:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailRootView:Landroid/view/View;

    const v2, 0x7f0b0008

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailView:Landroid/widget/ImageView;

    .line 128
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailView:Landroid/widget/ImageView;

    new-instance v2, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$2;

    invoke-direct {v2, p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$2;-><init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mShotMarginTop:I

    .line 136
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailMarginRight:I

    .line 137
    invoke-static {}, Lcom/miui/screenrecorder/tools/DisplayUtils;->hasNotchScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    .line 138
    iget v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mShotMarginTop:I

    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/screenrecorder/tools/DisplayUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailMarginTop:I

    .line 143
    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailMarginRight:I

    iget v4, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailMarginTop:I

    const/16 v5, 0x7de

    const v6, 0x1080708

    const/4 v7, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 154
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x35

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 155
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "ScreenrecorderThumbnail"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v8, v0

    .line 157
    .local v8, "maxShakeOffset":I
    new-array v0, v9, [I

    aput v1, v0, v1

    const/4 v1, 0x1

    aput v8, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    .line 158
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 159
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 160
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 161
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 162
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$3;

    invoke-direct {v1, p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$3;-><init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 167
    return-void

    .line 141
    .end local v8    # "maxShakeOffset":I
    :cond_0
    iget v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mShotMarginTop:I

    iput v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailMarginTop:I

    goto :goto_0
.end method

.method private initWindow()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 92
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 93
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mDisplay:Landroid/view/Display;

    .line 94
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 95
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 98
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7df

    const v6, 0x1080500

    const/4 v7, -0x3

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 106
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "ScreenRecorderAnimation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method private isShowThumbnail()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 451
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private moveThumbnailWindowY(I)V
    .locals 3
    .param p1, "y"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 271
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private onThumbnailViewClick()Z
    .locals 4

    .prologue
    .line 275
    const-string v0, "Screenrecorder_thumbnail_window"

    const-string v1, "thumbnail_window_click"

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 279
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$7;

    invoke-direct {v1, p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$7;-><init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)V

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->convertTmpFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->playVideo(Landroid/content/Context;Ljava/lang/String;)V

    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method private onThumbnailViewTouch(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v10, 0xe10

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 187
    iget-boolean v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mIsInOutAnimating:Z

    if-eqz v5, :cond_0

    .line 257
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 190
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mVTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 194
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mTouchDownY:F

    .line 195
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mQuitThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 196
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 200
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v6, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mTouchDownY:F

    sub-float/2addr v5, v6

    float-to-int v2, v5

    .line 201
    .local v2, "offsetY":I
    iget-boolean v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mIsThumbnailMoving:Z

    if-nez v5, :cond_1

    .line 202
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 203
    iput-boolean v7, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mIsThumbnailMoving:Z

    .line 205
    :cond_1
    move v3, v2

    .line 206
    .local v3, "realUseOffsetY":I
    if-lez v2, :cond_2

    int-to-double v6, v3

    const-wide v8, 0x3fe6666666666666L    # 0.7

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v3, v6

    .line 207
    :cond_2
    iget v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailMarginTop:I

    add-int v6, v5, v3

    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    .line 208
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v6

    .line 207
    invoke-direct {p0, v5}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->moveThumbnailWindowY(I)V

    goto :goto_0

    .line 213
    .end local v2    # "offsetY":I
    .end local v3    # "realUseOffsetY":I
    :pswitch_2
    iget-boolean v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mIsThumbnailMoving:Z

    if-nez v5, :cond_4

    .line 214
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->onThumbnailViewClick()Z

    move-result v1

    .line 215
    .local v1, "isOK":Z
    if-nez v1, :cond_3

    .line 217
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mQuitThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 253
    .end local v1    # "isOK":Z
    :cond_3
    :goto_1
    iput-boolean v8, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mIsThumbnailMoving:Z

    .line 254
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mVTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 221
    :cond_4
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mVTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 222
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 223
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, -0x3cd60000    # -170.0f

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 224
    .local v4, "slideOutVelocityThresholdPx":I
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mVTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    int-to-float v6, v4

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    .line 225
    const-string v5, "Screenrecorder_thumbnail_window"

    const-string v6, "thumbnail_window_remove_manual"

    invoke-static {v5, v6}, Lcom/miui/screenrecorder/tools/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0, v7}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->quitThumbnailWindow(Z)V

    goto :goto_1

    .line 230
    :cond_5
    const/4 v5, 0x2

    new-array v5, v5, [I

    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    aput v6, v5, v8

    iget v6, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailMarginTop:I

    aput v6, v5, v7

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 232
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x64

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 233
    new-instance v5, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$4;

    invoke-direct {v5, p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$4;-><init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 239
    new-instance v5, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$5;

    invoke-direct {v5, p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$5;-><init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 246
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 247
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 250
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mQuitThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private quitThumbnailWindow(Z)V
    .locals 6
    .param p1, "isAnimating"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 290
    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-boolean v2, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mIsQuited:Z

    if-nez v2, :cond_0

    .line 292
    iput-boolean v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mIsQuited:Z

    .line 294
    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mQuitThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 295
    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 297
    if-nez p1, :cond_2

    .line 298
    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailRootView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 300
    :cond_2
    iput-boolean v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mIsInOutAnimating:Z

    .line 301
    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 302
    .local v1, "initWindowY":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v4, v2, v4

    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailMarginTop:I

    add-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 303
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 304
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 305
    new-instance v2, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$8;

    invoke-direct {v2, p0, v1}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$8;-><init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 311
    new-instance v2, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$9;

    invoke-direct {v2, p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$9;-><init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 319
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private showThumbnailWindow()V
    .locals 8

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const v4, 0x3e3d70a4    # 0.185f

    const/4 v6, 0x0

    .line 336
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 368
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 338
    invoke-direct {p0, v6}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->quitThumbnailWindow(Z)V

    .line 341
    :cond_1
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    float-to-int v2, v3

    .line 342
    .local v2, "thumbnailWidth":I
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    float-to-int v1, v3

    .line 343
    .local v1, "thumbnailHeight":I
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 344
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 345
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailRootView:Landroid/view/View;

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 346
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 345
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 347
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailRootView:Landroid/view/View;

    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailRootView:Landroid/view/View;

    .line 348
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 347
    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 350
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailMarginTop:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 351
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 352
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 354
    iput-boolean v6, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mIsQuited:Z

    .line 358
    :try_start_0
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailRootView:Landroid/view/View;

    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_1
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mQuitThumbnailRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xe10

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 366
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 367
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailView:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 361
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailRootView:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 362
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailRootView:Landroid/view/View;

    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private startAnimation()V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 405
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 406
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 407
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 408
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 411
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    .line 416
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    .line 417
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->createFinishAnimation()Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 416
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 418
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$10;

    invoke-direct {v1, p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$10;-><init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 428
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotLayout:Landroid/view/View;

    new-instance v1, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$11;

    invoke-direct {v1, p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$11;-><init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 442
    return-void
.end method

.method private startGotoThumbnailAnimation()V
    .locals 2

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->showThumbnailWindow()V

    .line 458
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mScreenshotView:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;

    invoke-direct {v1, p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;-><init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 497
    return-void
.end method


# virtual methods
.method public showWindow()V
    .locals 3

    .prologue
    .line 324
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->getRecorderBitmap()Z

    move-result v0

    .line 328
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 329
    const-string v1, "Screenrecorder_thumbnail_window"

    const-string v2, "thumbnail_window_show"

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->showThumbnailWindow()V

    goto :goto_0
.end method
