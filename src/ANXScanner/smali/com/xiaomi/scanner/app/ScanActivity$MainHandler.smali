.class Lcom/xiaomi/scanner/app/ScanActivity$MainHandler;
.super Landroid/os/Handler;
.source "ScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/app/ScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/xiaomi/scanner/app/ScanActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;Landroid/os/Looper;)V
    .locals 1
    .param p1, "activity"    # Lcom/xiaomi/scanner/app/ScanActivity;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 298
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 299
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$MainHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 300
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 304
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity$MainHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/app/ScanActivity;

    .line 305
    .local v0, "activity":Lcom/xiaomi/scanner/app/ScanActivity;
    if-nez v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 311
    :pswitch_0
    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->requestCameraOpen()V

    goto :goto_0

    .line 316
    :pswitch_1
    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$300(Lcom/xiaomi/scanner/app/ScanActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
