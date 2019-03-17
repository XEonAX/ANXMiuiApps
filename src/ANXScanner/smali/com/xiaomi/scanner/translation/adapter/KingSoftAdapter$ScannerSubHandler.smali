.class Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$ScannerSubHandler;
.super Landroid/os/Handler;
.source "KingSoftAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScannerSubHandler"
.end annotation


# instance fields
.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "adapter"    # Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 111
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$ScannerSubHandler;->weakReference:Ljava/lang/ref/WeakReference;

    .line 112
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 116
    invoke-static {}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$ScannerSubHandler;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    .line 120
    .local v0, "adapter":Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;
    if-eqz v0, :cond_0

    .line 123
    invoke-static {v0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$100(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)I

    move-result v1

    if-nez v1, :cond_1

    .line 124
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$200(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;Lcom/xiaomi/scanner/translation/bean/ScanDataBean;)V

    goto :goto_0

    .line 126
    :cond_1
    const/4 v1, 0x1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$ScannerSubHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$ScannerSubHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
