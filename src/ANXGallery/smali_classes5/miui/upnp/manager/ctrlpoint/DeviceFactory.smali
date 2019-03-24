.class public Lmiui/upnp/manager/ctrlpoint/DeviceFactory;
.super Ljava/lang/Object;
.source "DeviceFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceFactroy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDevice(Lmiui/upnp/typedef/device/Device;)Lmiui/upnp/manager/ctrlpoint/AbstractDevice;
    .locals 8
    .param p0, "device"    # Lmiui/upnp/typedef/device/Device;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 28
    const/4 v0, 0x0

    .line 31
    .local v0, "abstractDevice":Lmiui/upnp/manager/ctrlpoint/AbstractDevice;
    const-string v1, "DeviceFactroy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device type is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Device;->getDeviceType()Lmiui/upnp/typedef/device/urn/DeviceType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {}, Lmiui/upnp/manager/UpnpManager;->getInstance()Lmiui/upnp/manager/UpnpManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/upnp/manager/UpnpManager;->getClassProvider()Lmiui/upnp/manager/UpnpClassProvider;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Device;->getDeviceType()Lmiui/upnp/typedef/device/urn/DeviceType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/upnp/manager/UpnpClassProvider;->getDeviceClass(Lmiui/upnp/typedef/device/urn/DeviceType;)Lmiui/upnp/typedef/deviceclass/DeviceClass;

    move-result-object v1

    .line 34
    .local v1, "deviceClazz":Lmiui/upnp/typedef/deviceclass/DeviceClass;
    if-nez v1, :cond_0

    .line 35
    const-string v2, "DeviceFactroy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown device class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Device;->getDeviceType()Lmiui/upnp/typedef/device/urn/DeviceType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Lmiui/upnp/manager/UpnpManager;->getInstance()Lmiui/upnp/manager/UpnpManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/upnp/manager/UpnpManager;->getClassProvider()Lmiui/upnp/manager/UpnpClassProvider;

    move-result-object v2

    sget-object v3, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;->DEVICE_TYPE:Lmiui/upnp/typedef/device/urn/DeviceType;

    invoke-virtual {v2, v3}, Lmiui/upnp/manager/UpnpClassProvider;->getDeviceClass(Lmiui/upnp/typedef/device/urn/DeviceType;)Lmiui/upnp/typedef/deviceclass/DeviceClass;

    move-result-object v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    const-string v2, "DeviceFactroy"

    const-string v3, "default device class not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v1}, Lmiui/upnp/typedef/deviceclass/DeviceClass;->getClazz()Ljava/lang/Class;

    move-result-object v2

    .line 45
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_1

    .line 46
    const-string v3, "DeviceFactroy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "class not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lmiui/upnp/typedef/deviceclass/DeviceClass;->getDeviceType()Lmiui/upnp/typedef/device/urn/DeviceType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    goto :goto_0

    .line 51
    :cond_1
    :try_start_0
    const-string v3, "create"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lmiui/upnp/typedef/device/Device;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 52
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v7

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/upnp/manager/ctrlpoint/AbstractDevice;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 56
    .end local v3    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 53
    :catch_0
    move-exception v3

    .line 54
    .local v3, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 55
    const/4 v0, 0x0

    .line 59
    .end local v1    # "deviceClazz":Lmiui/upnp/typedef/deviceclass/DeviceClass;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    return-object v0
.end method
