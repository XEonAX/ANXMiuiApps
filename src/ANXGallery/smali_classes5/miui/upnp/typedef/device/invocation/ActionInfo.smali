.class public Lmiui/upnp/typedef/device/invocation/ActionInfo;
.super Ljava/lang/Object;
.source "ActionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/device/invocation/ActionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ActionInfo"


# instance fields
.field private action:Lmiui/upnp/typedef/device/Action;

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

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/upnp/typedef/property/Property;",
            ">;"
        }
    .end annotation
.end field

.field private serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 186
    new-instance v0, Lmiui/upnp/typedef/device/invocation/ActionInfo$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/invocation/ActionInfo$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->discoveryTypes:Ljava/util/List;

    .line 25
    new-instance v0, Lmiui/upnp/typedef/device/urn/ServiceType;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/ServiceType;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    .line 26
    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->properties:Ljava/util/Map;

    .line 200
    invoke-direct {p0}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->initialize()V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->discoveryTypes:Ljava/util/List;

    .line 25
    new-instance v0, Lmiui/upnp/typedef/device/urn/ServiceType;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/ServiceType;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    .line 26
    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->properties:Ljava/util/Map;

    .line 213
    invoke-direct {p0}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->initialize()V

    .line 215
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 216
    return-void
.end method

.method private getRelatedProperty(Ljava/lang/String;Lmiui/upnp/typedef/device/Argument$Direction;)Lmiui/upnp/typedef/property/Property;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "direction"    # Lmiui/upnp/typedef/device/Argument$Direction;

    .line 155
    const/4 v0, 0x0

    .line 158
    .local v0, "p":Lmiui/upnp/typedef/property/Property;
    const/4 v1, 0x0

    .line 160
    .local v1, "argument":Lmiui/upnp/typedef/device/Argument;
    iget-object v2, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->action:Lmiui/upnp/typedef/device/Action;

    invoke-virtual {v2}, Lmiui/upnp/typedef/device/Action;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/upnp/typedef/device/Argument;

    .line 161
    .local v3, "a":Lmiui/upnp/typedef/device/Argument;
    invoke-virtual {v3}, Lmiui/upnp/typedef/device/Argument;->getDirection()Lmiui/upnp/typedef/device/Argument$Direction;

    move-result-object v4

    if-eq v4, p2, :cond_0

    .line 162
    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v3}, Lmiui/upnp/typedef/device/Argument;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    move-object v1, v3

    .line 167
    goto :goto_1

    .line 169
    .end local v3    # "a":Lmiui/upnp/typedef/device/Argument;
    :cond_1
    goto :goto_0

    .line 171
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 172
    const-string v2, "ActionInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "argument not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    goto :goto_2

    .line 176
    :cond_3
    iget-object v2, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->properties:Ljava/util/Map;

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Argument;->getRelatedProperty()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lmiui/upnp/typedef/property/Property;

    .line 177
    if-nez v0, :cond_4

    .line 178
    const-string v2, "ActionInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Argument;->getRelatedProperty()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    nop

    .line 183
    .end local v1    # "argument":Lmiui/upnp/typedef/device/Argument;
    :cond_4
    :goto_2
    return-object v0
.end method

.method private initialize()V
    .locals 3

    .line 204
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->Address:Lmiui/upnp/typedef/field/FieldDefinition;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->HostPort:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->ControlUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->SessionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 210
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Lmiui/upnp/typedef/device/Action;
    .locals 1

    .line 46
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->action:Lmiui/upnp/typedef/device/Action;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .line 54
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->Address:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getArgument(Ljava/lang/String;)Lmiui/upnp/typedef/property/Property;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 147
    sget-object v0, Lmiui/upnp/typedef/device/Argument$Direction;->IN:Lmiui/upnp/typedef/device/Argument$Direction;

    invoke-direct {p0, p1, v0}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->getRelatedProperty(Ljava/lang/String;Lmiui/upnp/typedef/device/Argument$Direction;)Lmiui/upnp/typedef/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public getArgumentValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 138
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->getArgument(Ljava/lang/String;)Lmiui/upnp/typedef/property/Property;

    move-result-object v0

    .line 139
    .local v0, "property":Lmiui/upnp/typedef/property/Property;
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lmiui/upnp/typedef/property/Property;->getCurrentValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 143
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getControlUrl()Ljava/lang/String;
    .locals 2

    .line 86
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->ControlUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 70
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

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

    .line 34
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->discoveryTypes:Ljava/util/List;

    return-object v0
.end method

.method public getHostPort()I
    .locals 2

    .line 62
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->HostPort:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/upnp/typedef/property/Property;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getResult(Ljava/lang/String;)Lmiui/upnp/typedef/property/Property;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 151
    sget-object v0, Lmiui/upnp/typedef/device/Argument$Direction;->OUT:Lmiui/upnp/typedef/device/Argument$Direction;

    invoke-direct {p0, p1, v0}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->getRelatedProperty(Ljava/lang/String;Lmiui/upnp/typedef/device/Argument$Direction;)Lmiui/upnp/typedef/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 2

    .line 78
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()Lmiui/upnp/typedef/device/urn/ServiceType;
    .locals 1

    .line 38
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 2

    .line 94
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->SessionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 219
    const-class v0, Lmiui/upnp/typedef/device/Action;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/device/Action;

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->action:Lmiui/upnp/typedef/device/Action;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/upnp/typedef/device/urn/ServiceType;->create(Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/ServiceType;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    .line 221
    const-class v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/field/FieldList;

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 224
    .local v0, "n":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/upnp/typedef/device/DiscoveryType;->retrieveType(Ljava/lang/String;)Lmiui/upnp/typedef/device/DiscoveryType;

    move-result-object v3

    .line 226
    .local v3, "discoveryType":Lmiui/upnp/typedef/device/DiscoveryType;
    iget-object v4, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->discoveryTypes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 227
    iget-object v4, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->discoveryTypes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v3    # "discoveryType":Lmiui/upnp/typedef/device/DiscoveryType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 233
    const-class v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    .line 234
    .local v2, "property":Lmiui/upnp/typedef/property/Property;
    iget-object v3, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->properties:Ljava/util/Map;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/upnp/typedef/property/PropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .end local v2    # "property":Lmiui/upnp/typedef/property/Property;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 236
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public setAction(Lmiui/upnp/typedef/device/Action;)V
    .locals 0
    .param p1, "action"    # Lmiui/upnp/typedef/device/Action;

    .line 50
    iput-object p1, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->action:Lmiui/upnp/typedef/device/Action;

    .line 51
    return-void
.end method

.method public setAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->Address:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setArgumentValue(Ljava/lang/String;Ljava/lang/Object;Lmiui/upnp/typedef/device/Argument$Direction;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "direction"    # Lmiui/upnp/typedef/device/Argument$Direction;

    .line 106
    const/4 v0, 0x0

    .line 109
    .local v0, "ret":Z
    invoke-direct {p0, p1, p3}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->getRelatedProperty(Ljava/lang/String;Lmiui/upnp/typedef/device/Argument$Direction;)Lmiui/upnp/typedef/property/Property;

    move-result-object v1

    .line 110
    .local v1, "p":Lmiui/upnp/typedef/property/Property;
    if-nez v1, :cond_0

    .line 111
    const-string v2, "ActionInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "relatedProperty not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v1, p2}, Lmiui/upnp/typedef/property/Property;->setDataValue(Ljava/lang/Object;)Z

    move-result v0

    .line 118
    .end local v1    # "p":Lmiui/upnp/typedef/property/Property;
    :goto_0
    return v0
.end method

.method public setArgumentValueByString(Ljava/lang/String;Ljava/lang/String;ZLmiui/upnp/typedef/device/Argument$Direction;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "nullValueAllowed"    # Z
    .param p4, "direction"    # Lmiui/upnp/typedef/device/Argument$Direction;

    .line 122
    const/4 v0, 0x0

    .line 125
    .local v0, "ret":Z
    invoke-direct {p0, p1, p4}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->getRelatedProperty(Ljava/lang/String;Lmiui/upnp/typedef/device/Argument$Direction;)Lmiui/upnp/typedef/property/Property;

    move-result-object v1

    .line 126
    .local v1, "p":Lmiui/upnp/typedef/property/Property;
    if-nez v1, :cond_0

    .line 127
    const-string v2, "ActionInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "relatedProperty not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v1, p2, p3}, Lmiui/upnp/typedef/property/Property;->setDataValueByString(Ljava/lang/String;Z)Z

    move-result v0

    .line 134
    .end local v1    # "p":Lmiui/upnp/typedef/property/Property;
    :goto_0
    return v0
.end method

.method public setControlUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->ControlUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDeviceId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

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

    .line 30
    .local p1, "discoveryTypes":Ljava/util/List;, "Ljava/util/List<Lmiui/upnp/typedef/device/DiscoveryType;>;"
    iput-object p1, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->discoveryTypes:Ljava/util/List;

    .line 31
    return-void
.end method

.method public setHostPort(I)Z
    .locals 3
    .param p1, "port"    # I

    .line 66
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->HostPort:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setServiceId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setServiceType(Lmiui/upnp/typedef/device/urn/ServiceType;)V
    .locals 0
    .param p1, "serviceType"    # Lmiui/upnp/typedef/device/urn/ServiceType;

    .line 42
    iput-object p1, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    .line 43
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->SessionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 245
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->action:Lmiui/upnp/typedef/device/Action;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 246
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    invoke-virtual {v0}, Lmiui/upnp/typedef/device/urn/ServiceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 249
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->discoveryTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->discoveryTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/DiscoveryType;

    .line 251
    .local v1, "discoveryType":Lmiui/upnp/typedef/device/DiscoveryType;
    invoke-virtual {v1}, Lmiui/upnp/typedef/device/DiscoveryType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    .end local v1    # "discoveryType":Lmiui/upnp/typedef/device/DiscoveryType;
    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/property/Property;

    .line 256
    .local v1, "def":Lmiui/upnp/typedef/property/Property;
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 257
    .end local v1    # "def":Lmiui/upnp/typedef/property/Property;
    goto :goto_1

    .line 258
    :cond_1
    return-void
.end method
