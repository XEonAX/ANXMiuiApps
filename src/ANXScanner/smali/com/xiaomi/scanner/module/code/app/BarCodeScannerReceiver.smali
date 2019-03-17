.class public Lcom/xiaomi/scanner/module/code/app/BarCodeScannerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BarCodeScannerReceiver.java"


# static fields
.field public static final ACTION_BARCODE_SCANNER_RECEIVER:Ljava/lang/String; = "com.xiaomi.scanner.receiver.senderbarcodescanner"

.field public static final PERMISSION_BARCODE_SCANNER_RECEIVER:Ljava/lang/String; = "com.xiaomi.scanner.receiver.RECEIVER"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "BarCodeScannerReceiver"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerReceiver;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    sget-object v3, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerReceiver;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "BarCodeScannerReceiver onReceive"

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 23
    if-eqz p2, :cond_0

    const-string v3, "result"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    const-string v3, "result"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "mQRResult":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 26
    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;

    invoke-direct {v1, p1}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;-><init>(Landroid/content/Context;)V

    .line 27
    .local v1, "listener":Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;
    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->handleBarcode(Ljava/lang/String;)Z

    move-result v0

    .line 29
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 30
    const-class v3, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 31
    const v3, 0x10008000

    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    .end local v0    # "handled":Z
    .end local v1    # "listener":Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;
    .end local v2    # "mQRResult":Ljava/lang/String;
    :cond_0
    return-void
.end method
