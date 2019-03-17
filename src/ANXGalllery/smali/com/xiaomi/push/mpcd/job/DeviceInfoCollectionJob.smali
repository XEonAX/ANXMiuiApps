.class public Lcom/xiaomi/push/mpcd/job/DeviceInfoCollectionJob;
.super Lcom/xiaomi/push/mpcd/job/CollectionJob;
.source "DeviceInfoCollectionJob.java"


# instance fields
.field private androidIdSwitch:Z

.field private androidVcSwitch:Z

.field private androidVnSwitch:Z

.field private operatorSwitch:Z

.field private screenSizeSwitch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZZZZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "period"    # I
    .param p3, "screenSizeSwitch"    # Z
    .param p4, "androidVnSwitch"    # Z
    .param p5, "androidVcSwitch"    # Z
    .param p6, "androidIdSwitch"    # Z
    .param p7, "operatorSwitch"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/mpcd/job/CollectionJob;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-boolean p3, p0, Lcom/xiaomi/push/mpcd/job/DeviceInfoCollectionJob;->screenSizeSwitch:Z

    .line 35
    iput-boolean p4, p0, Lcom/xiaomi/push/mpcd/job/DeviceInfoCollectionJob;->androidVnSwitch:Z

    .line 36
    iput-boolean p5, p0, Lcom/xiaomi/push/mpcd/job/DeviceInfoCollectionJob;->androidVcSwitch:Z

    .line 37
    iput-boolean p6, p0, Lcom/xiaomi/push/mpcd/job/DeviceInfoCollectionJob;->androidIdSwitch:Z

    .line 38
    iput-boolean p7, p0, Lcom/xiaomi/push/mpcd/job/DeviceInfoCollectionJob;->operatorSwitch:Z

    .line 39
    return-void
.end method

.method private getAndroidIdInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    iget-boolean v1, p0, Lcom/xiaomi/push/mpcd/job/DeviceInfoCollectionJob;->androidIdSwitch:Z

    if-nez v1, :cond_0

    .line 100
    const-string v1, "off"

    .line 105
    :goto_0
    return-object v1

    .line 103
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/mpcd/job/DeviceInfoCollectionJob;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, ""

    goto :goto_0
.end method

.method private getAndroidVcInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    iget-boolean v1, p0, Lcom/xiaomi/push/mpcd/job/DeviceInfoCollectionJob;->androidVcSwitch:Z

    if-nez v1, :cond_0

    .line 89
    const-string v1, "off"

    .line 94
    :goto_0
    return-object v1

    .line 92
    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, ""

    goto :goto_0
.end method

.method private getAndroidVnInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-boolean v1, p0, Lcom/xiaomi/push/mpcd/job/DeviceInfoCollectionJob;->androidVnSwitch:Z

    if-nez v1, :cond_0

    .line 78
    const-string v1, "off"

    .line 83
    :goto_0
    return-object v1

    .line 81
    :cond_0
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, ""

    goto :goto_0
.end method

.method private getOperatorInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    iget-boolean v2, p0, Lcom/xiaomi/push/mpcd/job/DeviceInfoCollectionJob;->operatorSwitch:Z

    if-nez v2, :cond_0

    .line 111
    const-string v2, "off"

    .line 117
    :goto_0
    return-object v2

    .line 114
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/push/mpcd/job/DeviceInfoCollectionJob;->context:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 115
    .local v1, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 116
    .end local v1    # "telManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, ""

    goto :goto_0
.end method

.method private getScreenSizeInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 61
    iget-boolean v3, p0, Lcom/xiaomi/push/mpcd/job/DeviceInfoCollectionJob;->screenSizeSwitch:Z

    if-nez v3, :cond_0

    .line 62
    const-string v3, "off"

    .line 72
    :goto_0
    return-object v3

    .line 66
    :cond_0
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 67
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/xiaomi/push/mpcd/job/DeviceInfoCollectionJob;->context:Landroid/content/Context;

    const-string/jumbo v4, "window"

    .line 68
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 69
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 71
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v2    # "windowManager":Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "t":Ljava/lang/Throwable;
    const-string v3, ""

    goto :goto_0
.end method


# virtual methods
.method public collectInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/push/mpcd/job/DeviceInfoCollectionJob;->getScreenSizeInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 54
    invoke-direct {p0}, Lcom/xiaomi/push/mpcd/job/DeviceInfoCollectionJob;->getAndroidVnInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    invoke-direct {p0}, Lcom/xiaomi/push/mpcd/job/DeviceInfoCollectionJob;->getAndroidVcInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    invoke-direct {p0}, Lcom/xiaomi/push/mpcd/job/DeviceInfoCollectionJob;->getAndroidIdInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    invoke-direct {p0}, Lcom/xiaomi/push/mpcd/job/DeviceInfoCollectionJob;->getOperatorInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    return-object v0
.end method

.method public getCollectionType()Lcom/xiaomi/xmpush/thrift/ClientCollectionType;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->DeviceInfoV2:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    return-object v0
.end method

.method public getJobId()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x3

    return v0
.end method
