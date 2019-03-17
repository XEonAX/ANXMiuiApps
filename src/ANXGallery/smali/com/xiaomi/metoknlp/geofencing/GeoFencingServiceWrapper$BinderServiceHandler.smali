.class Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$BinderServiceHandler;
.super Landroid/os/Handler;
.source "GeoFencingServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;


# direct methods
.method public constructor <init>(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$BinderServiceHandler;->this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    .line 58
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 79
    const-string v0, "GeoFencingServiceWrapper"

    const-string/jumbo v1, "unknown message type "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$BinderServiceHandler;->this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->access$008(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)I

    .line 66
    iget-object v0, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$BinderServiceHandler;->this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    iget-object v1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$BinderServiceHandler;->this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    invoke-static {v1}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->access$100(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->bindService(Landroid/content/Context;)V

    .line 67
    const-string v0, "GeoFencingServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try bindService count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$BinderServiceHandler;->this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    invoke-static {v2}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->access$000(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mBinded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$BinderServiceHandler;->this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    invoke-static {v2}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->access$200(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$BinderServiceHandler;->this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->access$200(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$BinderServiceHandler;->this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->access$300(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$BinderServiceHandler;->this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->access$000(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$BinderServiceHandler;->this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->access$300(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$BinderServiceHandler;->this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->access$400(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)V

    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v0, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$BinderServiceHandler;->this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->access$500(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
