.class public Lmiui/upnp/typedef/device/invocation/EventInfoCreator;
.super Ljava/lang/Object;
.source "EventInfoCreator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventInfoCreator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lmiui/upnp/typedef/device/Device;Ljava/lang/String;)Lmiui/upnp/typedef/device/invocation/EventInfo;
    .locals 6
    .param p0, "device"    # Lmiui/upnp/typedef/device/Device;
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    .line 18
    .local v0, "info":Lmiui/upnp/typedef/device/invocation/EventInfo;
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/Device;->getService(Ljava/lang/String;)Lmiui/upnp/typedef/device/Service;

    move-result-object v1

    .line 19
    .local v1, "service":Lmiui/upnp/typedef/device/Service;
    if-nez v1, :cond_0

    .line 20
    const-string v2, "EventInfoCreator"

    const-string v3, "Service not found: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v1}, Lmiui/upnp/typedef/device/invocation/EventInfoCreator;->create(Lmiui/upnp/typedef/device/Service;)Lmiui/upnp/typedef/device/invocation/EventInfo;

    move-result-object v0

    .line 27
    .end local v1    # "service":Lmiui/upnp/typedef/device/Service;
    :goto_0
    return-object v0
.end method

.method public static create(Lmiui/upnp/typedef/device/Service;)Lmiui/upnp/typedef/device/invocation/EventInfo;
    .locals 4
    .param p0, "service"    # Lmiui/upnp/typedef/device/Service;

    .line 31
    new-instance v0, Lmiui/upnp/typedef/device/invocation/EventInfo;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/invocation/EventInfo;-><init>()V

    .line 32
    .local v0, "info":Lmiui/upnp/typedef/device/invocation/EventInfo;
    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getDevice()Lmiui/upnp/typedef/device/Device;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Device;->getDiscoveryTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/EventInfo;->setDiscoveryTypes(Ljava/util/List;)V

    .line 33
    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getType()Lmiui/upnp/typedef/device/urn/ServiceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/EventInfo;->setServiceType(Lmiui/upnp/typedef/device/urn/ServiceType;)V

    .line 34
    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/EventInfo;->setServiceId(Ljava/lang/String;)Z

    .line 35
    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getDevice()Lmiui/upnp/typedef/device/Device;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/EventInfo;->setDeviceId(Ljava/lang/String;)Z

    .line 37
    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getProperties()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    .line 38
    .local v2, "p":Lmiui/upnp/typedef/property/Property;
    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/upnp/typedef/property/PropertyDefinition;->isSendEvents()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-virtual {v0}, Lmiui/upnp/typedef/device/invocation/EventInfo;->getProperties()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .end local v2    # "p":Lmiui/upnp/typedef/property/Property;
    :cond_0
    goto :goto_0

    .line 43
    :cond_1
    return-object v0
.end method
