.class public Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;
.super Landroid/widget/RelativeLayout;
.source "TranslateResultContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaomi/scanner/translation/widget/ChooseLangView$LangViewClick;
.implements Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;
.implements Lcom/xiaomi/scanner/ui/ZoomImageView$OnViewTapListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$TranslateUICallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private callback:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$TranslateUICallback;

.field private mChooseLangView:Lcom/xiaomi/scanner/translation/widget/ChooseLangView;

.field private mCompareBtn:Landroid/widget/TextView;

.field private mCompareView:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;

.field private mErrorDialog:Lcom/xiaomi/scanner/dialog/ErrorDialog;

.field private mHandleBitmap:Landroid/graphics/Bitmap;

.field private mImageBg:Lcom/xiaomi/scanner/ui/ZoomImageView;

.field private mImageBgFlag:Landroid/widget/ImageView;

.field private mImageTranslate:Lcom/xiaomi/scanner/ui/ZoomImageView;

.field private mLineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUi:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

.field private progressDialog:Lcom/xiaomi/scanner/dialog/CustomProgressDialog;

.field private translateDrawView:Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "TranslateResult"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

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
    .line 75
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
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
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030068

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    const v2, 0x7f0d0137

    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageBgFlag:Landroid/widget/ImageView;

    .line 83
    const v2, 0x7f0d0139

    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/ui/ZoomImageView;

    iput-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageTranslate:Lcom/xiaomi/scanner/ui/ZoomImageView;

    .line 84
    const v2, 0x7f0d013a

    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;

    iput-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->translateDrawView:Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;

    .line 85
    const v2, 0x7f0d0138

    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/ui/ZoomImageView;

    iput-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageBg:Lcom/xiaomi/scanner/ui/ZoomImageView;

    .line 86
    const v2, 0x7f0d013d

    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mCompareBtn:Landroid/widget/TextView;

    .line 87
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mCompareBtn:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v2, 0x7f0d013c

    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;

    iput-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mChooseLangView:Lcom/xiaomi/scanner/translation/widget/ChooseLangView;

    .line 89
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mChooseLangView:Lcom/xiaomi/scanner/translation/widget/ChooseLangView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->setHasConvertFunction(Z)V

    .line 90
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mChooseLangView:Lcom/xiaomi/scanner/translation/widget/ChooseLangView;

    invoke-virtual {v2, p0}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->setLangViewClick(Lcom/xiaomi/scanner/translation/widget/ChooseLangView$LangViewClick;)V

    .line 93
    const v2, 0x7f0d013b

    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mCompareBtn:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 96
    .local v0, "bottomParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 97
    .local v1, "normalMargin":I
    sget-boolean v2, Lcom/xiaomi/scanner/util/Util;->hasNativageBar:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->isFullScreenDevice()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getNavigationBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    .end local v1    # "normalMargin":I
    :cond_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 98
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageBg:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v2, p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->setOnViewTapListener(Lcom/xiaomi/scanner/ui/ZoomImageView$OnViewTapListener;)V

    .line 100
    invoke-virtual {p0, p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/scanner/translation/TranslationModuleUI;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "UI"    # Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    .prologue
    .line 70
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput-object p2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mUi:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    .line 72
    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;)Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->translateDrawView:Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->enableBtn(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;)Lcom/xiaomi/scanner/ui/ZoomImageView;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageTranslate:Lcom/xiaomi/scanner/ui/ZoomImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;)Lcom/xiaomi/scanner/ui/ZoomImageView;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageBg:Lcom/xiaomi/scanner/ui/ZoomImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageBgFlag:Landroid/widget/ImageView;

    return-object v0
.end method

.method private enableBtn(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 289
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mCompareBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 290
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mCompareBtn:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 291
    return-void

    .line 290
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method

.method private handleLangChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "selectSrc"    # Ljava/lang/String;
    .param p2, "selectDes"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 255
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/scanner/translation/TranslateModel;->updateLangs(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mChooseLangView:Lcom/xiaomi/scanner/translation/widget/ChooseLangView;

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->updateLang(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mHandleBitmap:Landroid/graphics/Bitmap;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mUi:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    if-nez v4, :cond_0

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/xiaomi/scanner/translation/TranslateModel;->sendTranslate(Landroid/graphics/Bitmap;II)V

    .line 258
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->showLoading()V

    .line 259
    return-void

    .line 257
    :cond_0
    iget-object v4, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mUi:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    invoke-virtual {v4, v0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->getTakePhotoOrientation(Z)I

    move-result v0

    goto :goto_0
.end method

.method private hideError()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mErrorDialog:Lcom/xiaomi/scanner/dialog/ErrorDialog;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mErrorDialog:Lcom/xiaomi/scanner/dialog/ErrorDialog;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ErrorDialog;->dismiss()V

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mErrorDialog:Lcom/xiaomi/scanner/dialog/ErrorDialog;

    .line 273
    :cond_0
    return-void
.end method

.method private loadResultBackgroundAndImage(Lcom/xiaomi/scanner/translation/bean/TranslateResult;I)V
    .locals 1
    .param p1, "result"    # Lcom/xiaomi/scanner/translation/bean/TranslateResult;
    .param p2, "orientation"    # I

    .prologue
    .line 112
    new-instance v0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;-><init>(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;Lcom/xiaomi/scanner/translation/bean/TranslateResult;I)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;)V

    .line 159
    return-void
.end method

.method private onDestroy()V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mHandleBitmap:Landroid/graphics/Bitmap;

    .line 295
    return-void
.end method

.method private resetTranslateDrawView()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->translateDrawView:Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;

    invoke-virtual {v0, v2}, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->translateDrawView:Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;->removeAllViews()V

    .line 190
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageBgFlag:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageBg:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageTranslate:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->setVisibility(I)V

    .line 193
    return-void
.end method

.method private showCompare()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 225
    const-string v0, "translate_compare"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mCompareView:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mCompareView:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;

    .line 228
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mCompareView:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mCompareView:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mLineList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->setCompareList(Ljava/util/List;)V

    .line 231
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mCompareView:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->setVisibility(I)V

    .line 232
    return-void
.end method


# virtual methods
.method public clearTranslate()V
    .locals 2

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->resetTranslateDrawView()V

    .line 197
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageTranslate:Lcom/xiaomi/scanner/ui/ZoomImageView;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageTranslate:Lcom/xiaomi/scanner/ui/ZoomImageView;

    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->setImageResource(I)V

    .line 200
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->callback:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$TranslateUICallback;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->callback:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$TranslateUICallback;

    invoke-interface {v0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$TranslateUICallback;->backClick()V

    .line 204
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mLineList:Ljava/util/List;

    .line 205
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->onDestroy()V

    .line 206
    return-void
.end method

.method public hideLoadingAndError()V
    .locals 1

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->hideError()V

    .line 277
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->progressDialog:Lcom/xiaomi/scanner/dialog/CustomProgressDialog;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->progressDialog:Lcom/xiaomi/scanner/dialog/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/CustomProgressDialog;->dismiss()V

    .line 280
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mCompareView:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mCompareView:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 105
    .local v0, "canBack":Z
    :goto_0
    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->clearTranslate()V

    .line 108
    :cond_0
    return v0

    .line 104
    .end local v0    # "canBack":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 212
    :sswitch_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->showCompare()V

    goto :goto_0

    .line 215
    :sswitch_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->clearTranslate()V

    goto :goto_0

    .line 218
    :sswitch_2
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->showLoading()V

    .line 219
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mHandleBitmap:Landroid/graphics/Bitmap;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mUi:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    if-nez v4, :cond_0

    :goto_1
    invoke-virtual {v1, v2, v3, v0}, Lcom/xiaomi/scanner/translation/TranslateModel;->sendTranslate(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mUi:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    invoke-virtual {v4, v0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->getTakePhotoOrientation(Z)I

    move-result v0

    goto :goto_1

    .line 210
    :sswitch_data_0
    .sparse-switch
        0x7f0d00cb -> :sswitch_2
        0x7f0d013b -> :sswitch_1
        0x7f0d013d -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfirmClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "selectSrc"    # Ljava/lang/String;
    .param p2, "selectDes"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->handleLangChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public onConvertClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "newSrc"    # Ljava/lang/String;
    .param p2, "newDes"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->onSelectClick()V

    .line 237
    return-void
.end method

.method public onSelectClick()V
    .locals 6

    .prologue
    .line 241
    const-string v0, "translate_select_lang_click"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 243
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/translation/TranslateModel;->getSrcLang()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/translation/TranslateModel;->getDesLang()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    .line 245
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/translation/TranslateModel;->getSrcLangList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    .line 246
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/translation/TranslateModel;->getDesLangList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, p0

    .line 242
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->showDialog(Landroid/app/Activity;Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 247
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageBg:Lcom/xiaomi/scanner/ui/ZoomImageView;

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageBg:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v0, v1, p2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->onTouchFromParent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 308
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageTranslate:Lcom/xiaomi/scanner/ui/ZoomImageView;

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageTranslate:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v0, v1, p2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->onTouchFromParent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method public onViewTap(Landroid/view/View;FF)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 299
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mLineList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mLineList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageTranslate:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getVisibility()I

    move-result v0

    .line 301
    .local v0, "translateVisibility":I
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageTranslate:Lcom/xiaomi/scanner/ui/ZoomImageView;

    if-nez v0, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->setVisibility(I)V

    .line 303
    .end local v0    # "translateVisibility":I
    :cond_0
    return-void

    .line 301
    .restart local v0    # "translateVisibility":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$TranslateUICallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$TranslateUICallback;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->callback:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$TranslateUICallback;

    .line 67
    return-void
.end method

.method public showError()V
    .locals 4

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->hideLoadingAndError()V

    .line 263
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, p0}, Lcom/xiaomi/scanner/dialog/ErrorDialog;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/xiaomi/scanner/dialog/ErrorDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mErrorDialog:Lcom/xiaomi/scanner/dialog/ErrorDialog;

    .line 265
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->enableBtn(Z)V

    .line 266
    return-void
.end method

.method public showLoading()V
    .locals 3

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->hideLoadingAndError()V

    .line 284
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0200c2

    const v2, 0x7f0700b6

    invoke-static {v0, v1, v2}, Lcom/xiaomi/scanner/dialog/CustomProgressDialog;->showProgress(Landroid/app/Activity;II)Lcom/xiaomi/scanner/dialog/CustomProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->progressDialog:Lcom/xiaomi/scanner/dialog/CustomProgressDialog;

    .line 285
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->enableBtn(Z)V

    .line 286
    return-void
.end method

.method public updateBgView(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageBg:Lcom/xiaomi/scanner/ui/ZoomImageView;

    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mHandleBitmap:Landroid/graphics/Bitmap;

    .line 174
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageBg:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 176
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageBgFlag:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 180
    :goto_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->resetTranslateDrawView()V

    .line 181
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->showLoading()V

    .line 182
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mChooseLangView:Lcom/xiaomi/scanner/translation/widget/ChooseLangView;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mChooseLangView:Lcom/xiaomi/scanner/translation/widget/ChooseLangView;

    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/translation/TranslateModel;->getSrcLang()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/scanner/translation/TranslateModel;->getDesLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->updateLang(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mImageBg:Lcom/xiaomi/scanner/ui/ZoomImageView;

    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public updateTranslateResult(Lcom/xiaomi/scanner/translation/bean/TranslateResult;I)V
    .locals 3
    .param p1, "result"    # Lcom/xiaomi/scanner/translation/bean/TranslateResult;
    .param p2, "orientation"    # I

    .prologue
    .line 162
    sget-object v0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTranslateResult orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", server orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/bean/TranslateResult;->getDegree()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/bean/TranslateResult;->getLineInfos()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->mLineList:Ljava/util/List;

    .line 164
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->resetTranslateDrawView()V

    .line 165
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->translateDrawView:Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;->setTranslateData(Lcom/xiaomi/scanner/translation/bean/TranslateResult;I)V

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->loadResultBackgroundAndImage(Lcom/xiaomi/scanner/translation/bean/TranslateResult;I)V

    .line 167
    return-void
.end method
