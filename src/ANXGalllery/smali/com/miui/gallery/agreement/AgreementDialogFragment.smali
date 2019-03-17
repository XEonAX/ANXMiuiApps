.class public Lcom/miui/gallery/agreement/AgreementDialogFragment;
.super Landroid/app/DialogFragment;
.source "AgreementDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;,
        Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;,
        Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;
    }
.end annotation


# instance fields
.field private mListener:Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 241
    return-void
.end method

.method public static newInstance(Ljava/util/ArrayList;)Lcom/miui/gallery/agreement/AgreementDialogFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/agreement/core/Agreement;",
            ">;)",
            "Lcom/miui/gallery/agreement/AgreementDialogFragment;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "agreements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/agreement/core/Agreement;>;"
    new-instance v1, Lcom/miui/gallery/agreement/AgreementDialogFragment;

    invoke-direct {v1}, Lcom/miui/gallery/agreement/AgreementDialogFragment;-><init>()V

    .line 36
    .local v1, "fragment":Lcom/miui/gallery/agreement/AgreementDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "extra_agreements"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 38
    invoke-virtual {v1, v0}, Lcom/miui/gallery/agreement/AgreementDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    return-object v1
.end method


# virtual methods
.method public invoke(Landroid/app/Activity;Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;

    .prologue
    .line 58
    iput-object p2, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment;->mListener:Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;

    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "AgreementDialogFragment"

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/agreement/AgreementDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/agreement/AgreementDialogFragment;->setCancelable(Z)V

    .line 46
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    new-instance v0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;

    invoke-virtual {p0}, Lcom/miui/gallery/agreement/AgreementDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, "dialog":Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;
    iget-object v1, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment;->mListener:Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;->setOnAgreementListener(Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;)V

    .line 52
    invoke-virtual {p0}, Lcom/miui/gallery/agreement/AgreementDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_agreements"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;->setAgreements(Ljava/util/List;)V

    .line 53
    return-object v0
.end method
