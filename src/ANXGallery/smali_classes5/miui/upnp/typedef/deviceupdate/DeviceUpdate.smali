.class public Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;
.super Ljava/lang/Object;
.source "DeviceUpdate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fields:Lmiui/upnp/typedef/field/FieldList;

.field private types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->types:Ljava/util/List;

    .line 15
    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 18
    invoke-direct {p0}, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->initialize()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->types:Ljava/util/List;

    .line 15
    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 52
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->readFromParcel(Landroid/os/Parcel;)V

    .line 53
    return-void
.end method

.method private initialize()V
    .locals 3

    .line 48
    iget-object v0, p0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateDefinition;->DiscoveryType:Lmiui/upnp/typedef/field/FieldDefinition;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 49
    return-void
.end method


# virtual methods
.method public addType(Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;)V
    .locals 1
    .param p1, "type"    # Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

    .line 26
    iget-object v0, p0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->types:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->types:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 32
    iget-object v0, p0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDiscoveryType()Lmiui/upnp/typedef/device/DiscoveryType;
    .locals 2

    .line 44
    iget-object v0, p0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateDefinition;->DiscoveryType:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lmiui/upnp/typedef/device/DiscoveryType;->retrieveType(Ljava/lang/String;)Lmiui/upnp/typedef/device/DiscoveryType;

    move-result-object v0

    return-object v0
.end method

.method public getTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->types:Ljava/util/List;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;->retrieveType(Ljava/lang/String;)Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

    move-result-object v2

    .line 59
    .local v2, "type":Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;
    iget-object v3, p0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->types:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v2    # "type":Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "i":I
    :cond_0
    const-class v1, Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/field/FieldList;

    iput-object v1, p0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 63
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDiscoveryType(Lmiui/upnp/typedef/device/DiscoveryType;)Z
    .locals 3
    .param p1, "discoveryType"    # Lmiui/upnp/typedef/device/DiscoveryType;

    .line 40
    iget-object v0, p0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateDefinition;->DiscoveryType:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {p1}, Lmiui/upnp/typedef/device/DiscoveryType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 67
    iget-object v0, p0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->types:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->types:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

    .line 69
    .local v1, "type":Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;
    invoke-virtual {v1}, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    .end local v1    # "type":Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;
    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->fields:Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 73
    return-void
.end method
