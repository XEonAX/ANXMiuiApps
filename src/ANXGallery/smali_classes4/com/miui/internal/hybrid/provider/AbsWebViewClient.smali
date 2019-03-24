.class public abstract Lcom/miui/internal/hybrid/provider/AbsWebViewClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mHybridView:Lmiui/hybrid/HybridView;

.field protected mHybridViewClient:Lmiui/hybrid/HybridViewClient;


# direct methods
.method public constructor <init>(Lmiui/hybrid/HybridViewClient;Lmiui/hybrid/HybridView;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    .line 22
    iput-object p2, p0, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    .line 23
    return-void
.end method


# virtual methods
.method public getWebViewClient()Ljava/lang/Object;
    .locals 1

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPageFinished(Lmiui/hybrid/HybridView;Ljava/lang/String;)V
    .locals 0

    .line 33
    return-void
.end method

.method public onPageStarted(Lmiui/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 30
    return-void
.end method

.method public onReceivedError(Lmiui/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 47
    return-void
.end method

.method public onReceivedLoginRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    return-void
.end method

.method public onReceivedSslError(Lmiui/hybrid/HybridView;Lmiui/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 44
    return-void
.end method

.method public shouldInterceptRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;)Lmiui/hybrid/HybridResourceResponse;
    .locals 0

    .line 36
    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Lmiui/hybrid/HybridView;Ljava/lang/String;)Z
    .locals 0

    .line 40
    const/4 p1, 0x0

    return p1
.end method
