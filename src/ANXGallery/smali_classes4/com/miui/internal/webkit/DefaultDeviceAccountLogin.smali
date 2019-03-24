.class public Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;
.super Lcom/miui/internal/webkit/DeviceAccountLogin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;
    }
.end annotation


# static fields
.field private static final pA:I = 0x1f4

.field private static final px:Ljava/lang/String; = "dialog"

.field private static final py:I = 0x0

.field private static final pz:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

.field private pC:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/internal/hybrid/provider/AbsWebView;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/miui/internal/webkit/DeviceAccountLogin;-><init>(Landroid/app/Activity;)V

    .line 37
    iput-object p2, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    .line 38
    new-instance p1, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$1;

    invoke-direct {p1, p0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$1;-><init>(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)V

    iput-object p1, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->aZ()V

    return-void
.end method

.method private aZ()V
    .locals 3

    .line 52
    invoke-direct {p0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->ba()V

    .line 53
    new-instance v0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    invoke-direct {v0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->pC:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->pC:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    iget-object v1, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 59
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->ba()V

    return-void
.end method

.method private ba()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->pC:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->pC:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->pC:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;->dismissAllowingStateLoss()V

    .line 66
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->pC:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    .line 67
    return-void
.end method

.method static synthetic c(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)Lcom/miui/internal/hybrid/provider/AbsWebView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    return-object p0
.end method


# virtual methods
.method public onLoginCancel()V
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->ba()V

    .line 89
    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    .line 90
    return-void
.end method

.method public onLoginFail()V
    .locals 3

    .line 81
    invoke-direct {p0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->ba()V

    .line 82
    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/miui/internal/R$string;->web_sso_login_fail:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 84
    return-void
.end method

.method public onLoginPageFinished()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 95
    return-void
.end method

.method public onLoginStart()V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 72
    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->loadUrl(Ljava/lang/String;)V

    .line 77
    return-void
.end method
