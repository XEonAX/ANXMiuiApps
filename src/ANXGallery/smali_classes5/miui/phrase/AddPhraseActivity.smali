.class public Lmiui/phrase/AddPhraseActivity;
.super Lmiui/app/AlertActivity;
.source "AddPhraseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final EXTRA_PHRASE_INDEX:Ljava/lang/String; = "phrase_index"

.field public static final EXTRA_PHRASE_LIST:Ljava/lang/String; = "phrase_list"


# instance fields
.field private mEditIndex:I

.field private mEditText:Landroid/widget/EditText;

.field private mPhraseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lmiui/app/AlertActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/phrase/AddPhraseActivity;->mPhraseList:Ljava/util/ArrayList;

    .line 39
    const/4 v1, -0x1

    iput v1, p0, Lmiui/phrase/AddPhraseActivity;->mEditIndex:I

    .line 41
    iput-object v0, p0, Lmiui/phrase/AddPhraseActivity;->mEditText:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 107
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 108
    iget-object v1, p0, Lmiui/phrase/AddPhraseActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 109
    .local v1, "phrase":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    iget v2, p0, Lmiui/phrase/AddPhraseActivity;->mEditIndex:I

    if-le v2, v0, :cond_1

    .line 114
    iget-object v2, p0, Lmiui/phrase/AddPhraseActivity;->mPhraseList:Ljava/util/ArrayList;

    iget v3, p0, Lmiui/phrase/AddPhraseActivity;->mEditIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 115
    iget-object v2, p0, Lmiui/phrase/AddPhraseActivity;->mPhraseList:Ljava/util/ArrayList;

    iget v3, p0, Lmiui/phrase/AddPhraseActivity;->mEditIndex:I

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v2, p0, Lmiui/phrase/AddPhraseActivity;->mPhraseList:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :goto_0
    iget-object v2, p0, Lmiui/phrase/AddPhraseActivity;->mPhraseList:Ljava/util/ArrayList;

    invoke-static {p0, v2}, Landroid/provider/MiuiSettings$FrequentPhrases;->setFrequentPhrases(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 121
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "phrase_list"

    iget-object v4, p0, Lmiui/phrase/AddPhraseActivity;->mPhraseList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    .line 122
    .local v2, "data":Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lmiui/phrase/AddPhraseActivity;->setResult(ILandroid/content/Intent;)V

    .end local v1    # "phrase":Ljava/lang/CharSequence;
    .end local v2    # "data":Landroid/content/Intent;
    goto :goto_2

    .line 110
    .restart local v1    # "phrase":Ljava/lang/CharSequence;
    :cond_2
    :goto_1
    return-void

    .line 124
    .end local v1    # "phrase":Ljava/lang/CharSequence;
    :cond_3
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 45
    invoke-super {p0, p1}, Lmiui/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lmiui/phrase/AddPhraseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phrase_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lmiui/phrase/AddPhraseActivity;->mPhraseList:Ljava/util/ArrayList;

    .line 49
    iget-object v1, p0, Lmiui/phrase/AddPhraseActivity;->mPhraseList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/phrase/AddPhraseActivity;->mPhraseList:Ljava/util/ArrayList;

    .line 52
    :cond_0
    const-string v1, "phrase_index"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lmiui/phrase/AddPhraseActivity;->mEditIndex:I

    .line 54
    iget-object v1, p0, Lmiui/phrase/AddPhraseActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 55
    .local v1, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    iget v3, p0, Lmiui/phrase/AddPhraseActivity;->mEditIndex:I

    if-le v3, v2, :cond_1

    .line 56
    sget v3, Lcom/miui/system/internal/R$string;->edit_frequent_phrases:I

    invoke-virtual {p0, v3}, Lmiui/phrase/AddPhraseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 58
    :cond_1
    sget v3, Lcom/miui/system/internal/R$string;->add_frequent_phrases:I

    invoke-virtual {p0, v3}, Lmiui/phrase/AddPhraseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 61
    :goto_0
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lmiui/phrase/AddPhraseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 63
    .local v3, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lcom/miui/system/internal/R$layout;->phrase_add:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 64
    iget-object v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v5, Lcom/miui/system/internal/R$id;->phrase_edit:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lmiui/phrase/AddPhraseActivity;->mEditText:Landroid/widget/EditText;

    .line 65
    iget v4, p0, Lmiui/phrase/AddPhraseActivity;->mEditIndex:I

    if-eq v4, v2, :cond_2

    iget-object v2, p0, Lmiui/phrase/AddPhraseActivity;->mPhraseList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v4, p0, Lmiui/phrase/AddPhraseActivity;->mEditIndex:I

    if-le v2, v4, :cond_2

    .line 66
    iget-object v2, p0, Lmiui/phrase/AddPhraseActivity;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lmiui/phrase/AddPhraseActivity;->mPhraseList:Ljava/util/ArrayList;

    iget v5, p0, Lmiui/phrase/AddPhraseActivity;->mEditIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_2
    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lmiui/phrase/AddPhraseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 70
    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lmiui/phrase/AddPhraseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 71
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    invoke-virtual {p0}, Lmiui/phrase/AddPhraseActivity;->setupAlert()V

    .line 75
    const v2, 0x1020019

    invoke-virtual {p0, v2}, Lmiui/phrase/AddPhraseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 76
    .local v2, "confirmButton":Landroid/widget/Button;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 77
    iget-object v4, p0, Lmiui/phrase/AddPhraseActivity;->mEditText:Landroid/widget/EditText;

    new-instance v5, Lmiui/phrase/AddPhraseActivity$1;

    invoke-direct {v5, p0, v2}, Lmiui/phrase/AddPhraseActivity$1;-><init>(Lmiui/phrase/AddPhraseActivity;Landroid/widget/Button;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 99
    invoke-super {p0}, Lmiui/app/AlertActivity;->onPause()V

    .line 100
    invoke-virtual {p0}, Lmiui/phrase/AddPhraseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lmiui/phrase/AddPhraseActivity;->overridePendingTransition(II)V

    .line 103
    :cond_0
    return-void
.end method
