.class public Lcom/miui/internal/hybrid/webkit/WebkitFactoryProvider;
.super Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;
.source "SourceFile"


# instance fields
.field private gr:Lmiui/hybrid/CookieManager;

.field private gs:Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createWebChromeClient(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;
    .locals 1

    .line 37
    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-direct {v0, p1, p2}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;-><init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/HybridView;)V

    return-object v0
.end method

.method public createWebView(Landroid/content/Context;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebView;
    .locals 1

    .line 27
    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebView;

    invoke-direct {v0, p1, p2}, Lcom/miui/internal/hybrid/webkit/WebView;-><init>(Landroid/content/Context;Lmiui/hybrid/HybridView;)V

    return-object v0
.end method

.method public createWebViewClient(Lmiui/hybrid/HybridViewClient;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebViewClient;
    .locals 1

    .line 32
    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-direct {v0, p1, p2}, Lcom/miui/internal/hybrid/webkit/WebViewClient;-><init>(Lmiui/hybrid/HybridViewClient;Lmiui/hybrid/HybridView;)V

    return-object v0
.end method

.method public getCookieManager()Lmiui/hybrid/CookieManager;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebkitFactoryProvider;->gr:Lmiui/hybrid/CookieManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/miui/internal/hybrid/webkit/CookieManagerAdapter;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/hybrid/webkit/CookieManagerAdapter;-><init>(Landroid/webkit/CookieManager;)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebkitFactoryProvider;->gr:Lmiui/hybrid/CookieManager;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebkitFactoryProvider;->gr:Lmiui/hybrid/CookieManager;

    return-object v0
.end method

.method public getCookieSyncManager()Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebkitFactoryProvider;->gs:Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/miui/internal/hybrid/webkit/CookieSyncManagerDelegate;

    invoke-direct {v0}, Lcom/miui/internal/hybrid/webkit/CookieSyncManagerDelegate;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebkitFactoryProvider;->gs:Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebkitFactoryProvider;->gs:Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;

    return-object v0
.end method
