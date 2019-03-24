.class public abstract Lmiui/upnp/manager/host/ServiceHandler;
.super Ljava/lang/Object;
.source "ServiceHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAction(Lmiui/upnp/typedef/device/invocation/ActionInfo;)Lmiui/upnp/typedef/error/UpnpError;
.end method

.method public toCtrlUrl(Ljava/lang/String;Lmiui/upnp/typedef/device/urn/ServiceType;)Ljava/lang/String;
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "serviceType"    # Lmiui/upnp/typedef/device/urn/ServiceType;

    .line 16
    const-string v0, "/upnp/%s/ctrl/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2}, Lmiui/upnp/typedef/device/urn/ServiceType;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toEventUrl(Ljava/lang/String;Lmiui/upnp/typedef/device/urn/ServiceType;)Ljava/lang/String;
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "serviceType"    # Lmiui/upnp/typedef/device/urn/ServiceType;

    .line 20
    const-string v0, "/upnp/%s/event/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2}, Lmiui/upnp/typedef/device/urn/ServiceType;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toScpdUrl(Ljava/lang/String;Lmiui/upnp/typedef/device/urn/ServiceType;)Ljava/lang/String;
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "serviceType"    # Lmiui/upnp/typedef/device/urn/ServiceType;

    .line 12
    const-string v0, "/upnp/%s/%s.xml"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2}, Lmiui/upnp/typedef/device/urn/ServiceType;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toServiceId(Lmiui/upnp/typedef/device/urn/ServiceType;)Ljava/lang/String;
    .locals 4
    .param p1, "serviceType"    # Lmiui/upnp/typedef/device/urn/ServiceType;

    .line 24
    const-string v0, "urn:upnp-org:serviceId:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmiui/upnp/typedef/device/urn/ServiceType;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
