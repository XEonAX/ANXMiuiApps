.class Lcom/xiaomi/scanner/camera/FocusManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/camera/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/xiaomi/scanner/camera/FocusManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/camera/FocusManager;Landroid/os/Looper;)V
    .locals 1
    .param p1, "manager"    # Lcom/xiaomi/scanner/camera/FocusManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 98
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager$MainHandler;->mManager:Ljava/lang/ref/WeakReference;

    .line 100
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager$MainHandler;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/camera/FocusManager;

    .line 105
    .local v0, "manager":Lcom/xiaomi/scanner/camera/FocusManager;
    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Lcom/xiaomi/scanner/camera/FocusManager;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 110
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 112
    :pswitch_0
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/FocusManager;->access$100(Lcom/xiaomi/scanner/camera/FocusManager;)V

    goto :goto_0

    .line 115
    :pswitch_1
    invoke-static {}, Lcom/xiaomi/scanner/camera/FocusManager;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    const-string v2, "force reset auto focus"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    const-string v1, "no_autofocus_callback_count"

    invoke-static {v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 118
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/FocusManager;->access$100(Lcom/xiaomi/scanner/camera/FocusManager;)V

    .line 119
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/FocusManager;->access$200(Lcom/xiaomi/scanner/camera/FocusManager;)V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
