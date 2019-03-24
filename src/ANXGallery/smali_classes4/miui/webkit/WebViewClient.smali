.class public Lmiui/webkit/WebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# static fields
.field public static final FEATURE_AUTO_LOGIN:I = 0x2

.field public static final FEATURE_DEEP_LINK:I = 0x1


# instance fields
.field private Ok:Lcom/miui/internal/webkit/WebViewClientDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 33
    new-instance v0, Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-direct {v0}, Lcom/miui/internal/webkit/WebViewClientDelegate;-><init>()V

    iput-object v0, p0, Lmiui/webkit/WebViewClient;->Ok:Lcom/miui/internal/webkit/WebViewClientDelegate;

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 45
    new-instance v0, Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-direct {v0, p1}, Lcom/miui/internal/webkit/WebViewClientDelegate;-><init>(I)V

    iput-object v0, p0, Lmiui/webkit/WebViewClient;->Ok:Lcom/miui/internal/webkit/WebViewClientDelegate;

    .line 46
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 58
    new-instance v0, Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-direct {v0, p1, p2}, Lcom/miui/internal/webkit/WebViewClientDelegate;-><init>(II)V

    iput-object v0, p0, Lmiui/webkit/WebViewClient;->Ok:Lcom/miui/internal/webkit/WebViewClientDelegate;

    .line 59
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lmiui/webkit/WebViewClient;->Ok:Lcom/miui/internal/webkit/WebViewClientDelegate;

    new-instance v1, Lcom/miui/internal/webkit/WebViewWrapper;

    invoke-direct {v1, p1}, Lcom/miui/internal/webkit/WebViewWrapper;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1, p2}, Lcom/miui/internal/webkit/WebViewClientDelegate;->onPageFinished(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lmiui/webkit/WebViewClient;->Ok:Lcom/miui/internal/webkit/WebViewClientDelegate;

    new-instance v1, Lcom/miui/internal/webkit/WebViewWrapper;

    invoke-direct {v1, p1}, Lcom/miui/internal/webkit/WebViewWrapper;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/miui/internal/webkit/WebViewClientDelegate;->onPageStarted(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 69
    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lmiui/webkit/WebViewClient;->Ok:Lcom/miui/internal/webkit/WebViewClientDelegate;

    new-instance v1, Lcom/miui/internal/webkit/WebViewWrapper;

    invoke-direct {v1, p1}, Lcom/miui/internal/webkit/WebViewWrapper;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/miui/internal/webkit/WebViewClientDelegate;->onReceivedLoginRequest(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 63
    iget-object v0, p0, Lmiui/webkit/WebViewClient;->Ok:Lcom/miui/internal/webkit/WebViewClientDelegate;

    new-instance v1, Lcom/miui/internal/webkit/WebViewWrapper;

    invoke-direct {v1, p1}, Lcom/miui/internal/webkit/WebViewWrapper;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1, p2}, Lcom/miui/internal/webkit/WebViewClientDelegate;->shouldOverrideUrlLoading(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
