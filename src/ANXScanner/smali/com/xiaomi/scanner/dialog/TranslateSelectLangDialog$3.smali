.class Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$3;
.super Ljava/lang/Object;
.source "TranslateSelectLangDialog.java"

# interfaces
.implements Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;


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

.field final synthetic val$srcPicker:Lcom/xiaomi/scanner/ui/WheelPicker;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;Lcom/xiaomi/scanner/ui/WheelPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$3;->this$0:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    iput-object p2, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$3;->val$srcPicker:Lcom/xiaomi/scanner/ui/WheelPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWheelScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 90
    return-void
.end method

.method public onWheelScrolled(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$3;->val$srcPicker:Lcom/xiaomi/scanner/ui/WheelPicker;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/ui/WheelPicker;->moveItemView(I)V

    .line 80
    return-void
.end method

.method public onWheelSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$3;->this$0:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->access$202(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;I)I

    .line 85
    return-void
.end method
