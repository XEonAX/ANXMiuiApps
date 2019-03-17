.class public Lcom/miui/gallery/ui/ProgressDialogFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "ProgressDialogFragment.java"


# instance fields
.field private mIndeterminate:Z

.field private mMessage:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    new-instance v0, Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 21
    .local v0, "dialog":Lmiui/app/ProgressDialog;
    iget-boolean v1, p0, Lcom/miui/gallery/ui/ProgressDialogFragment;->mIndeterminate:Z

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 22
    iget-object v1, p0, Lcom/miui/gallery/ui/ProgressDialogFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v1, p0, Lcom/miui/gallery/ui/ProgressDialogFragment;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 24
    return-object v0
.end method

.method public setIndeterminate(Z)V
    .locals 0
    .param p1, "indeterminate"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/miui/gallery/ui/ProgressDialogFragment;->mIndeterminate:Z

    .line 29
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/gallery/ui/ProgressDialogFragment;->mMessage:Ljava/lang/CharSequence;

    .line 37
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/gallery/ui/ProgressDialogFragment;->mTitle:Ljava/lang/CharSequence;

    .line 33
    return-void
.end method
