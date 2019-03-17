.class public Lcom/miui/gallery/picker/uri/PrepareProgressDialog;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "PrepareProgressDialog.java"


# instance fields
.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mMax:I

.field private mProgress:I

.field private mStage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getDialogMessageId()I
    .locals 2

    .prologue
    .line 73
    iget v1, p0, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->mStage:I

    packed-switch v1, :pswitch_data_0

    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "messageId":I
    :goto_0
    return v0

    .line 75
    .end local v0    # "messageId":I
    :pswitch_0
    const v0, 0x7f0c03c2

    .line 76
    .restart local v0    # "messageId":I
    goto :goto_0

    .line 78
    .end local v0    # "messageId":I
    :pswitch_1
    const v0, 0x7f0c03c9

    .line 79
    .restart local v0    # "messageId":I
    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 41
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 44
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 28
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 29
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 30
    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 31
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->getDialogMessageId()I

    move-result v1

    .line 32
    .local v1, "messageId":I
    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->mProgress:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->mMax:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 35
    :cond_0
    return-object v0
.end method

.method public setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 24
    return-void
.end method

.method public setDialogMessage()V
    .locals 6

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->getDialogMessageId()I

    move-result v1

    .line 63
    .local v1, "messageId":I
    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 65
    .local v0, "dialog":Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->mProgress:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->mMax:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 69
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->mMax:I

    .line 53
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->setDialogMessage()V

    .line 54
    return-void
.end method

.method public setStage(I)V
    .locals 0
    .param p1, "stage"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->mStage:I

    .line 58
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->setDialogMessage()V

    .line 59
    return-void
.end method

.method public updateProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->mProgress:I

    .line 48
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->setDialogMessage()V

    .line 49
    return-void
.end method
