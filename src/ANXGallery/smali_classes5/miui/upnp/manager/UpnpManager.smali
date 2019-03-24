.class public Lmiui/upnp/manager/UpnpManager;
.super Ljava/lang/Object;
.source "UpnpManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final classLock:Ljava/lang/Object;

.field private static instance:Lmiui/upnp/manager/UpnpManager;


# instance fields
.field private classProvider:Lmiui/upnp/manager/UpnpClassProvider;

.field private cp:Lmiui/upnp/manager/UpnpControlPoint;

.field private host:Lmiui/upnp/manager/UpnpHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lmiui/upnp/manager/UpnpManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/manager/UpnpManager;->TAG:Ljava/lang/String;

    .line 14
    const-class v0, Lmiui/upnp/manager/UpnpManager;

    sput-object v0, Lmiui/upnp/manager/UpnpManager;->classLock:Ljava/lang/Object;

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lmiui/upnp/manager/UpnpManager;->instance:Lmiui/upnp/manager/UpnpManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getInstance()Lmiui/upnp/manager/UpnpManager;
    .locals 2

    .line 21
    sget-object v0, Lmiui/upnp/manager/UpnpManager;->classLock:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lmiui/upnp/manager/UpnpManager;->instance:Lmiui/upnp/manager/UpnpManager;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lmiui/upnp/manager/UpnpManager;

    invoke-direct {v1}, Lmiui/upnp/manager/UpnpManager;-><init>()V

    sput-object v1, Lmiui/upnp/manager/UpnpManager;->instance:Lmiui/upnp/manager/UpnpManager;

    .line 26
    :cond_0
    sget-object v1, Lmiui/upnp/manager/UpnpManager;->instance:Lmiui/upnp/manager/UpnpManager;

    monitor-exit v0

    return-object v1

    .line 27
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lmiui/upnp/manager/UpnpManager;->classProvider:Lmiui/upnp/manager/UpnpClassProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lmiui/upnp/manager/UpnpManager;->classProvider:Lmiui/upnp/manager/UpnpClassProvider;

    invoke-virtual {v0}, Lmiui/upnp/manager/UpnpClassProvider;->clear()V

    .line 59
    iput-object v1, p0, Lmiui/upnp/manager/UpnpManager;->classProvider:Lmiui/upnp/manager/UpnpClassProvider;

    .line 62
    :cond_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpManager;->cp:Lmiui/upnp/manager/UpnpControlPoint;

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lmiui/upnp/manager/UpnpManager;->cp:Lmiui/upnp/manager/UpnpControlPoint;

    invoke-virtual {v0}, Lmiui/upnp/manager/UpnpControlPoint;->unbind()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iput-object v1, p0, Lmiui/upnp/manager/UpnpManager;->cp:Lmiui/upnp/manager/UpnpControlPoint;

    goto :goto_0

    .line 64
    :cond_1
    sget-object v0, Lmiui/upnp/manager/UpnpManager;->TAG:Ljava/lang/String;

    const-string v1, "UpnpControlPoint unbind failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_UNBIND_FAILED:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0

    .line 70
    :cond_2
    :goto_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpManager;->host:Lmiui/upnp/manager/UpnpHost;

    if-eqz v0, :cond_4

    .line 71
    iget-object v0, p0, Lmiui/upnp/manager/UpnpManager;->host:Lmiui/upnp/manager/UpnpHost;

    invoke-virtual {v0}, Lmiui/upnp/manager/UpnpHost;->unbind()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 72
    :cond_3
    sget-object v0, Lmiui/upnp/manager/UpnpManager;->TAG:Ljava/lang/String;

    const-string v1, "UpnpHost unbind failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_UNBIND_FAILED:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0

    .line 76
    :cond_4
    :goto_1
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lmiui/upnp/manager/UpnpManager;->close()V

    .line 36
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 37
    return-void
.end method

.method public getClassProvider()Lmiui/upnp/manager/UpnpClassProvider;
    .locals 1

    .line 87
    iget-object v0, p0, Lmiui/upnp/manager/UpnpManager;->classProvider:Lmiui/upnp/manager/UpnpClassProvider;

    return-object v0
.end method

.method public getControlPoint()Lmiui/upnp/manager/UpnpControlPoint;
    .locals 1

    .line 79
    iget-object v0, p0, Lmiui/upnp/manager/UpnpManager;->cp:Lmiui/upnp/manager/UpnpControlPoint;

    return-object v0
.end method

.method public getHost()Lmiui/upnp/manager/UpnpHost;
    .locals 1

    .line 83
    iget-object v0, p0, Lmiui/upnp/manager/UpnpManager;->host:Lmiui/upnp/manager/UpnpHost;

    return-object v0
.end method

.method public open(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    .line 40
    new-instance v0, Lmiui/upnp/manager/UpnpControlPoint;

    invoke-direct {v0, p1}, Lmiui/upnp/manager/UpnpControlPoint;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/upnp/manager/UpnpManager;->cp:Lmiui/upnp/manager/UpnpControlPoint;

    .line 41
    new-instance v0, Lmiui/upnp/manager/UpnpHost;

    invoke-direct {v0, p1}, Lmiui/upnp/manager/UpnpHost;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/upnp/manager/UpnpManager;->host:Lmiui/upnp/manager/UpnpHost;

    .line 42
    new-instance v0, Lmiui/upnp/manager/UpnpClassProvider;

    invoke-direct {v0}, Lmiui/upnp/manager/UpnpClassProvider;-><init>()V

    iput-object v0, p0, Lmiui/upnp/manager/UpnpManager;->classProvider:Lmiui/upnp/manager/UpnpClassProvider;

    .line 43
    iget-object v0, p0, Lmiui/upnp/manager/UpnpManager;->classProvider:Lmiui/upnp/manager/UpnpClassProvider;

    new-instance v1, Lmiui/upnp/typedef/deviceclass/DeviceClass;

    sget-object v2, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;->DEVICE_TYPE:Lmiui/upnp/typedef/device/urn/DeviceType;

    const-class v3, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;

    invoke-direct {v1, v2, v3}, Lmiui/upnp/typedef/deviceclass/DeviceClass;-><init>(Lmiui/upnp/typedef/device/urn/DeviceType;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lmiui/upnp/manager/UpnpClassProvider;->addDeviceClass(Lmiui/upnp/typedef/deviceclass/DeviceClass;)V

    .line 45
    iget-object v0, p0, Lmiui/upnp/manager/UpnpManager;->cp:Lmiui/upnp/manager/UpnpControlPoint;

    invoke-virtual {v0}, Lmiui/upnp/manager/UpnpControlPoint;->bind()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lmiui/upnp/manager/UpnpManager;->host:Lmiui/upnp/manager/UpnpHost;

    invoke-virtual {v0}, Lmiui/upnp/manager/UpnpHost;->bind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    return-void

    .line 51
    :cond_0
    sget-object v0, Lmiui/upnp/manager/UpnpManager;->TAG:Ljava/lang/String;

    const-string v1, "UpnpHost bind failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_BIND_FAILED:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0

    .line 46
    :cond_1
    sget-object v0, Lmiui/upnp/manager/UpnpManager;->TAG:Ljava/lang/String;

    const-string v1, "UpnpControlPoint bind failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_BIND_FAILED:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0
.end method
