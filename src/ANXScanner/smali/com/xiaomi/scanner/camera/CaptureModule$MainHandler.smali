.class Lcom/xiaomi/scanner/camera/CaptureModule$MainHandler;
.super Landroid/os/Handler;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private final mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/xiaomi/scanner/camera/CaptureModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V
    .locals 1
    .param p1, "module"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 1213
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1214
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    .line 1215
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1219
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/camera/CaptureModule;

    .line 1220
    .local v0, "module":Lcom/xiaomi/scanner/camera/CaptureModule;
    if-nez v0, :cond_0

    .line 1236
    :goto_0
    return-void

    .line 1223
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1225
    :pswitch_0
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1300(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    goto :goto_0

    .line 1228
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1400(Lcom/xiaomi/scanner/camera/CaptureModule;I)V

    goto :goto_0

    .line 1231
    :pswitch_2
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->autoFocus()V

    goto :goto_0

    .line 1223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
