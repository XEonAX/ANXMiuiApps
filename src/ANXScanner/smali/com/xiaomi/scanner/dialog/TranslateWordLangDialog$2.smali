.class Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog$2;
.super Ljava/lang/Object;
.source "TranslateWordLangDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;

    invoke-static {v1}, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->access$000(Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;)Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;

    invoke-static {v1}, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->access$100(Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;)Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;

    invoke-static {v1}, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->access$100(Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;)Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->getAllTranslatePairs()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;

    invoke-static {v2}, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->access$200(Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;

    .line 67
    .local v0, "pair":Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;

    invoke-static {v1}, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->access$000(Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;)Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mSourceEntry:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mDestEntry:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;->onConfirmClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .end local v0    # "pair":Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->dismiss()V

    .line 70
    return-void
.end method
