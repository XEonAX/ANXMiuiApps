.class Lcom/xiaomi/scanner/module/CodeModule$1;
.super Landroid/os/Handler;
.source "CodeModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/CodeModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/CodeModule;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/CodeModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/module/CodeModule;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/xiaomi/scanner/module/CodeModule$1;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule$1;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/CodeModule;->access$000(Lcom/xiaomi/scanner/module/CodeModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/xiaomi/scanner/module/CodeModule;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void

    .line 88
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 96
    invoke-static {}, Lcom/xiaomi/scanner/module/CodeModule;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule$1;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/CodeModule;->access$200(Lcom/xiaomi/scanner/module/CodeModule;)V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule$1;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/CodeModule;->requestPreviewFrame()V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
