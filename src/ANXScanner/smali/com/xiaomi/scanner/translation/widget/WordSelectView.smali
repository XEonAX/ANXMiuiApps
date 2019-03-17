.class public Lcom/xiaomi/scanner/translation/widget/WordSelectView;
.super Landroid/widget/FrameLayout;
.source "WordSelectView.java"


# instance fields
.field private mModuleUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

.field private mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

.field private mWordDefinition:Landroid/widget/TextView;

.field private mWordMore:Landroid/widget/TextView;

.field private mWordOcrResult:Landroid/widget/TextView;

.field private mWordPrompt:Landroid/widget/TextView;

.field private mWordRectView:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

.field private mWordSymbols:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030044

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    const v2, 0x7f0d0107

    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordPrompt:Landroid/widget/TextView;

    .line 62
    const v2, 0x7f0d0106

    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    iput-object v2, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordRectView:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    .line 63
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 64
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordRectView:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->setDataAndDraw(Landroid/graphics/Rect;IZ)V

    .line 65
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordPrompt:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 66
    .local v1, "wordParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 69
    return-void
.end method

.method private setTextContent(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "content"    # Ljava/lang/CharSequence;

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordRectView:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->clear()V

    .line 143
    return-void
.end method

.method public getPreviewRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 78
    .local v2, "top":I
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800d7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 79
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 80
    .local v0, "height":I
    new-instance v3, Landroid/graphics/Rect;

    sget v4, Lcom/xiaomi/scanner/util/Util;->screenWidth:I

    sub-int/2addr v4, v1

    add-int v5, v2, v0

    invoke-direct {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method public initWordResultUI()V
    .locals 5

    .prologue
    .line 84
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordOcrResult:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 85
    const v2, 0x7f0d0108

    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 86
    .local v1, "sub":Landroid/view/ViewStub;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 87
    invoke-virtual {v1}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 88
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordRectView:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 89
    const v2, 0x7f0d0143

    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordOcrResult:Landroid/widget/TextView;

    .line 90
    const v2, 0x7f0d0144

    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordSymbols:Landroid/widget/TextView;

    .line 91
    const v2, 0x7f0d0145

    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordDefinition:Landroid/widget/TextView;

    .line 92
    const v2, 0x7f0d0146

    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordMore:Landroid/widget/TextView;

    .line 93
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordMore:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordMore:Landroid/widget/TextView;

    new-instance v3, Lcom/xiaomi/scanner/translation/widget/WordSelectView$1;

    invoke-direct {v3, p0}, Lcom/xiaomi/scanner/translation/widget/WordSelectView$1;-><init>(Lcom/xiaomi/scanner/translation/widget/WordSelectView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "sub":Landroid/view/ViewStub;
    :cond_0
    return-void
.end method

.method public setTranslateAdapterAndModuleUi(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;Lcom/xiaomi/scanner/translation/TranslationModuleUI;)V
    .locals 0
    .param p1, "adapter"    # Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;
    .param p2, "ui"    # Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    .line 73
    iput-object p2, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mModuleUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    .line 74
    return-void
.end method

.method public setTranslationResult(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;)V
    .locals 2
    .param p1, "result"    # Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordMore:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordMore:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 138
    :cond_0
    const-string v0, "translate_auto_result"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public setWordResultUI(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "promptVisible"    # I
    .param p2, "ocrStr"    # Ljava/lang/CharSequence;
    .param p3, "symbolStr"    # Ljava/lang/CharSequence;
    .param p4, "definitionStr"    # Ljava/lang/CharSequence;
    .param p5, "moreStr"    # Ljava/lang/CharSequence;

    .prologue
    .line 113
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->initWordResultUI()V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordOcrResult:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->setTextContent(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordSymbols:Landroid/widget/TextView;

    invoke-direct {p0, v0, p3}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->setTextContent(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordDefinition:Landroid/widget/TextView;

    invoke-direct {p0, v0, p4}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->setTextContent(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordMore:Landroid/widget/TextView;

    invoke-direct {p0, v0, p5}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->setTextContent(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method public updatePrompt()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordPrompt:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->mWordPrompt:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaomi/scanner/util/NetworkUtil;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0700ca

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 110
    :cond_0
    return-void

    .line 108
    :cond_1
    const v0, 0x7f070080

    goto :goto_0
.end method
