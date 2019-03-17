.class Lcom/xiaomi/scanner/module/CodeModule$2;
.super Ljava/lang/Object;
.source "CodeModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/CodeModule;->init(Lcom/xiaomi/scanner/app/ScanActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/CodeModule;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/CodeModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/module/CodeModule;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/xiaomi/scanner/module/CodeModule$2;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule$2;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    new-instance v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule$2;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    iget-object v2, v2, Lcom/xiaomi/scanner/module/CodeModule;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/module/CodeModule;->access$302(Lcom/xiaomi/scanner/module/CodeModule;Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    .line 136
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule$2;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/CodeModule;->access$300(Lcom/xiaomi/scanner/module/CodeModule;)Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule$2;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->setQRCodeScannerListener(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;)V

    .line 137
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule$2;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/CodeModule;->access$300(Lcom/xiaomi/scanner/module/CodeModule;)Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->initScan()V

    .line 138
    return-void
.end method
