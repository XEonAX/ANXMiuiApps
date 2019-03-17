.class Lcom/miui/gallery/ui/ConfirmDialog$1;
.super Ljava/lang/Object;
.source "ConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/ConfirmDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/ConfirmDialog;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/ConfirmDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/ConfirmDialog;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/miui/gallery/ui/ConfirmDialog$1;->this$0:Lcom/miui/gallery/ui/ConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/ui/ConfirmDialog$1;->this$0:Lcom/miui/gallery/ui/ConfirmDialog;

    invoke-static {v0}, Lcom/miui/gallery/ui/ConfirmDialog;->access$000(Lcom/miui/gallery/ui/ConfirmDialog;)Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/ui/ConfirmDialog$1;->this$0:Lcom/miui/gallery/ui/ConfirmDialog;

    invoke-static {v0}, Lcom/miui/gallery/ui/ConfirmDialog;->access$000(Lcom/miui/gallery/ui/ConfirmDialog;)Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/ConfirmDialog$1;->this$0:Lcom/miui/gallery/ui/ConfirmDialog;

    invoke-interface {v0, v1}, Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;->onConfirm(Landroid/app/DialogFragment;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/ConfirmDialog$1;->this$0:Lcom/miui/gallery/ui/ConfirmDialog;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ConfirmDialog;->dismissAllowingStateLoss()V

    .line 65
    return-void
.end method
