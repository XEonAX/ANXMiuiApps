.class public Lmiui/upnp/manager/UpnpHost;
.super Lmiui/upnp/utils/Binding;
.source "UpnpHost.java"


# static fields
.field private static SVC_NAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String;

.field private static final UPNP_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.upnp"


# instance fields
.field private serviceInstance:Lmiui/upnp/service/host/IUpnpHostService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lmiui/upnp/manager/UpnpHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/manager/UpnpHost;->TAG:Ljava/lang/String;

    .line 25
    const-class v0, Lmiui/upnp/service/host/IUpnpHostService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/manager/UpnpHost;->SVC_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Lmiui/upnp/utils/Binding;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method public declared-synchronized bind()Z
    .locals 2

    monitor-enter p0

    .line 33
    :try_start_0
    const-string v0, "com.xiaomi.upnp"

    sget-object v1, Lmiui/upnp/manager/UpnpHost;->SVC_NAME:Ljava/lang/String;

    invoke-super {p0, v0, v1}, Lmiui/upnp/utils/Binding;->bind(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lmiui/upnp/manager/UpnpHost;
    throw v0
.end method

.method protected onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 38
    invoke-static {p2}, Lmiui/upnp/service/host/IUpnpHostService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/host/IUpnpHostService;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/manager/UpnpHost;->serviceInstance:Lmiui/upnp/service/host/IUpnpHostService;

    .line 39
    return-void
.end method

.method protected onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/upnp/manager/UpnpHost;->serviceInstance:Lmiui/upnp/service/host/IUpnpHostService;

    .line 44
    return-void
.end method

.method public register(Lmiui/upnp/typedef/device/Device;Lmiui/upnp/manager/handler/UpnpCompletionHandler;Lmiui/upnp/manager/handler/UpnpActionHandler;)V
    .locals 4
    .param p1, "device"    # Lmiui/upnp/typedef/device/Device;
    .param p2, "handler"    # Lmiui/upnp/manager/handler/UpnpCompletionHandler;
    .param p3, "actionHandler"    # Lmiui/upnp/manager/handler/UpnpActionHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    .line 77
    sget-object v0, Lmiui/upnp/manager/UpnpHost;->TAG:Ljava/lang/String;

    const-string v1, "register"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    if-eqz p1, :cond_0

    .line 88
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpHost;->serviceInstance:Lmiui/upnp/service/host/IUpnpHostService;

    new-instance v1, Lmiui/upnp/manager/UpnpHost$1;

    invoke-direct {v1, p0, p2}, Lmiui/upnp/manager/UpnpHost$1;-><init>(Lmiui/upnp/manager/UpnpHost;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V

    new-instance v2, Lmiui/upnp/manager/UpnpHost$2;

    invoke-direct {v2, p0, p3}, Lmiui/upnp/manager/UpnpHost$2;-><init>(Lmiui/upnp/manager/UpnpHost;Lmiui/upnp/manager/handler/UpnpActionHandler;)V

    invoke-interface {v0, p1, v1, v2}, Lmiui/upnp/service/host/IUpnpHostService;->register(Lmiui/upnp/typedef/device/Device;Lmiui/upnp/service/handler/ICompletionHandler;Lmiui/upnp/service/handler/IActionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    nop

    .line 123
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 121
    new-instance v1, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v2, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    const-string v3, "register failed: RemoteException"

    invoke-direct {v1, v2, v3}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v1

    .line 84
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->INVALID_ARGUMENT:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0

    .line 80
    :cond_1
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0
.end method

.method public sendEvents(Lmiui/upnp/typedef/device/invocation/EventInfo;)V
    .locals 4
    .param p1, "info"    # Lmiui/upnp/typedef/device/invocation/EventInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    .line 164
    sget-object v0, Lmiui/upnp/manager/UpnpHost;->TAG:Ljava/lang/String;

    const-string v1, "sendEvents"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    if-eqz p1, :cond_0

    .line 175
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpHost;->serviceInstance:Lmiui/upnp/service/host/IUpnpHostService;

    invoke-interface {v0, p1}, Lmiui/upnp/service/host/IUpnpHostService;->sendEvents(Lmiui/upnp/typedef/device/invocation/EventInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    nop

    .line 180
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 178
    new-instance v1, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v2, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    const-string v3, "sendEvents failed: RemoteException"

    invoke-direct {v1, v2, v3}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v1

    .line 171
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->INVALID_ARGUMENT:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0

    .line 167
    :cond_1
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    .line 47
    sget-object v0, Lmiui/upnp/manager/UpnpHost;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpHost;->serviceInstance:Lmiui/upnp/service/host/IUpnpHostService;

    invoke-interface {v0}, Lmiui/upnp/service/host/IUpnpHostService;->start()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    nop

    .line 59
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 57
    new-instance v1, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v2, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    const-string v3, "start failed: RemoteException"

    invoke-direct {v1, v2, v3}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v1

    .line 50
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

    .line 62
    sget-object v0, Lmiui/upnp/manager/UpnpHost;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpHost;->serviceInstance:Lmiui/upnp/service/host/IUpnpHostService;

    invoke-interface {v0}, Lmiui/upnp/service/host/IUpnpHostService;->stop()V
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

    const-string v3, "stop failed: RemoteException"

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

.method public unregister(Lmiui/upnp/typedef/device/Device;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V
    .locals 4
    .param p1, "device"    # Lmiui/upnp/typedef/device/Device;
    .param p2, "handler"    # Lmiui/upnp/manager/handler/UpnpCompletionHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    .line 126
    sget-object v0, Lmiui/upnp/manager/UpnpHost;->TAG:Ljava/lang/String;

    const-string v1, "unregister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    if-eqz p1, :cond_0

    .line 137
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpHost;->serviceInstance:Lmiui/upnp/service/host/IUpnpHostService;

    new-instance v1, Lmiui/upnp/manager/UpnpHost$3;

    invoke-direct {v1, p0, p2}, Lmiui/upnp/manager/UpnpHost$3;-><init>(Lmiui/upnp/manager/UpnpHost;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V

    invoke-interface {v0, p1, v1}, Lmiui/upnp/service/host/IUpnpHostService;->unregister(Lmiui/upnp/typedef/device/Device;Lmiui/upnp/service/handler/ICompletionHandler;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    nop

    .line 161
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 159
    new-instance v1, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v2, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    const-string v3, "unregister failed: RemoteException"

    invoke-direct {v1, v2, v3}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v1

    .line 133
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->INVALID_ARGUMENT:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0

    .line 129
    :cond_1
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0
.end method
