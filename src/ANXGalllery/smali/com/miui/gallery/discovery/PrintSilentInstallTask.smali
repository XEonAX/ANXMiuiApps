.class public Lcom/miui/gallery/discovery/PrintSilentInstallTask;
.super Lcom/miui/gallery/pendingtask/base/PendingTask;
.source "PrintSilentInstallTask.java"


# instance fields
.field private mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/miui/gallery/pendingtask/base/PendingTask;-><init>(I)V

    .line 18
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/discovery/PrintSilentInstallTask;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/discovery/PrintSilentInstallTask;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/discovery/PrintSilentInstallTask;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/gallery/discovery/PrintSilentInstallTask;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public static isPrintSilentInstallEnable()Z
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getPrintPackageName()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/discovery/PrintSilentInstallTask;->isPrintSilentInstallEnable(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static isPrintSilentInstallEnable(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {}, Lcom/miui/gallery/util/PrintInstallHelper;->getInstance()Lcom/miui/gallery/util/PrintInstallHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/PrintInstallHelper;->isPhotoPrintEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/miui/gallery/discovery/PrintSilentInstallTask;->isSilentInstallTimesEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSilentInstallTimesEnable()Z
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$PhotoPrint;->getSilentInstallTimes()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSilentInstallTimesDisable()V
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/miui/gallery/discovery/PrintSilentInstallTask;->isSilentInstallTimesEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$PhotoPrint;->setSilentInstallTimes(I)V

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public getNetworkType()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public parseData([B)Ljava/lang/Object;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method

.method public process(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getPrintPackageName()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/gallery/discovery/PrintSilentInstallTask;->isPrintSilentInstallEnable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$PhotoPrint;->increaseSilentInstallTimes()V

    .line 54
    new-instance v2, Lcom/miui/gallery/discovery/PrintSilentInstallTask$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/discovery/PrintSilentInstallTask$1;-><init>(Lcom/miui/gallery/discovery/PrintSilentInstallTask;)V

    .line 76
    .local v2, "listener":Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;
    invoke-static {}, Lcom/miui/gallery/util/PrintInstallHelper;->getInstance()Lcom/miui/gallery/util/PrintInstallHelper;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3, v2}, Lcom/miui/gallery/util/PrintInstallHelper;->installPrintPackage(ZLjava/lang/String;Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;)Z

    move-result v1

    .line 77
    .local v1, "isStartInstall":Z
    if-eqz v1, :cond_0

    .line 78
    const-string v4, "PrintSilentInstallTask"

    const-string/jumbo v5, "start silent install print package"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/discovery/PrintSilentInstallTask;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v6, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v1    # "isStartInstall":Z
    .end local v2    # "listener":Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return v4

    .line 81
    .restart local v1    # "isStartInstall":Z
    .restart local v2    # "listener":Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public requireCharging()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public requireDeviceIdle()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public wrapData(Ljava/lang/Object;)[B
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
