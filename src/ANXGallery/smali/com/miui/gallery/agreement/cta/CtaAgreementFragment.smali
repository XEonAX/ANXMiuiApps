.class public Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;
.super Landroid/app/DialogFragment;
.source "CtaAgreementFragment.java"


# instance fields
.field private mListener:Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;)Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;->mListener:Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;

    return-object v0
.end method


# virtual methods
.method protected getMessage()Landroid/text/SpannableStringBuilder;
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c050f

    invoke-static {v0, v1}, Lcom/miui/gallery/agreement/cta/CtaAgreement;->buildUserNotice(Landroid/content/Context;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected getNegativeListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment$2;-><init>(Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;)V

    return-object v0
.end method

.method protected getNegativeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment$1;-><init>(Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;)V

    return-object v0
.end method

.method protected getPositiveText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f0c050b

    invoke-virtual {p0, v0}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f0c0510

    invoke-virtual {p0, v0}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Landroid/app/Activity;Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CtaAgreementFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 28
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v1, v0, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;

    if-eqz v1, :cond_0

    .line 29
    check-cast v0, Landroid/app/DialogFragment;

    .end local v0    # "f":Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 31
    :cond_0
    iput-object p2, p0, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;->mListener:Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CtaAgreementFragment"

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;->setCancelable(Z)V

    .line 39
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p0}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    .line 45
    invoke-virtual {p0}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;->getMessage()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    .line 46
    invoke-virtual {p0}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;->getPositiveText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;->getPositiveListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    .line 47
    invoke-virtual {p0}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;->getNegativeText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;->getNegativeListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 49
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    .line 50
    .local v1, "dialog":Lmiui/app/AlertDialog;
    return-object v1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 56
    invoke-virtual {p0}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    .line 57
    .local v0, "messageText":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 58
    return-void
.end method
