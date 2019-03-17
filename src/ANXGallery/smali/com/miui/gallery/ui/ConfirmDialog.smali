.class public Lcom/miui/gallery/ui/ConfirmDialog;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "ConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;
    }
.end annotation


# instance fields
.field private mConfirmDialogInterface:Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/ConfirmDialog;)Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ConfirmDialog;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/miui/gallery/ui/ConfirmDialog;->mConfirmDialogInterface:Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;

    return-object v0
.end method

.method public static showConfirmDialog(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V
    .locals 3
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "negativeButtonText"    # Ljava/lang/String;
    .param p4, "positiveButtonText"    # Ljava/lang/String;
    .param p5, "confirmDialogInterface"    # Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;

    .prologue
    .line 24
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 25
    .local v1, "data":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 26
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    const-string v2, "msg"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v2, "negativeButton"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v2, "positiveButton"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/miui/gallery/ui/ConfirmDialog;

    invoke-direct {v0}, Lcom/miui/gallery/ui/ConfirmDialog;-><init>()V

    .line 32
    .local v0, "confirmDialog":Lcom/miui/gallery/ui/ConfirmDialog;
    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ConfirmDialog;->setArguments(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {v0, p5}, Lcom/miui/gallery/ui/ConfirmDialog;->setConfirmDialogInterface(Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V

    .line 34
    const-string v2, "ConfirmDialog"

    invoke-virtual {v0, p0, v2}, Lcom/miui/gallery/ui/ConfirmDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/ui/ConfirmDialog;->mConfirmDialogInterface:Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/ui/ConfirmDialog;->mConfirmDialogInterface:Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;

    invoke-interface {v0, p0}, Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;->onCancel(Landroid/app/DialogFragment;)V

    .line 84
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ConfirmDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 44
    .local v1, "data":Landroid/os/Bundle;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/ConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 45
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    .line 46
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "msg"

    .line 47
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "negativeButton"

    .line 48
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/miui/gallery/ui/ConfirmDialog$2;

    invoke-direct {v6, p0}, Lcom/miui/gallery/ui/ConfirmDialog$2;-><init>(Lcom/miui/gallery/ui/ConfirmDialog;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "positiveButton"

    .line 57
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/miui/gallery/ui/ConfirmDialog$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/ui/ConfirmDialog$1;-><init>(Lcom/miui/gallery/ui/ConfirmDialog;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 67
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v4, "title"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "title":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 70
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 73
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 74
    return-object v2
.end method

.method public setConfirmDialogInterface(Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V
    .locals 0
    .param p1, "confirmDialogInterface"    # Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/gallery/ui/ConfirmDialog;->mConfirmDialogInterface:Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;

    .line 39
    return-void
.end method
