.class Lcom/ali/auth/third/ui/QrLoginActivity$1;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/ui/QrLoginActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/auth/third/ui/QrLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/auth/third/ui/QrLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/ui/QrLoginActivity$1;->a:Lcom/ali/auth/third/ui/QrLoginActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/ali/auth/third/login/LoginService;

    invoke-static {v0}, Lcom/ali/auth/third/core/MemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/login/LoginService;

    invoke-interface {v0, p2}, Lcom/ali/auth/third/login/LoginService;->isLoginUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/ali/auth/third/login/LoginService;

    invoke-static {v0}, Lcom/ali/auth/third/core/MemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/login/LoginService;

    new-instance v1, Lcom/ali/auth/third/ui/QrLoginActivity$1$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/auth/third/ui/QrLoginActivity$1$1;-><init>(Lcom/ali/auth/third/ui/QrLoginActivity$1;Landroid/webkit/WebView;)V

    invoke-interface {v0, v1}, Lcom/ali/auth/third/login/LoginService;->auth(Lcom/ali/auth/third/core/callback/LoginCallback;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
