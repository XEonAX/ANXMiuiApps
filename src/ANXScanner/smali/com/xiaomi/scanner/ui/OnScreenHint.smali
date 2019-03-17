.class public Lcom/xiaomi/scanner/ui/OnScreenHint;
.super Ljava/lang/Object;
.source "OnScreenHint.java"


# static fields
.field static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field mView:Landroid/view/View;

.field private final mWM:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "OnScreenHint"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/ui/OnScreenHint;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, -0x2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 47
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mWM:Landroid/view/WindowManager;

    .line 49
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 50
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 51
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 53
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 54
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x7f0900b0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 55
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 56
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "OnScreenHint"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method private declared-synchronized handleHide()V
    .locals 2

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 140
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_1
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleShow()V
    .locals 3

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mNextView:Landroid/view/View;

    if-eq v0, v1, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/OnScreenHint;->handleHide()V

    .line 123
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mNextView:Landroid/view/View;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mView:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_1
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/xiaomi/scanner/ui/OnScreenHint;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 88
    new-instance v1, Lcom/xiaomi/scanner/ui/OnScreenHint;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/ui/OnScreenHint;-><init>(Landroid/app/Activity;)V

    .line 90
    .local v1, "result":Lcom/xiaomi/scanner/ui/OnScreenHint;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 92
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v4, 0x7f030058

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 93
    .local v3, "v":Landroid/view/View;
    const v4, 0x7f0d0121

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 94
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iput-object v3, v1, Lcom/xiaomi/scanner/ui/OnScreenHint;->mNextView:Landroid/view/View;

    .line 98
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/OnScreenHint;->handleHide()V

    .line 74
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mNextView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mNextView:Landroid/view/View;

    const v2, 0x7f0d0121

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    .local v0, "tv":Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 113
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "View is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/OnScreenHint;->handleShow()V

    .line 67
    return-void
.end method
