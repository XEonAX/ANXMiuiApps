.class public abstract Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "BaseAlbumOperationDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;,
        Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;
    }
.end annotation


# instance fields
.field protected mConfirmButton:Landroid/widget/Button;

.field private mConfirmListener:Landroid/view/View$OnClickListener;

.field protected mDefaultName:Ljava/lang/String;

.field protected mDialog:Lmiui/app/AlertDialog;

.field protected mInputView:Landroid/widget/EditText;

.field protected mOnAlbumOperationDoneListener:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

.field protected mServerReservedAlbumNamesStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;

.field protected mServerUnModifyAlbumsStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;

.field protected mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 113
    new-instance v0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$2;-><init>(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mConfirmListener:Landroid/view/View$OnClickListener;

    .line 126
    new-instance v0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$3;-><init>(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mTextWatcher:Landroid/text/TextWatcher;

    .line 280
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mConfirmListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->verify(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->selectAll()V

    return-void
.end method

.method private selectAll()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mInputView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 111
    return-void
.end method

.method private verify(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 245
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    iget-object v3, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    .line 273
    :goto_0
    return v2

    .line 251
    :cond_0
    const-string v4, "._"

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c02ec

    invoke-static {v3, v4}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0

    .line 256
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 257
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 258
    .local v1, "invalidChar":C
    const-string v4, "/\\:@*?<>\r\n\t"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_3

    .line 259
    const-string v4, "\r\n\t"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_2

    .line 260
    const/16 v1, 0x20

    .line 262
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c02ea

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {p0, v5, v3}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 256
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 267
    .end local v1    # "invalidChar":C
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mServerReservedAlbumNamesStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;

    invoke-virtual {v4, p1}, Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;->containsName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mServerUnModifyAlbumsStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;

    invoke-virtual {v4, p1}, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->containsName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 268
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c02eb

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {p0, v5, v3}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 269
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->selectAll()V

    goto :goto_0

    :cond_6
    move v2, v3

    .line 273
    goto :goto_0
.end method


# virtual methods
.method protected abstract execAlbumOperation(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method protected abstract getDialogTitle()I
.end method

.method protected abstract getOperationFailedString()I
.end method

.method protected abstract getOperationSucceededString()I
.end method

.method protected abstract getResultId(Landroid/os/Bundle;)J
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->parseArguments()V

    .line 58
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04006c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mInputView:Landroid/widget/EditText;

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mInputView:Landroid/widget/EditText;

    const v1, 0x7f0c003c

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mInputView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mDefaultName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mInputView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 63
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getServerReservedAlbumNamesStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mServerReservedAlbumNamesStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;

    .line 64
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getServerUnModifyAlbumsStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mServerUnModifyAlbumsStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;

    .line 65
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 87
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->getDialogTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    .line 90
    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    .line 91
    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mDialog:Lmiui/app/AlertDialog;

    .line 93
    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 96
    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mDialog:Lmiui/app/AlertDialog;

    new-instance v2, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$1;-><init>(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;)V

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 105
    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mDialog:Lmiui/app/AlertDialog;

    return-object v1
.end method

.method protected parseArguments()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public setOnAlbumOperationDoneListener(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;)V
    .locals 0
    .param p1, "onAlbumOperationDoneListener"    # Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mOnAlbumOperationDoneListener:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

    .line 278
    return-void
.end method
