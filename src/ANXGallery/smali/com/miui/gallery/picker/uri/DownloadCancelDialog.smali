.class public Lcom/miui/gallery/picker/uri/DownloadCancelDialog;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "DownloadCancelDialog.java"


# instance fields
.field private mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContinueListener:Landroid/content/DialogInterface$OnClickListener;


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
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 29
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "remaining_count"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 30
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0030

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c03bf

    iget-object v4, p0, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;->mContinueListener:Landroid/content/DialogInterface$OnClickListener;

    .line 33
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c03be

    iget-object v4, p0, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 34
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 35
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 36
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public setCancelListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "cancelListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 21
    return-void
.end method

.method public setContinueListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "continueListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;->mContinueListener:Landroid/content/DialogInterface$OnClickListener;

    .line 25
    return-void
.end method
