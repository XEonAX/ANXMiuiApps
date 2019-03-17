.class Lcom/xiaomi/scanner/module/AmazonShoppingModule$1;
.super Landroid/os/Handler;
.source "AmazonShoppingModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/AmazonShoppingModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/AmazonShoppingModule;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/AmazonShoppingModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/module/AmazonShoppingModule;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule$1;->this$0:Lcom/xiaomi/scanner/module/AmazonShoppingModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 50
    :pswitch_0
    invoke-static {}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "AmazonShoppingModule handleMessage - FOUND_URI"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule$1;->this$0:Lcom/xiaomi/scanner/module/AmazonShoppingModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->access$100(Lcom/xiaomi/scanner/module/AmazonShoppingModule;)V

    goto :goto_0

    .line 54
    :pswitch_1
    invoke-static {}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "AmazonShoppingModule handleMessage - ERROR_CODE"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
