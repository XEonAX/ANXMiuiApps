.class public Lcom/miui/internal/webkit/WebViewClientDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;
    }
.end annotation


# static fields
.field public static final FEATURE_AUTO_LOGIN:I = 0x2

.field public static final FEATURE_DEEP_LINK:I = 0x1

.field private static final pG:I = -0x1


# instance fields
.field private pH:Z

.field private pI:Z

.field private pJ:Lcom/miui/internal/webkit/DeviceAccountLogin;

.field private pK:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/miui/internal/webkit/WebViewClientDelegate;-><init>(I)V

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 50
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/webkit/WebViewClientDelegate;-><init>(II)V

    .line 51
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->pN:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    iput-object v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pK:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    .line 54
    and-int/2addr p1, p2

    not-int p2, p2

    const/4 v0, -0x1

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    .line 55
    const/4 p2, 0x1

    and-int v0, p2, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pH:Z

    .line 56
    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    iput-boolean p2, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pI:Z

    .line 57
    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)V
    .locals 0

    .line 92
    iget-boolean p1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pI:Z

    if-nez p1, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pK:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    sget-object p2, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->pM:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    if-ne p1, p2, :cond_1

    .line 96
    sget-object p1, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->pN:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    iput-object p1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pK:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    .line 97
    iget-object p1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pJ:Lcom/miui/internal/webkit/DeviceAccountLogin;

    invoke-virtual {p1}, Lcom/miui/internal/webkit/DeviceAccountLogin;->onLoginPageFinished()V

    .line 99
    :cond_1
    return-void
.end method

.method public onPageStarted(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 83
    iget-boolean p1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pI:Z

    if-nez p1, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pK:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    sget-object p2, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->pL:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    if-ne p1, p2, :cond_1

    .line 87
    sget-object p1, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->pM:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    iput-object p1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pK:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    .line 89
    :cond_1
    return-void
.end method

.method public onReceivedLoginRequest(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 102
    iget-boolean v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pI:Z

    if-nez v0, :cond_0

    .line 103
    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/util/ContextHelper;->getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pJ:Lcom/miui/internal/webkit/DeviceAccountLogin;

    if-nez v1, :cond_1

    .line 108
    new-instance v1, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;

    invoke-direct {v1, v0, p1}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;-><init>(Landroid/app/Activity;Lcom/miui/internal/hybrid/provider/AbsWebView;)V

    iput-object v1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pJ:Lcom/miui/internal/webkit/DeviceAccountLogin;

    .line 110
    :cond_1
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->canGoBack()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 112
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->goBack()V

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 117
    :cond_3
    sget-object v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->pL:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    iput-object v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pK:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    .line 118
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    .line 120
    iget-object p1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pJ:Lcom/miui/internal/webkit/DeviceAccountLogin;

    invoke-virtual {p1, p2, p3, p4}, Lcom/miui/internal/webkit/DeviceAccountLogin;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)Z
    .locals 4

    .line 60
    iget-boolean v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pH:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 61
    return v1

    .line 63
    :cond_0
    invoke-static {p2}, Lcom/miui/internal/util/UrlResolverHelper;->isMiUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 67
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v2, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    const-string p2, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-static {p1, v0, v2}, Lmiui/util/UrlResolver;->checkMiuiIntent(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    .line 71
    if-nez p2, :cond_1

    .line 72
    return v1

    .line 74
    :cond_1
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p2, :cond_2

    .line 75
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 77
    :cond_2
    const/4 p1, 0x1

    return p1

    .line 79
    :cond_3
    return v1
.end method
