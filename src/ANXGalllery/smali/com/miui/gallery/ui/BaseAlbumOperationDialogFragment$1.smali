.class Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$1;
.super Ljava/lang/Object;
.source "BaseAlbumOperationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$1;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$1;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$1;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mDialog:Lmiui/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mConfirmButton:Landroid/widget/Button;

    .line 100
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$1;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    iget-object v1, v0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mConfirmButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$1;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$1;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mConfirmButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$1;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->access$000(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
