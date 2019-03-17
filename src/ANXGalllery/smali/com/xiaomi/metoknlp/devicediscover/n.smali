.class Lcom/xiaomi/metoknlp/devicediscover/n;
.super Landroid/os/Handler;
.source "WifiCampStatistics.java"


# instance fields
.field final synthetic S:Lcom/xiaomi/metoknlp/devicediscover/f;


# direct methods
.method public constructor <init>(Lcom/xiaomi/metoknlp/devicediscover/f;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/xiaomi/metoknlp/devicediscover/n;->S:Lcom/xiaomi/metoknlp/devicediscover/f;

    .line 57
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 58
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/n;->S:Lcom/xiaomi/metoknlp/devicediscover/f;

    invoke-static {v1, v0}, Lcom/xiaomi/metoknlp/devicediscover/f;->a(Lcom/xiaomi/metoknlp/devicediscover/f;Z)V

    goto :goto_0

    .line 66
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 67
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/n;->S:Lcom/xiaomi/metoknlp/devicediscover/f;

    invoke-static {v1, v0}, Lcom/xiaomi/metoknlp/devicediscover/f;->b(Lcom/xiaomi/metoknlp/devicediscover/f;Z)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
