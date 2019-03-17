.class public Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "PeopleRelationCreatorDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$OnRelationCreatedListener;
    }
.end annotation


# static fields
.field private static final INVALID_NAMES:[Ljava/lang/String;


# instance fields
.field private mConfirmButton:Landroid/widget/Button;

.field private mConfirmListener:Landroid/view/View$OnClickListener;

.field private mDefaultName:Ljava/lang/String;

.field private mDialog:Landroid/app/AlertDialog;

.field private mInputView:Landroid/widget/EditText;

.field private mOnCreatedListener:Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$OnRelationCreatedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u81ea\u5df1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "\u5b69\u5b50"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "\u5bb6\u4eba"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "\u540c\u4e8b"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "\u540c\u5b66"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "\u5bb6\u4eba"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u670b\u53cb"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u672a\u5206\u7ec4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u81ea\u5b9a\u4e49"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Me"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Child"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Family"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Collegues"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Classmates"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Friends"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Ungrouped"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Custom"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->INVALID_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 79
    new-instance v0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$2;-><init>(Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mConfirmListener:Landroid/view/View$OnClickListener;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mConfirmButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mConfirmButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mConfirmListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mInputView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->verify(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;)Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$OnRelationCreatedListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mOnCreatedListener:Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$OnRelationCreatedListener;

    return-object v0
.end method

.method private selectAll()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mInputView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 77
    return-void
.end method

.method private verify(Ljava/lang/String;)Z
    .locals 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const v10, 0x7f0c02ee

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0c0180

    invoke-virtual {p0, v6}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 97
    iget-object v5, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mInputView:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mDefaultName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v5, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->selectAll()V

    .line 137
    :goto_0
    return v4

    .line 102
    :cond_0
    const-string v6, "._"

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0c02ef

    invoke-static {v5, v6}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 109
    .local v2, "invalidChar":C
    const-string v6, "/\\:@*?<>\r\n\t"

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_3

    .line 110
    const-string v6, "\r\n\t"

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_2

    .line 111
    const/16 v2, 0x20

    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0c02ed

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v5, v4

    invoke-virtual {p0, v7, v5}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 107
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    .end local v2    # "invalidChar":C
    :cond_4
    sget-object v7, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->INVALID_NAMES:[Ljava/lang/String;

    array-length v8, v7

    move v6, v4

    :goto_2
    if-ge v6, v8, :cond_6

    aget-object v1, v7, v6

    .line 119
    .local v1, "invalid":Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 120
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-virtual {p0, v10, v5}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 121
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->selectAll()V

    goto :goto_0

    .line 118
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 126
    .end local v1    # "invalid":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/miui/gallery/model/PeopleContactInfo$UserDefineRelation;->getUserDefineRelations()Ljava/util/ArrayList;

    move-result-object v3

    .line 127
    .local v3, "userDefineRelations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 128
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    .restart local v1    # "invalid":Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 130
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-virtual {p0, v10, v5}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 131
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->selectAll()V

    goto/16 :goto_0

    .end local v1    # "invalid":Ljava/lang/String;
    :cond_8
    move v4, v5

    .line 137
    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04006c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mInputView:Landroid/widget/EditText;

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mInputView:Landroid/widget/EditText;

    const v1, 0x7f0c026c

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 47
    const v0, 0x7f0c0147

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mDefaultName:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mInputView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mDefaultName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 50
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0147

    .line 56
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    .line 57
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    .line 58
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mDialog:Landroid/app/AlertDialog;

    .line 60
    iget-object v1, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 63
    iget-object v1, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$1;-><init>(Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 71
    iget-object v1, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public setOnCreatedListener(Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$OnRelationCreatedListener;)V
    .locals 0
    .param p1, "onCreatedListener"    # Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$OnRelationCreatedListener;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment;->mOnCreatedListener:Lcom/miui/gallery/ui/PeopleRelationCreatorDialogFragment$OnRelationCreatedListener;

    .line 142
    return-void
.end method
