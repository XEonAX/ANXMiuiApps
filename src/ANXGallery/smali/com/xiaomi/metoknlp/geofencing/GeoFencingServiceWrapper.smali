.class public Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;
.super Ljava/lang/Object;
.source "GeoFencingServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;,
        Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$BinderServiceHandler;
    }
.end annotation


# instance fields
.field private mBinded:Z

.field private mContext:Landroid/content/Context;

.field private mGeoFencingService:Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;

.field private mHandler:Landroid/os/Handler;

.field private mPendingDelFence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingFence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mTryCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v2, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mBinded:Z

    .line 35
    iput v2, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mTryCount:I

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mPendingFence:Ljava/util/List;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mPendingDelFence:Ljava/util/List;

    .line 297
    new-instance v1, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$1;-><init>(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)V

    iput-object v1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 45
    iput-object p1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mContext:Landroid/content/Context;

    .line 46
    iput-boolean v2, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mBinded:Z

    .line 47
    invoke-virtual {p0, p1}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->bindService(Landroid/content/Context;)V

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GeoFencingServiceWrapper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v1, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$BinderServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$BinderServiceHandler;-><init>(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mHandler:Landroid/os/Handler;

    .line 51
    iget-boolean v1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mBinded:Z

    if-nez v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 54
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    .prologue
    .line 26
    iget v0, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mTryCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)I
    .locals 2
    .param p0, "x0"    # Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    .prologue
    .line 26
    iget v0, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mTryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mTryCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mBinded:Z

    return v0
.end method

.method static synthetic access$300(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->registerPendingFence()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->unregisterPendingFence()V

    return-void
.end method

.method static synthetic access$602(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;)Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;
    .param p1, "x1"    # Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mGeoFencingService:Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;

    return-object p1
.end method

.method private registerPendingFence()V
    .locals 15

    .prologue
    .line 105
    iget-object v1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mPendingFence:Ljava/util/List;

    if-nez v1, :cond_1

    const/4 v14, 0x0

    .line 106
    .local v14, "size":I
    :goto_0
    const-string v1, "GeoFencingServiceWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "try registerPendingFence size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mPendingFence:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;

    .line 108
    .local v12, "fence":Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;
    if-eqz v12, :cond_0

    iget-object v1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mGeoFencingService:Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;

    if-eqz v1, :cond_0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mGeoFencingService:Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;

    iget-wide v2, v12, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;->mLatitude:D

    iget-wide v4, v12, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;->mLongitude:D

    iget v6, v12, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;->mRadius:F

    iget-wide v7, v12, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;->mExpiration:J

    iget-object v9, v12, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;->mPackageName:Ljava/lang/String;

    iget-object v10, v12, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;->mDescribe:Ljava/lang/String;

    iget-object v11, v12, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;->mCoordinate:Ljava/lang/String;

    invoke-interface/range {v1 .. v11}, Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;->registerFenceListener(DDFJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GeoFencingServiceWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerPendingFence:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v12    # "fence":Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "size":I
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mPendingFence:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    goto :goto_0

    .line 117
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "size":I
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mPendingFence:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 118
    iget-object v1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mPendingFence:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 120
    :cond_3
    return-void
.end method

.method private unregisterPendingFence()V
    .locals 7

    .prologue
    .line 123
    iget-object v4, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mPendingDelFence:Ljava/util/List;

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 124
    .local v3, "size":I
    :goto_0
    const-string v4, "GeoFencingServiceWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "try unregisterPendingFence size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v4, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mPendingDelFence:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;

    .line 126
    .local v1, "fence":Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mGeoFencingService:Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;

    if-eqz v4, :cond_0

    .line 128
    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mGeoFencingService:Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;

    iget-object v5, v1, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;->mPackageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;->mDescribe:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;->unregisterFenceListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "GeoFencingServiceWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unregisterPendingFence:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 123
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "fence":Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "size":I
    :cond_1
    iget-object v4, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mPendingDelFence:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 134
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "size":I
    :cond_2
    iget-object v4, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mPendingDelFence:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 135
    iget-object v4, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mPendingDelFence:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 137
    :cond_3
    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    iget-boolean v2, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mBinded:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mGeoFencingService:Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;

    if-nez v2, :cond_3

    .line 268
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.metoknlp.GeoFencingService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.xiaomi.metoknlp"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 273
    const-string v2, "GeoFencingServiceWrapper"

    const-string v3, "Can\'t bind GeoFencingService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mBinded:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "GeoFencingServiceWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_2
    :try_start_1
    const-string v2, "GeoFencingServiceWrapper"

    const-string v3, "GeoFencingService started"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mBinded:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 283
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v2, "GeoFencingServiceWrapper"

    const-string v3, "GeoFencingService already started"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerFenceListener(Landroid/content/Context;DDFJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # F
    .param p7, "expiration"    # J
    .param p9, "packageName"    # Ljava/lang/String;
    .param p10, "describe"    # Ljava/lang/String;
    .param p11, "coordinate"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->bindService(Landroid/content/Context;)V

    .line 208
    iget-object v1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mGeoFencingService:Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;

    if-eqz v1, :cond_0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mGeoFencingService:Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-interface/range {v1 .. v11}, Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;->registerFenceListener(DDFJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    const-string v1, "GeoFencingServiceWrapper"

    const-string v2, "calling registerFenceListener success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v12

    .line 212
    .local v12, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "GeoFencingService has died"

    invoke-direct {v1, v2, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 216
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "GeoFencingServiceWrapper"

    const-string v2, "registerFenceListener service not ready, add to pending list."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;

    move-object v1, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;-><init>(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;DDFJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .local v0, "pf":Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;
    iget-object v1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mPendingFence:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unregisterFenceListener(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "describe"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-virtual/range {p0 .. p1}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->bindService(Landroid/content/Context;)V

    .line 237
    iget-object v3, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mGeoFencingService:Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;

    if-eqz v3, :cond_0

    .line 239
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mGeoFencingService:Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v3, v0, v1}, Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;->unregisterFenceListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    const-string v3, "GeoFencingServiceWrapper"

    const-string v4, "calling unregisterFenceListener success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v14

    .line 241
    .local v14, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "GeoFencingService has died"

    invoke-direct {v3, v4, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 245
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v3, "GeoFencingServiceWrapper"

    const-string/jumbo v4, "unregisterFenceListener service not ready, add to pending list."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v2, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const-string v13, ""

    move-object v3, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v2 .. v13}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;-><init>(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;DDFJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v2, "pf":Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;
    iget-object v3, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->mPendingDelFence:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
