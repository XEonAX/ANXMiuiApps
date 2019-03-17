.class public Lcom/miui/gallery/projection/ConnectController;
.super Ljava/lang/Object;
.source "ConnectController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;,
        Lcom/miui/gallery/projection/ConnectController$ConnectListener;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/miui/gallery/projection/ConnectController;


# instance fields
.field private mConnectListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/miui/gallery/projection/ConnectController$ConnectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCurConnectedDevice:Ljava/lang/String;

.field private mCurrentIndex:I

.field private mCurrentPhoto:Ljava/lang/String;

.field private mDataSource:Lcom/milink/api/v1/MilinkClientManagerDataSource;

.field private mDelayConnect:Ljava/lang/Runnable;

.field private mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

.field private mDeviceOpen:Z

.field private mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsFirstConnected:Z

.field private mMediaPlayListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

.field private mPhotoServerConnected:Z

.field private mRefreshDevices:Ljava/lang/Runnable;

.field private mSlideShowTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSlidingWindow:Lcom/miui/gallery/projection/SlidingWindow;

.field private mWaitConnectDevice:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v1, p0, Lcom/miui/gallery/projection/ConnectController;->mDeviceOpen:Z

    .line 55
    iput-boolean v1, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoServerConnected:Z

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mSlideShowTypes:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Lcom/miui/gallery/projection/SlidingWindow;

    invoke-direct {v0}, Lcom/miui/gallery/projection/SlidingWindow;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mSlidingWindow:Lcom/miui/gallery/projection/SlidingWindow;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mCurrentPhoto:Ljava/lang/String;

    .line 65
    iput v1, p0, Lcom/miui/gallery/projection/ConnectController;->mCurrentIndex:I

    .line 67
    iput-boolean v1, p0, Lcom/miui/gallery/projection/ConnectController;->mIsFirstConnected:Z

    .line 69
    iput-object v2, p0, Lcom/miui/gallery/projection/ConnectController;->mWaitConnectDevice:Ljava/lang/String;

    .line 70
    iput-object v2, p0, Lcom/miui/gallery/projection/ConnectController;->mCurConnectedDevice:Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/miui/gallery/projection/ConnectController$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/projection/ConnectController$1;-><init>(Lcom/miui/gallery/projection/ConnectController;)V

    iput-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mHandler:Landroid/os/Handler;

    .line 465
    new-instance v0, Lcom/miui/gallery/projection/ConnectController$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/projection/ConnectController$4;-><init>(Lcom/miui/gallery/projection/ConnectController;)V

    iput-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mDataSource:Lcom/milink/api/v1/MilinkClientManagerDataSource;

    .line 479
    new-instance v0, Lcom/miui/gallery/projection/ConnectController$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/projection/ConnectController$5;-><init>(Lcom/miui/gallery/projection/ConnectController;)V

    iput-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    .line 129
    new-instance v0, Lcom/miui/gallery/projection/ConnectController$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/projection/ConnectController$2;-><init>(Lcom/miui/gallery/projection/ConnectController;)V

    iput-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mDelayConnect:Ljava/lang/Runnable;

    .line 136
    new-instance v0, Lcom/miui/gallery/projection/ConnectController$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/projection/ConnectController$3;-><init>(Lcom/miui/gallery/projection/ConnectController;)V

    iput-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mRefreshDevices:Ljava/lang/Runnable;

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mConnectListeners:Ljava/util/Set;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mDevices:Ljava/util/HashMap;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mMediaPlayListeners:Ljava/util/List;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/projection/ConnectController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/projection/ConnectController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/miui/gallery/projection/ConnectController;->doDeviceAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/projection/ConnectController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/projection/ConnectController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/miui/gallery/projection/ConnectController;->doDeviceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/projection/ConnectController;)Lcom/milink/api/v1/MilinkClientManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/projection/ConnectController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/projection/ConnectController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/projection/ConnectController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mCurrentPhoto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/projection/ConnectController;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/projection/ConnectController;

    .prologue
    .line 35
    iget v0, p0, Lcom/miui/gallery/projection/ConnectController;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/projection/ConnectController;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/projection/ConnectController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/projection/ConnectController;->showPhoto(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/projection/ConnectController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/projection/ConnectController;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/miui/gallery/projection/ConnectController;->doPhotoConnectResponse(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/gallery/projection/ConnectController;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/projection/ConnectController;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/gallery/projection/ConnectController;->setPhotoServerDisconnect()V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/gallery/projection/ConnectController;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/projection/ConnectController;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/gallery/projection/ConnectController;->doPhotoConnectRelease()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/gallery/projection/ConnectController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/projection/ConnectController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mMediaPlayListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/projection/ConnectController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/projection/ConnectController;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/miui/gallery/projection/ConnectController;->disconnectBigShow(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/projection/ConnectController;)Lcom/miui/gallery/projection/SlidingWindow;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/projection/ConnectController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mSlidingWindow:Lcom/miui/gallery/projection/SlidingWindow;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/projection/ConnectController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/projection/ConnectController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/projection/ConnectController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/projection/ConnectController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/projection/ConnectController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/projection/ConnectController;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoServerConnected:Z

    return v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/projection/ConnectController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/projection/ConnectController;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoServerConnected:Z

    return p1
.end method

.method static synthetic access$702(Lcom/miui/gallery/projection/ConnectController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/projection/ConnectController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/miui/gallery/projection/ConnectController;->mCurConnectedDevice:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/gallery/projection/ConnectController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/projection/ConnectController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mWaitConnectDevice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/projection/ConnectController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/projection/ConnectController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/miui/gallery/projection/ConnectController;->mWaitConnectDevice:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/miui/gallery/projection/ConnectController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/projection/ConnectController;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/miui/gallery/projection/ConnectController;->mIsFirstConnected:Z

    return p1
.end method

.method private deviceOpened()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/miui/gallery/projection/ConnectController;->mDeviceOpen:Z

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private disconnectBigShow(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 349
    const-string v0, "ConnectController"

    const-string/jumbo v1, "~~~disconnectBigShow"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-direct {p0}, Lcom/miui/gallery/projection/ConnectController;->removePostDisonnectListener()V

    .line 353
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mConnectListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/projection/ConnectController;->setPhotoServerDisconnect()V

    .line 356
    invoke-direct {p0}, Lcom/miui/gallery/projection/ConnectController;->releasePhotoManager()V

    .line 358
    monitor-enter p0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v0, :cond_1

    .line 360
    const-string v0, "ConnectController"

    const-string v1, "set device close"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/projection/ConnectController;->mDeviceOpen:Z

    .line 363
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->close()V

    .line 365
    :cond_1
    monitor-exit p0

    .line 367
    :cond_2
    return-void

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doDeviceAdded(Ljava/lang/String;)V
    .locals 3
    .param p1, "newDevice"    # Ljava/lang/String;

    .prologue
    .line 416
    iget-object v2, p0, Lcom/miui/gallery/projection/ConnectController;->mConnectListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 417
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/projection/ConnectController$ConnectListener;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 418
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/projection/ConnectController$ConnectListener;

    .line 419
    .local v1, "listener":Lcom/miui/gallery/projection/ConnectController$ConnectListener;
    if-eqz v1, :cond_0

    .line 420
    invoke-interface {v1, p1}, Lcom/miui/gallery/projection/ConnectController$ConnectListener;->onDevicesAdded(Ljava/lang/String;)V

    goto :goto_0

    .line 423
    .end local v1    # "listener":Lcom/miui/gallery/projection/ConnectController$ConnectListener;
    :cond_1
    return-void
.end method

.method private doDeviceAvailable(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, "deviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/miui/gallery/projection/ConnectController;->mConnectListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 407
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/projection/ConnectController$ConnectListener;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/projection/ConnectController$ConnectListener;

    .line 409
    .local v1, "listener":Lcom/miui/gallery/projection/ConnectController$ConnectListener;
    if-eqz v1, :cond_0

    .line 410
    invoke-interface {v1, p1}, Lcom/miui/gallery/projection/ConnectController$ConnectListener;->onDevicesAvailable(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 413
    .end local v1    # "listener":Lcom/miui/gallery/projection/ConnectController$ConnectListener;
    :cond_1
    return-void
.end method

.method private doDeviceRefresh(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .param p2, "curDevice"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "deviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/miui/gallery/projection/ConnectController;->mConnectListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 437
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/projection/ConnectController$ConnectListener;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 438
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/projection/ConnectController$ConnectListener;

    .line 439
    .local v1, "listener":Lcom/miui/gallery/projection/ConnectController$ConnectListener;
    if-eqz v1, :cond_0

    .line 440
    invoke-interface {v1, p1, p2}, Lcom/miui/gallery/projection/ConnectController$ConnectListener;->onDeviceRefresh(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 443
    .end local v1    # "listener":Lcom/miui/gallery/projection/ConnectController$ConnectListener;
    :cond_1
    return-void
.end method

.method private doDeviceRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1, "removedDevice"    # Ljava/lang/String;

    .prologue
    .line 426
    iget-object v2, p0, Lcom/miui/gallery/projection/ConnectController;->mConnectListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 427
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/projection/ConnectController$ConnectListener;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/projection/ConnectController$ConnectListener;

    .line 429
    .local v1, "listener":Lcom/miui/gallery/projection/ConnectController$ConnectListener;
    if-eqz v1, :cond_0

    .line 430
    invoke-interface {v1, p1}, Lcom/miui/gallery/projection/ConnectController$ConnectListener;->onDeviceRemoved(Ljava/lang/String;)V

    goto :goto_0

    .line 433
    .end local v1    # "listener":Lcom/miui/gallery/projection/ConnectController$ConnectListener;
    :cond_1
    return-void
.end method

.method private doPhotoConnectRelease()V
    .locals 3

    .prologue
    .line 456
    iget-object v2, p0, Lcom/miui/gallery/projection/ConnectController;->mConnectListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 457
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/projection/ConnectController$ConnectListener;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 458
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/projection/ConnectController$ConnectListener;

    .line 459
    .local v1, "listener":Lcom/miui/gallery/projection/ConnectController$ConnectListener;
    if-eqz v1, :cond_0

    .line 460
    invoke-interface {v1}, Lcom/miui/gallery/projection/ConnectController$ConnectListener;->onPhotoConnectReleased()V

    goto :goto_0

    .line 463
    .end local v1    # "listener":Lcom/miui/gallery/projection/ConnectController$ConnectListener;
    :cond_1
    return-void
.end method

.method private doPhotoConnectResponse(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 446
    iget-object v2, p0, Lcom/miui/gallery/projection/ConnectController;->mConnectListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 447
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/projection/ConnectController$ConnectListener;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/projection/ConnectController$ConnectListener;

    .line 449
    .local v1, "listener":Lcom/miui/gallery/projection/ConnectController$ConnectListener;
    if-eqz v1, :cond_0

    .line 450
    invoke-interface {v1, p1}, Lcom/miui/gallery/projection/ConnectController$ConnectListener;->onPhotoConnectResponse(I)V

    goto :goto_0

    .line 453
    .end local v1    # "listener":Lcom/miui/gallery/projection/ConnectController$ConnectListener;
    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/projection/ConnectController;
    .locals 2

    .prologue
    .line 121
    const-class v1, Lcom/miui/gallery/projection/ConnectController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/projection/ConnectController;->mInstance:Lcom/miui/gallery/projection/ConnectController;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/miui/gallery/projection/ConnectController;

    invoke-direct {v0}, Lcom/miui/gallery/projection/ConnectController;-><init>()V

    sput-object v0, Lcom/miui/gallery/projection/ConnectController;->mInstance:Lcom/miui/gallery/projection/ConnectController;

    .line 125
    :cond_0
    sget-object v0, Lcom/miui/gallery/projection/ConnectController;->mInstance:Lcom/miui/gallery/projection/ConnectController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private photoServerOpen()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoServerConnected:Z

    return v0
.end method

.method private releasePhotoManager()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->stopShow()Lcom/milink/api/v1/type/ReturnCode;

    .line 274
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->disconnect()Lcom/milink/api/v1/type/ReturnCode;

    .line 276
    :cond_0
    return-void
.end method

.method private removePostDisonnectListener()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gallery/projection/ConnectController;->mDelayConnect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 341
    return-void
.end method

.method private setPhotoServerDisconnect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoServerConnected:Z

    .line 198
    iput-object v1, p0, Lcom/miui/gallery/projection/ConnectController;->mWaitConnectDevice:Ljava/lang/String;

    .line 199
    iput-object v1, p0, Lcom/miui/gallery/projection/ConnectController;->mCurConnectedDevice:Ljava/lang/String;

    .line 200
    return-void
.end method

.method private showPhoto(Ljava/lang/String;I)I
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v1, -0x1

    .line 256
    invoke-direct {p0}, Lcom/miui/gallery/projection/ConnectController;->photoServerOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    const-string v2, "ConnectController"

    const-string v3, "photo not connected"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_0
    :goto_0
    return v1

    .line 260
    :cond_1
    const-string v2, "ConnectController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the photo is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    if-eqz p1, :cond_0

    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v2, p1}, Lcom/milink/api/v1/MilinkClientManager;->show(Ljava/lang/String;)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v2

    sget-object v3, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "ConnectController"

    const-string v3, "MilinkClientManager show exception"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public connectPhotoServer(Ljava/lang/String;)I
    .locals 5
    .param p1, "serName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 211
    invoke-direct {p0}, Lcom/miui/gallery/projection/ConnectController;->deviceOpened()Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v1

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/projection/ConnectController;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    .local v0, "device":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 220
    iget-boolean v2, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoServerConnected:Z

    if-eqz v2, :cond_3

    .line 221
    const-string v2, "ConnectController"

    const-string v3, "connect to another device"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v2}, Lcom/milink/api/v1/MilinkClientManager;->disconnect()Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v2

    sget-object v3, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    if-eq v2, v3, :cond_2

    .line 223
    const-string v2, "ConnectController"

    const-string v3, "disconnect error"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/projection/ConnectController;->setPhotoServerDisconnect()V

    .line 230
    :cond_3
    const-string v2, "ConnectController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect to server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " photo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/projection/ConnectController;->mCurrentPhoto:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    const/16 v3, 0x1770

    invoke-virtual {v2, v0, v3}, Lcom/milink/api/v1/MilinkClientManager;->connect(Ljava/lang/String;I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v2

    sget-object v3, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    if-eq v2, v3, :cond_4

    .line 232
    const-string v2, "ConnectController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_4
    iput-object p1, p0, Lcom/miui/gallery/projection/ConnectController;->mWaitConnectDevice:Ljava/lang/String;

    .line 236
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect(Lcom/miui/gallery/projection/ConnectController$ConnectListener;Z)V
    .locals 2
    .param p1, "listener"    # Lcom/miui/gallery/projection/ConnectController$ConnectListener;
    .param p2, "force"    # Z

    .prologue
    .line 294
    const-string v0, "ConnectController"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0, p1}, Lcom/miui/gallery/projection/ConnectController;->unregistConnectListener(Lcom/miui/gallery/projection/ConnectController$ConnectListener;)V

    .line 298
    iget-boolean v0, p0, Lcom/miui/gallery/projection/ConnectController;->mDeviceOpen:Z

    if-nez v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/projection/ConnectController;->doPhotoConnectRelease()V

    .line 302
    invoke-direct {p0, p2}, Lcom/miui/gallery/projection/ConnectController;->disconnectBigShow(Z)V

    goto :goto_0
.end method

.method public getCurConnectedDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mCurConnectedDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->getPlaybackProgress()I

    move-result v0

    .line 651
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/miui/gallery/projection/ConnectController;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 376
    :cond_0
    return-object v0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "duration":I
    iget-object v1, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v1, :cond_0

    .line 641
    iget-object v1, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v1}, Lcom/milink/api/v1/MilinkClientManager;->getPlaybackDuration()I

    move-result v0

    .line 644
    :cond_0
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/miui/gallery/projection/ConnectController;->mDeviceOpen:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 620
    iget-object v2, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v2, :cond_1

    .line 621
    iget-object v2, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v2}, Lcom/milink/api/v1/MilinkClientManager;->getPlaybackRate()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 623
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 621
    goto :goto_0

    :cond_1
    move v0, v1

    .line 623
    goto :goto_0
.end method

.method public open()V
    .locals 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/miui/gallery/projection/ConnectController;->mDeviceOpen:Z

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-nez v0, :cond_1

    .line 152
    new-instance v0, Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/milink/api/v1/MilinkClientManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    .line 153
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/BuildUtil;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/milink/api/v1/MilinkClientManager;->setDeviceName(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    iget-object v1, p0, Lcom/miui/gallery/projection/ConnectController;->mDataSource:Lcom/milink/api/v1/MilinkClientManagerDataSource;

    invoke-virtual {v0, v1}, Lcom/milink/api/v1/MilinkClientManager;->setDataSource(Lcom/milink/api/v1/MilinkClientManagerDataSource;)V

    .line 155
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    iget-object v1, p0, Lcom/miui/gallery/projection/ConnectController;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    invoke-virtual {v0, v1}, Lcom/milink/api/v1/MilinkClientManager;->setDelegate(Lcom/milink/api/v1/MilinkClientManagerDelegate;)V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->open()V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/projection/ConnectController;->mDeviceOpen:Z

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/milink/api/v1/MilinkClientManager;->setPlaybackRate(I)Lcom/milink/api/v1/type/ReturnCode;

    .line 636
    :cond_0
    return-void
.end method

.method public playVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 605
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-nez v0, :cond_1

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 611
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Lcom/milink/api/v1/type/MediaType;->Video:Lcom/milink/api/v1/type/MediaType;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/milink/api/v1/MilinkClientManager;->startPlay(Ljava/lang/String;Ljava/lang/String;IDLcom/milink/api/v1/type/MediaType;)Lcom/milink/api/v1/type/ReturnCode;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 613
    :catch_0
    move-exception v7

    .line 614
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public queryDevices(Z)V
    .locals 2
    .param p1, "refresh"    # Z

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/miui/gallery/projection/ConnectController;->getDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    .line 381
    .local v0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 385
    :cond_0
    if-eqz p1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/miui/gallery/projection/ConnectController;->mCurConnectedDevice:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/projection/ConnectController;->doDeviceRefresh(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/gallery/projection/ConnectController;->doDeviceAvailable(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public refreshDevices()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 185
    invoke-direct {p0}, Lcom/miui/gallery/projection/ConnectController;->deviceOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    .line 188
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/projection/ConnectController;->queryDevices(Z)V

    goto :goto_0
.end method

.method public registConnectListener(Lcom/miui/gallery/projection/ConnectController$ConnectListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/miui/gallery/projection/ConnectController$ConnectListener;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/miui/gallery/projection/ConnectController;->removePostDisonnectListener()V

    .line 163
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mConnectListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gallery/projection/ConnectController;->mRefreshDevices:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-void
.end method

.method public registMediaPlayListener(Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mMediaPlayListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_0
    return-void
.end method

.method public release()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 279
    const-string v0, "ConnectController"

    const-string v1, "do release"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-boolean v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoServerConnected:Z

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return v2

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/projection/ConnectController;->setPhotoServerDisconnect()V

    .line 286
    invoke-direct {p0}, Lcom/miui/gallery/projection/ConnectController;->releasePhotoManager()V

    .line 287
    invoke-direct {p0}, Lcom/miui/gallery/projection/ConnectController;->doPhotoConnectRelease()V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/milink/api/v1/MilinkClientManager;->setPlaybackRate(I)Lcom/milink/api/v1/type/ReturnCode;

    .line 630
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 655
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0, p1}, Lcom/milink/api/v1/MilinkClientManager;->setPlaybackProgress(I)Lcom/milink/api/v1/type/ReturnCode;

    .line 658
    :cond_0
    return-void
.end method

.method public showType(ZI)I
    .locals 6
    .param p1, "isSlideShow"    # Z
    .param p2, "curIndex"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 240
    invoke-direct {p0}, Lcom/miui/gallery/projection/ConnectController;->photoServerOpen()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 251
    :cond_0
    :goto_0
    return v2

    .line 244
    :cond_1
    if-eqz p1, :cond_0

    .line 245
    iput p2, p0, Lcom/miui/gallery/projection/ConnectController;->mCurrentIndex:I

    .line 246
    iget-object v4, p0, Lcom/miui/gallery/projection/ConnectController;->mSlidingWindow:Lcom/miui/gallery/projection/SlidingWindow;

    iget v5, p0, Lcom/miui/gallery/projection/ConnectController;->mCurrentIndex:I

    invoke-virtual {v4, v5}, Lcom/miui/gallery/projection/SlidingWindow;->onCurrentIndexChanged(I)V

    .line 247
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$SlideShow;->getSlideShowInterval()I

    move-result v4

    mul-int/lit16 v0, v4, 0x3e8

    .line 248
    .local v0, "interval":I
    const/16 v4, 0xbb8

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 249
    .local v1, "slideDuration":I
    iget-object v4, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    sget-object v5, Lcom/milink/api/v1/type/SlideMode;->Recyle:Lcom/milink/api/v1/type/SlideMode;

    invoke-virtual {v4, v1, v5}, Lcom/milink/api/v1/MilinkClientManager;->startSlideshow(ILcom/milink/api/v1/type/SlideMode;)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v4

    sget-object v5, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->stopPlay()Lcom/milink/api/v1/type/ReturnCode;

    .line 664
    :cond_0
    return-void
.end method

.method public syncRemoteView(FFFFFFF)V
    .locals 9
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "sw"    # F
    .param p4, "sh"    # F
    .param p5, "iw"    # F
    .param p6, "ih"    # F
    .param p7, "s"    # F

    .prologue
    .line 402
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mPhotoManager:Lcom/milink/api/v1/MilinkClientManager;

    iget-object v1, p0, Lcom/miui/gallery/projection/ConnectController;->mCurrentPhoto:Ljava/lang/String;

    float-to-int v2, p1

    float-to-int v3, p2

    float-to-int v4, p3

    float-to-int v5, p4

    float-to-int v6, p5

    float-to-int v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/milink/api/v1/MilinkClientManager;->zoomPhoto(Ljava/lang/String;IIIIIIF)Lcom/milink/api/v1/type/ReturnCode;

    .line 403
    return-void
.end method

.method public unregistConnectListener(Lcom/miui/gallery/projection/ConnectController$ConnectListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/projection/ConnectController$ConnectListener;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mConnectListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method public updateCurrentFolder(Lcom/miui/gallery/model/BaseDataSet;)V
    .locals 1
    .param p1, "mediaSet"    # Lcom/miui/gallery/model/BaseDataSet;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mSlidingWindow:Lcom/miui/gallery/projection/SlidingWindow;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/projection/SlidingWindow;->setMediaSet(Lcom/miui/gallery/model/BaseDataSet;)V

    .line 329
    return-void
.end method

.method public updateCurrentPhoto(Ljava/lang/String;I)V
    .locals 2
    .param p1, "curPhoto"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 316
    iput-object p1, p0, Lcom/miui/gallery/projection/ConnectController;->mCurrentPhoto:Ljava/lang/String;

    .line 317
    iput p2, p0, Lcom/miui/gallery/projection/ConnectController;->mCurrentIndex:I

    .line 321
    invoke-virtual {p0}, Lcom/miui/gallery/projection/ConnectController;->getCurConnectedDevice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController;->mSlidingWindow:Lcom/miui/gallery/projection/SlidingWindow;

    iget v1, p0, Lcom/miui/gallery/projection/ConnectController;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/projection/SlidingWindow;->onCurrentIndexChanged(I)V

    .line 323
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/projection/ConnectController;->showPhoto(Ljava/lang/String;I)I

    .line 325
    :cond_0
    return-void
.end method
