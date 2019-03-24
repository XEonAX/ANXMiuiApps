.class public Lcom/miui/internal/hybrid/webkit/WebSettings;
.super Lmiui/hybrid/HybridSettings;
.source "SourceFile"


# instance fields
.field private gp:Landroid/webkit/WebSettings;


# direct methods
.method public constructor <init>(Landroid/webkit/WebSettings;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lmiui/hybrid/HybridSettings;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->gp:Landroid/webkit/WebSettings;

    .line 15
    return-void
.end method


# virtual methods
.method public getUserAgentString()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->gp:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->gp:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 60
    return-void
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->gp:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 65
    return-void
.end method

.method public setAppCacheEnabled(Z)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->gp:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 90
    return-void
.end method

.method public setAppCachePath(Ljava/lang/String;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->gp:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public setCacheMode(I)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->gp:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 70
    return-void
.end method

.method public setDatabaseEnabled(Z)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->gp:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 55
    return-void
.end method

.method public setDomStorageEnabled(Z)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->gp:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 50
    return-void
.end method

.method public setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->gp:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setGeolocationEnabled(Z)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->gp:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 85
    return-void
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->gp:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 75
    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->gp:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 20
    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->gp:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 45
    return-void
.end method

.method public setSupportMultipleWindows(Z)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->gp:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 40
    return-void
.end method

.method public setTextZoom(I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->gp:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 80
    return-void
.end method

.method public setUseWideViewPort(Z)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->gp:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 35
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->gp:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 25
    return-void
.end method
