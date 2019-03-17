.class public Lcom/ali/auth/third/ui/LoginWebViewActivity;
.super Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;


# static fields
.field public static final CALLBACK:Ljava/lang/String; = "https://www.alipay.com/webviewbridge"

.field public static final TAG:Ljava/lang/String;

.field public static scene:Ljava/lang/String;

.field public static token:Ljava/lang/String;


# instance fields
.field private a:Lcom/ali/auth/third/login/LoginService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ali/auth/third/ui/LoginWebViewActivity;)Lcom/ali/auth/third/login/LoginService;
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->a:Lcom/ali/auth/third/login/LoginService;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->serialBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v2, "havana_mobile_reg_otherWebView"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "loginId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "quit"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string v2, "havana_iv_token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/ali/auth/third/core/model/ResultCode;->SUCCESS:Lcom/ali/auth/third/core/model/ResultCode;

    iget v2, v2, Lcom/ali/auth/third/core/model/ResultCode;->code:I

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "iv_token"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->finish()V

    move v0, v1

    :goto_0
    return v0

    :cond_2
    const-string v3, "relogin"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->finish()V

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v3, "mobile_confirm_login"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const-string v3, "trustLogin"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v3, "continueLogin"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "aliusersdk_h5querystring"

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "token"

    sget-object v3, Lcom/ali/auth/third/ui/LoginWebViewActivity;->token:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "scene"

    sget-object v3, Lcom/ali/auth/third/ui/LoginWebViewActivity;->scene:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/ali/auth/third/core/model/ResultCode;->CHECK:Lcom/ali/auth/third/core/model/ResultCode;

    iget v2, v2, Lcom/ali/auth/third/core/model/ResultCode;->code:I

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->finish()V

    move v0, v1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/ali/auth/third/ui/LoginWebViewActivity;Landroid/net/Uri;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->a(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/ali/auth/third/ui/LoginWebViewActivity;)Lcom/ali/auth/third/ui/webview/AuthWebView;
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->authWebView:Lcom/ali/auth/third/ui/webview/AuthWebView;

    return-object v0
.end method

.method static synthetic c(Lcom/ali/auth/third/ui/LoginWebViewActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->titleText:Landroid/widget/TextView;

    return-object v0
.end method

.method public static serialBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_0

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public checkWebviewBridge(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://www.alipay.com/webviewbridge"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    new-instance v0, Lcom/ali/auth/third/ui/LoginWebViewActivity$2;

    invoke-direct {v0, p0}, Lcom/ali/auth/third/ui/LoginWebViewActivity$2;-><init>(Lcom/ali/auth/third/ui/LoginWebViewActivity;)V

    return-object v0
.end method

.method protected createWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    new-instance v0, Lcom/ali/auth/third/ui/LoginWebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/ali/auth/third/ui/LoginWebViewActivity$1;-><init>(Lcom/ali/auth/third/ui/LoginWebViewActivity;)V

    return-object v0
.end method

.method public onBackHistory()V
    .locals 2

    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->authWebView:Lcom/ali/auth/third/ui/webview/AuthWebView;

    invoke-virtual {v0}, Lcom/ali/auth/third/ui/webview/AuthWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->authWebView:Lcom/ali/auth/third/ui/webview/AuthWebView;

    invoke-virtual {v0}, Lcom/ali/auth/third/ui/webview/AuthWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "authorization-notice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->authWebView:Lcom/ali/auth/third/ui/webview/AuthWebView;

    invoke-virtual {v0}, Lcom/ali/auth/third/ui/webview/AuthWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "agreement"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->authWebView:Lcom/ali/auth/third/ui/webview/AuthWebView;

    invoke-virtual {v0}, Lcom/ali/auth/third/ui/webview/AuthWebView;->goBack()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/ali/auth/third/core/model/ResultCode;->USER_CANCEL:Lcom/ali/auth/third/core/model/ResultCode;

    iget v1, v1, Lcom/ali/auth/third/core/model/ResultCode;->code:I

    invoke-virtual {p0, v1, v0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->setResult(ILandroid/content/Intent;)V

    invoke-static {}, Lcom/ali/auth/third/login/util/LoginStatus;->resetLoginFlag()V

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->authWebView:Lcom/ali/auth/third/ui/webview/AuthWebView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->authWebView:Lcom/ali/auth/third/ui/webview/AuthWebView;

    const-string v1, "accountBridge"

    new-instance v2, Lcom/ali/auth/third/login/bridge/LoginBridge;

    invoke-direct {v2}, Lcom/ali/auth/third/login/bridge/LoginBridge;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/ali/auth/third/ui/webview/AuthWebView;->addBridgeObject(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->authWebView:Lcom/ali/auth/third/ui/webview/AuthWebView;

    const-string v1, "loginBridge"

    new-instance v2, Lcom/ali/auth/third/login/bridge/LoginBridge;

    invoke-direct {v2}, Lcom/ali/auth/third/login/bridge/LoginBridge;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/ali/auth/third/ui/webview/AuthWebView;->addBridgeObject(Ljava/lang/String;Ljava/lang/Object;)V

    const-class v0, Lcom/ali/auth/third/login/LoginService;

    invoke-static {v0}, Lcom/ali/auth/third/core/MemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/login/LoginService;

    iput-object v0, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->a:Lcom/ali/auth/third/login/LoginService;

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ali/auth/third/core/context/KernelContext;->context:Landroid/content/Context;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->onDestroy()V

    invoke-static {}, Lcom/ali/auth/third/login/util/LoginStatus;->resetLoginFlag()V

    return-void
.end method
