.class public abstract Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;
.super Ljava/lang/Object;
.source "TranslationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;,
        Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$NoLineClickSpan;,
        Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$PairAdapter;,
        Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;,
        Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mIsEngineInitialized:Z

.field protected mIsLanguageChoiceValid:Z

.field protected mLanguageEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLanguageEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLanguageIds:[I

.field protected mOcrRect:Landroid/graphics/Rect;

.field protected mPreviewRect:Landroid/graphics/Rect;

.field protected mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

.field protected mTranslationListener:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;

.field protected mWordRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/scanner/settings/SettingsManager;Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingsManager"    # Lcom/xiaomi/scanner/settings/SettingsManager;
    .param p3, "translationListener"    # Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mIsLanguageChoiceValid:Z

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mOcrRect:Landroid/graphics/Rect;

    .line 81
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    .line 83
    iput-object p3, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mTranslationListener:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;

    .line 84
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->initLanguageString()V

    .line 85
    return-void
.end method

.method private findLanguageIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mLanguageEntryValues:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mLanguageEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mLanguageEntryValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private initLanguageString()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mLanguageEntries:Ljava/util/List;

    .line 89
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mLanguageEntryValues:Ljava/util/List;

    .line 90
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mLanguageIds:[I

    .line 91
    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract finishCurrentTranslation()V
.end method

.method public abstract getAllTranslatePairs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDestEntry()Ljava/lang/String;
.end method

.method public abstract getDestID()I
.end method

.method protected getLanguageEntryFromValues(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->findLanguageIndex(Ljava/lang/String;)I

    move-result v0

    .line 103
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mLanguageEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mLanguageEntries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method protected getLanguageIdFromValues(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->findLanguageIndex(Ljava/lang/String;)I

    move-result v0

    .line 111
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mLanguageIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mLanguageIds:[I

    aget v1, v1, v0

    .line 114
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public abstract getOcrLanguageID()I
.end method

.method public abstract getSelection(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getSourceEntry()Ljava/lang/String;
.end method

.method public abstract getSourceID()I
.end method

.method public abstract getVendorInfo()Ljava/lang/String;
.end method

.method public abstract initScan()V
.end method

.method public abstract initTranslationEngine()V
.end method

.method public isChoiceValid()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mIsLanguageChoiceValid:Z

    return v0
.end method

.method public isEngineInitlized()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mIsEngineInitialized:Z

    return v0
.end method

.method public isRectValid(Landroid/graphics/RectF;)Z
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v1, 0x0

    .line 180
    if-eqz p1, :cond_1

    iget v0, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract pauseScan()V
.end method

.method protected abstract processHyperLinkClick(Ljava/lang/String;)V
.end method

.method public abstract scan(Lcom/xiaomi/scanner/translation/bean/ScanDataBean;)V
.end method

.method public abstract setOcrLanguage(Ljava/lang/String;)V
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mPreviewRect:Landroid/graphics/Rect;

    .line 187
    return-void
.end method

.method public setWordRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mWordRect:Landroid/graphics/Rect;

    .line 177
    return-void
.end method

.method public abstract stopScan()V
.end method

.method public abstract updateSelection(Ljava/lang/String;Ljava/lang/String;)Z
.end method
