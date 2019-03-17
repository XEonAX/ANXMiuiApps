.class public Lcom/xiaomi/scanner/module/CodeModule;
.super Lcom/xiaomi/scanner/module/BaseModule;
.source "CodeModule.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;
    }
.end annotation


# static fields
.field private static final DETECT_PREVIEW_INTERVAL_MS:J = 0x64L

.field private static final MSG_CHECK_PREVIEW:I = 0xb

.field private static final MSG_REQUEST_FRAME:I = 0xc

.field public static final RESULT_EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final RESULT_EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mCallingApp:Ljava/lang/String;

.field private mDecodeParams:Lcom/xiaomi/scanner/module/code/codec/DecodeParams;

.field private mInitRunnable:Ljava/lang/Runnable;

.field private mInitTime:J

.field private mIsPause:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mMainWorkTask:Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;

.field private mQRScanner:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

.field private mUI:Lcom/xiaomi/scanner/ui/CodeModuleUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "CodeModule"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/AppController;I)V
    .locals 1
    .param p1, "app"    # Lcom/xiaomi/scanner/app/AppController;
    .param p2, "moduleId"    # I

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/BaseModule;-><init>()V

    .line 81
    new-instance v0, Lcom/xiaomi/scanner/module/CodeModule$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/CodeModule$1;-><init>(Lcom/xiaomi/scanner/module/CodeModule;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainHandler:Landroid/os/Handler;

    .line 102
    iput p2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mModuleId:I

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/module/CodeModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/CodeModule;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mIsPause:Z

    return v0
.end method

.method static synthetic access$100()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaomi/scanner/module/CodeModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/CodeModule;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/CodeModule;->clearMainTask()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/module/CodeModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/CodeModule;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/CodeModule;->checkPreviewReady()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/scanner/module/CodeModule;)Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/CodeModule;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mQRScanner:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    return-object v0
.end method

.method static synthetic access$302(Lcom/xiaomi/scanner/module/CodeModule;Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/CodeModule;
    .param p1, "x1"    # Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mQRScanner:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaomi/scanner/module/CodeModule;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/CodeModule;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/CodeModule;->launchActionView(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/xiaomi/scanner/module/CodeModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/CodeModule;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/CodeModule;->checkToFinishActivity()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaomi/scanner/module/CodeModule;Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/CodeModule;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/module/CodeModule;->launchQRResultActivity(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaomi/scanner/module/CodeModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/CodeModule;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/CodeModule;->deleteCropImage()V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaomi/scanner/module/CodeModule;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/CodeModule;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/CodeModule;->handleDecodeSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaomi/scanner/module/CodeModule;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/CodeModule;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/CodeModule;->requestCropImage(Ljava/lang/String;)V

    return-void
.end method

.method private checkPreviewReady()V
    .locals 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule;->getModuleId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->isPreviewReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mQRScanner:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mQRScanner:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->start()V

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "check preview status later"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private checkToFinishActivity()V
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mNeedFinishActivity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    .line 486
    :cond_0
    return-void
.end method

.method private clearMainTask()V
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainWorkTask:Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;

    .line 473
    return-void
.end method

.method private deleteCropImage()V
    .locals 2

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule;->getCroppedImagePath()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 478
    new-instance v1, Lcom/xiaomi/scanner/util/DeleteFileTask;

    invoke-direct {v1, v0}, Lcom/xiaomi/scanner/util/DeleteFileTask;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Ljava/lang/Runnable;)V

    .line 480
    :cond_0
    return-void
.end method

.method private executeMainTask(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "crop"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "executeMainTask fail null path"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 414
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainWorkTask:Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainWorkTask:Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;

    invoke-virtual {v0, v4}, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->cancel(Z)Z

    .line 409
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel current task and start next task, path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 410
    iput-boolean v3, p0, Lcom/xiaomi/scanner/module/CodeModule;->mNeedFinishActivity:Z

    .line 412
    :cond_1
    new-instance v0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;-><init>(Lcom/xiaomi/scanner/module/CodeModule;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainWorkTask:Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;

    .line 413
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainWorkTask:Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private handleDecodeSuccess(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 239
    sget-object v5, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v6, "handleDecodeSuccess"

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 240
    const-string v5, "ar_code_server_result"

    invoke-static {v5}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 241
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->match(Ljava/lang/String;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-result-object v4

    .line 242
    .local v4, "type":Lcom/xiaomi/scanner/module/code/codec/QRCodeType;
    invoke-direct {p0, v4}, Lcom/xiaomi/scanner/module/CodeModule;->recordDecodeTime(Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V

    .line 243
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 244
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "result"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v5, "type"

    invoke-virtual {v4}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->ordinal()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const-string v5, "fromApp"

    iget-object v6, p0, Lcom/xiaomi/scanner/module/CodeModule;->mCallingApp:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget-boolean v5, p0, Lcom/xiaomi/scanner/module/CodeModule;->mIsBackToThirdApp:Z

    if-eqz v5, :cond_0

    .line 248
    iget-object v5, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->setResult(ILandroid/content/Intent;)V

    .line 249
    iget-object v5, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v5}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    .line 285
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v5, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 255
    iget-object v5, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;

    .line 256
    .local v2, "listener":Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;
    invoke-interface {v2, p1, v4}, Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;->handleBarcode(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 257
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/CodeModule;->checkToFinishActivity()V

    goto :goto_0

    .line 254
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 263
    .end local v0    # "i":I
    .end local v2    # "listener":Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;
    :cond_2
    sget-object v5, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WEB_URL:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne v4, v5, :cond_3

    .line 264
    new-instance v3, Lcom/xiaomi/scanner/module/code/utils/URLInspector;

    invoke-direct {v3}, Lcom/xiaomi/scanner/module/code/utils/URLInspector;-><init>()V

    .line 265
    .local v3, "request":Lcom/xiaomi/scanner/module/code/utils/URLInspector;
    new-instance v5, Lcom/xiaomi/scanner/module/CodeModule$3;

    invoke-direct {v5, p0, p1, v4}, Lcom/xiaomi/scanner/module/CodeModule$3;-><init>(Lcom/xiaomi/scanner/module/CodeModule;Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V

    invoke-virtual {v3, v5}, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->setOnReceivedDataListener(Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;)V

    .line 278
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v5}, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 282
    .end local v3    # "request":Lcom/xiaomi/scanner/module/code/utils/URLInspector;
    :cond_3
    sget-object v5, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v6, "no listener catch,launch QRResultActivity"

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 283
    invoke-direct {p0, p1, v4}, Lcom/xiaomi/scanner/module/CodeModule;->launchQRResultActivity(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V

    .line 284
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/CodeModule;->checkToFinishActivity()V

    goto :goto_0
.end method

.method private initBarcodeListener()V
    .locals 3

    .prologue
    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    .line 145
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/MiAccountListener;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v1, v2}, Lcom/xiaomi/scanner/module/code/utils/MiAccountListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/MiPayListener;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v1, v2}, Lcom/xiaomi/scanner/module/code/utils/MiPayListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/MiPayWalletListener;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v1, v2}, Lcom/xiaomi/scanner/module/code/utils/MiPayWalletListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v1, v2}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/AlipayListener;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v1, v2}, Lcom/xiaomi/scanner/module/code/utils/AlipayListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v1, v2}, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v1, v2}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method private launchActionView(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    const/4 v0, 0x1

    .line 305
    :goto_0
    return v0

    .line 301
    :catch_0
    move-exception v0

    .line 305
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchQRResultActivity(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .prologue
    .line 288
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 289
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v1, "type"

    invoke-virtual {p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    const-string v1, "fromApp"

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mCallingApp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    const-class v2, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 293
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 294
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->startActivity(Landroid/content/Intent;)V

    .line 295
    return-void
.end method

.method private onDecoded(Lcom/google/zxing/Result;)V
    .locals 3
    .param p1, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 510
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->playBeepAndVibrate()V

    .line 512
    const-string v1, "barcode_zxing_success_count"

    invoke-static {v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 514
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 515
    .local v0, "resultString":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "zxing onDecoded"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 516
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 517
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mCallingApp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 518
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    .line 527
    .end local v0    # "resultString":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 514
    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 520
    .restart local v0    # "resultString":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/CodeModule;->handleDecodeSuccess(Ljava/lang/String;)V

    goto :goto_1

    .line 523
    :cond_3
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/CodeModule;->handleDecodeSuccess(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private recordDecodeTime(Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V
    .locals 6
    .param p1, "barcodeType"    # Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .prologue
    .line 309
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 310
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "barcode_type"

    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v1, "barcode_decode_count"

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 312
    const-string v1, "barcode_decode_time"

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/scanner/module/CodeModule;->mInitTime:J

    sub-long/2addr v2, v4

    .line 312
    invoke-static {v1, v2, v3, v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;JLjava/util/Map;)V

    .line 314
    return-void
.end method

.method private requestCropImage(Ljava/lang/String;)V
    .locals 8
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 369
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule;->getCroppedImagePath()Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "cropResultPath":Ljava/lang/String;
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    const v1, 0x7f070021

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    const v1, 0x7f070094

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "action":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move v6, v5

    .line 372
    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/scanner/module/CodeModule;->getCropImageIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v7

    .line 373
    .local v7, "intent":Landroid/content/Intent;
    if-eqz v7, :cond_0

    .line 374
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070051

    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 375
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v7, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "requestCropImage: null intent"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public varargs executeDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 490
    const/4 v0, 0x0

    return-object v0
.end method

.method public executeOnPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule;->clearTask()V

    .line 496
    return-void
.end method

.method public init(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 6
    .param p1, "activity"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/module/BaseModule;->init(Lcom/xiaomi/scanner/app/ScanActivity;)V

    .line 108
    const-string v2, "ar_code_tab_click"

    invoke-static {v2}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mInitTime:J

    .line 110
    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 111
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "fromApp"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mCallingApp:Ljava/lang/String;

    .line 112
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SEND"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    const-string v2, "barcode_caller_action_send"

    const-string v3, "barcode_caller"

    const-string v4, "barcode_by_call_count"

    invoke-virtual {p0, v2, v3, v4}, Lcom/xiaomi/scanner/module/CodeModule;->recordExtraCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/CodeModule;->initBarcodeListener()V

    .line 126
    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/app/ScanActivity;->checkAppStartRun()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule;->onCTAAndPermissionAgree()V

    .line 130
    :cond_0
    new-instance v2, Lcom/xiaomi/scanner/ui/CodeModuleUI;

    iget-object v3, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    iget-object v4, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/app/ScanActivity;->getModuleLayoutRoot()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/scanner/module/CodeModule;->mCallingApp:Ljava/lang/String;

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/xiaomi/scanner/ui/CodeModuleUI;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;Lcom/xiaomi/scanner/module/CodeModule;Landroid/view/View;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mUI:Lcom/xiaomi/scanner/ui/CodeModuleUI;

    .line 132
    new-instance v2, Lcom/xiaomi/scanner/module/CodeModule$2;

    invoke-direct {v2, p0}, Lcom/xiaomi/scanner/module/CodeModule$2;-><init>(Lcom/xiaomi/scanner/module/CodeModule;)V

    iput-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mInitRunnable:Ljava/lang/Runnable;

    .line 140
    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaomi/scanner/module/CodeModule;->mInitRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    return-void

    .line 115
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 116
    const-string v2, "barcode_caller"

    const-string v3, "barcode_by_call_count"

    invoke-virtual {p0, v1, v2, v3}, Lcom/xiaomi/scanner/module/CodeModule;->recordExtraCount(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_2
    const-string v2, "miref"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "appName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mCallingApp:Ljava/lang/String;

    .line 122
    :cond_3
    const-string v2, "barcode_caller"

    const-string v3, "barcode_by_call_count"

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaomi/scanner/module/CodeModule;->recordExtraCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isPause()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mIsPause:Z

    return v0
.end method

.method public isZoomNeeded()Z
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 383
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 384
    sget-object v2, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "resultCode error"

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 400
    :goto_0
    return-void

    .line 388
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 398
    sget-object v2, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :pswitch_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    .line 393
    .local v1, "isCropped":Z
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule;->getCroppedImagePath()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "filePath":Ljava/lang/String;
    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/scanner/module/CodeModule;->executeMainTask(Ljava/lang/String;Z)V

    .line 395
    const-string v2, "ar_code_select_confirm"

    invoke-static {v2}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "isCropped":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 393
    .restart local v1    # "isCropped":Z
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCTAAndPermissionAgree()V
    .locals 2

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule;->initShoppingSdk()V

    .line 502
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mExtraShareImagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mNeedFinishActivity:Z

    .line 504
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mExtraShareImagePath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/scanner/module/CodeModule;->executeMainTask(Ljava/lang/String;Z)V

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mExtraShareImagePath:Ljava/lang/String;

    .line 507
    :cond_0
    return-void
.end method

.method public onCameraClosed()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mQRScanner:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mQRScanner:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->clearMessage()V

    .line 361
    :cond_0
    return-void
.end method

.method public onDecoded(Lcom/taobao/ma/common/result/MaResult;Lcom/google/zxing/Result;)V
    .locals 3
    .param p1, "maResult"    # Lcom/taobao/ma/common/result/MaResult;
    .param p2, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 531
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 532
    sget-object v1, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "onDecoded all null"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 536
    if-eqz p2, :cond_2

    .line 537
    invoke-direct {p0, p2}, Lcom/xiaomi/scanner/module/CodeModule;->onDecoded(Lcom/google/zxing/Result;)V

    goto :goto_0

    .line 540
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->playBeepAndVibrate()V

    .line 541
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mDecodeParams:Lcom/xiaomi/scanner/module/code/codec/DecodeParams;

    .line 542
    const-string v1, "barcode_taobao_success_count"

    invoke-static {v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1}, Lcom/taobao/ma/common/result/MaResult;->getText()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "resultString":Ljava/lang/String;
    sget-object v1, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "onDecoded maResult"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 546
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 547
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mCallingApp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 548
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    goto :goto_0

    .line 550
    :cond_3
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/CodeModule;->handleDecodeSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v1, p1}, Lcom/xiaomi/scanner/module/PailitaoManager;->showMaPage(Landroid/app/Activity;Lcom/taobao/ma/common/result/MaResult;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 556
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/CodeModule;->handleDecodeSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->onDestroy()V

    .line 210
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainWorkTask:Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainWorkTask:Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->cancel(Z)Z

    .line 214
    iput-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainWorkTask:Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mUI:Lcom/xiaomi/scanner/ui/CodeModuleUI;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mUI:Lcom/xiaomi/scanner/ui/CodeModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/CodeModuleUI;->onDestroy()V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 221
    iput-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    .line 223
    :cond_2
    const-string v0, "barcode_active_time"

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/scanner/module/CodeModule;->mInitTime:J

    sub-long/2addr v2, v4

    .line 223
    invoke-static {v0, v2, v3}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;J)V

    .line 225
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mIsPause:Z

    .line 193
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mUI:Lcom/xiaomi/scanner/ui/CodeModuleUI;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mUI:Lcom/xiaomi/scanner/ui/CodeModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/CodeModuleUI;->onPause()V

    .line 196
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/config/ConfigModel;->clearAllCacheData()V

    .line 197
    return-void
.end method

.method public onPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z
    .locals 11
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v1, 0x0

    .line 318
    invoke-super {p0, p1, p2}, Lcom/xiaomi/scanner/module/BaseModule;->onPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 348
    :goto_0
    return v1

    .line 321
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/app/ScanActivity;->getCameraSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v7

    .line 322
    .local v7, "settings":Lcom/android/ex/camera2/portability/CameraSettings;
    if-nez v7, :cond_1

    .line 323
    sget-object v2, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v9, "onPreviewFrame: settings is null."

    invoke-static {v2, v9}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v8

    .line 327
    .local v8, "size":Lcom/android/ex/camera2/portability/Size;
    if-nez v8, :cond_2

    .line 328
    sget-object v2, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v9, "onPreviewFrame: size is null."

    invoke-static {v2, v9}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_2
    invoke-virtual {v8}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v3

    .line 332
    .local v3, "width":I
    invoke-virtual {v8}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v4

    .line 333
    .local v4, "height":I
    if-lez v3, :cond_3

    if-gtz v4, :cond_4

    .line 334
    :cond_3
    sget-object v2, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPreviewFrame: width="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",height="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_4
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCharacteristics()Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->getDisplayRotation()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewOrientation(I)I

    move-result v5

    .line 339
    .local v5, "orientation":I
    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mUI:Lcom/xiaomi/scanner/ui/CodeModuleUI;

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaomi/scanner/ui/CodeModuleUI;->getFramingRectInPreview(III)Landroid/graphics/Rect;

    move-result-object v6

    .line 340
    .local v6, "framingRectInPreview":Landroid/graphics/Rect;
    if-nez v6, :cond_5

    .line 341
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule;->requestPreviewFrame()V

    goto :goto_0

    .line 344
    :cond_5
    new-instance v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewFormat()I

    move-result v2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;-><init>([BIIIILandroid/graphics/Rect;)V

    .line 345
    .local v0, "decodeParams":Lcom/xiaomi/scanner/module/code/codec/DecodeParams;
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mQRScanner:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    if-eqz v1, :cond_6

    .line 346
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mQRScanner:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->scan(Lcom/xiaomi/scanner/module/code/codec/DecodeParams;)V

    .line 348
    :cond_6
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->onResume()V

    .line 179
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/config/ConfigModel;->initCacheData()V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mIsPause:Z

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mInitTime:J

    .line 183
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mUI:Lcom/xiaomi/scanner/ui/CodeModuleUI;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mUI:Lcom/xiaomi/scanner/ui/CodeModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/CodeModuleUI;->onResume()V

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/CodeModule;->checkPreviewReady()V

    .line 187
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 201
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mQRScanner:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mQRScanner:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->quitScan()V

    .line 205
    :cond_0
    return-void
.end method

.method public requestPreviewFrame()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 229
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule;->isPause()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->isFrameValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->requestPreviewFrame()V

    .line 236
    :goto_0
    return-void

    .line 232
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "check preview later"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public selectPhotoClick()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->selectPhotoClick()V

    .line 159
    const-string v0, "ar_code_select_photo_btn_click"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 160
    return-void
.end method
