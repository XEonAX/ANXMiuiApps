.class public Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;
.super Ljava/lang/Object;
.source "QRCodeScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;,
        Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;
    }
.end annotation


# static fields
.field private static final HANDLER_THREAD_NAME:Ljava/lang/String;

.field private static final MSG_PREVIEW_AVAILABLE:I = 0x2

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDecodeHints:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

.field private mQRScannerListener:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "QRCodeScanner"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 25
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->HANDLER_THREAD_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mContext:Landroid/content/Context;

    .line 45
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mDecodeHints:Ljava/util/Hashtable;

    .line 46
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 47
    .local v0, "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/DecodeFormat;->ONE_D_FORMATS:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 48
    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/DecodeFormat;->QR_CODE_FORMATS:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 49
    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/DecodeFormat;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 50
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mDecodeHints:Ljava/util/Hashtable;

    sget-object v2, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mDecodeHints:Ljava/util/Hashtable;

    sget-object v2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    const-string v3, "UTF-8"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mQRScannerListener:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;

    return-object v0
.end method

.method static synthetic access$100()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->requestPreviewFrame()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;Landroid/content/Context;Lcom/xiaomi/scanner/module/code/codec/DecodeParams;)Lcom/google/zxing/Result;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/xiaomi/scanner/module/code/codec/DecodeParams;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->zxingDecode(Landroid/content/Context;Lcom/xiaomi/scanner/module/code/codec/DecodeParams;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;Lcom/taobao/ma/common/result/MaResult;Lcom/google/zxing/Result;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;
    .param p1, "x1"    # Lcom/taobao/ma/common/result/MaResult;
    .param p2, "x2"    # Lcom/google/zxing/Result;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->onDecodeSucceed(Lcom/taobao/ma/common/result/MaResult;Lcom/google/zxing/Result;)V

    return-void
.end method

.method private onDecodeSucceed(Lcom/taobao/ma/common/result/MaResult;Lcom/google/zxing/Result;)V
    .locals 1
    .param p1, "maResult"    # Lcom/taobao/ma/common/result/MaResult;
    .param p2, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 115
    new-instance v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$2;-><init>(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;Lcom/taobao/ma/common/result/MaResult;Lcom/google/zxing/Result;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method private requestPreviewFrame()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$1;-><init>(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method private zxingDecode(Landroid/content/Context;Lcom/xiaomi/scanner/module/code/codec/DecodeParams;)Lcom/google/zxing/Result;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/xiaomi/scanner/module/code/codec/DecodeParams;

    .prologue
    .line 129
    :try_start_0
    invoke-virtual {p2}, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->getYuvImage()Landroid/graphics/YuvImage;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mDecodeHints:Ljava/util/Hashtable;

    invoke-static {p1, v1, v2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->decode(Landroid/content/Context;Landroid/graphics/YuvImage;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 132
    :goto_0
    return-object v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "zxingDecode error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearMessage()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "clear message"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 188
    :cond_0
    return-void
.end method

.method public initScan()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->HANDLER_THREAD_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mThread:Landroid/os/HandlerThread;

    .line 69
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 70
    new-instance v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;-><init>(Landroid/os/Looper;Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    .line 72
    :cond_0
    return-void
.end method

.method public quitScan()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 84
    iput-object v1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mThread:Landroid/os/HandlerThread;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 88
    iput-object v1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    .line 90
    :cond_1
    return-void
.end method

.method public scan(Lcom/xiaomi/scanner/module/code/codec/DecodeParams;)V
    .locals 2
    .param p1, "params"    # Lcom/xiaomi/scanner/module/code/codec/DecodeParams;

    .prologue
    const/4 v1, 0x2

    .line 93
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;->removeMessages(I)V

    .line 95
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "scan without handler!"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setQRCodeScannerListener(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;)V
    .locals 0
    .param p1, "l"    # Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mQRScannerListener:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;

    .line 64
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->initScan()V

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->requestPreviewFrame()V

    .line 79
    return-void
.end method
