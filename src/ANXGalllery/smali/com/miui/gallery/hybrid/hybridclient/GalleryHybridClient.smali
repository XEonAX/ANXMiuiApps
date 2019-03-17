.class public Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;
.super Ljava/lang/Object;
.source "GalleryHybridClient.java"

# interfaces
.implements Lcom/miui/gallery/hybrid/hybridclient/HybridClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$ImageCountGotCallback;,
        Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$ImageInfo;,
        Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$GalleryWebChromeClientWrapper;,
        Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$GalleryWebViewClientWrapper;,
        Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$GalleryDownloadListenerWrapper;
    }
.end annotation


# static fields
.field private static sSchemes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentUrl:Ljava/lang/String;

.field protected mUrl:Ljava/lang/String;

.field protected mWebView:Landroid/webkit/WebView;

.field protected mWebViewFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->sSchemes:Ljava/util/Set;

    .line 42
    sget-object v0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->sSchemes:Ljava/util/Set;

    const-string/jumbo v1, "tel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->sSchemes:Ljava/util/Set;

    const-string/jumbo v1, "sip"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->sSchemes:Ljava/util/Set;

    const-string/jumbo v1, "sms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->sSchemes:Ljava/util/Set;

    const-string/jumbo v1, "smsto"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->sSchemes:Ljava/util/Set;

    const-string v1, "mailto"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->sSchemes:Ljava/util/Set;

    const-string v1, "micloud"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->mUrl:Ljava/lang/String;

    .line 54
    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->sSchemes:Ljava/util/Set;

    return-object v0
.end method

.method private ensureExistence(Ljava/lang/String;)V
    .locals 2
    .param p1, "cacheDir"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 160
    :cond_0
    return-void
.end method

.method private setAppCache(Landroid/webkit/WebSettings;)V
    .locals 4
    .param p1, "settings"    # Landroid/webkit/WebSettings;

    .prologue
    .line 149
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 150
    iget-object v1, p0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->mContext:Landroid/content/Context;

    const-string v2, "cache"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "cacheDir":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->ensureExistence(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private setBrowserUA(Landroid/webkit/WebSettings;)V
    .locals 3
    .param p1, "settings"    # Landroid/webkit/WebSettings;

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v0, "sbUA":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, "MiuiGallery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, "lg/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, "XiaoMi/MiuiBrowser/4.3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method private static setDOMStorage(Landroid/webkit/WebSettings;)V
    .locals 1
    .param p0, "settings"    # Landroid/webkit/WebSettings;

    .prologue
    const/4 v0, 0x1

    .line 164
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 165
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 166
    return-void
.end method

.method private setGeoLocation(Landroid/webkit/WebSettings;)V
    .locals 4
    .param p1, "settings"    # Landroid/webkit/WebSettings;

    .prologue
    .line 142
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 143
    iget-object v1, p0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->mContext:Landroid/content/Context;

    const-string v2, "geodatabase"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "dir":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 145
    return-void
.end method


# virtual methods
.method public bindWebViewFragment(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->mWebViewFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .line 58
    return-void
.end method

.method public callJsMethod(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "jsMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p3, "resultCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 170
    new-instance v0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$1;-><init>(Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 177
    :cond_0
    return-void
.end method

.method public getActualPath(Lcom/miui/gallery/hybrid/hybridclient/HybridClient$ActualPathCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/miui/gallery/hybrid/hybridclient/HybridClient$ActualPathCallback;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->mUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/miui/gallery/hybrid/hybridclient/HybridClient$ActualPathCallback;->onGetActualPath(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method

.method public getDownloadListener(Landroid/webkit/DownloadListener;)Landroid/webkit/DownloadListener;
    .locals 1
    .param p1, "downloadListener"    # Landroid/webkit/DownloadListener;

    .prologue
    .line 74
    new-instance v0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$GalleryDownloadListenerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$GalleryDownloadListenerWrapper;-><init>(Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;Landroid/webkit/DownloadListener;)V

    return-object v0
.end method

.method public getJavascriptInterfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRuntimePermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getWebChromeClient(Landroid/webkit/WebChromeClient;)Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebChromeClientWrapper;
    .locals 1
    .param p1, "webChromeClient"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 84
    new-instance v0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$GalleryWebChromeClientWrapper;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$GalleryWebChromeClientWrapper;-><init>(Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;Landroid/webkit/WebChromeClient;)V

    return-object v0
.end method

.method public getWebViewClient(Lmiui/webkit/WebViewClient;)Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebViewClientWrapper;
    .locals 1
    .param p1, "webViewClient"    # Lmiui/webkit/WebViewClient;

    .prologue
    .line 79
    new-instance v0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$GalleryWebViewClientWrapper;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$GalleryWebViewClientWrapper;-><init>(Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;Lmiui/webkit/WebViewClient;)V

    return-object v0
.end method

.method public isSupportPullToRefresh()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 122
    return-void
.end method

.method public onConfigWebSettings(Landroid/webkit/WebSettings;)V
    .locals 3
    .param p1, "settings"    # Landroid/webkit/WebSettings;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 89
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 90
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 91
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 92
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 93
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 94
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 95
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 96
    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 98
    invoke-direct {p0, p1}, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->setGeoLocation(Landroid/webkit/WebSettings;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->setAppCache(Landroid/webkit/WebSettings;)V

    .line 100
    invoke-static {p1}, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->setDOMStorage(Landroid/webkit/WebSettings;)V

    .line 101
    invoke-direct {p0, p1}, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->setBrowserUA(Landroid/webkit/WebSettings;)V

    .line 102
    return-void
.end method

.method public onPostConfigWebView(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 111
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 112
    return-void
.end method

.method public onStartConfigWebView(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->mWebView:Landroid/webkit/WebView;

    .line 107
    return-void
.end method
