.class public Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createWebChromeClient(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;
    .locals 0

    .line 30
    const/4 p1, 0x0

    return-object p1
.end method

.method public createWebView(Landroid/content/Context;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebView;
    .locals 0

    .line 22
    const/4 p1, 0x0

    return-object p1
.end method

.method public createWebViewClient(Lmiui/hybrid/HybridViewClient;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebViewClient;
    .locals 0

    .line 26
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCookieManager()Lmiui/hybrid/CookieManager;
    .locals 1

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCookieSyncManager()Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;
    .locals 1

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method
