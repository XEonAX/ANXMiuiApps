.class public Lcom/milink/api/v1/MilinkClientManager;
.super Ljava/lang/Object;
.source "MilinkClientManager.java"

# interfaces
.implements Lcom/milink/api/v1/IMilinkClientManager;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

.field private mDeviceName:Ljava/lang/String;

.field private mIsbound:Z

.field private mMcsDataSource:Lcom/milink/api/v1/McsDataSource;

.field private mMcsDelegate:Lcom/milink/api/v1/McsDelegate;

.field private mMcsDeviceListener:Lcom/milink/api/v1/McsDeviceListener;

.field private mService:Lcom/milink/api/v1/aidl/IMcs;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/milink/api/v1/MilinkClientManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    .line 26
    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    .line 28
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mIsbound:Z

    .line 30
    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mDeviceName:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDataSource:Lcom/milink/api/v1/McsDataSource;

    .line 32
    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDelegate:Lcom/milink/api/v1/McsDelegate;

    .line 33
    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDeviceListener:Lcom/milink/api/v1/McsDeviceListener;

    .line 92
    new-instance v0, Lcom/milink/api/v1/MilinkClientManager$1;

    invoke-direct {v0, p0}, Lcom/milink/api/v1/MilinkClientManager$1;-><init>(Lcom/milink/api/v1/MilinkClientManager;)V

    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 36
    iput-object p1, p0, Lcom/milink/api/v1/MilinkClientManager;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/milink/api/v1/McsDelegate;

    invoke-direct {v0}, Lcom/milink/api/v1/McsDelegate;-><init>()V

    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDelegate:Lcom/milink/api/v1/McsDelegate;

    .line 38
    new-instance v0, Lcom/milink/api/v1/McsDataSource;

    invoke-direct {v0}, Lcom/milink/api/v1/McsDataSource;-><init>()V

    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDataSource:Lcom/milink/api/v1/McsDataSource;

    .line 39
    new-instance v0, Lcom/milink/api/v1/McsDeviceListener;

    invoke-direct {v0}, Lcom/milink/api/v1/McsDeviceListener;-><init>()V

    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDeviceListener:Lcom/milink/api/v1/McsDeviceListener;

    .line 40
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/milink/api/v1/MilinkClientManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/MilinkClientManagerDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/milink/api/v1/MilinkClientManager;

    .line 20
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;
    .locals 1
    .param p0, "x0"    # Lcom/milink/api/v1/MilinkClientManager;

    .line 20
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    return-object v0
.end method

.method static synthetic access$202(Lcom/milink/api/v1/MilinkClientManager;Lcom/milink/api/v1/aidl/IMcs;)Lcom/milink/api/v1/aidl/IMcs;
    .locals 0
    .param p0, "x0"    # Lcom/milink/api/v1/MilinkClientManager;
    .param p1, "x1"    # Lcom/milink/api/v1/aidl/IMcs;

    .line 20
    iput-object p1, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    return-object p1
.end method

.method static synthetic access$300(Lcom/milink/api/v1/MilinkClientManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/milink/api/v1/MilinkClientManager;

    .line 20
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/milink/api/v1/MilinkClientManager;

    .line 20
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDelegate:Lcom/milink/api/v1/McsDelegate;

    return-object v0
.end method

.method static synthetic access$500(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDataSource;
    .locals 1
    .param p0, "x0"    # Lcom/milink/api/v1/MilinkClientManager;

    .line 20
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDataSource:Lcom/milink/api/v1/McsDataSource;

    return-object v0
.end method

.method static synthetic access$600(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDeviceListener;
    .locals 1
    .param p0, "x0"    # Lcom/milink/api/v1/MilinkClientManager;

    .line 20
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDeviceListener:Lcom/milink/api/v1/McsDeviceListener;

    return-object v0
.end method

.method private bindMilinkClientService()V
    .locals 4

    .line 76
    iget-boolean v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mIsbound:Z

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/milink/api/v1/aidl/IMcs;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.milink.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mIsbound:Z

    .line 83
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;
    .locals 1
    .param p1, "returnValue"    # I

    .line 499
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 501
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    packed-switch p1, :pswitch_data_0

    .line 527
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->Error:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0

    .line 503
    :pswitch_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 504
    goto :goto_0

    .line 507
    :pswitch_1
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->Error:Lcom/milink/api/v1/type/ReturnCode;

    .line 508
    goto :goto_0

    .line 511
    :pswitch_2
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->InvalidParams:Lcom/milink/api/v1/type/ReturnCode;

    .line 512
    goto :goto_0

    .line 515
    :pswitch_3
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->InvalidUrl:Lcom/milink/api/v1/type/ReturnCode;

    .line 516
    goto :goto_0

    .line 519
    :pswitch_4
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    .line 520
    goto :goto_0

    .line 523
    :pswitch_5
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotSupport:Lcom/milink/api/v1/type/ReturnCode;

    .line 524
    nop

    .line 531
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private unbindMilinkClientService()V
    .locals 2

    .line 86
    iget-boolean v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mIsbound:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mIsbound:Z

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/milink/api/v1/MilinkClientManager;->unbindMilinkClientService()V

    .line 73
    return-void
.end method

.method public connect(Ljava/lang/String;I)Lcom/milink/api/v1/type/ReturnCode;
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .line 146
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    .line 147
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object v0

    .line 149
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 152
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v1, p1, p2}, Lcom/milink/api/v1/aidl/IMcs;->connect(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 156
    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 155
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    .line 158
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public disconnect()Lcom/milink/api/v1/type/ReturnCode;
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    .line 164
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object v0

    .line 166
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 169
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v1}, Lcom/milink/api/v1/aidl/IMcs;->disconnect()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 173
    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 172
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    .line 175
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/milink/api/v1/MilinkClientManager;->close()V

    .line 45
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 46
    return-void
.end method

.method public getPlaybackDuration()I
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 433
    return v1

    .line 435
    :cond_0
    move v0, v1

    .line 438
    .local v0, "duration":I
    :try_start_0
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v1}, Lcom/milink/api/v1/aidl/IMcs;->getPlaybackDuration()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 441
    goto :goto_0

    .line 439
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 443
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public getPlaybackProgress()I
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 417
    return v1

    .line 419
    :cond_0
    move v0, v1

    .line 422
    .local v0, "position":I
    :try_start_0
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v1}, Lcom/milink/api/v1/aidl/IMcs;->getPlaybackProgress()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 425
    goto :goto_0

    .line 423
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 427
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public getPlaybackRate()I
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 384
    return v1

    .line 386
    :cond_0
    move v0, v1

    .line 389
    .local v0, "rate":I
    :try_start_0
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v1}, Lcom/milink/api/v1/aidl/IMcs;->getPlaybackRate()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 392
    goto :goto_0

    .line 390
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 394
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public getVolume()I
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 466
    return v1

    .line 468
    :cond_0
    move v0, v1

    .line 471
    .local v0, "volume":I
    :try_start_0
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v1}, Lcom/milink/api/v1/aidl/IMcs;->getVolume()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 474
    goto :goto_0

    .line 472
    :catch_0
    move-exception v1

    .line 473
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 476
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public open()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/milink/api/v1/MilinkClientManager;->bindMilinkClientService()V

    .line 68
    return-void
.end method

.method public rotatePhoto(Ljava/lang/String;ZF)Lcom/milink/api/v1/type/ReturnCode;
    .locals 2
    .param p1, "photoUri"    # Ljava/lang/String;
    .param p2, "flag"    # Z
    .param p3, "degree"    # F

    .line 483
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    .line 484
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object v0

    .line 486
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 489
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v1, p1, p2, p3}, Lcom/milink/api/v1/aidl/IMcs;->rotatePhoto(Ljava/lang/String;ZF)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 493
    goto :goto_0

    .line 490
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 492
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    .line 495
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public setDataSource(Lcom/milink/api/v1/MilinkClientManagerDataSource;)V
    .locals 1
    .param p1, "dataSource"    # Lcom/milink/api/v1/MilinkClientManagerDataSource;

    .line 55
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDataSource:Lcom/milink/api/v1/McsDataSource;

    invoke-virtual {v0, p1}, Lcom/milink/api/v1/McsDataSource;->setDataSource(Lcom/milink/api/v1/MilinkClientManagerDataSource;)V

    .line 56
    return-void
.end method

.method public setDelegate(Lcom/milink/api/v1/MilinkClientManagerDelegate;)V
    .locals 1
    .param p1, "delegate"    # Lcom/milink/api/v1/MilinkClientManagerDelegate;

    .line 60
    iput-object p1, p0, Lcom/milink/api/v1/MilinkClientManager;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    .line 61
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDelegate:Lcom/milink/api/v1/McsDelegate;

    invoke-virtual {v0, p1}, Lcom/milink/api/v1/McsDelegate;->setDelegate(Lcom/milink/api/v1/MilinkClientManagerDelegate;)V

    .line 62
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDeviceListener:Lcom/milink/api/v1/McsDeviceListener;

    invoke-virtual {v0, p1}, Lcom/milink/api/v1/McsDeviceListener;->setDelegate(Lcom/milink/api/v1/MilinkClientManagerDelegate;)V

    .line 63
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "selfName"    # Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/milink/api/v1/MilinkClientManager;->mDeviceName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setPlaybackProgress(I)Lcom/milink/api/v1/type/ReturnCode;
    .locals 2
    .param p1, "position"    # I

    .line 399
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    .line 400
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object v0

    .line 402
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 405
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v1, p1}, Lcom/milink/api/v1/aidl/IMcs;->setPlaybackProgress(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 409
    goto :goto_0

    .line 406
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 408
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    .line 411
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public setPlaybackRate(I)Lcom/milink/api/v1/type/ReturnCode;
    .locals 2
    .param p1, "rate"    # I

    .line 366
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    .line 367
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object v0

    .line 369
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 372
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v1, p1}, Lcom/milink/api/v1/aidl/IMcs;->setPlaybackRate(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 376
    goto :goto_0

    .line 373
    :catch_0
    move-exception v1

    .line 374
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 375
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    .line 378
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public setVolume(I)Lcom/milink/api/v1/type/ReturnCode;
    .locals 2
    .param p1, "volume"    # I

    .line 448
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    .line 449
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object v0

    .line 451
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 454
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v1, p1}, Lcom/milink/api/v1/aidl/IMcs;->setVolume(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 458
    goto :goto_0

    .line 455
    :catch_0
    move-exception v1

    .line 456
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 457
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    .line 460
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public show(Ljava/lang/String;)Lcom/milink/api/v1/type/ReturnCode;
    .locals 2
    .param p1, "photoUri"    # Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    .line 198
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object v0

    .line 200
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 203
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v1, p1}, Lcom/milink/api/v1/aidl/IMcs;->show(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 209
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->InvalidParams:Lcom/milink/api/v1/type/ReturnCode;

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 204
    :catch_1
    move-exception v1

    .line 205
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 206
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    .line 210
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 212
    :goto_1
    return-object v0
.end method

.method public startPlay(Ljava/lang/String;Ljava/lang/String;IDLcom/milink/api/v1/type/MediaType;)Lcom/milink/api/v1/type/ReturnCode;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "iPosition"    # I
    .param p4, "dPosition"    # D
    .param p6, "type"    # Lcom/milink/api/v1/type/MediaType;

    .line 301
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/milink/api/v1/MilinkClientManager;->startPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLcom/milink/api/v1/type/MediaType;)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v0

    return-object v0
.end method

.method public startPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLcom/milink/api/v1/type/MediaType;)Lcom/milink/api/v1/type/ReturnCode;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "iPosition"    # I
    .param p5, "dPosition"    # D
    .param p7, "type"    # Lcom/milink/api/v1/type/MediaType;

    move-object v1, p0

    .line 307
    iget-object v0, v1, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    .line 308
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object v0

    .line 310
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    move-object v9, v0

    .line 313
    .local v9, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    sget-object v0, Lcom/milink/api/v1/MilinkClientManager$2;->$SwitchMap$com$milink$api$v1$type$MediaType:[I

    invoke-virtual/range {p7 .. p7}, Lcom/milink/api/v1/type/MediaType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 333
    :pswitch_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->InvalidParams:Lcom/milink/api/v1/type/ReturnCode;

    move-object v9, v0

    goto :goto_0

    .line 324
    :pswitch_1
    if-nez p3, :cond_1

    .line 325
    iget-object v2, v1, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v2 .. v7}, Lcom/milink/api/v1/aidl/IMcs;->startPlayVideo(Ljava/lang/String;Ljava/lang/String;ID)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v0

    goto :goto_1

    .line 328
    :cond_1
    iget-object v2, v1, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-interface/range {v2 .. v8}, Lcom/milink/api/v1/aidl/IMcs;->startPlayVideoEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v0

    .line 330
    .end local v9    # "code":Lcom/milink/api/v1/type/ReturnCode;
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    goto :goto_1

    .line 315
    .end local v0    # "code":Lcom/milink/api/v1/type/ReturnCode;
    .restart local v9    # "code":Lcom/milink/api/v1/type/ReturnCode;
    :pswitch_2
    if-nez p3, :cond_2

    .line 316
    iget-object v2, v1, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v2 .. v7}, Lcom/milink/api/v1/aidl/IMcs;->startPlayAudio(Ljava/lang/String;Ljava/lang/String;ID)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v0

    goto :goto_1

    .line 319
    :cond_2
    iget-object v2, v1, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-interface/range {v2 .. v8}, Lcom/milink/api/v1/aidl/IMcs;->startPlayAudioEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v0

    .line 321
    .end local v9    # "code":Lcom/milink/api/v1/type/ReturnCode;
    .restart local v0    # "code":Lcom/milink/api/v1/type/ReturnCode;
    goto :goto_1

    .line 336
    .end local v0    # "code":Lcom/milink/api/v1/type/ReturnCode;
    .restart local v9    # "code":Lcom/milink/api/v1/type/ReturnCode;
    :goto_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->InvalidParams:Lcom/milink/api/v1/type/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v9    # "code":Lcom/milink/api/v1/type/ReturnCode;
    .restart local v0    # "code":Lcom/milink/api/v1/type/ReturnCode;
    :goto_1
    goto :goto_2

    .line 339
    .end local v0    # "code":Lcom/milink/api/v1/type/ReturnCode;
    .restart local v9    # "code":Lcom/milink/api/v1/type/ReturnCode;
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 341
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    .line 344
    .end local v9    # "code":Lcom/milink/api/v1/type/ReturnCode;
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startShow()Lcom/milink/api/v1/type/ReturnCode;
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    .line 181
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object v0

    .line 183
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 186
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v1}, Lcom/milink/api/v1/aidl/IMcs;->startShow()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 190
    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 189
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    .line 192
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public startSlideshow(ILcom/milink/api/v1/type/SlideMode;)Lcom/milink/api/v1/type/ReturnCode;
    .locals 3
    .param p1, "duration"    # I
    .param p2, "type"    # Lcom/milink/api/v1/type/SlideMode;

    .line 265
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    .line 266
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object v0

    .line 268
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 271
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    sget-object v1, Lcom/milink/api/v1/type/SlideMode;->Recyle:Lcom/milink/api/v1/type/SlideMode;

    if-ne p2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 272
    .local v1, "isRecyle":Z
    :goto_0
    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v2, p1, v1}, Lcom/milink/api/v1/aidl/IMcs;->startSlideshow(IZ)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 276
    .end local v1    # "isRecyle":Z
    goto :goto_1

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 275
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    .line 278
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-object v0
.end method

.method public stopPlay()Lcom/milink/api/v1/type/ReturnCode;
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    .line 350
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object v0

    .line 352
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 355
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v1}, Lcom/milink/api/v1/aidl/IMcs;->stopPlay()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 359
    goto :goto_0

    .line 356
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 358
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    .line 361
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public stopShow()Lcom/milink/api/v1/type/ReturnCode;
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    .line 249
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object v0

    .line 251
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 254
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v1}, Lcom/milink/api/v1/aidl/IMcs;->stopShow()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 258
    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 257
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    .line 260
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public stopSlideshow()Lcom/milink/api/v1/type/ReturnCode;
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    .line 284
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object v0

    .line 286
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 289
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v1}, Lcom/milink/api/v1/aidl/IMcs;->stopSlideshow()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 293
    goto :goto_0

    .line 290
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 292
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    .line 295
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public zoomPhoto(Ljava/lang/String;IIIIIIF)Lcom/milink/api/v1/type/ReturnCode;
    .locals 12
    .param p1, "photoUri"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "screenWidth"    # I
    .param p5, "screenHeight"    # I
    .param p6, "orgPhotoWidth"    # I
    .param p7, "orgPhotoHeight"    # I
    .param p8, "scale"    # F

    move-object v1, p0

    .line 224
    iget-object v0, v1, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    .line 225
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object v0

    .line 227
    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    move-object v2, v0

    .line 230
    .local v2, "code":Lcom/milink/api/v1/type/ReturnCode;
    :try_start_0
    iget-object v3, v1, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/milink/api/v1/aidl/IMcs;->zoomPhoto(Ljava/lang/String;IIIIIIF)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v2    # "code":Lcom/milink/api/v1/type/ReturnCode;
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    goto :goto_0

    .line 238
    .end local v0    # "code":Lcom/milink/api/v1/type/ReturnCode;
    .restart local v2    # "code":Lcom/milink/api/v1/type/ReturnCode;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 240
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    .line 243
    .end local v2    # "code":Lcom/milink/api/v1/type/ReturnCode;
    .local v0, "code":Lcom/milink/api/v1/type/ReturnCode;
    :goto_0
    return-object v0
.end method
