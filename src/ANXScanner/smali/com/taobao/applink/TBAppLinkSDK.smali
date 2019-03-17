.class public Lcom/taobao/applink/TBAppLinkSDK;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TBAppLinkSDK"

.field private static volatile mTBAppLinkSDKInstances:Lcom/taobao/applink/TBAppLinkSDK;


# instance fields
.field public mJumpFailedMode:Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

.field public mTBAppLinkSecret:Lcom/taobao/applink/secret/TBAppLinkSecret;

.field public sOpenParam:Lcom/taobao/applink/TBAppLinkParam;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;->DOWNLOAD_TAOBAO:Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    iput-object v0, p0, Lcom/taobao/applink/TBAppLinkSDK;->mJumpFailedMode:Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    return-void
.end method

.method public static getInstance()Lcom/taobao/applink/TBAppLinkSDK;
    .locals 2

    sget-object v0, Lcom/taobao/applink/TBAppLinkSDK;->mTBAppLinkSDKInstances:Lcom/taobao/applink/TBAppLinkSDK;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/applink/TBAppLinkSDK;->mTBAppLinkSDKInstances:Lcom/taobao/applink/TBAppLinkSDK;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/taobao/applink/TBAppLinkSDK;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/taobao/applink/TBAppLinkSDK;->mTBAppLinkSDKInstances:Lcom/taobao/applink/TBAppLinkSDK;

    if-nez v0, :cond_1

    new-instance v0, Lcom/taobao/applink/TBAppLinkSDK;

    invoke-direct {v0}, Lcom/taobao/applink/TBAppLinkSDK;-><init>()V

    sput-object v0, Lcom/taobao/applink/TBAppLinkSDK;->mTBAppLinkSDKInstances:Lcom/taobao/applink/TBAppLinkSDK;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/taobao/applink/TBAppLinkSDK;->mTBAppLinkSDKInstances:Lcom/taobao/applink/TBAppLinkSDK;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initUserTrack()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    iget-object v0, v0, Lcom/taobao/applink/TBAppLinkParam;->mAppkey:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/taobao/applink/h/d;

    invoke-static {}, Lcom/taobao/applink/util/TBAppLinkUtil;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/taobao/applink/h/d;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/taobao/applink/g/a;->a(Lcom/taobao/applink/h/d;)V

    invoke-static {}, Lcom/taobao/applink/c/b;->a()Lcom/taobao/applink/c/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/taobao/applink/c/b;->a(Lcom/taobao/applink/c/b$a;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/taobao/applink/h/d;

    invoke-static {}, Lcom/taobao/applink/util/TBAppLinkUtil;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    iget-object v2, v2, Lcom/taobao/applink/TBAppLinkParam;->mAppkey:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/taobao/applink/h/d;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/taobao/applink/g/a;->a(Lcom/taobao/applink/h/d;)V

    invoke-static {}, Lcom/taobao/applink/c/b;->a()Lcom/taobao/applink/c/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/taobao/applink/c/b;->a(Lcom/taobao/applink/c/b$a;)V

    goto :goto_0
.end method


# virtual methods
.method public doAuth(Landroid/content/Context;Lcom/taobao/applink/param/TBAuthParam;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/applink/exception/TBAppLinkException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/taobao/applink/param/TBAuthParam;->mListener:Lcom/taobao/applink/auth/TBAppLinkAuthListener;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/taobao/applink/exception/TBAppLinkException;

    sget-object v1, Lcom/taobao/applink/exception/a;->a:Lcom/taobao/applink/exception/a;

    invoke-direct {v0, v1}, Lcom/taobao/applink/exception/TBAppLinkException;-><init>(Lcom/taobao/applink/exception/a;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/taobao/applink/d/a;->a(Landroid/content/Context;Lcom/taobao/applink/param/TBBaseParam;Lcom/taobao/applink/f/a/b;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/taobao/applink/TBAppLinkParam;)Lcom/taobao/applink/TBAppLinkSDK;
    .locals 1

    iput-object p2, p0, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    invoke-static {}, Lcom/taobao/applink/util/TBAppLinkUtil;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/taobao/applink/util/TBAppLinkUtil;->setApplication(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0}, Lcom/taobao/applink/TBAppLinkSDK;->initUserTrack()V

    sget-object v0, Lcom/taobao/applink/TBAppLinkSDK;->mTBAppLinkSDKInstances:Lcom/taobao/applink/TBAppLinkSDK;

    return-object v0
.end method

.method public jumpDetail(Landroid/content/Context;Lcom/taobao/applink/param/TBDetailParam;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/applink/exception/TBAppLinkException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Lcom/taobao/applink/exception/TBAppLinkException;

    sget-object v1, Lcom/taobao/applink/exception/a;->a:Lcom/taobao/applink/exception/a;

    invoke-direct {v0, v1}, Lcom/taobao/applink/exception/TBAppLinkException;-><init>(Lcom/taobao/applink/exception/a;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/taobao/applink/d/a;->a(Landroid/content/Context;Lcom/taobao/applink/param/TBBaseParam;Lcom/taobao/applink/f/a/b;)Z

    move-result v0

    return v0
.end method

.method public jumpShop(Landroid/content/Context;Lcom/taobao/applink/param/TBShopParam;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/applink/exception/TBAppLinkException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Lcom/taobao/applink/exception/TBAppLinkException;

    sget-object v1, Lcom/taobao/applink/exception/a;->a:Lcom/taobao/applink/exception/a;

    invoke-direct {v0, v1}, Lcom/taobao/applink/exception/TBAppLinkException;-><init>(Lcom/taobao/applink/exception/a;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/taobao/applink/d/a;->a(Landroid/content/Context;Lcom/taobao/applink/param/TBBaseParam;Lcom/taobao/applink/f/a/b;)Z

    move-result v0

    return v0
.end method

.method public jumpTBURI(Landroid/content/Context;Lcom/taobao/applink/param/TBURIParam;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/applink/exception/TBAppLinkException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Lcom/taobao/applink/exception/TBAppLinkException;

    sget-object v1, Lcom/taobao/applink/exception/a;->a:Lcom/taobao/applink/exception/a;

    invoke-direct {v0, v1}, Lcom/taobao/applink/exception/TBAppLinkException;-><init>(Lcom/taobao/applink/exception/a;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/taobao/applink/d/a;->a(Landroid/content/Context;Lcom/taobao/applink/param/TBBaseParam;Lcom/taobao/applink/f/a/b;)Z

    move-result v0

    return v0
.end method

.method public setJumpFailedMode(Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;)Lcom/taobao/applink/TBAppLinkSDK;
    .locals 1

    iput-object p1, p0, Lcom/taobao/applink/TBAppLinkSDK;->mJumpFailedMode:Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    sget-object v0, Lcom/taobao/applink/TBAppLinkSDK;->mTBAppLinkSDKInstances:Lcom/taobao/applink/TBAppLinkSDK;

    return-object v0
.end method

.method public setTaoAppLinkSecret(Lcom/taobao/applink/secret/TBAppLinkSecret;)Lcom/taobao/applink/TBAppLinkSDK;
    .locals 1

    iput-object p1, p0, Lcom/taobao/applink/TBAppLinkSDK;->mTBAppLinkSecret:Lcom/taobao/applink/secret/TBAppLinkSecret;

    sget-object v0, Lcom/taobao/applink/TBAppLinkSDK;->mTBAppLinkSDKInstances:Lcom/taobao/applink/TBAppLinkSDK;

    return-object v0
.end method

.method public setupJsBridge(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)Lcom/taobao/applink/TBAppLinkSDK;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/applink/exception/TBAppLinkException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/taobao/applink/exception/TBAppLinkException;

    sget-object v1, Lcom/taobao/applink/exception/a;->a:Lcom/taobao/applink/exception/a;

    invoke-direct {v0, v1}, Lcom/taobao/applink/exception/TBAppLinkException;-><init>(Lcom/taobao/applink/exception/a;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Landroid/webkit/WebViewClient;

    invoke-direct {p2}, Landroid/webkit/WebViewClient;-><init>()V

    :cond_1
    new-instance v0, Lcom/taobao/applink/i/a;

    invoke-direct {v0, p2}, Lcom/taobao/applink/i/a;-><init>(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Lcom/taobao/applink/f/b;

    invoke-direct {v1}, Lcom/taobao/applink/f/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/taobao/applink/i/a;->a(Lcom/taobao/applink/f/a/a;)V

    invoke-static {p1, v0}, Lcom/taobao/applink/util/a;->a(Landroid/webkit/WebView;Lcom/taobao/applink/i/a;)V

    sget-object v0, Lcom/taobao/applink/TBAppLinkSDK;->mTBAppLinkSDKInstances:Lcom/taobao/applink/TBAppLinkSDK;

    return-object v0
.end method
