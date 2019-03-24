.class public Lmiui/hybrid/HybridView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final yK:I = 0x0

.field private static final yL:I = 0x1

.field private static final yM:I = 0x2


# instance fields
.field private fL:Z

.field private fy:Lcom/miui/internal/hybrid/HybridManager;

.field private pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

.field private yA:Lcom/miui/internal/hybrid/HybridProgressView;

.field private yB:Landroid/view/ViewGroup;

.field private yC:Landroid/widget/Button;

.field private yD:Landroid/widget/TextView;

.field private yE:Lcom/miui/internal/hybrid/WebContainerView;

.field private yF:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

.field private yG:Lmiui/hybrid/HybridSettings;

.field private yH:I

.field private yI:Z

.field private yJ:Z

.field private yz:Lmiui/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    sget-object v0, Lmiui/R$styleable;->HybridViewStyle:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 68
    sget v0, Lmiui/R$styleable;->HybridViewStyle_hybridProgressBar:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiui/hybrid/HybridView;->yH:I

    .line 70
    sget v0, Lmiui/R$styleable;->HybridViewStyle_hybridErrorPage:I

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/hybrid/HybridView;->yI:Z

    .line 71
    sget v0, Lmiui/R$styleable;->HybridViewStyle_hybridPullable:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/hybrid/HybridView;->fL:Z

    .line 73
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    invoke-virtual {p0}, Lmiui/hybrid/HybridView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 77
    sget v0, Lcom/miui/internal/R$layout;->hybrid_view_layout:I

    invoke-virtual {p2, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 79
    invoke-static {p1}, Lcom/miui/internal/hybrid/provider/WebViewFactory;->getProvider(Landroid/content/Context;)Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    move-result-object p2

    iput-object p2, p0, Lmiui/hybrid/HybridView;->yF:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    .line 80
    iget-object p2, p0, Lmiui/hybrid/HybridView;->yF:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    invoke-virtual {p2, p1, p0}, Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;->createWebView(Landroid/content/Context;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object p1

    iput-object p1, p0, Lmiui/hybrid/HybridView;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    .line 82
    sget p1, Lcom/miui/internal/R$id;->webContainer:I

    invoke-virtual {p0, p1}, Lmiui/hybrid/HybridView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/hybrid/WebContainerView;

    iput-object p1, p0, Lmiui/hybrid/HybridView;->yE:Lcom/miui/internal/hybrid/WebContainerView;

    .line 83
    iget-object p1, p0, Lmiui/hybrid/HybridView;->yE:Lcom/miui/internal/hybrid/WebContainerView;

    iget-object p2, p0, Lmiui/hybrid/HybridView;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {p2}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getBaseWebView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/internal/hybrid/WebContainerView;->setWebView(Landroid/view/View;)V

    .line 85
    iget p1, p0, Lmiui/hybrid/HybridView;->yH:I

    if-ne p1, v2, :cond_0

    .line 86
    sget p1, Lcom/miui/internal/R$id;->progress_circular:I

    invoke-virtual {p0, p1}, Lmiui/hybrid/HybridView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiui/widget/ProgressBar;

    iput-object p1, p0, Lmiui/hybrid/HybridView;->yz:Lmiui/widget/ProgressBar;

    goto :goto_0

    .line 87
    :cond_0
    iget p1, p0, Lmiui/hybrid/HybridView;->yH:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 88
    sget p1, Lcom/miui/internal/R$id;->progress_horizontal:I

    invoke-virtual {p0, p1}, Lmiui/hybrid/HybridView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/hybrid/HybridProgressView;

    iput-object p1, p0, Lmiui/hybrid/HybridView;->yA:Lcom/miui/internal/hybrid/HybridProgressView;

    .line 91
    :cond_1
    :goto_0
    sget p1, Lcom/miui/internal/R$id;->hybrid_provider:I

    invoke-virtual {p0, p1}, Lmiui/hybrid/HybridView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmiui/hybrid/HybridView;->yD:Landroid/widget/TextView;

    .line 92
    iget-boolean p1, p0, Lmiui/hybrid/HybridView;->fL:Z

    if-eqz p1, :cond_2

    .line 93
    iget-object p1, p0, Lmiui/hybrid/HybridView;->yD:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    :cond_2
    return-void
.end method

.method private M(I)V
    .locals 3

    .line 249
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yB:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 250
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 251
    iget-object v2, p0, Lmiui/hybrid/HybridView;->yB:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_0
    return-void
.end method

.method static synthetic a(Lmiui/hybrid/HybridView;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lmiui/hybrid/HybridView;->M(I)V

    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/hybrid/provider/AbsWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public clearCache(Z)V
    .locals 1

    .line 146
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->clearCache(Z)V

    .line 147
    return-void
.end method

.method co()Lcom/miui/internal/hybrid/HybridManager;
    .locals 1

    .line 98
    iget-object v0, p0, Lmiui/hybrid/HybridView;->fy:Lcom/miui/internal/hybrid/HybridManager;

    return-object v0
.end method

.method public copyBackForwardList()Lmiui/hybrid/HybridBackForwardList;
    .locals 1

    .line 276
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->copyBackForwardList()Lmiui/hybrid/HybridBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method cp()Lcom/miui/internal/hybrid/provider/AbsWebView;
    .locals 1

    .line 106
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    return-object v0
.end method

.method cq()V
    .locals 2

    .line 216
    iget-boolean v0, p0, Lmiui/hybrid/HybridView;->yI:Z

    if-nez v0, :cond_0

    .line 217
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yB:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 221
    sget v0, Lcom/miui/internal/R$id;->webview_reload_stub:I

    invoke-virtual {p0, v0}, Lmiui/hybrid/HybridView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 222
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmiui/hybrid/HybridView;->yB:Landroid/view/ViewGroup;

    .line 223
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yB:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->reload:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmiui/hybrid/HybridView;->yC:Landroid/widget/Button;

    .line 224
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yC:Landroid/widget/Button;

    new-instance v1, Lmiui/hybrid/HybridView$1;

    invoke-direct {v1, p0}, Lmiui/hybrid/HybridView$1;-><init>(Lmiui/hybrid/HybridView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    :cond_1
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yB:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 233
    invoke-direct {p0, v1}, Lmiui/hybrid/HybridView;->M(I)V

    .line 234
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    .line 235
    return-void
.end method

.method cr()V
    .locals 2

    .line 238
    iget-boolean v0, p0, Lmiui/hybrid/HybridView;->yI:Z

    if-nez v0, :cond_0

    .line 239
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yB:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yB:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 245
    :cond_1
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    .line 246
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 137
    iget-object v0, p0, Lmiui/hybrid/HybridView;->fy:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->clear()V

    .line 138
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->destroy()V

    .line 139
    return-void
.end method

.method public drawWebView(Landroid/graphics/Canvas;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->draw(Landroid/graphics/Canvas;)V

    .line 167
    return-void
.end method

.method public getContentHeight()I
    .locals 1

    .line 268
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 272
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getScale()F

    move-result v0

    return v0
.end method

.method public getSettings()Lmiui/hybrid/HybridSettings;
    .locals 1

    .line 130
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yG:Lmiui/hybrid/HybridSettings;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getSettings()Lmiui/hybrid/HybridSettings;

    move-result-object v0

    iput-object v0, p0, Lmiui/hybrid/HybridView;->yG:Lmiui/hybrid/HybridSettings;

    .line 133
    :cond_0
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yG:Lmiui/hybrid/HybridSettings;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .line 154
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->goBack()V

    .line 155
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->loadUrl(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public reload()V
    .locals 1

    .line 142
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->reload()V

    .line 143
    return-void
.end method

.method public setHybridChromeClient(Lmiui/hybrid/HybridChromeClient;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lmiui/hybrid/HybridView;->fy:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {p1, v0}, Lmiui/hybrid/HybridChromeClient;->setHybridManager(Lcom/miui/internal/hybrid/HybridManager;)V

    .line 117
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yF:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    invoke-virtual {v0, p1, p0}, Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;->createWebChromeClient(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;

    move-result-object p1

    .line 118
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setWebChromeClient(Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;)V

    .line 119
    return-void
.end method

.method setHybridManager(Lcom/miui/internal/hybrid/HybridManager;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lmiui/hybrid/HybridView;->fy:Lcom/miui/internal/hybrid/HybridManager;

    .line 103
    return-void
.end method

.method public setHybridViewClient(Lmiui/hybrid/HybridViewClient;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lmiui/hybrid/HybridView;->fy:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {p1, v0}, Lmiui/hybrid/HybridViewClient;->setHybridManager(Lcom/miui/internal/hybrid/HybridManager;)V

    .line 111
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yF:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    invoke-virtual {v0, p1, p0}, Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;->createWebViewClient(Lmiui/hybrid/HybridViewClient;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebViewClient;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pB:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setWebViewClient(Lcom/miui/internal/hybrid/provider/AbsWebViewClient;)V

    .line 113
    return-void
.end method

.method setProgress(I)V
    .locals 4

    .line 170
    const/16 v0, 0x50

    if-le p1, v0, :cond_0

    iget-boolean v0, p0, Lmiui/hybrid/HybridView;->yJ:Z

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lmiui/hybrid/HybridView;->cr()V

    .line 174
    :cond_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 175
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yE:Lcom/miui/internal/hybrid/WebContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/WebContainerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :cond_1
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yz:Lmiui/widget/ProgressBar;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/hybrid/HybridView;->yA:Lcom/miui/internal/hybrid/HybridProgressView;

    if-nez v0, :cond_2

    .line 179
    return-void

    .line 182
    :cond_2
    iget v0, p0, Lmiui/hybrid/HybridView;->yH:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_5

    .line 183
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yz:Lmiui/widget/ProgressBar;

    if-nez v0, :cond_3

    .line 184
    return-void

    .line 187
    :cond_3
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yz:Lmiui/widget/ProgressBar;

    invoke-virtual {v0}, Lmiui/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 188
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yz:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v2}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    .line 191
    :cond_4
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yz:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, p1}, Lmiui/widget/ProgressBar;->setProgress(I)V

    .line 192
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yz:Lmiui/widget/ProgressBar;

    invoke-virtual {v0}, Lmiui/widget/ProgressBar;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 193
    iget-object p1, p0, Lmiui/hybrid/HybridView;->yz:Lmiui/widget/ProgressBar;

    invoke-virtual {p1, v3}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 195
    :cond_5
    iget v0, p0, Lmiui/hybrid/HybridView;->yH:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 196
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yA:Lcom/miui/internal/hybrid/HybridProgressView;

    if-nez v0, :cond_6

    .line 197
    return-void

    .line 200
    :cond_6
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yA:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridProgressView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 201
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yA:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/hybrid/HybridProgressView;->setVisibility(I)V

    .line 204
    :cond_7
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yA:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/HybridProgressView;->setProgress(I)V

    .line 205
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yA:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridProgressView;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 206
    iget-object p1, p0, Lmiui/hybrid/HybridView;->yA:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-virtual {p1, v3}, Lcom/miui/internal/hybrid/HybridProgressView;->setVisibility(I)V

    .line 209
    :cond_8
    :goto_0
    return-void
.end method

.method t(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lmiui/hybrid/HybridView;->yJ:Z

    .line 213
    return-void
.end method

.method z(Ljava/lang/String;)V
    .locals 4

    .line 256
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object p1, p0, Lmiui/hybrid/HybridView;->yD:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yD:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiui/hybrid/HybridView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$string;->hybrid_provider:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :goto_0
    return-void
.end method
