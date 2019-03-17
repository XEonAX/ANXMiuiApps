.class Lcom/xiaomi/scanner/module/ShoppingModule$1;
.super Ljava/lang/Object;
.source "ShoppingModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/ShoppingModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/ShoppingModule;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/ShoppingModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/module/ShoppingModule;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/xiaomi/scanner/module/ShoppingModule$1;->this$0:Lcom/xiaomi/scanner/module/ShoppingModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 191
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 192
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 194
    invoke-static {}, Lcom/xiaomi/scanner/module/ShoppingModule;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "mOnKeyListener BackPressed"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/xiaomi/scanner/module/ShoppingModule$1;->this$0:Lcom/xiaomi/scanner/module/ShoppingModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/ShoppingModule;->access$100(Lcom/xiaomi/scanner/module/ShoppingModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/xiaomi/scanner/module/ShoppingModule$1;->this$0:Lcom/xiaomi/scanner/module/ShoppingModule;

    invoke-virtual {v0, v2}, Lcom/xiaomi/scanner/module/ShoppingModule;->cancelWorkTask(Z)V

    .line 199
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
