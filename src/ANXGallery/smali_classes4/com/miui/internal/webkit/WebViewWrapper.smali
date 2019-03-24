.class public Lcom/miui/internal/webkit/WebViewWrapper;
.super Lcom/miui/internal/hybrid/webkit/WebView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 2

    .line 12
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/hybrid/webkit/WebView;-><init>(Landroid/content/Context;Lmiui/hybrid/HybridView;)V

    .line 13
    iput-object p1, p0, Lcom/miui/internal/webkit/WebViewWrapper;->mWebView:Landroid/webkit/WebView;

    .line 14
    return-void
.end method
