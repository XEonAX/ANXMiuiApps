.class public Lcom/miui/gallery/ui/SecretTipDialogFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "SecretTipDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;
    }
.end annotation


# instance fields
.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mSecretTipDialog:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/SecretTipDialogFragment;)Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SecretTipDialogFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment;->mSecretTipDialog:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/SecretTipDialogFragment;Landroid/content/DialogInterface;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/SecretTipDialogFragment;
    .param p1, "x1"    # Landroid/content/DialogInterface;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->onDone(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private onDone(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment;->mSecretTipDialog:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment;->mSecretTipDialog:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->stopAnimation()V

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->onDone(Landroid/content/DialogInterface;)V

    .line 92
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    new-instance v0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;-><init>(Lcom/miui/gallery/ui/SecretTipDialogFragment;Landroid/content/Context;)V

    new-instance v1, Lcom/miui/gallery/ui/SecretTipDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/SecretTipDialogFragment$1;-><init>(Lcom/miui/gallery/ui/SecretTipDialogFragment;)V

    .line 42
    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment;->mSecretTipDialog:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment;->mSecretTipDialog:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->onDone(Landroid/content/DialogInterface;)V

    .line 86
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onPause()V

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment;->mSecretTipDialog:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment;->mSecretTipDialog:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->onPause()V

    .line 80
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onResume()V

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment;->mSecretTipDialog:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment;->mSecretTipDialog:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->onResume()V

    .line 72
    :cond_0
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 37
    return-void
.end method
