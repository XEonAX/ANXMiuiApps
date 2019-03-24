.class public Lmiui/upnp/typedef/device/invocation/EventInfo;
.super Ljava/lang/Object;
.source "EventInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/device/invocation/EventInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private discoveryTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/DiscoveryType;",
            ">;"
        }
    .end annotation
.end field

.field private fields:Lmiui/upnp/typedef/field/FieldList;

.field private properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/property/Property;",
            ">;"
        }
    .end annotation
.end field

.field private serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lmiui/upnp/typedef/device/invocation/EventInfo$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/invocation/EventInfo$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/EventInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->discoveryTypes:Ljava/util/List;

    .line 17
    new-instance v0, Lmiui/upnp/typedef/device/urn/ServiceType;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/ServiceType;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    .line 18
    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->properties:Ljava/util/List;

    .line 79
    invoke-direct {p0}, Lmiui/upnp/typedef/device/invocation/EventInfo;->initialize()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->discoveryTypes:Ljava/util/List;

    .line 17
    new-instance v0, Lmiui/upnp/typedef/device/urn/ServiceType;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/ServiceType;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    .line 18
    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->properties:Ljava/util/List;

    .line 83
    invoke-direct {p0}, Lmiui/upnp/typedef/device/invocation/EventInfo;->initialize()V

    .line 84
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/invocation/EventInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 85
    return-void
.end method

.method private initialize()V
    .locals 3

    .line 88
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;->SessionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 91
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 38
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDiscoveryTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/DiscoveryType;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->discoveryTypes:Ljava/util/List;

    return-object v0
.end method

.method public getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/property/Property;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->properties:Ljava/util/List;

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 2

    .line 46
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()Lmiui/upnp/typedef/device/urn/ServiceType;
    .locals 1

    .line 30
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 2

    .line 54
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;->SessionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/upnp/typedef/device/urn/ServiceType;->create(Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/ServiceType;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    .line 95
    const-class v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/field/FieldList;

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .local v0, "n":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/upnp/typedef/device/DiscoveryType;->retrieveType(Ljava/lang/String;)Lmiui/upnp/typedef/device/DiscoveryType;

    move-result-object v3

    .line 100
    .local v3, "discoveryType":Lmiui/upnp/typedef/device/DiscoveryType;
    iget-object v4, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->discoveryTypes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v3    # "discoveryType":Lmiui/upnp/typedef/device/DiscoveryType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 105
    const-class v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    .line 106
    .local v2, "property":Lmiui/upnp/typedef/property/Property;
    iget-object v3, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->properties:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v2    # "property":Lmiui/upnp/typedef/property/Property;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDiscoveryTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/DiscoveryType;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p1, "discoveryTypes":Ljava/util/List;, "Ljava/util/List<Lmiui/upnp/typedef/device/DiscoveryType;>;"
    iput-object p1, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->discoveryTypes:Ljava/util/List;

    .line 23
    return-void
.end method

.method public setServiceId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setServiceType(Lmiui/upnp/typedef/device/urn/ServiceType;)V
    .locals 0
    .param p1, "serviceType"    # Lmiui/upnp/typedef/device/urn/ServiceType;

    .line 34
    iput-object p1, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    .line 35
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;->SessionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    invoke-virtual {v0}, Lmiui/upnp/typedef/device/urn/ServiceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 120
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->discoveryTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->discoveryTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/DiscoveryType;

    .line 122
    .local v1, "discoveryType":Lmiui/upnp/typedef/device/DiscoveryType;
    invoke-virtual {v1}, Lmiui/upnp/typedef/device/DiscoveryType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    .end local v1    # "discoveryType":Lmiui/upnp/typedef/device/DiscoveryType;
    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/property/Property;

    .line 127
    .local v1, "def":Lmiui/upnp/typedef/property/Property;
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 128
    .end local v1    # "def":Lmiui/upnp/typedef/property/Property;
    goto :goto_1

    .line 129
    :cond_1
    return-void
.end method
