.class public Lmiui/upnp/typedef/device/invocation/ActionInfoCreator;
.super Ljava/lang/Object;
.source "ActionInfoCreator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionInfoCreator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lmiui/upnp/typedef/device/Action;)Lmiui/upnp/typedef/device/invocation/ActionInfo;
    .locals 8
    .param p0, "action"    # Lmiui/upnp/typedef/device/Action;

    .line 49
    const/4 v0, 0x0

    .line 52
    .local v0, "info":Lmiui/upnp/typedef/device/invocation/ActionInfo;
    if-nez p0, :cond_0

    .line 53
    const-string v1, "ActionInfoCreator"

    const-string v2, "action is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Action;->getService()Lmiui/upnp/typedef/device/Service;

    move-result-object v1

    .line 58
    .local v1, "service":Lmiui/upnp/typedef/device/Service;
    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Service;->getDevice()Lmiui/upnp/typedef/device/Device;

    move-result-object v2

    .line 60
    .local v2, "device":Lmiui/upnp/typedef/device/Device;
    new-instance v3, Lmiui/upnp/typedef/device/invocation/ActionInfo;

    invoke-direct {v3}, Lmiui/upnp/typedef/device/invocation/ActionInfo;-><init>()V

    move-object v0, v3

    .line 61
    invoke-virtual {v0, p0}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->setAction(Lmiui/upnp/typedef/device/Action;)V

    .line 62
    invoke-virtual {v2}, Lmiui/upnp/typedef/device/Device;->getDiscoveryTypes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->setDiscoveryTypes(Ljava/util/List;)V

    .line 63
    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Service;->getType()Lmiui/upnp/typedef/device/urn/ServiceType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->setServiceType(Lmiui/upnp/typedef/device/urn/ServiceType;)V

    .line 65
    invoke-virtual {v2}, Lmiui/upnp/typedef/device/Device;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->setAddress(Ljava/lang/String;)Z

    .line 66
    invoke-virtual {v2}, Lmiui/upnp/typedef/device/Device;->getHostPort()I

    move-result v3

    invoke-virtual {v0, v3}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->setHostPort(I)Z

    .line 67
    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Service;->getControlUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->setControlUrl(Ljava/lang/String;)Z

    .line 68
    invoke-virtual {v2}, Lmiui/upnp/typedef/device/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->setDeviceId(Ljava/lang/String;)Z

    .line 69
    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Service;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->setServiceId(Ljava/lang/String;)Z

    .line 71
    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Action;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/upnp/typedef/device/Argument;

    .line 72
    .local v4, "arg":Lmiui/upnp/typedef/device/Argument;
    invoke-virtual {v4}, Lmiui/upnp/typedef/device/Argument;->getRelatedProperty()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmiui/upnp/typedef/device/Service;->getProperty(Ljava/lang/String;)Lmiui/upnp/typedef/property/Property;

    move-result-object v5

    .line 73
    .local v5, "p":Lmiui/upnp/typedef/property/Property;
    invoke-virtual {v0}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->getProperties()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4}, Lmiui/upnp/typedef/device/Argument;->getRelatedProperty()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .end local v4    # "arg":Lmiui/upnp/typedef/device/Argument;
    .end local v5    # "p":Lmiui/upnp/typedef/property/Property;
    goto :goto_0

    .line 77
    .end local v1    # "service":Lmiui/upnp/typedef/device/Service;
    .end local v2    # "device":Lmiui/upnp/typedef/device/Device;
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static create(Lmiui/upnp/typedef/device/Device;Ljava/lang/String;Ljava/lang/String;)Lmiui/upnp/typedef/device/invocation/ActionInfo;
    .locals 6
    .param p0, "device"    # Lmiui/upnp/typedef/device/Device;
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    .line 36
    .local v0, "info":Lmiui/upnp/typedef/device/invocation/ActionInfo;
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/Device;->getService(Ljava/lang/String;)Lmiui/upnp/typedef/device/Service;

    move-result-object v1

    .line 37
    .local v1, "service":Lmiui/upnp/typedef/device/Service;
    if-nez v1, :cond_0

    .line 38
    const-string v2, "ActionInfoCreator"

    const-string v3, "Service not found: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v1, p2}, Lmiui/upnp/typedef/device/invocation/ActionInfoCreator;->create(Lmiui/upnp/typedef/device/Service;Ljava/lang/String;)Lmiui/upnp/typedef/device/invocation/ActionInfo;

    move-result-object v0

    .line 45
    .end local v1    # "service":Lmiui/upnp/typedef/device/Service;
    :goto_0
    return-object v0
.end method

.method public static create(Lmiui/upnp/typedef/device/Service;Ljava/lang/String;)Lmiui/upnp/typedef/device/invocation/ActionInfo;
    .locals 6
    .param p0, "service"    # Lmiui/upnp/typedef/device/Service;
    .param p1, "actionName"    # Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    .line 20
    .local v0, "info":Lmiui/upnp/typedef/device/invocation/ActionInfo;
    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getActions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/Action;

    .line 21
    .local v1, "action":Lmiui/upnp/typedef/device/Action;
    if-nez v1, :cond_0

    .line 22
    const-string v2, "ActionInfoCreator"

    const-string v3, "Action not found: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v1}, Lmiui/upnp/typedef/device/invocation/ActionInfoCreator;->create(Lmiui/upnp/typedef/device/Action;)Lmiui/upnp/typedef/device/invocation/ActionInfo;

    move-result-object v0

    .line 29
    .end local v1    # "action":Lmiui/upnp/typedef/device/Action;
    :goto_0
    return-object v0
.end method
