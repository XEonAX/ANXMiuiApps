.class Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;
.super Ljava/lang/Object;
.source "TextEditDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x1

    .line 146
    const-string v0, "TextEditDialog"

    const-string v1, "onShow"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$200(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;->KEYBOARD:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$400(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$400(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$500(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$400(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 161
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$600(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$600(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$700(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)V

    .line 165
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$800(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$900(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;I)V

    .line 166
    return-void

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$400(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method
