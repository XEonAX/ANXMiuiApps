.class public Lcom/xiaomi/scanner/module/code/app/QRResultActivity;
.super Landroid/app/Activity;
.source "QRResultActivity.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mCallingApp:Ljava/lang/String;

.field private mConfirmDialog:Lcom/xiaomi/scanner/dialog/CtaDialog;

.field private mFragment:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

.field private mQRResult:Ljava/lang/String;

.field private mQRType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "QRResultActivity"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mConfirmDialog:Lcom/xiaomi/scanner/dialog/CtaDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/module/code/app/QRResultActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/app/QRResultActivity;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->initUI()V

    return-void
.end method

.method private initUI()V
    .locals 5

    .prologue
    const v2, 0x7f0d0128

    .line 103
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRResult:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const v0, 0x7f0d0127

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mFragment:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    .line 108
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mFragment:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRResult:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mCallingApp:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isUserAgreeToRun()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->showQRResult(Lcom/xiaomi/scanner/module/code/codec/QRCodeType;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private showCTAConfirmDialog()V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaomi/scanner/util/AppUtil;->saveUserAgreeToRun(Z)V

    .line 80
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->initUI()V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mConfirmDialog:Lcom/xiaomi/scanner/dialog/CtaDialog;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity$1;-><init>(Lcom/xiaomi/scanner/module/code/app/QRResultActivity;)V

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/util/DialogUtil;->showCTADialog(Landroid/content/Context;Lcom/xiaomi/scanner/dialog/CtaDialog$CTAClick;)Lcom/xiaomi/scanner/dialog/CtaDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mConfirmDialog:Lcom/xiaomi/scanner/dialog/CtaDialog;

    .line 95
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mConfirmDialog:Lcom/xiaomi/scanner/dialog/CtaDialog;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/CtaDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mConfirmDialog:Lcom/xiaomi/scanner/dialog/CtaDialog;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/CtaDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->setVolumeControlStream(I)V

    .line 39
    const v1, 0x7f03005b

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRResult:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRResult:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRResult:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->match(Ljava/lang/String;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 46
    :cond_0
    const-string v1, "fromApp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mCallingApp:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isUserAgreeToRun()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mConfirmDialog:Lcom/xiaomi/scanner/dialog/CtaDialog;

    if-eqz v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mConfirmDialog:Lcom/xiaomi/scanner/dialog/CtaDialog;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/dialog/CtaDialog;->dismiss()V

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mConfirmDialog:Lcom/xiaomi/scanner/dialog/CtaDialog;

    .line 53
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->initUI()V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->showCTAConfirmDialog()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 74
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mConfirmDialog:Lcom/xiaomi/scanner/dialog/CtaDialog;

    invoke-static {v0}, Lcom/xiaomi/scanner/util/DialogUtil;->dismissDialog(Landroid/app/Dialog;)V

    .line 75
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 68
    invoke-static {}, Lcom/xiaomi/scanner/stats/UsageStatistics;->recordPageEnd()V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    const-string v0, "QRResultActivity"

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 63
    return-void
.end method
