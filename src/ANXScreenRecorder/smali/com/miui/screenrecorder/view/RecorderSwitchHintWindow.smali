.class public Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;
.super Landroid/widget/LinearLayout;
.source "RecorderSwitchHintWindow.java"


# static fields
.field private static final HINT_TEXT_WIDTH_DP:I = 0x2c


# instance fields
.field private displayHeight:I

.field private displayWidth:I

.field private hint_text:Landroid/widget/TextView;

.field private mAnchor:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

.field private mContext:Landroid/content/Context;

.field public mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mLocale:Ljava/util/Locale;

.field private mOrientation:I

.field private mStubWidth:I

.field private maxAnchorDisplayY:I

.field private minDisplayY:I

.field private stubWidth:I

.field private stub_view:Landroid/view/View;

.field public viewHeight:I

.field public viewWidth:I

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    iput v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->stubWidth:I

    .line 44
    iput v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mStubWidth:I

    .line 52
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mAnchor:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    .line 54
    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mOrientation:I

    .line 55
    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->getLocaleFromConfig(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mLocale:Ljava/util/Locale;

    .line 56
    const-string v2, "window"

    .line 57
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->windowManager:Landroid/view/WindowManager;

    .line 58
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 59
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 60
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->displayWidth:I

    .line 61
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->displayHeight:I

    .line 62
    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/screenrecorder/tools/DisplayUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->minDisplayY:I

    .line 63
    iget v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->displayHeight:I

    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mAnchor:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    iget v3, v3, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->viewHeight:I

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->getNaviBarHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->maxAnchorDisplayY:I

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030008

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->hint_text:Landroid/widget/TextView;

    .line 67
    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->stub_view:Landroid/view/View;

    .line 69
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 70
    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 71
    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x1128

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 75
    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 76
    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 78
    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->notifyViewChanged()V

    .line 79
    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mAnchor:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    new-instance v3, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;

    invoke-direct {v3, p0}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;-><init>(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)V

    invoke-virtual {v2, v3}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->setOnLayoutParamListener(Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnLayoutParamListener;)V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->updateLayoutParams()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    .prologue
    .line 25
    iget v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->stubWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    .prologue
    .line 25
    iget v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mOrientation:I

    return v0
.end method

.method static synthetic access$302(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mOrientation:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    .prologue
    .line 25
    iget v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->displayHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->displayHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    .prologue
    .line 25
    iget v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->displayWidth:I

    return v0
.end method

.method static synthetic access$502(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->displayWidth:I

    return p1
.end method

.method static synthetic access$602(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->maxAnchorDisplayY:I

    return p1
.end method

.method static synthetic access$700(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)Lcom/miui/screenrecorder/view/RecorderSwitchWindow;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mAnchor:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->getNaviBarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->calculateLayoutParams()V

    return-void
.end method

.method private calculateLayoutParams()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 164
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->viewWidth:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 165
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->viewHeight:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 166
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mAnchor:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    if-eqz v5, :cond_1

    .line 167
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 168
    .local v2, "parentLoc":[I
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mAnchor:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-virtual {v5, v2}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getLocationOnScreen([I)V

    .line 169
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mAnchor:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-virtual {v5}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getFloatWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v3, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 170
    .local v3, "parentX":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parentLoc x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/screenrecorder/tools/LogUtil;->d(Ljava/lang/String;)V

    .line 171
    iget v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->stubWidth:I

    sub-int v0, v3, v5

    .line 172
    .local v0, "newX":I
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 173
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mAnchor:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-virtual {v5}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->getFloatWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v4, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 174
    .local v4, "parentY":I
    iget v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->maxAnchorDisplayY:I

    if-le v4, v5, :cond_0

    iget v4, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->maxAnchorDisplayY:I

    .line 175
    :cond_0
    iget v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->viewHeight:I

    sub-int v1, v4, v5

    .line 177
    .local v1, "newY":I
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->isFullScreen()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 178
    iput v7, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->minDisplayY:I

    .line 183
    :goto_0
    iget v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->minDisplayY:I

    if-ge v1, v5, :cond_3

    .line 185
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->minDisplayY:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 192
    .end local v0    # "newX":I
    .end local v1    # "newY":I
    .end local v2    # "parentLoc":[I
    .end local v3    # "parentX":I
    .end local v4    # "parentY":I
    :cond_1
    :goto_1
    return-void

    .line 181
    .restart local v0    # "newX":I
    .restart local v1    # "newY":I
    .restart local v2    # "parentLoc":[I
    .restart local v3    # "parentX":I
    .restart local v4    # "parentY":I
    :cond_2
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/screenrecorder/tools/DisplayUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->minDisplayY:I

    goto :goto_0

    .line 189
    :cond_3
    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1
.end method

.method private getNaviBarHeight()I
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->getInstance(Landroid/content/Context;)Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->getNaviBarHeight()I

    move-result v0

    return v0
.end method

.method private isFullScreen()Z
    .locals 1

    .prologue
    .line 195
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->getInstance(Landroid/content/Context;)Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->isFullScreen()Z

    move-result v0

    return v0
.end method

.method private refreshView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 143
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 144
    .local v2, "widthMeasureSpec":I
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 145
    .local v0, "heightMeasureSpec":I
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->hint_text:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v0}, Landroid/widget/TextView;->measure(II)V

    .line 146
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->hint_text:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->viewWidth:I

    .line 147
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->hint_text:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mContext:Landroid/content/Context;

    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {v4, v5}, Lcom/miui/screenrecorder/tools/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->stubWidth:I

    .line 149
    iget v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->stubWidth:I

    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mAnchor:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    iget v4, v4, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->viewWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->hint_text:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mStubWidth:I

    .line 150
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->hint_text:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mStubWidth:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->viewWidth:I

    .line 151
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mStubWidth:I

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 153
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->stub_view:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->stub_view:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 155
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->updateLayoutParams()V

    .line 156
    return-void
.end method

.method private updateLayoutParams()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->calculateLayoutParams()V

    .line 160
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    return-void
.end method


# virtual methods
.method public getFloatWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public notifyViewChanged()V
    .locals 2

    .prologue
    .line 137
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->hint_text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 138
    .local v0, "hint_textLP":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->viewHeight:I

    .line 139
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->refreshView()V

    .line 140
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 211
    invoke-static {p1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->getLocaleFromConfig(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    .line 212
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    iput-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mLocale:Ljava/util/Locale;

    .line 214
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->hint_text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->hint_text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->refreshView()V

    .line 217
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, p0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mAnchor:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->setOnLayoutParamListener(Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnLayoutParamListener;)V

    .line 123
    iput-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mAnchor:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    .line 124
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 206
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method
