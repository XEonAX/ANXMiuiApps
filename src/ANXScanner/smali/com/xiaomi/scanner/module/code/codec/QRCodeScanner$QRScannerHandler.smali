.class Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;
.super Landroid/os/Handler;
.source "QRCodeScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QRScannerHandler"
.end annotation


# instance fields
.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "scanner"    # Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 141
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;->weakReference:Ljava/lang/ref/WeakReference;

    .line 142
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 146
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget-object v4, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    .line 149
    .local v3, "scanner":Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;
    if-eqz v3, :cond_0

    .line 152
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;

    .line 153
    .local v1, "params":Lcom/xiaomi/scanner/module/code/codec/DecodeParams;
    if-nez v1, :cond_1

    .line 154
    invoke-static {v3}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->access$200(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-static {}, Lcom/xiaomi/scanner/module/PailitaoManager;->isReady()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 158
    invoke-static {v3}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->access$300(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->access$400(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;Landroid/content/Context;Lcom/xiaomi/scanner/module/code/codec/DecodeParams;)Lcom/google/zxing/Result;

    move-result-object v2

    .line 159
    .local v2, "result":Lcom/google/zxing/Result;
    if-eqz v2, :cond_4

    .line 160
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/DecodeFormat;->PRODUCT_FORMATS:Ljava/util/Vector;

    invoke-virtual {v2}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    new-instance v0, Lcom/taobao/ma/common/result/MaResult;

    sget-object v4, Lcom/taobao/ma/common/result/MaType;->PRODUCT:Lcom/taobao/ma/common/result/MaType;

    invoke-virtual {v2}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/taobao/ma/common/result/MaResult;-><init>(Lcom/taobao/ma/common/result/MaType;Ljava/lang/String;)V

    .line 162
    .local v0, "maResult":Lcom/taobao/ma/common/result/MaResult;
    invoke-static {v3, v0, v6}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->access$500(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;Lcom/taobao/ma/common/result/MaResult;Lcom/google/zxing/Result;)V

    goto :goto_0

    .line 164
    .end local v0    # "maResult":Lcom/taobao/ma/common/result/MaResult;
    :cond_2
    invoke-static {v3, v6, v2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->access$500(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;Lcom/taobao/ma/common/result/MaResult;Lcom/google/zxing/Result;)V

    goto :goto_0

    .line 169
    .end local v2    # "result":Lcom/google/zxing/Result;
    :cond_3
    invoke-static {v3}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->access$300(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->access$400(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;Landroid/content/Context;Lcom/xiaomi/scanner/module/code/codec/DecodeParams;)Lcom/google/zxing/Result;

    move-result-object v2

    .line 170
    .restart local v2    # "result":Lcom/google/zxing/Result;
    if-eqz v2, :cond_4

    .line 171
    invoke-static {v3, v6, v2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->access$500(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;Lcom/taobao/ma/common/result/MaResult;Lcom/google/zxing/Result;)V

    goto :goto_0

    .line 176
    :cond_4
    invoke-static {v3}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->access$200(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
