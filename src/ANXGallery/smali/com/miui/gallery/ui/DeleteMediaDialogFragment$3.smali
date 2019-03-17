.class Lcom/miui/gallery/ui/DeleteMediaDialogFragment$3;
.super Ljava/lang/Object;
.source "DeleteMediaDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/DeleteMediaDialogFragment;

.field final synthetic val$info:Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/DeleteMediaDialogFragment;Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/DeleteMediaDialogFragment;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$3;->this$0:Lcom/miui/gallery/ui/DeleteMediaDialogFragment;

    iput-object p2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$3;->val$info:Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 119
    iget-object v1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$3;->this$0:Lcom/miui/gallery/ui/DeleteMediaDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->access$100(Lcom/miui/gallery/ui/DeleteMediaDialogFragment;)Lcom/miui/gallery/ui/DeletionTask$Param;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lcom/miui/gallery/ui/DeletionTask$Param;->mDeleteOptions:I

    .line 120
    iget-object v1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$3;->val$info:Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;

    iget-object v1, v1, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;->checkBoxInfo:Lcom/miui/gallery/ui/DeleteMediaDialogFragment$CheckBoxInfo;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 121
    check-cast v0, Lmiui/app/AlertDialog;

    .line 122
    .local v0, "alertDialog":Lmiui/app/AlertDialog;
    iget-object v1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$3;->val$info:Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;

    iget-object v1, v1, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;->checkBoxInfo:Lcom/miui/gallery/ui/DeleteMediaDialogFragment$CheckBoxInfo;

    iget v1, v1, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$CheckBoxInfo;->type:I

    packed-switch v1, :pswitch_data_0

    .line 130
    .end local v0    # "alertDialog":Lmiui/app/AlertDialog;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$3;->this$0:Lcom/miui/gallery/ui/DeleteMediaDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->access$000(Lcom/miui/gallery/ui/DeleteMediaDialogFragment;)V

    .line 131
    return-void

    .line 124
    .restart local v0    # "alertDialog":Lmiui/app/AlertDialog;
    :pswitch_0
    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$3;->this$0:Lcom/miui/gallery/ui/DeleteMediaDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->access$100(Lcom/miui/gallery/ui/DeleteMediaDialogFragment;)Lcom/miui/gallery/ui/DeletionTask$Param;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Lcom/miui/gallery/ui/DeletionTask$Param;->mDeleteOptions:I

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
