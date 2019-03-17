.class Lcom/ali/auth/third/ui/QRView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/ui/QRView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/auth/third/ui/QRView;


# direct methods
.method constructor <init>(Lcom/ali/auth/third/ui/QRView;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/ui/QRView$2;->a:Lcom/ali/auth/third/ui/QRView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lcom/ali/auth/third/ui/QRView$2;->a:Lcom/ali/auth/third/ui/QRView;

    invoke-static {v0}, Lcom/ali/auth/third/ui/QRView;->access$000(Lcom/ali/auth/third/ui/QRView;)Lcom/ali/auth/third/ui/webview/AuthWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/auth/third/ui/webview/AuthWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/ali/auth/third/ui/QRView$2;->a:Lcom/ali/auth/third/ui/QRView;

    iget-object v1, p0, Lcom/ali/auth/third/ui/QRView$2;->a:Lcom/ali/auth/third/ui/QRView;

    invoke-static {v1}, Lcom/ali/auth/third/ui/QRView;->access$000(Lcom/ali/auth/third/ui/QRView;)Lcom/ali/auth/third/ui/webview/AuthWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/auth/third/ui/webview/AuthWebView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ali/auth/third/ui/QRView;->access$102(Lcom/ali/auth/third/ui/QRView;I)I

    return-void
.end method
