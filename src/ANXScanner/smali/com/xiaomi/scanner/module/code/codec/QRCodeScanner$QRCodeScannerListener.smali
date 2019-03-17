.class public interface abstract Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;
.super Ljava/lang/Object;
.source "QRCodeScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QRCodeScannerListener"
.end annotation


# virtual methods
.method public abstract onDecoded(Lcom/taobao/ma/common/result/MaResult;Lcom/google/zxing/Result;)V
.end method

.method public abstract requestPreviewFrame()V
.end method
