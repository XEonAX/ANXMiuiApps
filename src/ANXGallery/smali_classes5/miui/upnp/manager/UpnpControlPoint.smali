.class public Lmiui/upnp/manager/UpnpControlPoint;
.super Lmiui/upnp/utils/Binding;
.source "UpnpControlPoint.java"


# static fields
.field private static SVC_NAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String;

.field private static final UPNP_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.upnp"


# instance fields
.field private serviceInstance:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lmiui/upnp/manager/UpnpControlPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/manager/UpnpControlPoint;->TAG:Ljava/lang/String;

    .line 40
    const-class v0, Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/manager/UpnpControlPoint;->SVC_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0, p1}, Lmiui/upnp/utils/Binding;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lmiui/upnp/manager/UpnpControlPoint;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized bind()Z
    .locals 2

    monitor-enter p0

    .line 48
    :try_start_0
    const-string v0, "com.xiaomi.upnp"

    sget-object v1, Lmiui/upnp/manager/UpnpControlPoint;->SVC_NAME:Ljava/lang/String;

    invoke-super {p0, v0, v1}, Lmiui/upnp/utils/Binding;->bind(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lmiui/upnp/manager/UpnpControlPoint;
    throw v0
.end method

.method public invoke(Lmiui/upnp/typedef/device/invocation/ActionInfo;Lmiui/upnp/manager/handler/UpnpInvokeCompletionHandler;)V
    .locals 4
    .param p1, "action"    # Lmiui/upnp/typedef/device/invocation/ActionInfo;
    .param p2, "handler"    # Lmiui/upnp/manager/handler/UpnpInvokeCompletionHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    .line 208
    sget-object v0, Lmiui/upnp/manager/UpnpControlPoint;->TAG:Ljava/lang/String;

    const-string v1, "invoke"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    if-eqz p1, :cond_0

    .line 219
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint;->serviceInstance:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    new-instance v1, Lmiui/upnp/manager/UpnpControlPoint$4;

    invoke-direct {v1, p0, p2}, Lmiui/upnp/manager/UpnpControlPoint$4;-><init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/manager/handler/UpnpInvokeCompletionHandler;)V

    invoke-interface {v0, p1, v1}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService;->invoke(Lmiui/upnp/typedef/device/invocation/ActionInfo;Lmiui/upnp/service/handler/IInvokeCompletionHandler;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    nop

    .line 242
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v2, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    const-string v3, "invoke failed: RemoteException"

    invoke-direct {v1, v2, v3}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v1

    .line 215
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->INVALID_ARGUMENT:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0

    .line 211
    :cond_1
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0
.end method

.method protected onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 53
    invoke-static {p2}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint;->serviceInstance:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    .line 54
    return-void
.end method

.method protected onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint;->serviceInstance:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    .line 59
    return-void
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    .line 62
    sget-object v0, Lmiui/upnp/manager/UpnpControlPoint;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint;->serviceInstance:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    invoke-interface {v0}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService;->start()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    nop

    .line 74
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 72
    new-instance v1, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v2, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    const-string v3, "start failed: RemoteException"

    invoke-direct {v1, v2, v3}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v1

    .line 65
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0
.end method

.method public startScan(Ljava/util/List;Lmiui/upnp/manager/handler/UpnpCompletionHandler;Lmiui/upnp/manager/handler/UpnpScanListener;)V
    .locals 4
    .param p2, "handler"    # Lmiui/upnp/manager/handler/UpnpCompletionHandler;
    .param p3, "listener"    # Lmiui/upnp/manager/handler/UpnpScanListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/urn/Urn;",
            ">;",
            "Lmiui/upnp/manager/handler/UpnpCompletionHandler;",
            "Lmiui/upnp/manager/handler/UpnpScanListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    .line 92
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Lmiui/upnp/typedef/device/urn/Urn;>;"
    sget-object v0, Lmiui/upnp/manager/UpnpControlPoint;->TAG:Ljava/lang/String;

    const-string v1, "startScan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint;->serviceInstance:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    new-instance v1, Lmiui/upnp/manager/UpnpControlPoint$1;

    invoke-direct {v1, p0, p2}, Lmiui/upnp/manager/UpnpControlPoint$1;-><init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V

    new-instance v2, Lmiui/upnp/manager/UpnpControlPoint$2;

    invoke-direct {v2, p0, p3}, Lmiui/upnp/manager/UpnpControlPoint$2;-><init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/manager/handler/UpnpScanListener;)V

    invoke-interface {v0, p1, v1, v2}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService;->startScan(Ljava/util/List;Lmiui/upnp/service/handler/ICompletionHandler;Lmiui/upnp/service/handler/IScanListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    nop

    .line 171
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 169
    new-instance v1, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v2, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    const-string v3, "startScan failed: RemoteException"

    invoke-direct {v1, v2, v3}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v1

    .line 95
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0
.end method

.method public stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    .line 77
    sget-object v0, Lmiui/upnp/manager/UpnpControlPoint;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint;->serviceInstance:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    invoke-interface {v0}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    nop

    .line 89
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 87
    new-instance v1, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v2, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    const-string v3, "stop failed: RemoteException"

    invoke-direct {v1, v2, v3}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v1

    .line 80
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0
.end method

.method public stopScan(Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V
    .locals 4
    .param p1, "handler"    # Lmiui/upnp/manager/handler/UpnpCompletionHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    .line 174
    sget-object v0, Lmiui/upnp/manager/UpnpControlPoint;->TAG:Ljava/lang/String;

    const-string v1, "stopScan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint;->serviceInstance:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    new-instance v1, Lmiui/upnp/manager/UpnpControlPoint$3;

    invoke-direct {v1, p0, p1}, Lmiui/upnp/manager/UpnpControlPoint$3;-><init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V

    invoke-interface {v0, v1}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService;->stopScan(Lmiui/upnp/service/handler/ICompletionHandler;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    nop

    .line 205
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v2, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    const-string v3, "stopScan failed: RemoteException"

    invoke-direct {v1, v2, v3}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v1

    .line 177
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0
.end method

.method public subscribe(Lmiui/upnp/typedef/device/Service;Lmiui/upnp/manager/handler/UpnpCompletionHandler;Lmiui/upnp/manager/handler/UpnpEventListener;)V
    .locals 5
    .param p1, "service"    # Lmiui/upnp/typedef/device/Service;
    .param p2, "handler"    # Lmiui/upnp/manager/handler/UpnpCompletionHandler;
    .param p3, "listener"    # Lmiui/upnp/manager/handler/UpnpEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    .line 247
    sget-object v0, Lmiui/upnp/manager/UpnpControlPoint;->TAG:Ljava/lang/String;

    const-string v1, "subscribe"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {p1}, Lmiui/upnp/typedef/device/Service;->isSubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-static {p1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoCreator;->create(Lmiui/upnp/typedef/device/Service;)Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;

    move-result-object v0

    .line 260
    .local v0, "sub":Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;
    :try_start_0
    iget-object v1, p0, Lmiui/upnp/manager/UpnpControlPoint;->serviceInstance:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    new-instance v2, Lmiui/upnp/manager/UpnpControlPoint$5;

    invoke-direct {v2, p0, p1, p2}, Lmiui/upnp/manager/UpnpControlPoint$5;-><init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/typedef/device/Service;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V

    new-instance v3, Lmiui/upnp/manager/UpnpControlPoint$6;

    invoke-direct {v3, p0, p1, p3}, Lmiui/upnp/manager/UpnpControlPoint$6;-><init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/typedef/device/Service;Lmiui/upnp/manager/handler/UpnpEventListener;)V

    invoke-interface {v1, v0, v2, v3}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService;->subscribe(Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;Lmiui/upnp/service/handler/ISubscribeCompletionHandler;Lmiui/upnp/service/handler/IEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    nop

    .line 309
    return-void

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v3, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    const-string v4, "invoke failed: RemoteException"

    invoke-direct {v2, v3, v4}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v2

    .line 254
    .end local v0    # "sub":Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_SUBSCRIBED:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0

    .line 250
    :cond_1
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0
.end method

.method public unsubscribe(Lmiui/upnp/typedef/device/Service;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V
    .locals 5
    .param p1, "service"    # Lmiui/upnp/typedef/device/Service;
    .param p2, "handler"    # Lmiui/upnp/manager/handler/UpnpCompletionHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    .line 312
    sget-object v0, Lmiui/upnp/manager/UpnpControlPoint;->TAG:Ljava/lang/String;

    const-string v1, "unsubscribe"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p1}, Lmiui/upnp/typedef/device/Service;->isSubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-static {p1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoCreator;->create(Lmiui/upnp/typedef/device/Service;)Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;

    move-result-object v0

    .line 325
    .local v0, "sub":Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;
    :try_start_0
    iget-object v1, p0, Lmiui/upnp/manager/UpnpControlPoint;->serviceInstance:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    new-instance v2, Lmiui/upnp/manager/UpnpControlPoint$7;

    invoke-direct {v2, p0, p1, p2}, Lmiui/upnp/manager/UpnpControlPoint$7;-><init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/typedef/device/Service;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V

    invoke-interface {v1, v0, v2}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService;->unsubscribe(Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;Lmiui/upnp/service/handler/ICompletionHandler;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    nop

    .line 352
    return-void

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v3, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    const-string v4, "invoke failed: RemoteException"

    invoke-direct {v2, v3, v4}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v2

    .line 319
    .end local v0    # "sub":Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_SUBSCRIBED:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0

    .line 315
    :cond_1
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0
.end method
