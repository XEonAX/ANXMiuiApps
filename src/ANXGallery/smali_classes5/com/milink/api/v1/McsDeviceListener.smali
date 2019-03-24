.class public Lcom/milink/api/v1/McsDeviceListener;
.super Lcom/milink/api/v1/aidl/IMcsDeviceListener$Stub;
.source "McsDeviceListener.java"


# instance fields
.field private mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/milink/api/v1/aidl/IMcsDeviceListener$Stub;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/milink/api/v1/McsDeviceListener;->mHandler:Landroid/os/Handler;

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/milink/api/v1/McsDeviceListener;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    return-void
.end method

.method static synthetic access$000(Lcom/milink/api/v1/McsDeviceListener;)Lcom/milink/api/v1/MilinkClientManagerDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/milink/api/v1/McsDeviceListener;

    .line 10
    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    return-object v0
.end method


# virtual methods
.method public onDeviceFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    .line 23
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDeviceListener$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/milink/api/v1/McsDeviceListener$1;-><init>(Lcom/milink/api/v1/McsDeviceListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    return-void
.end method

.method public onDeviceLost(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    .line 38
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDeviceListener$2;

    invoke-direct {v1, p0, p1}, Lcom/milink/api/v1/McsDeviceListener$2;-><init>(Lcom/milink/api/v1/McsDeviceListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method

.method public setDelegate(Lcom/milink/api/v1/MilinkClientManagerDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/milink/api/v1/MilinkClientManagerDelegate;

    .line 16
    iput-object p1, p0, Lcom/milink/api/v1/McsDeviceListener;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    .line 17
    return-void
.end method
