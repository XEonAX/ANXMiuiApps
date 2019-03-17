.class public Lcom/miui/gallery/ui/CopyOrMoveDialog;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "CopyOrMoveDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/CopyOrMoveDialog$OnOperationSelectedListener;
    }
.end annotation


# instance fields
.field private mDialog:Lmiui/app/AlertDialog;

.field private mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOnOperationSelectedListener:Lcom/miui/gallery/ui/CopyOrMoveDialog$OnOperationSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 55
    new-instance v0, Lcom/miui/gallery/ui/CopyOrMoveDialog$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/CopyOrMoveDialog$1;-><init>(Lcom/miui/gallery/ui/CopyOrMoveDialog;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/CopyOrMoveDialog;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/CopyOrMoveDialog;)Lcom/miui/gallery/ui/CopyOrMoveDialog$OnOperationSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CopyOrMoveDialog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyOrMoveDialog;->mOnOperationSelectedListener:Lcom/miui/gallery/ui/CopyOrMoveDialog$OnOperationSelectedListener;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/CopyOrMoveDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    const v1, 0x7f0c0476

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0003

    iget-object v3, p0, Lcom/miui/gallery/ui/CopyOrMoveDialog;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 48
    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 49
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/CopyOrMoveDialog;->mDialog:Lmiui/app/AlertDialog;

    .line 50
    iget-object v1, p0, Lcom/miui/gallery/ui/CopyOrMoveDialog;->mDialog:Lmiui/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 51
    iget-object v1, p0, Lcom/miui/gallery/ui/CopyOrMoveDialog;->mDialog:Lmiui/app/AlertDialog;

    return-object v1
.end method

.method public setOnOperationSelectedListener(Lcom/miui/gallery/ui/CopyOrMoveDialog$OnOperationSelectedListener;)V
    .locals 0
    .param p1, "onOperationSelectedListener"    # Lcom/miui/gallery/ui/CopyOrMoveDialog$OnOperationSelectedListener;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/miui/gallery/ui/CopyOrMoveDialog;->mOnOperationSelectedListener:Lcom/miui/gallery/ui/CopyOrMoveDialog$OnOperationSelectedListener;

    .line 42
    return-void
.end method
