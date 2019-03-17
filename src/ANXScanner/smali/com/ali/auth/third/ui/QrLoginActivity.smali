.class public Lcom/ali/auth/third/ui/QrLoginActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/ali/auth/third/ui/webview/AuthWebView;

.field private b:Ljava/lang/String;

.field protected backButton:Landroid/widget/ImageView;

.field protected closeButton:Landroid/widget/ImageView;

.field protected titleBar:Landroid/widget/RelativeLayout;

.field protected titleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 11

    const/16 v10, 0xf

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v9, -0x1

    const/4 v8, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ali_auth_space_300"

    invoke-static {v2, v3}, Lcom/ali/auth/third/core/util/ResourceUtils;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ali_auth_space_300"

    invoke-static {v3, v4}, Lcom/ali/auth/third/core/util/ResourceUtils;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ali_auth_titlebar_height"

    invoke-static {v2, v3}, Lcom/ali/auth/third/core/util/ResourceUtils;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleBar:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleBar:Landroid/widget/RelativeLayout;

    const-string v3, "#F8F8F8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->backButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ali_auth_space_10"

    invoke-static {v3, v4}, Lcom/ali/auth/third/core/util/ResourceUtils;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->backButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->backButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "com_taobao_tae_sdk_web_view_title_bar_back"

    invoke-static {v3, v4, v5}, Lcom/ali/auth/third/core/util/ResourceUtils;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->backButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ali_auth_space_20"

    invoke-static {v3, v4}, Lcom/ali/auth/third/core/util/ResourceUtils;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v8, v8, v3, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleText:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "ali_auth_space_160"

    invoke-static {v4, v5}, Lcom/ali/auth/third/core/util/ResourceUtils;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v3, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v3, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleText:Landroid/widget/TextView;

    const-string v4, "#3d4245"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleText:Landroid/widget/TextView;

    const/4 v4, 0x2

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->closeButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "ali_auth_space_10"

    invoke-static {v4, v5}, Lcom/ali/auth/third/core/util/ResourceUtils;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->closeButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v4, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "drawable"

    const-string v7, "com_taobao_tae_sdk_web_view_title_bar_close"

    invoke-static {v5, v6, v7}, Lcom/ali/auth/third/core/util/ResourceUtils;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "ali_auth_space_20"

    invoke-static {v5, v6}, Lcom/ali/auth/third/core/util/ResourceUtils;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v4, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleBar:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleBar:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ali_auth_space_300"

    invoke-static {v3, v4}, Lcom/ali/auth/third/core/util/ResourceUtils;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v2, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->createTaeWebView()Lcom/ali/auth/third/ui/webview/AuthWebView;

    move-result-object v2

    iput-object v2, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    iget-object v2, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/ali/auth/third/login/util/LoginStatus;->resetLoginFlag()V

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    const-string v3, "loginBridge"

    new-instance v4, Lcom/ali/auth/third/login/bridge/LoginBridge;

    invoke-direct {v4}, Lcom/ali/auth/third/login/bridge/LoginBridge;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/ali/auth/third/ui/webview/AuthWebView;->addBridgeObject(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    const-string v3, "accountBridge"

    new-instance v4, Lcom/ali/auth/third/login/bridge/LoginBridge;

    invoke-direct {v4}, Lcom/ali/auth/third/login/bridge/LoginBridge;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/ali/auth/third/ui/webview/AuthWebView;->addBridgeObject(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    new-instance v3, Lcom/ali/auth/third/ui/webview/BridgeWebChromeClient;

    invoke-direct {v3}, Lcom/ali/auth/third/ui/webview/BridgeWebChromeClient;-><init>()V

    invoke-virtual {v2, v3}, Lcom/ali/auth/third/ui/webview/AuthWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v2, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    new-instance v3, Lcom/ali/auth/third/ui/QrLoginActivity$1;

    invoke-direct {v3, p0}, Lcom/ali/auth/third/ui/QrLoginActivity$1;-><init>(Lcom/ali/auth/third/ui/QrLoginActivity;)V

    invoke-virtual {v2, v3}, Lcom/ali/auth/third/ui/webview/AuthWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    invoke-virtual {v3, v2}, Lcom/ali/auth/third/ui/webview/AuthWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/ali/auth/third/ui/QrLoginActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected createTaeWebView()Lcom/ali/auth/third/ui/webview/AuthWebView;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/ali/auth/third/ui/webview/AuthWebView;

    invoke-direct {v0, p0}, Lcom/ali/auth/third/ui/webview/AuthWebView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->a()V

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "qrCodeLoginUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    iget-object v1, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ali/auth/third/ui/webview/AuthWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    invoke-virtual {v0}, Lcom/ali/auth/third/ui/webview/AuthWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    invoke-virtual {v0}, Lcom/ali/auth/third/ui/webview/AuthWebView;->removeAllViews()V

    iget-object v0, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    invoke-virtual {v0}, Lcom/ali/auth/third/ui/webview/AuthWebView;->destroy()V

    :cond_1
    invoke-static {}, Lcom/ali/auth/third/login/util/LoginStatus;->resetLoginFlag()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/ali/auth/third/core/model/ResultCode;->USER_CANCEL:Lcom/ali/auth/third/core/model/ResultCode;

    iget v1, v1, Lcom/ali/auth/third/core/model/ResultCode;->code:I

    invoke-virtual {p0, v1, v0}, Lcom/ali/auth/third/ui/QrLoginActivity;->setResult(ILandroid/content/Intent;)V

    invoke-static {}, Lcom/ali/auth/third/login/util/LoginStatus;->resetLoginFlag()V

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method
