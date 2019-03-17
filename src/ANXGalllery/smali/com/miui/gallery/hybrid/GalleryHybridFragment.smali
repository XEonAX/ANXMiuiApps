.class public Lcom/miui/gallery/hybrid/GalleryHybridFragment;
.super Lcom/miui/gallery/ui/BaseFragment;
.source "GalleryHybridFragment.java"

# interfaces
.implements Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridOnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;,
        Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;,
        Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;,
        Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;
    }
.end annotation


# instance fields
.field private mHybridClient:Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

.field private mHybridViewEventListener:Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;

.field private mLoadingProgressView:Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

.field private mLoadingState:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

.field private mNetworkConnected:Z

.field private mNetworkConnectivityReceiver:Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;

.field private mPullToRefreshWebView:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;

.field private mWebview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/miui/os/Rom;->IS_ALPHA:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/os/Rom;->IS_DEV:Z

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 64
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseFragment;-><init>()V

    .line 462
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridViewEventListener:Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mNetworkConnected:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/miui/gallery/hybrid/GalleryHybridFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mNetworkConnected:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->reload()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mLoadingState:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/hybrid/GalleryHybridFragment;Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;
    .param p1, "x1"    # Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mLoadingState:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mLoadingProgressView:Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mPullToRefreshWebView:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method private configureWebView()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 173
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridClient:Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    if-eqz v2, :cond_2

    .line 174
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridClient:Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

    iget-object v3, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-interface {v2, v3}, Lcom/miui/gallery/hybrid/hybridclient/HybridClient;->onStartConfigWebView(Landroid/webkit/WebView;)V

    .line 175
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridClient:Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

    iget-object v3, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/miui/gallery/hybrid/hybridclient/HybridClient;->onConfigWebSettings(Landroid/webkit/WebSettings;)V

    .line 176
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridClient:Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

    new-instance v4, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;

    invoke-direct {v4, p0, v5}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;Lcom/miui/gallery/hybrid/GalleryHybridFragment$1;)V

    invoke-interface {v3, v4}, Lcom/miui/gallery/hybrid/hybridclient/HybridClient;->getWebViewClient(Lmiui/webkit/WebViewClient;)Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebViewClientWrapper;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 177
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridClient:Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

    new-instance v4, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;

    invoke-direct {v4, p0, v5}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;Lcom/miui/gallery/hybrid/GalleryHybridFragment$1;)V

    invoke-interface {v3, v4}, Lcom/miui/gallery/hybrid/hybridclient/HybridClient;->getWebChromeClient(Landroid/webkit/WebChromeClient;)Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebChromeClientWrapper;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 178
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridClient:Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

    invoke-interface {v3, v5}, Lcom/miui/gallery/hybrid/hybridclient/HybridClient;->getDownloadListener(Landroid/webkit/DownloadListener;)Landroid/webkit/DownloadListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 180
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridClient:Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

    invoke-interface {v2}, Lcom/miui/gallery/hybrid/hybridclient/HybridClient;->getJavascriptInterfaces()Ljava/util/List;

    move-result-object v1

    .line 181
    .local v1, "jsInterfacePairs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;

    .line 183
    .local v0, "jsInterfacePair":Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;
    iget-object v3, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    iget-object v4, v0, Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;->obj:Ljava/lang/Object;

    iget-object v5, v0, Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    .end local v0    # "jsInterfacePair":Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridClient:Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

    invoke-interface {v2}, Lcom/miui/gallery/hybrid/hybridclient/HybridClient;->isSupportPullToRefresh()Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mPullToRefreshWebView:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;

    sget-object v3, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;->setMode(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridClient:Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

    iget-object v3, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-interface {v2, v3}, Lcom/miui/gallery/hybrid/hybridclient/HybridClient;->onPostConfigWebView(Landroid/webkit/WebView;)V

    .line 191
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocus()Z

    .line 193
    .end local v1    # "jsInterfacePairs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;>;"
    :cond_2
    return-void
.end method

.method private initLoadingState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mLoadingProgressView:Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->setIndeterminate(Z)V

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mLoadingProgressView:Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->setProgress(I)V

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mLoadingProgressView:Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->onStartLoading(Z)V

    .line 140
    sget-object v0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->OK:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    iput-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mLoadingState:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    .line 141
    return-void
.end method

.method private registerConnectivityReceiver()V
    .locals 3

    .prologue
    .line 440
    const-string v1, "GalleryHybridFragment"

    const-string v2, "Register network connectivity changed receiver"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mNetworkConnectivityReceiver:Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;

    if-nez v1, :cond_0

    .line 442
    new-instance v1, Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;Lcom/miui/gallery/hybrid/GalleryHybridFragment$1;)V

    iput-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mNetworkConnectivityReceiver:Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;

    .line 444
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 445
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mNetworkConnectivityReceiver:Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/activity/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 447
    return-void
.end method

.method private reload()V
    .locals 2

    .prologue
    .line 474
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->loadUrl(Ljava/lang/String;)V

    .line 478
    :cond_0
    return-void
.end method

.method private stepsToGoBack()I
    .locals 6

    .prologue
    .line 425
    const/4 v0, 0x1

    .line 426
    .local v0, "count":I
    iget-object v5, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v3

    .line 427
    .local v3, "list":Landroid/webkit/WebBackForwardList;
    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    .line 428
    .local v1, "currentIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 429
    sub-int v5, v1, v2

    invoke-virtual {v3, v5}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 431
    add-int/lit8 v0, v0, 0x1

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    .end local v4    # "url":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private unregisterConnectivityReceiver()V
    .locals 2

    .prologue
    .line 450
    const-string v0, "GalleryHybridFragment"

    const-string v1, "Unregister network connectivity changed receiver"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mNetworkConnectivityReceiver:Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/activity/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 452
    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "hybrid"

    return-object v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridClient:Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

    if-nez v0, :cond_0

    .line 111
    const-string v0, "GalleryHybridFragment"

    const-string v1, "HybridClient is null"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridClient:Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

    new-instance v1, Lcom/miui/gallery/hybrid/GalleryHybridFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$2;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)V

    invoke-interface {v0, v1}, Lcom/miui/gallery/hybrid/hybridclient/HybridClient;->getActualPath(Lcom/miui/gallery/hybrid/hybridclient/HybridClient$ActualPathCallback;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "GalleryHybridFragment"

    const-string v1, "The url should not be null, load nothing"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->initLoadingState()V

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 457
    const-string v0, "GalleryHybridFragment"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridClient:Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/gallery/hybrid/hybridclient/HybridClient;->onActivityResult(IILandroid/content/Intent;)V

    .line 460
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 150
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->registerConnectivityReceiver()V

    .line 151
    return-void
.end method

.method public onBackPressed()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 403
    iget-object v6, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 404
    iget-object v6, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v3

    .line 405
    .local v3, "list":Landroid/webkit/WebBackForwardList;
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->stepsToGoBack()I

    move-result v0

    .line 406
    .local v0, "backSteps":I
    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    .line 407
    .local v1, "curIndex":I
    if-le v0, v1, :cond_1

    .line 421
    .end local v0    # "backSteps":I
    .end local v1    # "curIndex":I
    .end local v3    # "list":Landroid/webkit/WebBackForwardList;
    :cond_0
    :goto_0
    return v5

    .line 410
    .restart local v0    # "backSteps":I
    .restart local v1    # "curIndex":I
    .restart local v3    # "list":Landroid/webkit/WebBackForwardList;
    :cond_1
    sub-int v5, v1, v0

    invoke-virtual {v3, v5}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v2

    .line 411
    .local v2, "historyItem":Landroid/webkit/WebHistoryItem;
    invoke-virtual {v2}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 412
    .local v4, "preTitle":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 413
    iget-object v5, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridViewEventListener:Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;

    if-eqz v5, :cond_2

    .line 414
    iget-object v5, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridViewEventListener:Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;

    invoke-interface {v5, v4}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;->onReceivedTitle(Ljava/lang/String;)V

    .line 417
    :cond_2
    iget-object v5, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    neg-int v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 418
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 387
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 395
    .local v0, "container":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 396
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 397
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    .line 399
    .end local v0    # "container":Landroid/view/ViewGroup;
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onDestroy()V

    .line 400
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->unregisterConnectivityReceiver()V

    .line 156
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onDetach()V

    .line 157
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 94
    const v1, 0x7f040094

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f120197

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;

    iput-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mPullToRefreshWebView:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;

    .line 96
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mPullToRefreshWebView:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;

    new-instance v2, Lcom/miui/gallery/hybrid/GalleryHybridFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$1;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)V

    .line 97
    invoke-virtual {v1, v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;->setOnRefreshListener(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V

    .line 103
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mPullToRefreshWebView:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    .line 104
    const v1, 0x7f12018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    iput-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mLoadingProgressView:Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    .line 105
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mLoadingProgressView:Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    invoke-virtual {v1, v3, v3, p0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->onInit(ZZLcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridOnRefreshListener;)V

    .line 106
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onPause()V

    .line 162
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 163
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->reload()V

    .line 75
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onResume()V

    .line 168
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 169
    return-void
.end method

.method public setHybridClient(Lcom/miui/gallery/hybrid/hybridclient/HybridClient;)V
    .locals 1
    .param p1, "hybridClient"    # Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridClient:Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridClient:Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

    invoke-interface {v0, p0}, Lcom/miui/gallery/hybrid/hybridclient/HybridClient;->bindWebViewFragment(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)V

    .line 80
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->configureWebView()V

    .line 81
    return-void
.end method

.method public setHybridViewEventListener(Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridViewEventListener:Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;

    .line 89
    return-void
.end method
