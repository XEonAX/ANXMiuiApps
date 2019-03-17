.class public Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "StoryAlbumRenameDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$OnRenameDoneListener;
    }
.end annotation


# instance fields
.field protected mConfirmButton:Landroid/widget/Button;

.field private final mConfirmListener:Landroid/view/View$OnClickListener;

.field protected mDefaultName:Ljava/lang/String;

.field protected mDialog:Lmiui/app/AlertDialog;

.field protected mInputView:Landroid/widget/EditText;

.field protected mOnRenameDoneListener:Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$OnRenameDoneListener;

.field private final mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 79
    new-instance v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$2;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mConfirmListener:Landroid/view/View$OnClickListener;

    .line 122
    new-instance v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$3;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mConfirmListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->verify(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private parseArguments()V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 53
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "card_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mDefaultName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private verify(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    .line 119
    :goto_0
    return v2

    .line 103
    :cond_0
    const-string v4, "._"

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c05ad

    invoke-static {v3, v4}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 110
    .local v1, "invalidChar":C
    const-string v4, "/\\:@*?<>\r\n\t"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_3

    .line 111
    const-string v4, "\r\n\t"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_2

    .line 112
    const/16 v1, 0x20

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c05ac

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {p0, v5, v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "invalidChar":C
    :cond_4
    move v2, v3

    .line 119
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->parseArguments()V

    .line 44
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04006c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mInputView:Landroid/widget/EditText;

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mInputView:Landroid/widget/EditText;

    const v1, 0x7f0c05a3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mInputView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mDefaultName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mInputView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 49
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 58
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c05a4

    .line 60
    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    .line 61
    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    .line 62
    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mDialog:Lmiui/app/AlertDialog;

    .line 64
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mDialog:Lmiui/app/AlertDialog;

    new-instance v2, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$1;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;)V

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 76
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mDialog:Lmiui/app/AlertDialog;

    return-object v1
.end method

.method public setOnRenameDoneListener(Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$OnRenameDoneListener;)V
    .locals 0
    .param p1, "onRenameDoneListener"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$OnRenameDoneListener;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mOnRenameDoneListener:Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$OnRenameDoneListener;

    .line 141
    return-void
.end method
