.class public Lcom/miui/gallery/util/PrintInstallHelper;
.super Ljava/lang/Object;
.source "PrintInstallHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;,
        Lcom/miui/gallery/util/PrintInstallHelper$InstallReceiver;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/miui/gallery/util/PrintInstallHelper;


# instance fields
.field private mCurSilentInstallTimes:I

.field private mDownloadManager:Lcom/xiaomi/market/IAppDownloadManager;

.field private mInstallConnection:Landroid/content/ServiceConnection;

.field private mInstallReceiver:Landroid/content/BroadcastReceiver;

.field private mInstallState:I

.field private mInstallStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastStartTime:J

.field private mPackageName:Ljava/lang/String;

.field private mStartCount:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput v2, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallState:I

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mLastStartTime:J

    .line 117
    iput v2, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mStartCount:I

    .line 119
    iput v2, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mCurSilentInstallTimes:I

    .line 129
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/util/PrintInstallHelper;)Lcom/xiaomi/market/IAppDownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/PrintInstallHelper;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mDownloadManager:Lcom/xiaomi/market/IAppDownloadManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/util/PrintInstallHelper;Lcom/xiaomi/market/IAppDownloadManager;)Lcom/xiaomi/market/IAppDownloadManager;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/PrintInstallHelper;
    .param p1, "x1"    # Lcom/xiaomi/market/IAppDownloadManager;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mDownloadManager:Lcom/xiaomi/market/IAppDownloadManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/util/PrintInstallHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/PrintInstallHelper;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/util/PrintInstallHelper;->registerInstallReceiver()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/util/PrintInstallHelper;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/PrintInstallHelper;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/PrintInstallHelper;->isInstallSuccess(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1102(Lcom/miui/gallery/util/PrintInstallHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/PrintInstallHelper;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallState:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/util/PrintInstallHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/PrintInstallHelper;

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mCurSilentInstallTimes:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/util/PrintInstallHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/PrintInstallHelper;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/util/PrintInstallHelper;->unregisterInstallReceiver()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/util/PrintInstallHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/PrintInstallHelper;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/util/PrintInstallHelper;->unbindInstallService()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/util/PrintInstallHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/PrintInstallHelper;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/util/PrintInstallHelper;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/PrintInstallHelper;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/PrintInstallHelper;->isInstallExists(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/util/PrintInstallHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/PrintInstallHelper;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/util/PrintInstallHelper;->resumeInstall()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/util/PrintInstallHelper;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/PrintInstallHelper;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/PrintInstallHelper;->isInstallFinish(I)Z

    move-result v0

    return v0
.end method

.method public static getFailReasonMsg(II)I
    .locals 2
    .param p0, "errorCode"    # I
    .param p1, "reason"    # I

    .prologue
    .line 403
    const/4 v1, -0x6

    if-ne p0, v1, :cond_0

    .line 404
    const/4 v0, 0x0

    .line 422
    :goto_0
    return v0

    .line 407
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 419
    const v0, 0x7f0c026d

    .local v0, "msg":I
    goto :goto_0

    .line 409
    .end local v0    # "msg":I
    :sswitch_0
    const v0, 0x7f0c0199

    .line 410
    .restart local v0    # "msg":I
    goto :goto_0

    .line 412
    .end local v0    # "msg":I
    :sswitch_1
    const v0, 0x7f0c019a

    .line 413
    .restart local v0    # "msg":I
    goto :goto_0

    .line 416
    .end local v0    # "msg":I
    :sswitch_2
    const v0, 0x7f0c019b

    .line 417
    .restart local v0    # "msg":I
    goto :goto_0

    .line 407
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xb -> :sswitch_2
        0x10 -> :sswitch_2
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/util/PrintInstallHelper;
    .locals 2

    .prologue
    .line 122
    const-class v1, Lcom/miui/gallery/util/PrintInstallHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/util/PrintInstallHelper;->sInstance:Lcom/miui/gallery/util/PrintInstallHelper;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-direct {v0}, Lcom/miui/gallery/util/PrintInstallHelper;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/PrintInstallHelper;->sInstance:Lcom/miui/gallery/util/PrintInstallHelper;

    .line 125
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/PrintInstallHelper;->sInstance:Lcom/miui/gallery/util/PrintInstallHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isInstallExists(I)Z
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 399
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInstallFinish(I)Z
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 390
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    const/4 v0, -0x4

    if-eq p1, v0, :cond_0

    const/4 v0, -0x5

    if-eq p1, v0, :cond_0

    const/4 v0, -0x6

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInstallSuccess(I)Z
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 395
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerInstallReceiver()V
    .locals 3

    .prologue
    .line 342
    iget-object v1, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 343
    const-string v1, "PrintInstallHelper"

    const-string v2, "register install receiver"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v1, Lcom/miui/gallery/util/PrintInstallHelper$InstallReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/util/PrintInstallHelper$InstallReceiver;-><init>(Lcom/miui/gallery/util/PrintInstallHelper;Lcom/miui/gallery/util/PrintInstallHelper$1;)V

    iput-object v1, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    .line 345
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.market.DOWNLOAD_INSTALL_RESULT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 348
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private resumeInstall()V
    .locals 5

    .prologue
    .line 331
    iget-object v2, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mDownloadManager:Lcom/xiaomi/market/IAppDownloadManager;

    if-eqz v2, :cond_0

    .line 333
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mDownloadManager:Lcom/xiaomi/market/IAppDownloadManager;

    iget-object v3, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mPackageName:Ljava/lang/String;

    const-string v4, "com.miui.gallery"

    invoke-interface {v2, v3, v4}, Lcom/xiaomi/market/IAppDownloadManager;->resume(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 334
    .local v1, "isResumed":Z
    const-string v2, "PrintInstallHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resume install:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v1    # "isResumed":Z
    :cond_0
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PrintInstallHelper"

    const-string v3, "RemoteException when resume"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private unbindInstallService()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 360
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallConnection:Landroid/content/ServiceConnection;

    .line 363
    :cond_0
    return-void
.end method

.method private unregisterInstallReceiver()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 352
    const-string v0, "PrintInstallHelper"

    const-string/jumbo v1, "unregister install receiver"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    .line 356
    :cond_0
    return-void
.end method


# virtual methods
.method public addInstallStateListener(Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;

    .prologue
    .line 366
    if-eqz p1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_0
    return-void
.end method

.method public ensurePrintFucntionAvailable()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 134
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getPrintPackageName()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 136
    const-string v6, "PrintInstallHelper"

    const-string v7, "get package from cloud control failed"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    return v5

    .line 139
    :cond_0
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->getAppVersionCode(Ljava/lang/String;)I

    move-result v0

    .line 140
    .local v0, "currentVersion":I
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getCreationStrategy()Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->getMinPrintVersionCode()I

    move-result v2

    .line 141
    .local v2, "minVersion":I
    if-ge v0, v2, :cond_1

    .line 142
    invoke-virtual {p0, v5, v3}, Lcom/miui/gallery/util/PrintInstallHelper;->installPrintPackage(ZLjava/lang/String;)Z

    .line 143
    invoke-static {}, Lcom/miui/gallery/discovery/PrintSilentInstallTask;->setSilentInstallTimesDisable()V

    .line 144
    const-string v6, "PrintInstallHelper"

    const-string v7, "Current print app version is lower then needed, upgrading!"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getCreationStrategy()Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;

    move-result-object v4

    .line 150
    .local v4, "strategy":Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v4}, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->getPrintIntentUri()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 151
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "prodType"

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 154
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isIntentSupported(Landroid/content/Intent;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 155
    invoke-virtual {p0, v5, v3}, Lcom/miui/gallery/util/PrintInstallHelper;->installPrintPackage(ZLjava/lang/String;)Z

    .line 156
    invoke-static {}, Lcom/miui/gallery/discovery/PrintSilentInstallTask;->setSilentInstallTimesDisable()V

    goto :goto_0

    :cond_2
    move v5, v6

    .line 159
    goto :goto_0
.end method

.method public installPrintPackage(ZLjava/lang/String;)Z
    .locals 1
    .param p1, "isSilent"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/gallery/util/PrintInstallHelper;->installPrintPackage(ZLjava/lang/String;Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;)Z

    move-result v0

    return v0
.end method

.method public installPrintPackage(ZLjava/lang/String;Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;)Z
    .locals 12
    .param p1, "isSilent"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;

    .prologue
    .line 241
    iput-object p2, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mPackageName:Ljava/lang/String;

    .line 242
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 243
    .local v0, "context":Landroid/content/Context;
    const/4 v5, 0x0

    .line 244
    .local v5, "isLimit":Z
    const/4 v6, 0x0

    .line 245
    .local v6, "isNewlyStart":Z
    iget v7, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallState:I

    packed-switch v7, :pswitch_data_0

    .line 314
    const-string v7, "PrintInstallHelper"

    const-string/jumbo v8, "wrong install state"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/4 v7, 0x0

    .line 327
    :goto_0
    return v7

    .line 247
    :pswitch_0
    if-eqz p1, :cond_1

    .line 248
    const/4 v7, 0x0

    goto :goto_0

    .line 252
    :pswitch_1
    if-eqz p1, :cond_0

    .line 253
    const/4 v7, 0x0

    goto :goto_0

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/util/PrintInstallHelper;->resumeInstall()V

    .line 318
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 319
    iget-object v7, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v7, p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_2
    if-eqz v5, :cond_6

    .line 322
    invoke-virtual {p0}, Lcom/miui/gallery/util/PrintInstallHelper;->notifyInstallLimited()V

    :goto_2
    move v7, v6

    .line 327
    goto :goto_0

    .line 258
    :pswitch_2
    const/4 v6, 0x1

    .line 259
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$PhotoPrint;->getSilentInstallTimes()I

    move-result v7

    :goto_3
    iput v7, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mCurSilentInstallTimes:I

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 261
    .local v2, "curTime":J
    iget-wide v8, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mLastStartTime:J

    sub-long v8, v2, v8

    const-wide/32 v10, 0xea60

    cmp-long v7, v8, v10

    if-gez v7, :cond_4

    .line 262
    iget v7, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mStartCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mStartCount:I

    .line 267
    :goto_4
    iget v7, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mStartCount:I

    const/16 v8, 0xa

    if-le v7, v8, :cond_5

    .line 268
    const-string v7, "PrintInstallHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "limit install, start times:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mStartCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/4 v5, 0x1

    .line 270
    goto :goto_1

    .line 259
    .end local v2    # "curTime":J
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 264
    .restart local v2    # "curTime":J
    :cond_4
    iput-wide v2, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mLastStartTime:J

    .line 265
    const/4 v7, 0x1

    iput v7, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mStartCount:I

    goto :goto_4

    .line 273
    :cond_5
    const/4 v7, 0x1

    iput v7, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallState:I

    .line 274
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.xiaomi.market.service.AppDownloadService"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "com.xiaomi.market"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    new-instance v7, Lcom/miui/gallery/util/PrintInstallHelper$1;

    invoke-direct {v7, p0, p2, p1}, Lcom/miui/gallery/util/PrintInstallHelper$1;-><init>(Lcom/miui/gallery/util/PrintInstallHelper;Ljava/lang/String;Z)V

    iput-object v7, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallConnection:Landroid/content/ServiceConnection;

    .line 308
    :try_start_0
    iget-object v7, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallConnection:Landroid/content/ServiceConnection;

    const/4 v8, 0x1

    invoke-virtual {v0, v4, v7, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 309
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "PrintInstallHelper"

    const-string v8, "bind install service failed"

    invoke-static {v7, v8, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 324
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "curTime":J
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-virtual {p0}, Lcom/miui/gallery/util/PrintInstallHelper;->notifyInstalling()V

    goto :goto_2

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isPhotoPrintEnable()Z
    .locals 3

    .prologue
    .line 385
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v1

    const-string v2, "photo-print"

    invoke-virtual {v1, v2}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStatus(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    move-result-object v0

    .line 386
    .local v0, "status":Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;
    sget-object v1, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->ENABLE:Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isInternational()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isPad()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPrintInstalling()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 426
    iget v1, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyInstallFinish(ZII)V
    .locals 3
    .param p1, "isSuccess"    # Z
    .param p2, "errorCode"    # I
    .param p3, "failReason"    # I

    .prologue
    .line 496
    iget-object v1, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;

    .line 498
    .local v0, "listener":Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;->onFinish(ZII)V

    goto :goto_0

    .line 501
    .end local v0    # "listener":Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;
    :cond_0
    return-void
.end method

.method public notifyInstallLimited()V
    .locals 3

    .prologue
    .line 480
    iget-object v1, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;

    .line 482
    .local v0, "listener":Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;
    invoke-interface {v0}, Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;->onInstallLimited()V

    goto :goto_0

    .line 485
    .end local v0    # "listener":Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;
    :cond_0
    return-void
.end method

.method public notifyInstalling()V
    .locals 3

    .prologue
    .line 488
    iget-object v1, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;

    .line 490
    .local v0, "listener":Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;
    invoke-interface {v0}, Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;->onInstalling()V

    goto :goto_0

    .line 493
    .end local v0    # "listener":Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;
    :cond_0
    return-void
.end method

.method public printPhotos(Landroid/app/Activity;[Landroid/net/Uri;Ljava/util/List;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uris"    # [Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p3, "originInfos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/util/PrintInstallHelper;->ensurePrintFucntionAvailable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 194
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getPrintPackageName()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getCreationStrategy()Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;

    move-result-object v5

    .line 168
    .local v5, "strategy":Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v5}, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->getPrintIntentUri()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 169
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "prodType"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-static {p3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 172
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v4, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 174
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;

    invoke-virtual {v6}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->toJson()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 176
    :cond_1
    const-string v6, "pick-result-origin-download-info"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 177
    const-string v6, "pick-result-data"

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 182
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 184
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isIntentSupported(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 186
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "PrintInstallHelper"

    const-string v7, "Select images to print failed"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "i":I
    .end local v4    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v6, "PrintInstallHelper"

    const-string v7, "No OriginInfo for print"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    .restart local v1    # "i":I
    .restart local v4    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v3}, Lcom/miui/gallery/util/PrintInstallHelper;->installPrintPackage(ZLjava/lang/String;)Z

    .line 192
    invoke-static {}, Lcom/miui/gallery/discovery/PrintSilentInstallTask;->setSilentInstallTimesDisable()V

    goto :goto_0
.end method

.method public removeInstallStateListener(Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;

    .prologue
    .line 372
    if-eqz p1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/miui/gallery/util/PrintInstallHelper;->mInstallStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 375
    :cond_0
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 197
    if-nez p1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getPrintPackageName()Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 202
    const-string v5, "PrintInstallHelper"

    const-string v6, "get package from cloud control failed"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isIntentSupported(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 210
    const/4 v2, 0x1

    .line 212
    .local v2, "isInstalled":Z
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 213
    const-string v5, "photo_print"

    const-string v6, "photo_print_app_start_success"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_1
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$PhotoPrint;->isPrintFirstClicked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 225
    invoke-static {v9}, Lcom/miui/gallery/preference/GalleryPreferences$PhotoPrint;->setIsPrintFirstClicked(Z)V

    .line 226
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 228
    .local v4, "param":Ljava/util/Map;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "isInstalled_%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$PhotoPrint;->getSilentInstallTimes()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v5, "photo_print"

    const-string v6, "photo_print_first_clicked"

    invoke-static {v5, v6, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 215
    .end local v4    # "param":Ljava/util/Map;
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "PrintInstallHelper"

    const-string v6, "find print activity failed"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 219
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "isInstalled":Z
    :cond_3
    const/4 v2, 0x0

    .line 220
    .restart local v2    # "isInstalled":Z
    invoke-virtual {p0, v9, v3}, Lcom/miui/gallery/util/PrintInstallHelper;->installPrintPackage(ZLjava/lang/String;)Z

    .line 221
    invoke-static {}, Lcom/miui/gallery/discovery/PrintSilentInstallTask;->setSilentInstallTimesDisable()V

    goto :goto_1
.end method
