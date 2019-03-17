.class Lcom/ali/auth/third/ui/LoginWebViewActivity$2;
.super Lcom/ali/auth/third/ui/webview/BridgeWebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/ui/LoginWebViewActivity;->createWebChromeClient()Landroid/webkit/WebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/auth/third/ui/LoginWebViewActivity;


# direct methods
.method constructor <init>(Lcom/ali/auth/third/ui/LoginWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity$2;->a:Lcom/ali/auth/third/ui/LoginWebViewActivity;

    invoke-direct {p0}, Lcom/ali/auth/third/ui/webview/BridgeWebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity$2;->a:Lcom/ali/auth/third/ui/LoginWebViewActivity;

    iget-boolean v0, v0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->canReceiveTitle:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    const-string v0, "\u6211\u559c\u6b22"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity$2;->a:Lcom/ali/auth/third/ui/LoginWebViewActivity;

    invoke-static {v0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->c(Lcom/ali/auth/third/ui/LoginWebViewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
