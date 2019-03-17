.class Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog$1;
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
    .line 55
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog$1;->this$0:Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog$1;->this$0:Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/TranslateWordLangDialog;->dismiss()V

    .line 59
    return-void
.end method
