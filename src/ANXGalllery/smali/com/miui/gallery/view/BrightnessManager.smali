.class public Lcom/miui/gallery/view/BrightnessManager;
.super Ljava/lang/Object;
.source "BrightnessManager.java"

# interfaces
.implements Lcom/miui/gallery/util/BrightnessProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

.field private static final BRIGHTNESS_URI:Landroid/net/Uri;


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mBrightMode:I

.field mBrightnessAsynTask:Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCurrentBrightnessAuto:F

.field private mCurrentBrightnessManual:F

.field private mFocus:Z

.field private mSystemBrightnessChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/view/BrightnessManager;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 28
    const-string v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/view/BrightnessManager;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;FF)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "manualBrightness"    # F
    .param p3, "autoBrightness"    # F

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, Lcom/miui/gallery/view/BrightnessManager;->mCurrentBrightnessAuto:F

    .line 31
    iput v2, p0, Lcom/miui/gallery/view/BrightnessManager;->mCurrentBrightnessManual:F

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/view/BrightnessManager;->mBrightMode:I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/view/BrightnessManager;->mSystemBrightnessChanged:Z

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/view/BrightnessManager;->mFocus:Z

    .line 129
    new-instance v0, Lcom/miui/gallery/view/BrightnessManager$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v3}, Lcom/miui/gallery/view/BrightnessManager$1;-><init>(Lcom/miui/gallery/view/BrightnessManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gallery/view/BrightnessManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 81
    cmpl-float v0, p3, v1

    if-ltz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/miui/gallery/view/BrightnessManager;->ensureBrightness(F)F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/miui/gallery/view/BrightnessManager;->mCurrentBrightnessAuto:F

    .line 82
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/miui/gallery/view/BrightnessManager;->ensureBrightness(F)F

    move-result v0

    :goto_1
    iput v0, p0, Lcom/miui/gallery/view/BrightnessManager;->mCurrentBrightnessManual:F

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/view/BrightnessManager;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 84
    return-void

    :cond_0
    move v0, v1

    .line 81
    goto :goto_0

    :cond_1
    move v0, v2

    .line 82
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/miui/gallery/view/BrightnessManager;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/BrightnessManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/view/BrightnessManager;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/view/BrightnessManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/BrightnessManager;

    .prologue
    .line 23
    iget v0, p0, Lcom/miui/gallery/view/BrightnessManager;->mBrightMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/view/BrightnessManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/view/BrightnessManager;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/miui/gallery/view/BrightnessManager;->mBrightMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/view/BrightnessManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/BrightnessManager;

    .prologue
    .line 23
    iget v0, p0, Lcom/miui/gallery/view/BrightnessManager;->mCurrentBrightnessManual:F

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/view/BrightnessManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/BrightnessManager;

    .prologue
    .line 23
    iget v0, p0, Lcom/miui/gallery/view/BrightnessManager;->mCurrentBrightnessAuto:F

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/view/BrightnessManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/BrightnessManager;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/miui/gallery/view/BrightnessManager;->mSystemBrightnessChanged:Z

    return v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/view/BrightnessManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/view/BrightnessManager;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/miui/gallery/view/BrightnessManager;->mSystemBrightnessChanged:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/view/BrightnessManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/BrightnessManager;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/miui/gallery/view/BrightnessManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/view/BrightnessManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/view/BrightnessManager;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/miui/gallery/view/BrightnessManager;->adjustBrightness()V

    return-void
.end method

.method private adjustBrightness()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/view/BrightnessManager;->mBrightnessAsynTask:Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/view/BrightnessManager;->mBrightnessAsynTask:Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;->cancel(Z)Z

    .line 111
    :cond_0
    new-instance v0, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;

    invoke-direct {v0, p0}, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;-><init>(Lcom/miui/gallery/view/BrightnessManager;)V

    iput-object v0, p0, Lcom/miui/gallery/view/BrightnessManager;->mBrightnessAsynTask:Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/view/BrightnessManager;->mBrightnessAsynTask:Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 113
    return-void
.end method

.method private ensureBrightness(F)F
    .locals 2
    .param p1, "brightness"    # F

    .prologue
    .line 142
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/miui/gallery/view/BrightnessManager;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/view/BrightnessManager;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerObserver()V
    .locals 6

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/miui/gallery/view/BrightnessManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 167
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 170
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 171
    .local v1, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/miui/gallery/view/BrightnessManager;->BRIGHTNESS_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/miui/gallery/view/BrightnessManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 172
    sget-object v3, Lcom/miui/gallery/view/BrightnessManager;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/miui/gallery/view/BrightnessManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "BrightnessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Register BrightnessObserver error: %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterObserver()V
    .locals 5

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/miui/gallery/view/BrightnessManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 180
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 183
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/view/BrightnessManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BrightnessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregister BrightnessObserver error: %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public adjustBrightnessTask(ZFI)V
    .locals 4
    .param p1, "systemBrightnessChanged"    # Z
    .param p2, "brightness"    # F
    .param p3, "brightMode"    # I

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 87
    invoke-direct {p0}, Lcom/miui/gallery/view/BrightnessManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 88
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 90
    .local v1, "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x1

    if-ne p3, v3, :cond_2

    .line 91
    iget-boolean v2, p0, Lcom/miui/gallery/view/BrightnessManager;->mFocus:Z

    if-eqz v2, :cond_1

    .line 92
    invoke-virtual {p0, p2}, Lcom/miui/gallery/view/BrightnessManager;->setTemporaryScreenAutoBrightnessAdjustmentRatio(F)V

    .line 105
    .end local v1    # "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 94
    .restart local v1    # "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/miui/gallery/view/BrightnessManager;->setTemporaryScreenAutoBrightnessAdjustmentRatio(F)V

    goto :goto_0

    .line 96
    :cond_2
    if-nez p3, :cond_0

    .line 97
    iget-boolean v3, p0, Lcom/miui/gallery/view/BrightnessManager;->mFocus:Z

    if-eqz v3, :cond_4

    .line 98
    if-eqz p1, :cond_3

    :goto_1
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 102
    :goto_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 98
    :cond_3
    iget v2, p0, Lcom/miui/gallery/view/BrightnessManager;->mCurrentBrightnessManual:F

    goto :goto_1

    .line 100
    :cond_4
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_2
.end method

.method public getAutoBrightness()F
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/miui/gallery/view/BrightnessManager;->mCurrentBrightnessAuto:F

    return v0
.end method

.method public getManualBrightness()F
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/miui/gallery/view/BrightnessManager;->mSystemBrightnessChanged:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/miui/gallery/view/BrightnessManager;->mCurrentBrightnessManual:F

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/miui/gallery/view/BrightnessManager;->adjustBrightness()V

    .line 162
    invoke-direct {p0}, Lcom/miui/gallery/view/BrightnessManager;->unregisterObserver()V

    .line 163
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/miui/gallery/view/BrightnessManager;->registerObserver()V

    .line 157
    invoke-direct {p0}, Lcom/miui/gallery/view/BrightnessManager;->adjustBrightness()V

    .line 158
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/miui/gallery/view/BrightnessManager;->mFocus:Z

    .line 152
    invoke-direct {p0}, Lcom/miui/gallery/view/BrightnessManager;->adjustBrightness()V

    .line 153
    return-void
.end method

.method public setTemporaryScreenAutoBrightnessAdjustmentRatio(F)V
    .locals 6
    .param p1, "ratio"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 116
    invoke-direct {p0}, Lcom/miui/gallery/view/BrightnessManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "setTemporaryAutoBrightnessAdjustmentRatio"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MiscUtil;->invokeSafely(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method
