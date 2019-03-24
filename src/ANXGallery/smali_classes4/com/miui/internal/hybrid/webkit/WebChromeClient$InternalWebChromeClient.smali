.class Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/hybrid/webkit/WebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalWebChromeClient"
.end annotation


# instance fields
.field final synthetic gn:Lcom/miui/internal/hybrid/webkit/WebChromeClient;


# direct methods
.method constructor <init>(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->gn:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->gn:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    new-instance v1, Lcom/miui/internal/hybrid/webkit/GeolocationPermissionsCallback;

    invoke-direct {v1, p2}, Lcom/miui/internal/hybrid/webkit/GeolocationPermissionsCallback;-><init>(Landroid/webkit/GeolocationPermissions$Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lmiui/hybrid/GeolocationPermissions$Callback;)V

    .line 85
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 64
    new-instance p1, Lcom/miui/internal/hybrid/webkit/JsResult;

    invoke-direct {p1, p4}, Lcom/miui/internal/hybrid/webkit/JsResult;-><init>(Landroid/webkit/JsResult;)V

    .line 65
    iget-object p4, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->gn:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->gn:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-static {v0}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->a(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;

    move-result-object v0

    invoke-virtual {p4, v0, p2, p3, p1}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->onJsAlert(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 71
    new-instance p1, Lcom/miui/internal/hybrid/webkit/JsResult;

    invoke-direct {p1, p4}, Lcom/miui/internal/hybrid/webkit/JsResult;-><init>(Landroid/webkit/JsResult;)V

    .line 72
    iget-object p4, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->gn:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->gn:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-static {v0}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->b(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;

    move-result-object v0

    invoke-virtual {p4, v0, p2, p3, p1}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->onJsConfirm(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->gn:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->gn:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-static {v0}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->c(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->onProgressChanged(Lmiui/hybrid/HybridView;I)V

    .line 78
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->gn:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->gn:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-static {v0}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->d(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->onReceivedTitle(Lmiui/hybrid/HybridView;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/miui/internal/hybrid/webkit/ValueCallback;

    invoke-direct {v0, p1}, Lcom/miui/internal/hybrid/webkit/ValueCallback;-><init>(Landroid/webkit/ValueCallback;)V

    .line 95
    iget-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->gn:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-virtual {p1, v0, p2, p3}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->openFileChooser(Lmiui/hybrid/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method
