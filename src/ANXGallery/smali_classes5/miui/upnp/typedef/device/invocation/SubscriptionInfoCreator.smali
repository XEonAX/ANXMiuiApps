.class public Lmiui/upnp/typedef/device/invocation/SubscriptionInfoCreator;
.super Ljava/lang/Object;
.source "SubscriptionInfoCreator.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static create(Lmiui/upnp/typedef/device/Service;)Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;
    .locals 5
    .param p0, "service"    # Lmiui/upnp/typedef/device/Service;

    .line 13
    new-instance v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;-><init>()V

    .line 15
    .local v0, "info":Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;
    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getDevice()Lmiui/upnp/typedef/device/Device;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Device;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->setHostAddress(Ljava/lang/String;)Z

    .line 16
    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getDevice()Lmiui/upnp/typedef/device/Device;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Device;->getHostPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->setHostPort(I)Z

    .line 17
    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->setSubscriptionId(Ljava/lang/String;)Z

    .line 18
    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getEventSubUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->setEventSubUrl(Ljava/lang/String;)Z

    .line 19
    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getDevice()Lmiui/upnp/typedef/device/Device;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Device;->getDiscoveryTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->setDiscoveryTypes(Ljava/util/List;)V

    .line 20
    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getDevice()Lmiui/upnp/typedef/device/Device;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->setDeviceId(Ljava/lang/String;)Z

    .line 21
    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->setServiceId(Ljava/lang/String;)Z

    .line 22
    const-string v1, "/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getEventSubUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->setCallbackUrl(Ljava/lang/String;)Z

    .line 24
    return-object v0
.end method
