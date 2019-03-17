.class public Lcom/miui/gallery/ui/AlertDialogFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "AlertDialogFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AlertDialogFragment$Builder;
    }
.end annotation


# instance fields
.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mCheckBoxMessage:Ljava/lang/CharSequence;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mIsChecked:Z

.field private mMessage:Ljava/lang/CharSequence;

.field private mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 84
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 40
    iget-object v0, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 43
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mTitle:Ljava/lang/CharSequence;

    .line 29
    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mMessage:Ljava/lang/CharSequence;

    .line 30
    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mIsChecked:Z

    iget-object v3, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mCheckBoxMessage:Ljava/lang/CharSequence;

    .line 31
    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 32
    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 33
    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 34
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 51
    :cond_0
    return-void
.end method

.method setCheckBox(ZLjava/lang/CharSequence;)V
    .locals 0
    .param p1, "isChecked"    # Z
    .param p2, "checkBoxMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mIsChecked:Z

    .line 63
    iput-object p2, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mCheckBoxMessage:Ljava/lang/CharSequence;

    .line 64
    return-void
.end method

.method setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mMessage:Ljava/lang/CharSequence;

    .line 59
    return-void
.end method

.method setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "buttonText"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 68
    iput-object p2, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 69
    return-void
.end method

.method setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 78
    return-void
.end method

.method setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 82
    return-void
.end method

.method setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "buttonText"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 73
    iput-object p2, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 74
    return-void
.end method

.method setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/gallery/ui/AlertDialogFragment;->mTitle:Ljava/lang/CharSequence;

    .line 55
    return-void
.end method
