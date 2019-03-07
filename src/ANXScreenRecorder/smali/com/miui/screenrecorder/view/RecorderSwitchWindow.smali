.class public Lcom/miui/screenrecorder/view/RecorderSwitchWindow;
.super Landroid/widget/LinearLayout;
.source "RecorderSwitchWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnLayoutParamListener;,
        Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;
    }
.end annotation


# instance fields
.field public closeXPos:I

.field private displayHeight:I

.field private displayWidth:I

.field private isWindowSleep:Z

.field private layoutListener:Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnLayoutParamListener;

.field private listener:Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mClickTimer:Landroid/os/CountDownTimer;

.field private mContext:Landroid/content/Context;

.field private mCurrentArea:Ljava/lang/String;

.field private mCurrentStatus:I

.field public mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mLocale:Ljava/util/Locale;

.field private mOrientation:I

.field private mTimer:Landroid/widget/Chronometer;

.field private minDisplayY:I

.field private record_switch:Landroid/widget/ImageView;

.field private start_text:Landroid/widget/TextView;

.field private subWindowStubWidth:I

.field private time_close:Landroid/widget/ImageView;

.field public viewHeight:I

.field public viewWidth:I

.field private windowManager:Landroid/view/WindowManager;

.field private xDownInScreen:F

.field private xInView:F

.field private xMoved:F

.field private yDownInScreen:F

.field private yInView:F

.field private yMoved:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x7d0

    const/4 v8, 0x0

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    iput v8, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->subWindowStubWidth:I

    .line 66
    iput v8, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->minDisplayY:I

    .line 68
    iput-boolean v8, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->isWindowSleep:Z

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mCurrentStatus:I

    .line 75
    const-string v0, "portrait_6"

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mCurrentArea:Ljava/lang/String;

    .line 492
    new-instance v0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$2;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$2;-><init>(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;JJ)V

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mClickTimer:Landroid/os/CountDownTimer;

    .line 81
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mOrientation:I

    .line 83
    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->getLocaleFromConfig(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mLocale:Ljava/util/Locale;

    .line 84
    const-string v0, "window"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->windowManager:Landroid/view/WindowManager;

    .line 86
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 87
    .local v6, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 88
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->displayWidth:I

    .line 89
    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->displayHeight:I

    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030007

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 91
    .local v7, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/screenrecorder/tools/DisplayUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->minDisplayY:I

    .line 92
    const v0, 0x7f0b0012

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->record_switch:Landroid/widget/ImageView;

    .line 93
    const v0, 0x7f0b0014

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->time_close:Landroid/widget/ImageView;

    .line 94
    const v0, 0x7f0b0015

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mTimer:Landroid/widget/Chronometer;

    .line 95
    const v0, 0x7f0b0013

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->start_text:Landroid/widget/TextView;

    .line 97
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 98
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 99
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x1128

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 104
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 105
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 107
    invoke-virtual {p0, v8, v8}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->notifyViewChanged(IZ)V

    .line 108
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->startClickTimerIfNeed()V

    .line 110
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->record_switch:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$1;

    invoke-direct {v1, p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$1;-><init>(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method private SwitchWindowAnimator(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->cancelAnimator()V

    .line 517
    invoke-direct {p0, p1, p2}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->initSwitchWindowAnimator(II)V

    .line 518
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 519
    return-void
.end method

.method static synthetic access$000(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->record_switch:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->start_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->displayHeight:I

    return v0
.end method

.method static synthetic access$202(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->isWindowSleep:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchWindow;
    .param p1, "x1"    # F

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->setWindowAlpha(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->subWindowStubWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->onLayoutParamChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mCurrentArea:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchWindow;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mCurrentArea:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->displayWidth:I

    return v0
.end method

.method private cancelAnimator()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 555
    :cond_0
    return-void
.end method

.method private changeViewStatus(I)V
    .locals 5
    .param p1, "recorderViewStatus"    # I

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 455
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mTimer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 457
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 458
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0, v4}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->time_close:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->start_text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->record_switch:Landroid/widget/ImageView;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 462
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->record_switch:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 472
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 465
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->time_close:Landroid/widget/ImageView;

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 467
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->time_close:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->record_switch:Landroid/widget/ImageView;

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 469
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->record_switch:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->start_text:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private getNaviBarHeight()I
    .locals 1

    .prologue
    .line 356
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->getInstance(Landroid/content/Context;)Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->getNaviBarHeight()I

    move-result v0

    return v0
.end method

.method private getRealX(I)I
    .locals 6
    .param p1, "currentX"    # I

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "fixOffsetX":I
    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/screenrecorder/tools/DisplayUtils;->getScreenRotateState(Landroid/view/Display;)I

    move-result v3

    .line 279
    .local v3, "screenState":I
    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->layoutListener:Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnLayoutParamListener;

    if-eqz v4, :cond_2

    .line 281
    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->layoutListener:Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnLayoutParamListener;

    invoke-interface {v4}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnLayoutParamListener;->getSubWindowStubWidth()I

    move-result v4

    iput v4, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->subWindowStubWidth:I

    .line 282
    iget v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->subWindowStubWidth:I

    .line 283
    .local v1, "newSubX":I
    move v2, p1

    .line 284
    .local v2, "newX":I
    packed-switch v3, :pswitch_data_0

    .line 298
    :cond_0
    :goto_0
    sub-int v4, p1, v0

    iget v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->subWindowStubWidth:I

    sub-int/2addr v4, v5

    if-ltz v4, :cond_1

    .line 309
    .end local v1    # "newSubX":I
    .end local v2    # "newX":I
    :goto_1
    return v2

    .line 286
    .restart local v1    # "newSubX":I
    .restart local v2    # "newX":I
    :pswitch_0
    invoke-static {}, Lcom/miui/screenrecorder/tools/DisplayUtils;->hasNotchScreen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/screenrecorder/tools/DisplayUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 288
    add-int/2addr v1, v0

    goto :goto_0

    .line 292
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getNaviBarHeight()I

    move-result v0

    .line 293
    sub-int/2addr v2, v0

    .line 294
    goto :goto_0

    :cond_1
    move v2, v1

    .line 298
    goto :goto_1

    .line 300
    .end local v1    # "newSubX":I
    .end local v2    # "newX":I
    :cond_2
    packed-switch v3, :pswitch_data_1

    .line 307
    :goto_2
    const/4 v4, 0x0

    iput v4, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->subWindowStubWidth:I

    .line 309
    sub-int v2, p1, v0

    goto :goto_1

    .line 302
    :pswitch_2
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getNaviBarHeight()I

    move-result v0

    .line 303
    goto :goto_2

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 300
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch
.end method

.method private getRealY(I)I
    .locals 4
    .param p1, "currentY"    # I

    .prologue
    .line 319
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->layoutListener:Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnLayoutParamListener;

    if-eqz v3, :cond_2

    .line 321
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->layoutListener:Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnLayoutParamListener;

    invoke-interface {v3}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnLayoutParamListener;->getSubWindowHeight()I

    move-result v2

    .line 322
    .local v2, "subWindowHeight":I
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/screenrecorder/tools/DisplayUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 323
    .local v0, "fixOffsetY":I
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/screenrecorder/tools/DisplayUtils;->getScreenRotateState(Landroid/view/Display;)I

    move-result v1

    .line 324
    .local v1, "screenState":I
    packed-switch v1, :pswitch_data_0

    .line 336
    :goto_0
    sub-int v3, p1, v0

    sub-int/2addr v3, v2

    if-ltz v3, :cond_1

    move v3, p1

    .line 347
    .end local v0    # "fixOffsetY":I
    .end local v1    # "screenState":I
    .end local v2    # "subWindowHeight":I
    :goto_1
    return v3

    .line 327
    .restart local v0    # "fixOffsetY":I
    .restart local v1    # "screenState":I
    .restart local v2    # "subWindowHeight":I
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->isFullScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    const/4 v0, 0x0

    goto :goto_0

    .line 330
    :cond_0
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/screenrecorder/tools/DisplayUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 332
    goto :goto_0

    .line 336
    :cond_1
    add-int v3, v2, v0

    goto :goto_1

    .line 339
    .end local v0    # "fixOffsetY":I
    .end local v1    # "screenState":I
    .end local v2    # "subWindowHeight":I
    :cond_2
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->isFullScreen()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 340
    const/4 v3, 0x0

    iput v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->minDisplayY:I

    .line 344
    :goto_2
    iget v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->minDisplayY:I

    if-ge p1, v3, :cond_3

    iget p1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->minDisplayY:I

    :cond_3
    move v3, p1

    .line 347
    goto :goto_1

    .line 342
    :cond_4
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/screenrecorder/tools/DisplayUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->minDisplayY:I

    goto :goto_2

    .line 324
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getYtoLeft(I)I
    .locals 3
    .param p1, "screenState"    # I

    .prologue
    .line 418
    packed-switch p1, :pswitch_data_0

    .line 430
    iget v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->subWindowStubWidth:I

    add-int/lit8 v0, v1, 0x14

    .line 433
    .local v0, "endY":I
    :goto_0
    return v0

    .line 420
    .end local v0    # "endY":I
    :pswitch_0
    iget v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->subWindowStubWidth:I

    add-int/lit8 v0, v1, 0x14

    .line 421
    .restart local v0    # "endY":I
    goto :goto_0

    .line 423
    .end local v0    # "endY":I
    :pswitch_1
    invoke-static {}, Lcom/miui/screenrecorder/tools/DisplayUtils;->hasNotchScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    iget v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->subWindowStubWidth:I

    add-int/lit8 v1, v1, 0x14

    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/screenrecorder/tools/DisplayUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    add-int v0, v1, v2

    .restart local v0    # "endY":I
    goto :goto_0

    .line 426
    .end local v0    # "endY":I
    :cond_0
    iget v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->subWindowStubWidth:I

    add-int/lit8 v0, v1, 0x14

    .line 428
    .restart local v0    # "endY":I
    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getYtoRight(II)I
    .locals 3
    .param p1, "screenState"    # I
    .param p2, "dWidth"    # I

    .prologue
    .line 394
    packed-switch p1, :pswitch_data_0

    .line 410
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int v1, p2, v1

    add-int/lit8 v0, v1, -0x14

    .line 413
    .local v0, "endY":I
    :goto_0
    return v0

    .line 396
    .end local v0    # "endY":I
    :pswitch_0
    invoke-static {}, Lcom/miui/screenrecorder/tools/DisplayUtils;->hasNotchScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getNaviBarHeight()I

    move-result v1

    if-nez v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/screenrecorder/tools/DisplayUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x14

    .restart local v0    # "endY":I
    goto :goto_0

    .line 400
    .end local v0    # "endY":I
    :cond_0
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/screenrecorder/tools/DisplayUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x14

    .restart local v0    # "endY":I
    goto :goto_0

    .line 403
    .end local v0    # "endY":I
    :cond_1
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int v1, p2, v1

    add-int/lit8 v0, v1, -0x14

    .line 405
    .restart local v0    # "endY":I
    goto :goto_0

    .line 407
    .end local v0    # "endY":I
    :pswitch_1
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int v1, p2, v1

    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getNaviBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x14

    .line 408
    .restart local v0    # "endY":I
    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initSwitchWindowAnimator(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 522
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mAnimator:Landroid/animation/ValueAnimator;

    .line 523
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 524
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 525
    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 526
    .local v0, "interpolator":Lmiui/view/animation/CubicEaseOutInterpolator;
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 527
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;-><init>(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;II)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 542
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$4;

    invoke-direct {v2, p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$4;-><init>(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 549
    return-void

    .line 522
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isFullScreen()Z
    .locals 1

    .prologue
    .line 351
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->getInstance(Landroid/content/Context;)Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->isFullScreen()Z

    move-result v0

    return v0
.end method

.method private keepEdge(IZ)V
    .locals 7
    .param p1, "startX"    # I
    .param p2, "useAnim"    # Z

    .prologue
    .line 367
    const/4 v1, 0x0

    .line 368
    .local v1, "dWidth":I
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 369
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 370
    .local v2, "deviceOri":I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 371
    iget v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->displayWidth:I

    iget v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->displayHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 376
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/screenrecorder/tools/DisplayUtils;->getScreenRotateState(Landroid/view/Display;)I

    move-result v4

    .line 377
    .local v4, "screenState":I
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    div-int/lit8 v6, v1, 0x2

    if-lt v5, v6, :cond_2

    .line 378
    invoke-direct {p0, v4, v1}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getYtoRight(II)I

    move-result v3

    .line 383
    .local v3, "end":I
    :goto_1
    invoke-direct {p0, v3}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getRealX(I)I

    move-result v3

    .line 384
    if-eqz p2, :cond_3

    .line 385
    invoke-direct {p0, p1, v3}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->SwitchWindowAnimator(II)V

    .line 390
    :goto_2
    return-void

    .line 372
    .end local v3    # "end":I
    .end local v4    # "screenState":I
    :cond_1
    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 373
    iget v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->displayWidth:I

    iget v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->displayHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 380
    .restart local v4    # "screenState":I
    :cond_2
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget p1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 381
    invoke-direct {p0, v4}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getYtoLeft(I)I

    move-result v3

    .restart local v3    # "end":I
    goto :goto_1

    .line 387
    :cond_3
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 388
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->windowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v5, p0, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method private onLayoutParamChanged()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->layoutListener:Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnLayoutParamListener;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->layoutListener:Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnLayoutParamListener;

    invoke-interface {v0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnLayoutParamListener;->onLayoutParamChanged()V

    .line 268
    :cond_0
    return-void
.end method

.method private setWindowAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 487
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 488
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 489
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    return-void
.end method

.method private startClickTimerIfNeed()V
    .locals 1

    .prologue
    .line 480
    invoke-static {}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mClickTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 482
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mClickTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 484
    :cond_0
    return-void
.end method

.method private updateLayoutParams(IZ)V
    .locals 4
    .param p1, "recorderViewStatus"    # I
    .param p2, "isRefresh"    # Z

    .prologue
    const/4 v3, 0x0

    .line 240
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->viewWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 241
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->viewHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 243
    if-nez p1, :cond_2

    .line 244
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->displayWidth:I

    iget v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->viewWidth:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x36

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 245
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->displayHeight:I

    iget v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->viewHeight:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x36

    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getNaviBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 246
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    invoke-virtual {p0, v3}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->setOrientation(I)V

    .line 248
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->onLayoutParamChanged()V

    .line 249
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mCurrentStatus:I

    .line 259
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 260
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->startClickTimerIfNeed()V

    .line 262
    :cond_1
    return-void

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {p0, v0, v3}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->keepEdge(IZ)V

    .line 253
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->onLayoutParamChanged()V

    .line 254
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 255
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->setWindowAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method public changeSleepStatus()V
    .locals 1

    .prologue
    .line 475
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->setWindowAlpha(F)V

    .line 476
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->startClickTimerIfNeed()V

    .line 477
    return-void
.end method

.method public getFloatWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public notifyViewChanged(IZ)V
    .locals 12
    .param p1, "recorderViewStatus"    # I
    .param p2, "isRefresh"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 206
    iget v10, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mCurrentStatus:I

    if-eq v10, p1, :cond_0

    .line 207
    iput p1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mCurrentStatus:I

    .line 208
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->changeViewStatus(I)V

    .line 210
    :cond_0
    iget-object v10, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->record_switch:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 211
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v10, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v11, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    iget v11, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v3, v10, v11

    .line 212
    .local v3, "width1":I
    iget v10, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v11, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    iget v11, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v0, v10, v11

    .line 213
    .local v0, "height":I
    if-nez p1, :cond_2

    move v10, v8

    :goto_0
    if-ne p1, v8, :cond_3

    :goto_1
    or-int/2addr v8, v10

    if-eqz v8, :cond_4

    .line 215
    iget-object v8, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->time_close:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 216
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v8, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v10, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v10

    iget v10, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v4, v8, v10

    .line 217
    .local v4, "width2":I
    iget-object v8, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->start_text:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 220
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 221
    .local v7, "widthMeasureSpec":I
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 222
    .local v1, "heightMeasureSpec":I
    iget-object v8, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->start_text:Landroid/widget/TextView;

    invoke-virtual {v8, v7, v1}, Landroid/widget/TextView;->measure(II)V

    .line 224
    iget-object v8, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->start_text:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    iget v9, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v5, v8, v9

    .line 225
    .local v5, "width3":I
    add-int v8, v3, v4

    add-int/2addr v8, v5

    iput v8, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->viewWidth:I

    .line 226
    if-nez p1, :cond_1

    .line 227
    iput v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->viewHeight:I

    .line 229
    :cond_1
    add-int v8, v3, v5

    iput v8, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->closeXPos:I

    .line 236
    .end local v1    # "heightMeasureSpec":I
    .end local v4    # "width2":I
    .end local v5    # "width3":I
    .end local v7    # "widthMeasureSpec":I
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->updateLayoutParams(IZ)V

    .line 237
    return-void

    :cond_2
    move v10, v9

    .line 213
    goto :goto_0

    :cond_3
    move v8, v9

    goto :goto_1

    .line 231
    :cond_4
    iget-object v8, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mTimer:Landroid/widget/Chronometer;

    invoke-virtual {v8}, Landroid/widget/Chronometer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 232
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v6, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 233
    .local v6, "width4":I
    add-int v8, v3, v6

    iput v8, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->viewWidth:I

    goto :goto_2
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 559
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 560
    .local v1, "orientation":I
    iget v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mOrientation:I

    if-eq v3, v1, :cond_1

    .line 561
    iput v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mOrientation:I

    .line 562
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 563
    .local v2, "tmp":I
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 564
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 565
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0, v4}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getRealY(I)I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 566
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->keepEdge(IZ)V

    .line 567
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->layoutListener:Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnLayoutParamListener;

    if-eqz v3, :cond_0

    .line 568
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->layoutListener:Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnLayoutParamListener;

    invoke-interface {v3, v1}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnLayoutParamListener;->onConfigChanged(I)V

    .line 570
    :cond_0
    const-string v3, "meri"

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 571
    new-instance v3, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$5;

    invoke-direct {v3, p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$5;-><init>(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)V

    invoke-virtual {p0, v3}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->post(Ljava/lang/Runnable;)Z

    .line 581
    .end local v2    # "tmp":I
    :cond_1
    invoke-static {p1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->getLocaleFromConfig(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    .line 582
    .local v0, "locale":Ljava/util/Locale;
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 583
    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mLocale:Ljava/util/Locale;

    .line 584
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->start_text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080051

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mTimer:Landroid/widget/Chronometer;

    if-eqz v3, :cond_2

    .line 586
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mTimer:Landroid/widget/Chronometer;

    invoke-virtual {v3, v0}, Landroid/widget/Chronometer;->setTextLocale(Ljava/util/Locale;)V

    .line 588
    :cond_2
    iget v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mCurrentStatus:I

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->notifyViewChanged(IZ)V

    .line 590
    :cond_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->cancelAnimator()V

    .line 511
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 512
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mClickTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 513
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x42200000    # 40.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 131
    .local v4, "xInScreen":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 132
    .local v5, "yInScreen":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 193
    :goto_0
    return v10

    .line 134
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->changeSleepStatus()V

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->xInView:F

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->yInView:F

    .line 137
    iput v4, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->xDownInScreen:F

    .line 138
    iput v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->yDownInScreen:F

    .line 139
    iput v8, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->xMoved:F

    .line 140
    iput v8, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->yMoved:F

    goto :goto_0

    .line 143
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->changeSleepStatus()V

    .line 144
    iget v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->xInView:F

    sub-float v6, v4, v6

    float-to-int v1, v6

    .line 145
    .local v1, "newX":I
    iget v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->yInView:F

    sub-float v6, v5, v6

    float-to-int v2, v6

    .line 146
    .local v2, "newY":I
    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v1}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getRealX(I)I

    move-result v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 147
    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v2}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getRealY(I)I

    move-result v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 148
    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->windowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, p0, v7}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->onLayoutParamChanged()V

    .line 150
    iget v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->xMoved:F

    iget v7, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->xDownInScreen:F

    sub-float v7, v4, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->xMoved:F

    .line 151
    iget v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->yMoved:F

    iget v7, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->yDownInScreen:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->yMoved:F

    goto :goto_0

    .line 154
    .end local v1    # "newX":I
    .end local v2    # "newY":I
    :pswitch_2
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {p0, v6}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->setWindowAlpha(F)V

    .line 155
    iget v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->xMoved:F

    cmpg-float v6, v6, v9

    if-gtz v6, :cond_6

    iget v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->yMoved:F

    cmpg-float v6, v6, v9

    if-gtz v6, :cond_6

    .line 157
    invoke-static {}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getRecording()Z

    move-result v6

    if-nez v6, :cond_0

    .line 158
    iput-boolean v7, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->isWindowSleep:Z

    .line 160
    :cond_0
    invoke-static {}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isTalkBackOn()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 161
    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->listener:Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;

    if-eqz v6, :cond_1

    .line 162
    iget v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->xInView:F

    iget-object v7, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->record_switch:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_2

    .line 163
    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->listener:Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;

    invoke-interface {v6}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;->onLeftBtnClick()V

    .line 188
    :cond_1
    :goto_1
    iput v8, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->xMoved:F

    .line 189
    iput v8, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->yMoved:F

    .line 190
    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->changeSleepStatus()V

    goto/16 :goto_0

    .line 164
    :cond_2
    iget v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->xInView:F

    iget v7, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->closeXPos:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    .line 165
    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->listener:Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;

    invoke-interface {v6}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;->onRightBtnClick()V

    goto :goto_1

    .line 169
    :cond_3
    iget-boolean v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->isWindowSleep:Z

    if-eqz v6, :cond_4

    .line 170
    iput-boolean v7, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->isWindowSleep:Z

    goto :goto_1

    .line 172
    :cond_4
    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->listener:Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;

    if-eqz v6, :cond_1

    .line 173
    iget v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->xInView:F

    iget-object v7, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->record_switch:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_5

    .line 174
    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->listener:Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;

    invoke-interface {v6}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;->onLeftBtnClick()V

    goto :goto_1

    .line 175
    :cond_5
    iget v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->xInView:F

    iget v7, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->closeXPos:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    .line 176
    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->listener:Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;

    invoke-interface {v6}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;->onRightBtnClick()V

    goto :goto_1

    .line 182
    :cond_6
    iput-boolean v7, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->isWindowSleep:Z

    .line 183
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 184
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getLocationOnScreen([I)V

    .line 185
    aget v3, v0, v7

    .line 186
    .local v3, "start":I
    invoke-direct {p0, v3, v10}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->keepEdge(IZ)V

    goto :goto_1

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnClickListener(Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->listener:Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;

    goto :goto_0
.end method

.method public setOnLayoutParamListener(Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnLayoutParamListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnLayoutParamListener;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->layoutListener:Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnLayoutParamListener;

    .line 203
    return-void
.end method
