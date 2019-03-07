.class public Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;
.super Ljava/lang/Object;
.source "RecorderSwitchWindowManager.java"

# interfaces
.implements Lcom/miui/screenrecorder/controller/RecorderControl;


# static fields
.field private static mRecorderWindowManager:Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCheckLeftTopView:Landroid/view/View;

.field private mCheckRightBottomView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mRecorderHint:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

.field private mRecorderWindow:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v1, "RecorderWindowManager"

    iput-object v1, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->TAG:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 37
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-direct {p0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 38
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mScreenWidth:I

    .line 39
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mScreenHeight:I

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->removeRecorderHintWindow()V

    return-void
.end method

.method private createDetectView(I)Landroid/view/View;
    .locals 4
    .param p1, "gravity"    # I

    .prologue
    const/4 v3, 0x0

    .line 95
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 96
    .local v1, "view":Landroid/view/View;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 97
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x38

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 100
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 101
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 102
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 103
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 104
    const/16 v2, 0x7f6

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 109
    :goto_0
    invoke-direct {p0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    return-object v1

    .line 107
    :cond_0
    const/16 v2, 0x7d6

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderWindowManager:Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;

    invoke-direct {v0, p0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderWindowManager:Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;

    .line 46
    :cond_0
    sget-object v0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderWindowManager:Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;

    return-object v0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private initHint()V
    .locals 6

    .prologue
    .line 121
    invoke-static {}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isShowRecordHint()Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->setIsShowRecordHint(Z)V

    .line 125
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderHint:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderWindow:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    if-eqz v1, :cond_0

    .line 126
    new-instance v1, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    iget-object v2, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderWindow:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-direct {v1, v2, v3}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;-><init>(Landroid/content/Context;Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)V

    iput-object v1, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderHint:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    .line 127
    invoke-direct {p0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 128
    .local v0, "windowManager":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderHint:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    iget-object v2, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderHint:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    invoke-virtual {v2}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->getFloatWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderWindow:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    new-instance v2, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager$1;

    invoke-direct {v2, p0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager$1;-><init>(Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private removeRecorderHintWindow()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderHint:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderHint:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->onDestroy()V

    .line 89
    invoke-direct {p0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderHint:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderHint:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method public createRecorderSwitchWindow(Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderWindow:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    if-nez v1, :cond_0

    .line 52
    const/16 v1, 0x33

    invoke-direct {p0, v1}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->createDetectView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mCheckLeftTopView:Landroid/view/View;

    .line 53
    const/16 v1, 0x55

    invoke-direct {p0, v1}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->createDetectView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mCheckRightBottomView:Landroid/view/View;

    .line 54
    new-instance v1, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    iget-object v2, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderWindow:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    .line 56
    invoke-direct {p0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderWindow:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    iget-object v3, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderWindow:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-virtual {v3}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getFloatWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    const-string v1, "RecorderWindowManager"

    const-string v2, "mRecorderWindow is added"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderWindow:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-virtual {v1, p1}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->setOnClickListener(Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;)V

    .line 59
    invoke-direct {p0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->initHint()V

    .line 68
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v1, "RecorderWindowManager"

    const-string v2, "mRecorderWindow is existed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :try_start_0
    invoke-direct {p0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderWindow:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    iget-object v3, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderWindow:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-virtual {v3}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getFloatWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getNaviBarHeight()I
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->isNaviBarVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/screenrecorder/tools/DisplayUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullScreen()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    iget-object v3, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mCheckLeftTopView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 153
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 154
    .local v0, "location":[I
    iget-object v3, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mCheckLeftTopView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 155
    aget v3, v0, v1

    if-nez v3, :cond_0

    .line 157
    .end local v0    # "location":[I
    :goto_0
    return v1

    .restart local v0    # "location":[I
    :cond_0
    move v1, v2

    .line 155
    goto :goto_0

    .end local v0    # "location":[I
    :cond_1
    move v1, v2

    .line 157
    goto :goto_0
.end method

.method public isNaviBarVisible()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 174
    const/4 v0, 0x1

    .line 175
    .local v0, "isShow":Z
    iget-object v4, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mCheckRightBottomView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mCheckLeftTopView:Landroid/view/View;

    if-nez v4, :cond_1

    :cond_0
    move v1, v0

    .line 208
    .end local v0    # "isShow":Z
    .local v1, "isShow":I
    :goto_0
    return v1

    .line 178
    .end local v1    # "isShow":I
    .restart local v0    # "isShow":Z
    :cond_1
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 179
    .local v2, "location":[I
    invoke-direct {p0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/screenrecorder/tools/DisplayUtils;->getScreenRotateState(Landroid/view/Display;)I

    move-result v3

    .line 180
    .local v3, "screenState":I
    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_1
    move v1, v0

    .line 208
    .restart local v1    # "isShow":I
    goto :goto_0

    .line 182
    .end local v1    # "isShow":I
    :pswitch_0
    iget-object v4, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mCheckRightBottomView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 183
    aget v4, v2, v6

    iget v5, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mScreenHeight:I

    if-ne v4, v5, :cond_2

    .line 184
    const/4 v0, 0x0

    goto :goto_1

    .line 188
    :pswitch_1
    iget-object v4, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mCheckRightBottomView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 189
    aget v4, v2, v6

    if-nez v4, :cond_2

    .line 190
    const/4 v0, 0x0

    goto :goto_1

    .line 194
    :pswitch_2
    iget-object v4, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mCheckRightBottomView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 195
    aget v4, v2, v5

    iget v5, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mScreenHeight:I

    if-ne v4, v5, :cond_2

    .line 196
    const/4 v0, 0x0

    goto :goto_1

    .line 200
    :pswitch_3
    iget-object v4, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mCheckLeftTopView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 201
    aget v4, v2, v5

    if-nez v4, :cond_2

    .line 202
    const/4 v0, 0x0

    goto :goto_1

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public notifyViewChanged(IZ)V
    .locals 1
    .param p1, "recorderViewStatus"    # I
    .param p2, "isRefresh"    # Z

    .prologue
    .line 142
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderWindow:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderWindow:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-virtual {v0, p1, p2}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->notifyViewChanged(IZ)V

    .line 144
    if-eqz p1, :cond_0

    .line 145
    invoke-static {}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isShowRecordHint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->removeRecorderHintWindow()V

    .line 149
    :cond_0
    return-void
.end method

.method public removeRecorderSwitchWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderWindow:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mCheckLeftTopView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mCheckLeftTopView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 74
    iput-object v2, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mCheckLeftTopView:Landroid/view/View;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mCheckRightBottomView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mCheckRightBottomView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 78
    iput-object v2, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mCheckRightBottomView:Landroid/view/View;

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderWindow:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 81
    iput-object v2, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->mRecorderWindow:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    .line 82
    invoke-direct {p0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->removeRecorderHintWindow()V

    .line 84
    :cond_2
    return-void
.end method
