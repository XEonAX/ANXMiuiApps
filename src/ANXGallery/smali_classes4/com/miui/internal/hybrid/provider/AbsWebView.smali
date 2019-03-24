.class public abstract Lcom/miui/internal/hybrid/provider/AbsWebView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mHybridView:Lmiui/hybrid/HybridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/hybrid/HybridView;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/miui/internal/hybrid/provider/AbsWebView;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/miui/internal/hybrid/provider/AbsWebView;->mHybridView:Lmiui/hybrid/HybridView;

    .line 23
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 39
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public clearCache(Z)V
    .locals 0

    .line 52
    return-void
.end method

.method public copyBackForwardList()Lmiui/hybrid/HybridBackForwardList;
    .locals 1

    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroy()V
    .locals 0

    .line 46
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 97
    return-void
.end method

.method public getBaseWebView()Landroid/view/View;
    .locals 1

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .line 78
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getSettings()Lmiui/hybrid/HybridSettings;
    .locals 1

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public goBack()V
    .locals 0

    .line 63
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    .line 36
    return-void
.end method

.method public reload()V
    .locals 0

    .line 49
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 86
    return-void
.end method

.method public setWebChromeClient(Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;)V
    .locals 0

    .line 33
    return-void
.end method

.method public setWebViewClient(Lcom/miui/internal/hybrid/provider/AbsWebViewClient;)V
    .locals 0

    .line 30
    return-void
.end method
