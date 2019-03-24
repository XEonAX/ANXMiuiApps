.class public Lmiui/upnp/typedef/device/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/device/Device;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

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

.field private icons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/Icon;",
            ">;"
        }
    .end annotation
.end field

.field private services:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/upnp/typedef/device/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 232
    new-instance v0, Lmiui/upnp/typedef/device/Device$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/Device$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/device/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lmiui/upnp/typedef/device/urn/DeviceType;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/DeviceType;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Device;->deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Device;->discoveryTypes:Ljava/util/List;

    .line 19
    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Device;->services:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Device;->icons:Ljava/util/List;

    .line 246
    invoke-direct {p0}, Lmiui/upnp/typedef/device/Device;->initialize()V

    .line 247
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lmiui/upnp/typedef/device/urn/DeviceType;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/DeviceType;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Device;->deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Device;->discoveryTypes:Ljava/util/List;

    .line 19
    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Device;->services:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Device;->icons:Ljava/util/List;

    .line 278
    invoke-direct {p0}, Lmiui/upnp/typedef/device/Device;->initialize()V

    .line 279
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/Device;->readFromParcel(Landroid/os/Parcel;)V

    .line 280
    return-void
.end method

.method public constructor <init>(Lmiui/upnp/typedef/device/urn/DeviceType;)V
    .locals 1
    .param p1, "deviceType"    # Lmiui/upnp/typedef/device/urn/DeviceType;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lmiui/upnp/typedef/device/urn/DeviceType;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/DeviceType;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Device;->deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Device;->discoveryTypes:Ljava/util/List;

    .line 19
    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Device;->services:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Device;->icons:Ljava/util/List;

    .line 250
    invoke-direct {p0}, Lmiui/upnp/typedef/device/Device;->initialize()V

    .line 251
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/Device;->setDeviceType(Lmiui/upnp/typedef/device/urn/DeviceType;)V

    .line 252
    return-void
.end method

.method private initialize()V
    .locals 3

    .line 255
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->Location:Lmiui/upnp/typedef/field/FieldDefinition;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->Address:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->HostPort:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->FriendlyName:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->Manufacturer:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->ManufacturerUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->ModelDescription:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->ModelName:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->ModelNumber:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->ModelUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->SerialNumber:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->PresentationUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->UrlBase:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->Upc:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->QplayCapability:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->DlnaDoc:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->DlnaCap:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 275
    return-void
.end method


# virtual methods
.method public addDiscoveryType(Lmiui/upnp/typedef/device/DiscoveryType;)V
    .locals 1
    .param p1, "discoveryType"    # Lmiui/upnp/typedef/device/DiscoveryType;

    .line 62
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->discoveryTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->discoveryTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    return-void
.end method

.method public addIcon(Lmiui/upnp/typedef/device/Icon;)V
    .locals 1
    .param p1, "icon"    # Lmiui/upnp/typedef/device/Icon;

    .line 216
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->icons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method public addService(Lmiui/upnp/typedef/device/Service;)V
    .locals 2
    .param p1, "service"    # Lmiui/upnp/typedef/device/Service;

    .line 224
    invoke-virtual {p1, p0}, Lmiui/upnp/typedef/device/Service;->setDevice(Lmiui/upnp/typedef/device/Device;)V

    .line 225
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->services:Ljava/util/Map;

    invoke-virtual {p1}, Lmiui/upnp/typedef/device/Service;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 35
    const/4 v0, 0x0

    return v0

    .line 38
    :cond_0
    move-object v0, p1

    check-cast v0, Lmiui/upnp/typedef/device/Device;

    .line 39
    .local v0, "other":Lmiui/upnp/typedef/device/Device;
    if-ne p0, v0, :cond_1

    .line 40
    const/4 v1, 0x1

    return v1

    .line 43
    :cond_1
    iget-object v1, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v2, Lmiui/upnp/typedef/device/DeviceDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v1, v2}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    .local v1, "thizDeviceId":Ljava/lang/String;
    iget-object v2, v0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v3, Lmiui/upnp/typedef/device/DeviceDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v2, v3}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 46
    .local v2, "otherDeviceId":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .line 76
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->Address:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 92
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Lmiui/upnp/typedef/device/urn/DeviceType;
    .locals 1

    .line 50
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

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

    .line 58
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->discoveryTypes:Ljava/util/List;

    return-object v0
.end method

.method public getDlnaCap()Ljava/lang/String;
    .locals 2

    .line 204
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->DlnaCap:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDlnaDoc()Ljava/lang/String;
    .locals 2

    .line 196
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->DlnaDoc:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 2

    .line 100
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->FriendlyName:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHostPort()I
    .locals 2

    .line 84
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->HostPort:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/Icon;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->icons:Ljava/util/List;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .line 68
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->Location:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 2

    .line 108
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->Manufacturer:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerUrl()Ljava/lang/String;
    .locals 2

    .line 116
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->ManufacturerUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getModelDescription()Ljava/lang/String;
    .locals 2

    .line 124
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->ModelDescription:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 2

    .line 132
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->ModelName:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 2

    .line 140
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->ModelNumber:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getModelUrl()Ljava/lang/String;
    .locals 2

    .line 148
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->ModelUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPresentationUrl()Ljava/lang/String;
    .locals 2

    .line 164
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->PresentationUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getQplayCapability()Ljava/lang/String;
    .locals 2

    .line 188
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->QplayCapability:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 2

    .line 156
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->SerialNumber:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Lmiui/upnp/typedef/device/Service;
    .locals 1
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->services:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/device/Service;

    return-object v0
.end method

.method public getServices()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/upnp/typedef/device/Service;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->services:Ljava/util/Map;

    return-object v0
.end method

.method public getUpc()Ljava/lang/String;
    .locals 2

    .line 180
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->Upc:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUrlBase()Ljava/lang/String;
    .locals 2

    .line 172
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->UrlBase:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 25
    const/16 v0, 0x1f

    .line 26
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 27
    .local v1, "result":I
    iget-object v2, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v3, Lmiui/upnp/typedef/device/DeviceDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v2, v3}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 28
    .local v2, "deviceId":Ljava/lang/String;
    const/16 v3, 0x1f

    mul-int/2addr v3, v1

    if-nez v2, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    .line 29
    .end local v1    # "result":I
    .local v3, "result":I
    return v3
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/upnp/typedef/device/urn/DeviceType;->create(Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/DeviceType;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/device/Device;->deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

    .line 284
    const-class v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/field/FieldList;

    iput-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 287
    .local v0, "n":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/upnp/typedef/device/DiscoveryType;->retrieveType(Ljava/lang/String;)Lmiui/upnp/typedef/device/DiscoveryType;

    move-result-object v3

    .line 289
    .local v3, "discoveryType":Lmiui/upnp/typedef/device/DiscoveryType;
    iget-object v4, p0, Lmiui/upnp/typedef/device/Device;->discoveryTypes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    .end local v3    # "discoveryType":Lmiui/upnp/typedef/device/DiscoveryType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 293
    move v2, v1

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 294
    const-class v3, Lmiui/upnp/typedef/device/Icon;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lmiui/upnp/typedef/device/Icon;

    .line 295
    .local v3, "icon":Lmiui/upnp/typedef/device/Icon;
    iget-object v4, p0, Lmiui/upnp/typedef/device/Device;->icons:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v3    # "icon":Lmiui/upnp/typedef/device/Icon;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 298
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 299
    nop

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 300
    const-class v2, Lmiui/upnp/typedef/device/Service;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/device/Service;

    .line 301
    .local v2, "service":Lmiui/upnp/typedef/device/Service;
    invoke-virtual {p0, v2}, Lmiui/upnp/typedef/device/Device;->addService(Lmiui/upnp/typedef/device/Service;)V

    .line 299
    .end local v2    # "service":Lmiui/upnp/typedef/device/Service;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 303
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public setAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->Address:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDeviceId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDeviceType(Lmiui/upnp/typedef/device/urn/DeviceType;)V
    .locals 0
    .param p1, "type"    # Lmiui/upnp/typedef/device/urn/DeviceType;

    .line 54
    iput-object p1, p0, Lmiui/upnp/typedef/device/Device;->deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

    .line 55
    return-void
.end method

.method public setDlnaCap(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cap"    # Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->DlnaCap:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDlnaDoc(Ljava/lang/String;)Z
    .locals 2
    .param p1, "doc"    # Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->DlnaDoc:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setFriendlyName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->FriendlyName:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setHostPort(I)Z
    .locals 3
    .param p1, "port"    # I

    .line 88
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->HostPort:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setLocation(Ljava/lang/String;)Z
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->Location:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setManufacturer(Ljava/lang/String;)Z
    .locals 2
    .param p1, "manufacturer"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->Manufacturer:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setManufacturerUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->ManufacturerUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setModelDescription(Ljava/lang/String;)Z
    .locals 2
    .param p1, "description"    # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->ModelDescription:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setModelName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->ModelName:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setModelNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->ModelNumber:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setModelUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->ModelUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setPresentationUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->PresentationUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setQplayCapability(Ljava/lang/String;)Z
    .locals 2
    .param p1, "capability"    # Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->QplayCapability:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setSerialNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->SerialNumber:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setUpc(Ljava/lang/String;)Z
    .locals 2
    .param p1, "upc"    # Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->Upc:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setUrlBase(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/DeviceDefinition;->UrlBase:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 312
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

    invoke-virtual {v0}, Lmiui/upnp/typedef/device/urn/DeviceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->fields:Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 315
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->discoveryTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->discoveryTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/DiscoveryType;

    .line 317
    .local v1, "discoveryType":Lmiui/upnp/typedef/device/DiscoveryType;
    invoke-virtual {v1}, Lmiui/upnp/typedef/device/DiscoveryType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    .end local v1    # "discoveryType":Lmiui/upnp/typedef/device/DiscoveryType;
    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->icons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->icons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/Icon;

    .line 322
    .local v1, "icon":Lmiui/upnp/typedef/device/Icon;
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 323
    .end local v1    # "icon":Lmiui/upnp/typedef/device/Icon;
    goto :goto_1

    .line 325
    :cond_1
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->services:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget-object v0, p0, Lmiui/upnp/typedef/device/Device;->services:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/Service;

    .line 327
    .local v1, "service":Lmiui/upnp/typedef/device/Service;
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 328
    .end local v1    # "service":Lmiui/upnp/typedef/device/Service;
    goto :goto_2

    .line 329
    :cond_2
    return-void
.end method
