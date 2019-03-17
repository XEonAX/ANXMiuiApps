.class Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$1;
.super Ljava/lang/Object;
.source "QRCodeScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->requestPreviewFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$1;->this$0:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$1;->this$0:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->access$000(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$1;->this$0:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->access$000(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;->requestPreviewFrame()V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "request a frame but no listener found!"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method
