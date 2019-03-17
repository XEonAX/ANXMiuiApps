.class public Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;
.super Landroid/widget/FrameLayout;
.source "RealTimeTranslateView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
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
    .line 30
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
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
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method private genTextView(Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;IFZ)V
    .locals 9
    .param p1, "lineInfo"    # Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;
    .param p2, "orientation"    # I
    .param p3, "itemHeight"    # F
    .param p4, "toChinese"    # Z

    .prologue
    const/16 v8, 0x5a

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 68
    new-instance v3, Landroid/support/v7/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 69
    .local v3, "textView":Landroid/support/v7/widget/AppCompatTextView;
    iget-object v4, p1, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->toText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->getTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AppCompatTextView;->setTextColor(I)V

    .line 71
    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;->addView(Landroid/view/View;)V

    .line 72
    invoke-virtual {v3}, Landroid/support/v7/widget/AppCompatTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 73
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1, p2}, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->rect(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 74
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-direct {p0, p2}, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;->isPortraitScreen(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    :goto_0
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 75
    invoke-direct {p0, p2}, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;->isPortraitScreen(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    :goto_1
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 76
    invoke-virtual {p1, p2}, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->degree(I)F

    move-result v0

    .line 77
    .local v0, "degree":F
    int-to-float v4, p2

    add-float/2addr v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AppCompatTextView;->setRotation(F)V

    .line 78
    invoke-virtual {v3, v7}, Landroid/support/v7/widget/AppCompatTextView;->setPivotX(F)V

    .line 79
    invoke-virtual {v3, v7}, Landroid/support/v7/widget/AppCompatTextView;->setPivotY(F)V

    .line 80
    if-eqz p2, :cond_0

    const/16 v4, 0xb4

    if-ne p2, v4, :cond_6

    .line 81
    :cond_0
    iget v6, v2, Landroid/graphics/Rect;->left:I

    if-nez p2, :cond_4

    move v4, v5

    :goto_2
    add-int/2addr v4, v6

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 82
    iget v6, v2, Landroid/graphics/Rect;->top:I

    if-nez p2, :cond_5

    move v4, v5

    :goto_3
    add-int/2addr v4, v6

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 87
    :cond_1
    :goto_4
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/AppCompatTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AppCompatTextView;->setGravity(I)V

    .line 89
    if-eqz p4, :cond_a

    cmpl-float v4, p3, v7

    if-lez v4, :cond_a

    .line 90
    const v4, 0x3f40e560    # 0.7535f

    mul-float/2addr v4, p3

    invoke-virtual {v3, v5, v4}, Landroid/support/v7/widget/AppCompatTextView;->setTextSize(IF)V

    .line 94
    :goto_5
    return-void

    .line 74
    .end local v0    # "degree":F
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    goto :goto_1

    .line 81
    .restart local v0    # "degree":F
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    goto :goto_2

    .line 82
    :cond_5
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    goto :goto_3

    .line 83
    :cond_6
    if-eq p2, v8, :cond_7

    const/16 v4, 0x10e

    if-ne p2, v4, :cond_1

    .line 84
    :cond_7
    iget v6, v2, Landroid/graphics/Rect;->left:I

    if-ne p2, v8, :cond_8

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_6
    add-int/2addr v4, v6

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 85
    iget v6, v2, Landroid/graphics/Rect;->top:I

    if-ne p2, v8, :cond_9

    move v4, v5

    :goto_7
    add-int/2addr v4, v6

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    :cond_8
    move v4, v5

    .line 84
    goto :goto_6

    .line 85
    :cond_9
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    goto :goto_7

    .line 92
    :cond_a
    const/4 v4, 0x1

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/support/v7/widget/AppCompatTextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_5
.end method

.method private isPortraitScreen(I)Z
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 97
    if-eqz p1, :cond_0

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setItemNewHeight([FLjava/util/List;)V
    .locals 6
    .param p1, "newHeightList"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "lineInfos":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 39
    aget v4, p1, v1

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 38
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->getItemHeight()I

    move-result v4

    int-to-float v4, v4

    aput v4, p1, v1

    .line 43
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 44
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->getItemHeight()I

    move-result v4

    int-to-float v0, v4

    .line 45
    .local v0, "height":F
    aget v4, p1, v1

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    aget v5, p1, v1

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float/2addr v4, v5

    const v5, 0x3dcccccd    # 0.1f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    .line 46
    aget v4, p1, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 47
    .local v3, "newSize":F
    aput v3, p1, v1

    .line 48
    aput v3, p1, v2

    .line 43
    .end local v3    # "newSize":F
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 52
    .end local v0    # "height":F
    .end local v2    # "j":I
    :cond_3
    return-void
.end method


# virtual methods
.method public setTranslateData(Lcom/xiaomi/scanner/translation/bean/TranslateResult;I)V
    .locals 7
    .param p1, "result"    # Lcom/xiaomi/scanner/translation/bean/TranslateResult;
    .param p2, "orientation"    # I

    .prologue
    .line 55
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/bean/TranslateResult;->getLineInfos()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/bean/TranslateResult;->getLineInfos()Ljava/util/List;

    move-result-object v2

    .line 57
    .local v2, "lineInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [F

    .line 58
    .local v3, "sizeList":[F
    invoke-direct {p0, v3, v2}, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;->setItemNewHeight([FLjava/util/List;)V

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 60
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;

    .line 61
    .local v1, "lineInfo":Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;
    aget v4, v3, v0

    .line 62
    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/bean/TranslateResult;->getToLang()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/scanner/translation/TranslateModel;->getChineseLangCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 61
    invoke-direct {p0, v1, p2, v4, v5}, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;->genTextView(Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;IFZ)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    .end local v1    # "lineInfo":Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;
    .end local v2    # "lineInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;>;"
    .end local v3    # "sizeList":[F
    :cond_0
    return-void
.end method
