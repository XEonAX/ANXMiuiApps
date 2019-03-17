.class Lcom/miui/gallery/projection/ConnectController$1;
.super Landroid/os/Handler;
.source "ConnectController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/projection/ConnectController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/projection/ConnectController;


# direct methods
.method constructor <init>(Lcom/miui/gallery/projection/ConnectController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/projection/ConnectController;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/miui/gallery/projection/ConnectController$1;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 117
    return-void

    .line 108
    :pswitch_0
    iget-object v1, p0, Lcom/miui/gallery/projection/ConnectController$1;->this$0:Lcom/miui/gallery/projection/ConnectController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/miui/gallery/projection/ConnectController;->access$000(Lcom/miui/gallery/projection/ConnectController;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/projection/ConnectController$1;->this$0:Lcom/miui/gallery/projection/ConnectController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/miui/gallery/projection/ConnectController;->access$100(Lcom/miui/gallery/projection/ConnectController;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
