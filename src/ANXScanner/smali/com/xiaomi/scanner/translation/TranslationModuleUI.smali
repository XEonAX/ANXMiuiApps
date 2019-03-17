.class public Lcom/xiaomi/scanner/translation/TranslationModuleUI;
.super Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;
.source "TranslationModuleUI.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$TranslateUICallback;
.implements Lcom/xiaomi/scanner/translation/widget/ChooseLangView$LangViewClick;
.implements Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback",
        "<",
        "Lcom/xiaomi/scanner/translation/bean/TranslateResult;",
        ">;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$TranslateUICallback;",
        "Lcom/xiaomi/scanner/translation/widget/ChooseLangView$LangViewClick;",
        "Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

.field private mAppUi:Lcom/xiaomi/scanner/app/AppUI;

.field private mChooseLangView:Lcom/xiaomi/scanner/translation/widget/ChooseLangView;

.field private mFullScreenRoot:Landroid/view/ViewGroup;

.field private mLineView:Lcom/xiaomi/scanner/ui/TranslateLineView;

.field private mModule:Lcom/xiaomi/scanner/translation/TranslationModule;

.field private final mModuleRoot:Landroid/view/ViewGroup;

.field private mPhotoResultContainer:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

.field private mSwitch:Lcom/xiaomi/scanner/ui/Switch;

.field private mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

.field private mWordLock:Z

.field private mWordSelectView:Lcom/xiaomi/scanner/translation/widget/WordSelectView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "TranslationModuleUI"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;Landroid/view/View;Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;Lcom/xiaomi/scanner/translation/TranslationModule;)V
    .locals 4
    .param p1, "activity"    # Lcom/xiaomi/scanner/app/ScanActivity;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "translationAdapter"    # Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;
    .param p4, "module"    # Lcom/xiaomi/scanner/translation/TranslationModule;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;-><init>()V

    .line 56
    iput-object p4, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mModule:Lcom/xiaomi/scanner/translation/TranslationModule;

    .line 57
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 58
    iput-object p3, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    .line 59
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    .line 60
    const v0, 0x7f0d008c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    .line 61
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030069

    iget-object v2, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 62
    const v0, 0x7f0d0090

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mFullScreenRoot:Landroid/view/ViewGroup;

    .line 63
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    const v1, 0x7f0d013f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/ui/Switch;

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mSwitch:Lcom/xiaomi/scanner/ui/Switch;

    .line 64
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mSwitch:Lcom/xiaomi/scanner/ui/Switch;

    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/ui/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    const v1, 0x7f0d013c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mChooseLangView:Lcom/xiaomi/scanner/translation/widget/ChooseLangView;

    .line 67
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mChooseLangView:Lcom/xiaomi/scanner/translation/widget/ChooseLangView;

    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->setLangViewClick(Lcom/xiaomi/scanner/translation/widget/ChooseLangView$LangViewClick;)V

    .line 69
    const v0, 0x7f0d0140

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/ui/TranslateLineView;

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mLineView:Lcom/xiaomi/scanner/ui/TranslateLineView;

    .line 71
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mSwitch:Lcom/xiaomi/scanner/ui/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/Switch;->setChecked(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isWordDetect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->initWordTranslateView()V

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->changeTranslationType()V

    .line 76
    return-void
.end method

.method private changeFullScreenUI(I)V
    .locals 1
    .param p1, "fullScreenUI"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mFullScreenRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 208
    return-void
.end method

.method private changeTranslationType()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->resetWordResult()V

    .line 142
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isWordDetect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mLineView:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/ui/TranslateLineView;->setVisibility(I)V

    .line 144
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mWordSelectView:Lcom/xiaomi/scanner/translation/widget/WordSelectView;

    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->setVisibility(I)V

    .line 145
    const-string v1, "translate_auto_select_word_tab"

    invoke-static {v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mChooseLangView:Lcom/xiaomi/scanner/translation/widget/ChooseLangView;

    iget-object v2, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->getSourceEntry()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->getDestEntry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->updateLang(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mChooseLangView:Lcom/xiaomi/scanner/translation/widget/ChooseLangView;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isWordDetect()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->setHasConvertFunction(Z)V

    .line 159
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->updateOverlayUI()V

    .line 160
    return-void

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mLineView:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->setVisibility(I)V

    .line 149
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getOrientationManager()Lcom/xiaomi/scanner/camera/OrientationManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getOrientationManager()Lcom/xiaomi/scanner/camera/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/scanner/camera/OrientationManager;->getDeviceOrientation()Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getOrientationManager()Lcom/xiaomi/scanner/camera/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/scanner/camera/OrientationManager;->getDeviceOrientation()Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->updateTranslateOrientation(I)V

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mWordSelectView:Lcom/xiaomi/scanner/translation/widget/WordSelectView;

    if-eqz v1, :cond_3

    .line 153
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mWordSelectView:Lcom/xiaomi/scanner/translation/widget/WordSelectView;

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->setVisibility(I)V

    .line 155
    :cond_3
    const-string v1, "translate_long_word_tab"

    invoke-static {v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mChooseLangView:Lcom/xiaomi/scanner/translation/widget/ChooseLangView;

    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/scanner/translation/TranslateModel;->getSrcLang()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/scanner/translation/TranslateModel;->getDesLang()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->updateLang(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initTranslateUI()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 221
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mPhotoResultContainer:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;-><init>(Landroid/content/Context;Lcom/xiaomi/scanner/translation/TranslationModuleUI;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mPhotoResultContainer:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    .line 223
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mPhotoResultContainer:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->setCallback(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$TranslateUICallback;)V

    .line 224
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mFullScreenRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mPhotoResultContainer:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mPhotoResultContainer:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->setVisibility(I)V

    .line 227
    return-void
.end method

.method private initWordTranslateView()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mWordSelectView:Lcom/xiaomi/scanner/translation/widget/WordSelectView;

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    const v1, 0x7f0d013e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/translation/widget/WordSelectView;

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mWordSelectView:Lcom/xiaomi/scanner/translation/widget/WordSelectView;

    .line 81
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mWordSelectView:Lcom/xiaomi/scanner/translation/widget/WordSelectView;

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->setTranslateAdapterAndModuleUi(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;Lcom/xiaomi/scanner/translation/TranslationModuleUI;)V

    .line 83
    :cond_0
    return-void
.end method

.method private setWordResultUI(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "promptVisible"    # I
    .param p2, "ocrStr"    # Ljava/lang/CharSequence;
    .param p3, "symbolStr"    # Ljava/lang/CharSequence;
    .param p4, "definitionStr"    # Ljava/lang/CharSequence;
    .param p5, "moreStr"    # Ljava/lang/CharSequence;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mWordSelectView:Lcom/xiaomi/scanner/translation/widget/WordSelectView;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mWordSelectView:Lcom/xiaomi/scanner/translation/widget/WordSelectView;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->setWordResultUI(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/app/AppUI;->updateLockText(Z)V

    .line 200
    return-void

    .line 199
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public backClick()V
    .locals 3

    .prologue
    .line 237
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->changeFullScreenUI(I)V

    .line 238
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isWordDetect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mChooseLangView:Lcom/xiaomi/scanner/translation/widget/ChooseLangView;

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->getSourceEntry()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->getDestEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->updateLang(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mChooseLangView:Lcom/xiaomi/scanner/translation/widget/ChooseLangView;

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
.end method

.method public finishCurrentTranslation()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mModule:Lcom/xiaomi/scanner/translation/TranslationModule;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mModule:Lcom/xiaomi/scanner/translation/TranslationModule;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/TranslationModule;->finishCurrentTranslation()V

    .line 266
    :cond_0
    return-void
.end method

.method public getTakePhotoOrientation(Z)I
    .locals 1
    .param p1, "result"    # Z

    .prologue
    .line 310
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mLineView:Lcom/xiaomi/scanner/ui/TranslateLineView;

    if-eqz v0, :cond_1

    .line 311
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mLineView:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getRotateDegree()I

    move-result v0

    .line 313
    :goto_0
    return v0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mLineView:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getDegree()I

    move-result v0

    goto :goto_0

    .line 313
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWordRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 98
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mWordSelectView:Lcom/xiaomi/scanner/translation/widget/WordSelectView;

    if-eqz v1, :cond_0

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mWordSelectView:Lcom/xiaomi/scanner/translation/widget/WordSelectView;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 103
    .local v0, "wordRect":Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .line 101
    .end local v0    # "wordRect":Landroid/graphics/Rect;
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .restart local v0    # "wordRect":Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public isPreview()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 90
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mFullScreenRoot:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mFullScreenRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWordDetect()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mSwitch:Lcom/xiaomi/scanner/ui/Switch;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isPreview()Z

    move-result v0

    if-nez v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mPhotoResultContainer:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mPhotoResultContainer:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->backClick()V

    .line 215
    :cond_1
    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 131
    sget-object v0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onCheckedChanged"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isWordDetect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->initWordTranslateView()V

    .line 135
    :cond_0
    const-string v0, "translate_change_type"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->changeTranslationType()V

    .line 137
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mModule:Lcom/xiaomi/scanner/translation/TranslationModule;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/TranslationModule;->switchScanType()V

    .line 138
    return-void
.end method

.method public onConfirmClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "selectSrc"    # Ljava/lang/String;
    .param p2, "selectDes"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mChooseLangView:Lcom/xiaomi/scanner/translation/widget/ChooseLangView;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->updateLang(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isWordDetect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->updateSelection(Ljava/lang/String;Ljava/lang/String;)Z

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->resetWordResult()V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/scanner/translation/TranslateModel;->updateLangs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConvertClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "newSrc"    # Ljava/lang/String;
    .param p2, "newDes"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->onSelectClick()V

    .line 271
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mWordSelectView:Lcom/xiaomi/scanner/translation/widget/WordSelectView;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mWordSelectView:Lcom/xiaomi/scanner/translation/widget/WordSelectView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->clear()V

    .line 126
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mWordLock:Z

    .line 127
    return-void
.end method

.method public onFail(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;->onFail(I)V

    .line 257
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->initTranslateUI()V

    .line 258
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mPhotoResultContainer:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->showError()V

    .line 260
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mPhotoResultContainer:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mPhotoResultContainer:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->hideLoadingAndError()V

    .line 120
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->updatePrompt()V

    .line 114
    return-void
.end method

.method public onSelectClick()V
    .locals 6

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isWordDetect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->finishCurrentTranslation()V

    .line 280
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-static {v0, p0, v1}, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->showDialog(Landroid/app/Activity;Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;)V

    goto :goto_0

    .line 282
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/TranslateModel;->getSrcLangList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 283
    .local v4, "srcLangs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/TranslateModel;->getDesLangList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 284
    .local v5, "desLangs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/TranslateModel;->getSrcLang()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "srcLang":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/TranslateModel;->getDesLang()Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "desLang":Ljava/lang/String;
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->showDialog(Landroid/app/Activity;Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/xiaomi/scanner/translation/bean/TranslateResult;)V
    .locals 2
    .param p1, "obj"    # Lcom/xiaomi/scanner/translation/bean/TranslateResult;

    .prologue
    .line 247
    const-string v0, "translate_result"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->initTranslateUI()V

    .line 249
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mFullScreenRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mPhotoResultContainer:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/TranslateModel;->useLocalRotate()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->getTakePhotoOrientation(Z)I

    move-result v0

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->updateTranslateResult(Lcom/xiaomi/scanner/translation/bean/TranslateResult;I)V

    .line 252
    :cond_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/bean/TranslateResult;->getDegree()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcom/xiaomi/scanner/translation/bean/TranslateResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->onSuccess(Lcom/xiaomi/scanner/translation/bean/TranslateResult;)V

    return-void
.end method

.method public resetWordResult()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 190
    iput-boolean v1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mWordLock:Z

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 191
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->setWordResultUI(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 192
    return-void
.end method

.method public setOcrResult(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;)V
    .locals 6
    .param p1, "result"    # Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    .prologue
    const/4 v3, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isWordDetect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->isOcrOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->getCredibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/16 v1, 0x8

    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->getOcrResult()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->setWordResultUI(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 168
    :cond_0
    return-void
.end method

.method public setWordResult(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;)V
    .locals 6
    .param p1, "result"    # Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isWordDetect()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mWordLock:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->isDefinitionFound()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->isOcrSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const/16 v1, 0x8

    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->getOcrResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->getSymbols()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->getDefinition()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->getMoreDefinition()Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->setWordResultUI(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mWordSelectView:Lcom/xiaomi/scanner/translation/widget/WordSelectView;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->setTranslationResult(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mPhotoResultContainer:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mPhotoResultContainer:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->hideLoadingAndError()V

    goto :goto_0
.end method

.method public showTranslateView(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->changeFullScreenUI(I)V

    .line 231
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->initTranslateUI()V

    .line 232
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mPhotoResultContainer:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->updateBgView(Landroid/graphics/Bitmap;)V

    .line 233
    return-void
.end method

.method public updatePrompt()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mWordSelectView:Lcom/xiaomi/scanner/translation/widget/WordSelectView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mWordSelectView:Lcom/xiaomi/scanner/translation/widget/WordSelectView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/widget/WordSelectView;->updatePrompt()V

    .line 110
    :cond_0
    return-void
.end method

.method public updateTranslateOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mLineView:Lcom/xiaomi/scanner/ui/TranslateLineView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mLineView:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/ui/TranslateLineView;->updateOrientation(I)V

    .line 307
    :cond_0
    return-void
.end method

.method public updateWordLock(Z)V
    .locals 1
    .param p1, "lock"    # Z

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isWordDetect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iput-boolean p1, p0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->mWordLock:Z

    .line 184
    if-nez p1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->resetWordResult()V

    goto :goto_0
.end method
