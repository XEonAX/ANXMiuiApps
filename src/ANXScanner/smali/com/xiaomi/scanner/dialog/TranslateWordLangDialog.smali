.class public Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;
.super Landroid/app/AlertDialog;
.source "TranslateWordLangDialog.java"


# instance fields
.field private confirmClick:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;

.field private mAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

.field private mSelectPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "themeResId"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->mSelectPosition:I

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;)Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->confirmClick:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;)Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->mAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;

    .prologue
    .line 28
    iget v0, p0, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->mSelectPosition:I

    return v0
.end method

.method static synthetic access$202(Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->mSelectPosition:I

    return p1
.end method

.method public static showDialog(Landroid/app/Activity;Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "confirmClick"    # Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;
    .param p2, "adapter"    # Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    .prologue
    .line 36
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    new-instance v0, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;

    const v1, 0x7f0900e4

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;-><init>(Landroid/content/Context;I)V

    .line 40
    .local v0, "dialog":Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;
    iput-object p1, v0, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->confirmClick:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;

    .line 41
    iput-object p2, v0, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->mAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    .line 42
    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v6, 0x7f030037

    invoke-virtual {p0, v6}, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->setContentView(I)V

    .line 53
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->setCanceledOnTouchOutside(Z)V

    .line 55
    const v6, 0x7f0d00d1

    invoke-virtual {p0, v6}, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog$1;

    invoke-direct {v7, p0}, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog$1;-><init>(Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v6, 0x7f0d00d5

    invoke-virtual {p0, v6}, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog$2;

    invoke-direct {v7, p0}, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog$2;-><init>(Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v6, 0x7f0d00d6

    invoke-virtual {p0, v6}, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/scanner/ui/WheelPicker;

    .line 74
    .local v5, "srcPicker":Lcom/xiaomi/scanner/ui/WheelPicker;
    const v6, 0x7f0d00d7

    invoke-virtual {p0, v6}, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/ui/WheelPicker;

    .line 76
    .local v1, "desPicker":Lcom/xiaomi/scanner/ui/WheelPicker;
    new-instance v6, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog$3;

    invoke-direct {v6, p0, v1}, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog$3;-><init>(Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;Lcom/xiaomi/scanner/ui/WheelPicker;)V

    invoke-virtual {v5, v6}, Lcom/xiaomi/scanner/ui/WheelPicker;->setOnWheelChangeListener(Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;)V

    .line 93
    new-instance v6, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog$4;

    invoke-direct {v6, p0, v5}, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog$4;-><init>(Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;Lcom/xiaomi/scanner/ui/WheelPicker;)V

    invoke-virtual {v1, v6}, Lcom/xiaomi/scanner/ui/WheelPicker;->setOnWheelChangeListener(Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;)V

    .line 110
    iget-object v6, p0, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->mAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    iget-object v7, p0, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->mAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-virtual {v7}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->getSourceEntry()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->mAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-virtual {v8}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->getDestEntry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->getSelection(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 111
    .local v3, "selectPostion":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v4, "srcList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, "desList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->mAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-virtual {v6}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->getAllTranslatePairs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;

    .line 114
    .local v2, "pair":Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;
    iget-object v7, v2, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mSourceEntry:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v7, v2, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mDestEntry:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    .end local v2    # "pair":Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;
    :cond_0
    invoke-virtual {v5, v4}, Lcom/xiaomi/scanner/ui/WheelPicker;->setData(Ljava/util/List;)V

    .line 118
    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/ui/WheelPicker;->setData(Ljava/util/List;)V

    .line 120
    invoke-virtual {v5, v3, v9}, Lcom/xiaomi/scanner/ui/WheelPicker;->setSelectedItemPosition(IZ)V

    .line 121
    invoke-virtual {v1, v3, v9}, Lcom/xiaomi/scanner/ui/WheelPicker;->setSelectedItemPosition(IZ)V

    .line 122
    return-void
.end method
