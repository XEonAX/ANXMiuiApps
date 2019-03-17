.class Lcom/xiaomi/metoknlp/g;
.super Landroid/os/Handler;
.source "MetokApplication.java"


# instance fields
.field final synthetic X:Lcom/xiaomi/metoknlp/MetokApplication;


# direct methods
.method public constructor <init>(Lcom/xiaomi/metoknlp/MetokApplication;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/xiaomi/metoknlp/g;->X:Lcom/xiaomi/metoknlp/MetokApplication;

    .line 150
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 151
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 164
    :goto_0
    return-void

    .line 157
    :pswitch_0
    invoke-static {}, Lcom/xiaomi/metoknlp/a;->g()Lcom/xiaomi/metoknlp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/a;->update()V

    goto :goto_0

    .line 160
    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/metoknlp/g;->X:Lcom/xiaomi/metoknlp/MetokApplication;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/MetokApplication;->access$100(Lcom/xiaomi/metoknlp/MetokApplication;)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
