.class public Lcom/xiaomi/scanner/util/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    invoke-static {p0, p1}, Lcom/xiaomi/scanner/util/ToastUtils;->showToast(Ljava/lang/String;Z)V

    return-void
.end method

.method private static hideToast()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/xiaomi/scanner/util/ToastUtils;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/xiaomi/scanner/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/scanner/util/ToastUtils;->toast:Landroid/widget/Toast;

    .line 44
    :cond_0
    return-void
.end method

.method public static showBottomToast(I)V
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 47
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/ToastUtils;->showToast(Ljava/lang/String;Z)V

    .line 48
    return-void
.end method

.method public static showCenterToast(I)V
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 17
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static showCenterToast(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Lcom/xiaomi/scanner/util/ToastUtils$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/util/ToastUtils$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 28
    return-void
.end method

.method private static showToast(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "center"    # Z

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-static {}, Lcom/xiaomi/scanner/util/ToastUtils;->hideToast()V

    .line 32
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/util/ToastUtils;->toast:Landroid/widget/Toast;

    .line 33
    if-eqz p1, :cond_0

    .line 34
    sget-object v0, Lcom/xiaomi/scanner/util/ToastUtils;->toast:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 36
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 37
    return-void
.end method
