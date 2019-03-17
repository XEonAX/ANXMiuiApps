.class public Lcom/ali/auth/third/ui/QRView;
.super Landroid/widget/LinearLayout;


# static fields
.field public static mLoginCallback:Lcom/ali/auth/third/core/callback/LoginCallback;


# instance fields
.field private a:Lcom/ali/auth/third/ui/webview/AuthWebView;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/ali/auth/third/ui/R$layout;->ali_auth_qrview:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/ali/auth/third/ui/QRView;)Lcom/ali/auth/third/ui/webview/AuthWebView;
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/ui/QRView;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/ali/auth/third/ui/QRView;I)I
    .locals 0

    iput p1, p0, Lcom/ali/auth/third/ui/QRView;->b:I

    return p1
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ali/auth/third/ui/QRView;->mLoginCallback:Lcom/ali/auth/third/core/callback/LoginCallback;

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/ali/auth/third/ui/R$id;->ali_auth_webview:I

    invoke-virtual {p0, v0}, Lcom/ali/auth/third/ui/QRView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/ui/webview/AuthWebView;

    iput-object v0, p0, Lcom/ali/auth/third/ui/QRView;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    iget-object v0, p0, Lcom/ali/auth/third/ui/QRView;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/ali/auth/third/ui/webview/AuthWebView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/ali/auth/third/ui/QRView;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    const-string v1, "loginBridge"

    new-instance v2, Lcom/ali/auth/third/login/bridge/LoginBridge;

    invoke-direct {v2}, Lcom/ali/auth/third/login/bridge/LoginBridge;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/ali/auth/third/ui/webview/AuthWebView;->addBridgeObject(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ali/auth/third/ui/QRView;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    new-instance v1, Lcom/ali/auth/third/ui/webview/BridgeWebChromeClient;

    invoke-direct {v1}, Lcom/ali/auth/third/ui/webview/BridgeWebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ali/auth/third/ui/webview/AuthWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/ali/auth/third/ui/QRView;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    new-instance v1, Lcom/ali/auth/third/ui/QRView$1;

    invoke-direct {v1, p0}, Lcom/ali/auth/third/ui/QRView$1;-><init>(Lcom/ali/auth/third/ui/QRView;)V

    invoke-virtual {v0, v1}, Lcom/ali/auth/third/ui/webview/AuthWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/ali/auth/third/ui/QRView;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    invoke-virtual {v0}, Lcom/ali/auth/third/ui/webview/AuthWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/ali/auth/third/ui/QRView$2;

    invoke-direct {v1, p0}, Lcom/ali/auth/third/ui/QRView$2;-><init>(Lcom/ali/auth/third/ui/QRView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public showQR(Lcom/ali/auth/third/core/callback/LoginCallback;)V
    .locals 6

    sput-object p1, Lcom/ali/auth/third/ui/QRView;->mLoginCallback:Lcom/ali/auth/third/core/callback/LoginCallback;

    iget-object v0, p0, Lcom/ali/auth/third/ui/QRView;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ali/auth/third/ui/QRView;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/auth/third/ui/QRView;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    invoke-virtual {v0}, Lcom/ali/auth/third/ui/webview/AuthWebView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/ali/auth/third/ui/QRView;->b:I

    :cond_0
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QRView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sget-object v1, Lcom/ali/auth/third/core/config/ConfigManager;->qrCodeLoginUrl:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/ali/auth/third/core/context/KernelContext;->getAppKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&qrwidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ali/auth/third/ui/QRView;->b:I

    int-to-float v2, v2

    div-float v0, v2, v0

    float-to-double v2, v0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QRView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qr width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/auth/third/ui/QRView;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    invoke-virtual {v3}, Lcom/ali/auth/third/ui/webview/AuthWebView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/auth/third/ui/QRView;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    invoke-virtual {v3}, Lcom/ali/auth/third/ui/webview/AuthWebView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/auth/third/ui/QRView;->a:Lcom/ali/auth/third/ui/webview/AuthWebView;

    invoke-virtual {v1, v0}, Lcom/ali/auth/third/ui/webview/AuthWebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QRView;->requestLayout()V

    :cond_1
    return-void
.end method
