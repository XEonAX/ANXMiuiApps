.class public Lmiui/upnp/manager/host/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# instance fields
.field private deviceName:Ljava/lang/String;

.field private discoveryTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/DiscoveryType;",
            ">;"
        }
    .end annotation
.end field

.field private manufacturer:Ljava/lang/String;

.field private manufacturerUrl:Ljava/lang/String;

.field private modelDescription:Ljava/lang/String;

.field private modelName:Ljava/lang/String;

.field private modelNumber:Ljava/lang/String;

.field private modelUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/manager/host/DeviceConfig;->discoveryTypes:Ljava/util/List;

    return-void
.end method

.method private genDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 82
    .local v0, "manager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 83
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "address":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uuid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addDiscoveryType(Lmiui/upnp/typedef/device/DiscoveryType;)V
    .locals 1
    .param p1, "discoveryType"    # Lmiui/upnp/typedef/device/DiscoveryType;

    .line 28
    iget-object v0, p0, Lmiui/upnp/manager/host/DeviceConfig;->discoveryTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public build(Landroid/content/Context;Lmiui/upnp/typedef/device/urn/DeviceType;)Lmiui/upnp/typedef/device/Device;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceType"    # Lmiui/upnp/typedef/device/urn/DeviceType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1}, Lmiui/upnp/manager/host/DeviceConfig;->genDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "deviceId":Ljava/lang/String;
    new-instance v1, Lmiui/upnp/typedef/device/Device;

    invoke-direct {v1, p2}, Lmiui/upnp/typedef/device/Device;-><init>(Lmiui/upnp/typedef/device/urn/DeviceType;)V

    .line 63
    .local v1, "device":Lmiui/upnp/typedef/device/Device;
    iget-object v2, p0, Lmiui/upnp/manager/host/DeviceConfig;->discoveryTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/upnp/typedef/device/DiscoveryType;

    .line 64
    .local v3, "type":Lmiui/upnp/typedef/device/DiscoveryType;
    invoke-virtual {v1, v3}, Lmiui/upnp/typedef/device/Device;->addDiscoveryType(Lmiui/upnp/typedef/device/DiscoveryType;)V

    .line 65
    .end local v3    # "type":Lmiui/upnp/typedef/device/DiscoveryType;
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v1, v0}, Lmiui/upnp/typedef/device/Device;->setDeviceId(Ljava/lang/String;)Z

    .line 68
    iget-object v2, p0, Lmiui/upnp/manager/host/DeviceConfig;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/upnp/typedef/device/Device;->setFriendlyName(Ljava/lang/String;)Z

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/upnp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/description.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/upnp/typedef/device/Device;->setLocation(Ljava/lang/String;)Z

    .line 70
    iget-object v2, p0, Lmiui/upnp/manager/host/DeviceConfig;->modelNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/upnp/typedef/device/Device;->setModelNumber(Ljava/lang/String;)Z

    .line 71
    iget-object v2, p0, Lmiui/upnp/manager/host/DeviceConfig;->modelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/upnp/typedef/device/Device;->setModelName(Ljava/lang/String;)Z

    .line 72
    iget-object v2, p0, Lmiui/upnp/manager/host/DeviceConfig;->modelDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/upnp/typedef/device/Device;->setModelDescription(Ljava/lang/String;)Z

    .line 73
    iget-object v2, p0, Lmiui/upnp/manager/host/DeviceConfig;->modelUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/upnp/typedef/device/Device;->setModelUrl(Ljava/lang/String;)Z

    .line 74
    iget-object v2, p0, Lmiui/upnp/manager/host/DeviceConfig;->manufacturer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/upnp/typedef/device/Device;->setManufacturer(Ljava/lang/String;)Z

    .line 75
    iget-object v2, p0, Lmiui/upnp/manager/host/DeviceConfig;->manufacturerUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/upnp/typedef/device/Device;->setManufacturerUrl(Ljava/lang/String;)Z

    .line 77
    return-object v1
.end method

.method public deviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lmiui/upnp/manager/host/DeviceConfig;->deviceName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public manufacturer(Ljava/lang/String;)V
    .locals 0
    .param p1, "manufacturer"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lmiui/upnp/manager/host/DeviceConfig;->manufacturer:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public manufacturerUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "manufacturerUrl"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lmiui/upnp/manager/host/DeviceConfig;->manufacturerUrl:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public modelDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "modelDescription"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lmiui/upnp/manager/host/DeviceConfig;->modelDescription:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public modelName(Ljava/lang/String;)V
    .locals 0
    .param p1, "modelName"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lmiui/upnp/manager/host/DeviceConfig;->modelName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public modelNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "modelNumber"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lmiui/upnp/manager/host/DeviceConfig;->modelNumber:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public modelUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "modelUrl"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lmiui/upnp/manager/host/DeviceConfig;->modelUrl:Ljava/lang/String;

    .line 49
    return-void
.end method
