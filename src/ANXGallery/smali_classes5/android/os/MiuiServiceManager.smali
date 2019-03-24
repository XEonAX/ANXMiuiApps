.class public Landroid/os/MiuiServiceManager;
.super Ljava/lang/Object;
.source "MiuiServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiServiceManager"

.field private static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static sMiuiServiceManager:Landroid/os/IMiuiServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/MiuiServiceManager;->sCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;

    .line 40
    :try_start_0
    invoke-static {}, Landroid/os/MiuiServiceManager;->getIMiuiServiceManager()Landroid/os/IMiuiServiceManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/os/IMiuiServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiServiceManager"

    const-string v2, "error in miui addService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private static getIMiuiServiceManager()Landroid/os/IMiuiServiceManager;
    .locals 1

    .line 15
    sget-object v0, Landroid/os/MiuiServiceManager;->sMiuiServiceManager:Landroid/os/IMiuiServiceManager;

    if-eqz v0, :cond_0

    .line 16
    sget-object v0, Landroid/os/MiuiServiceManager;->sMiuiServiceManager:Landroid/os/IMiuiServiceManager;

    return-object v0

    .line 20
    :cond_0
    const-string v0, "miui.os.servicemanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IMiuiServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMiuiServiceManager;

    move-result-object v0

    sput-object v0, Landroid/os/MiuiServiceManager;->sMiuiServiceManager:Landroid/os/IMiuiServiceManager;

    .line 21
    sget-object v0, Landroid/os/MiuiServiceManager;->sMiuiServiceManager:Landroid/os/IMiuiServiceManager;

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    :try_start_0
    sget-object v0, Landroid/os/MiuiServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 27
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 28
    return-object v0

    .line 30
    :cond_0
    invoke-static {}, Landroid/os/MiuiServiceManager;->getIMiuiServiceManager()Landroid/os/IMiuiServiceManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/IMiuiServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 32
    .end local v0    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiServiceManager"

    const-string v2, "error in miui getService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static listServices()[Ljava/lang/String;
    .locals 3

    .line 48
    :try_start_0
    invoke-static {}, Landroid/os/MiuiServiceManager;->getIMiuiServiceManager()Landroid/os/IMiuiServiceManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IMiuiServiceManager;->listServices()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiServiceManager"

    const-string v2, "error in miui listServices"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    const/4 v1, 0x0

    return-object v1
.end method
