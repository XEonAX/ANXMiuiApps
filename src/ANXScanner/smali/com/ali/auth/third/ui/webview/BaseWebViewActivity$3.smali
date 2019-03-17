.class Lcom/ali/auth/third/ui/webview/BaseWebViewActivity$3;
.super Lcom/ali/auth/third/ui/webview/BridgeWebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->createWebChromeClient()Landroid/webkit/WebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;


# direct methods
.method constructor <init>(Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity$3;->a:Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;

    invoke-direct {p0}, Lcom/ali/auth/third/ui/webview/BridgeWebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity$3;->a:Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;

    iget-boolean v0, v0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->canReceiveTitle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity$3;->a:Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;

    iget-object v0, v0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
