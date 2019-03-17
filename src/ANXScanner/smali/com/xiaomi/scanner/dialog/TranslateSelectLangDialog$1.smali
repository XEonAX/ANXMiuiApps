.class Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$1;
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
    .line 56
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$1;->this$0:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$1;->this$0:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->dismiss()V

    .line 60
    return-void
.end method
