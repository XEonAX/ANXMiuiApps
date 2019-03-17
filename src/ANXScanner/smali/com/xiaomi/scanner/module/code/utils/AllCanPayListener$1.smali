.class Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener$1;
.super Ljava/lang/Object;
.source "AllCanPayListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->showChooseDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener$1;->this$0:Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener$1;->this$0:Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->access$000(Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;)V

    .line 74
    return-void
.end method
