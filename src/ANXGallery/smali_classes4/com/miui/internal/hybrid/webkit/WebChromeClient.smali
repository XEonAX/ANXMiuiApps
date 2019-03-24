.class public Lcom/miui/internal/hybrid/webkit/WebChromeClient;
.super Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;
    }
.end annotation


# direct methods
.method public constructor <init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/HybridView;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;-><init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/HybridView;)V

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method


# virtual methods
.method public getWebChromeClient()Ljava/lang/Object;
    .locals 1

    .line 26
    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;-><init>(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)V

    return-object v0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lmiui/hybrid/GeolocationPermissions$Callback;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridChromeClient:Lmiui/hybrid/HybridChromeClient;

    invoke-virtual {v0, p1, p2}, Lmiui/hybrid/HybridChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lmiui/hybrid/GeolocationPermissions$Callback;)V

    .line 47
    return-void
.end method

.method public onJsAlert(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridChromeClient:Lmiui/hybrid/HybridChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/hybrid/HybridChromeClient;->onJsAlert(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridChromeClient:Lmiui/hybrid/HybridChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/hybrid/HybridChromeClient;->onJsConfirm(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Lmiui/hybrid/HybridView;I)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridChromeClient:Lmiui/hybrid/HybridChromeClient;

    invoke-virtual {v0, p1, p2}, Lmiui/hybrid/HybridChromeClient;->onProgressChanged(Lmiui/hybrid/HybridView;I)V

    .line 42
    return-void
.end method

.method public onReceivedTitle(Lmiui/hybrid/HybridView;Ljava/lang/String;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridChromeClient:Lmiui/hybrid/HybridChromeClient;

    invoke-virtual {v0, p1, p2}, Lmiui/hybrid/HybridChromeClient;->onReceivedTitle(Lmiui/hybrid/HybridView;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public openFileChooser(Lmiui/hybrid/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/hybrid/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridChromeClient:Lmiui/hybrid/HybridChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/hybrid/HybridChromeClient;->openFileChooser(Lmiui/hybrid/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
