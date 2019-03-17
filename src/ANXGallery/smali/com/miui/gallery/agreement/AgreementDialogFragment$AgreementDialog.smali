.class Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;
.super Lcom/miui/gallery/agreement/BaseAgreementDialog;
.source "AgreementDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/agreement/AgreementDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AgreementDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/agreement/BaseAgreementDialog;-><init>(Landroid/content/Context;Z)V

    .line 67
    new-instance v0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;-><init>(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;Lcom/miui/gallery/agreement/AgreementDialogFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;->mAdapter:Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;

    .line 68
    return-void
.end method


# virtual methods
.method protected getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;->mAdapter:Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;

    return-object v0
.end method

.method protected getSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAgreements(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/agreement/core/Agreement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "agreements":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/agreement/core/Agreement;>;"
    iget-object v0, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;->mAdapter:Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;->setAgreements(Ljava/util/List;)V

    .line 82
    return-void
.end method
