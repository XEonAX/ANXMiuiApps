.class public Lmiui/hybrid/HybridViewClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final yO:Ljava/lang/String; = "hybrid/"

.field private static final yP:Ljava/lang/String; = "android_asset/hybrid/"


# instance fields
.field private fy:Lcom/miui/internal/hybrid/HybridManager;

.field private yQ:Lcom/miui/internal/webkit/WebViewClientDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-direct {v0}, Lcom/miui/internal/webkit/WebViewClientDelegate;-><init>()V

    iput-object v0, p0, Lmiui/hybrid/HybridViewClient;->yQ:Lcom/miui/internal/webkit/WebViewClientDelegate;

    .line 26
    return-void
.end method


# virtual methods
.method public onPageFinished(Lmiui/hybrid/HybridView;Ljava/lang/String;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->fy:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->fy:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->yQ:Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->cp()Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/webkit/WebViewClientDelegate;->onPageFinished(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onPageStarted(Lmiui/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 36
    new-instance v0, Lmiui/hybrid/PageContext;

    invoke-direct {v0}, Lmiui/hybrid/PageContext;-><init>()V

    .line 37
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/hybrid/PageContext;->setId(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p2}, Lmiui/hybrid/PageContext;->setUrl(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lmiui/hybrid/HybridViewClient;->fy:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v1, v0}, Lcom/miui/internal/hybrid/HybridManager;->setPageContext(Lmiui/hybrid/PageContext;)V

    .line 40
    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->fy:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->onPageChange()V

    .line 42
    invoke-virtual {p1, p2}, Lmiui/hybrid/HybridView;->z(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/hybrid/HybridView;->t(Z)V

    .line 45
    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->yQ:Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->cp()Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/webkit/WebViewClientDelegate;->onPageStarted(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 46
    return-void
.end method

.method public onReceivedError(Lmiui/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 83
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lmiui/hybrid/HybridView;->t(Z)V

    .line 84
    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->cq()V

    .line 85
    return-void
.end method

.method public onReceivedLoginRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->yQ:Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->cp()Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/webkit/WebViewClientDelegate;->onReceivedLoginRequest(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onReceivedSslError(Lmiui/hybrid/HybridView;Lmiui/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 78
    invoke-virtual {p2}, Lmiui/hybrid/SslErrorHandler;->cancel()V

    .line 79
    return-void
.end method

.method public setHybridManager(Lcom/miui/internal/hybrid/HybridManager;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lmiui/hybrid/HybridViewClient;->fy:Lcom/miui/internal/hybrid/HybridManager;

    .line 33
    return-void
.end method

.method public shouldInterceptRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;)Lmiui/hybrid/HybridResourceResponse;
    .locals 4

    .line 57
    nop

    .line 58
    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "android_asset/hybrid/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 60
    if-ltz v0, :cond_0

    const-string v1, "android_asset/hybrid/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 61
    const-string v1, "android_asset/hybrid/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 63
    :try_start_0
    new-instance v0, Lmiui/hybrid/HybridResourceResponse;

    iget-object v1, p0, Lmiui/hybrid/HybridViewClient;->fy:Lcom/miui/internal/hybrid/HybridManager;

    .line 64
    invoke-virtual {v1}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hybrid/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v0, p1, p1, p2}, Lmiui/hybrid/HybridResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    nop

    .line 70
    move-object p1, v0

    goto :goto_0

    .line 65
    :catch_0
    move-exception p2

    .line 66
    nop

    .line 70
    :cond_0
    :goto_0
    return-object p1
.end method

.method public shouldOverrideUrlLoading(Lmiui/hybrid/HybridView;Ljava/lang/String;)Z
    .locals 1

    .line 74
    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->yQ:Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->cp()Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/webkit/WebViewClientDelegate;->shouldOverrideUrlLoading(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
