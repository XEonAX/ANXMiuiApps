.class public Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;
.super Ljava/lang/Object;
.source "ScreenRecorderHintWindow.java"


# static fields
.field private static mHintWindow:Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHintText:Landroid/widget/TextView;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->init(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mHintWindow:Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mHintWindow:Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;

    .line 32
    :cond_0
    sget-object v0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mHintWindow:Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 36
    iput-object p1, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mContext:Landroid/content/Context;

    .line 37
    const-string v0, "window"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 39
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 40
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 41
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 42
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 44
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 45
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 46
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x51

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 47
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mView:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mView:Landroid/view/View;

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mHintText:Landroid/widget/TextView;

    .line 50
    return-void
.end method


# virtual methods
.method public hideView()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 63
    :cond_0
    return-void
.end method

.method public showView(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method
