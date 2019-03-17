.class Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$2;
.super Ljava/lang/Object;
.source "TranslateSelectLangDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    invoke-static {v0}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->access$000(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;)Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    invoke-static {v0}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->access$300(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    invoke-static {v2}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->access$200(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->access$102(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    invoke-static {v0}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->access$500(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    invoke-static {v2}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->access$200(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->access$402(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    invoke-static {v0}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->access$000(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;)Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    invoke-static {v1}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->access$100(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    invoke-static {v2}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->access$400(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;->onConfirmClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->dismiss()V

    .line 72
    return-void
.end method
