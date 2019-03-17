.class Lcom/miui/gallery/projection/ProjectionVideoController$1;
.super Landroid/os/Handler;
.source "ProjectionVideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/projection/ProjectionVideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/projection/ProjectionVideoController;


# direct methods
.method constructor <init>(Lcom/miui/gallery/projection/ProjectionVideoController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/projection/ProjectionVideoController;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/miui/gallery/projection/ProjectionVideoController$1;->this$0:Lcom/miui/gallery/projection/ProjectionVideoController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x64

    .line 63
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 74
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 75
    return-void

    .line 65
    :pswitch_0
    iget-object v1, p0, Lcom/miui/gallery/projection/ProjectionVideoController$1;->this$0:Lcom/miui/gallery/projection/ProjectionVideoController;

    invoke-static {v1}, Lcom/miui/gallery/projection/ProjectionVideoController;->access$000(Lcom/miui/gallery/projection/ProjectionVideoController;)I

    move-result v0

    .line 66
    .local v0, "pos":I
    const-string v1, "RemoteVideoControl"

    const-string/jumbo v2, "show progress %s pos %d"

    iget-object v3, p0, Lcom/miui/gallery/projection/ProjectionVideoController$1;->this$0:Lcom/miui/gallery/projection/ProjectionVideoController;

    invoke-static {v3}, Lcom/miui/gallery/projection/ProjectionVideoController;->access$100(Lcom/miui/gallery/projection/ProjectionVideoController;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    iget-object v1, p0, Lcom/miui/gallery/projection/ProjectionVideoController$1;->this$0:Lcom/miui/gallery/projection/ProjectionVideoController;

    invoke-static {v1}, Lcom/miui/gallery/projection/ProjectionVideoController;->access$100(Lcom/miui/gallery/projection/ProjectionVideoController;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/projection/ProjectionVideoController$1;->this$0:Lcom/miui/gallery/projection/ProjectionVideoController;

    invoke-static {v1}, Lcom/miui/gallery/projection/ProjectionVideoController;->access$200(Lcom/miui/gallery/projection/ProjectionVideoController;)Lcom/miui/gallery/projection/ConnectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/projection/ConnectController;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0, v5}, Lcom/miui/gallery/projection/ProjectionVideoController$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 69
    invoke-virtual {p0, v5}, Lcom/miui/gallery/projection/ProjectionVideoController$1;->removeMessages(I)V

    .line 70
    rem-int/lit16 v1, v0, 0x3e8

    rsub-int v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/gallery/projection/ProjectionVideoController$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
