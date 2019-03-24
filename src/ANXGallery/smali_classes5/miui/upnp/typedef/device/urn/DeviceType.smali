.class public Lmiui/upnp/typedef/device/urn/DeviceType;
.super Lmiui/upnp/typedef/device/urn/Urn;
.source "DeviceType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/device/urn/DeviceType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lmiui/upnp/typedef/device/urn/DeviceType$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/DeviceType$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/device/urn/DeviceType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lmiui/upnp/typedef/device/urn/Urn;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 67
    invoke-direct {p0}, Lmiui/upnp/typedef/device/urn/Urn;-><init>()V

    .line 68
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/urn/DeviceType;->readFromParcel(Landroid/os/Parcel;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Lmiui/upnp/typedef/device/urn/Urn;-><init>()V

    .line 12
    sget-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->DEVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

    invoke-super {p0, v0}, Lmiui/upnp/typedef/device/urn/Urn;->setType(Lmiui/upnp/typedef/device/urn/Urn$Type;)V

    .line 13
    const-string v0, "schemas-upnp-org"

    invoke-super {p0, v0}, Lmiui/upnp/typedef/device/urn/Urn;->setDomain(Ljava/lang/String;)V

    .line 14
    invoke-super {p0, p1}, Lmiui/upnp/typedef/device/urn/Urn;->setSubType(Ljava/lang/String;)V

    .line 15
    invoke-super {p0, p2}, Lmiui/upnp/typedef/device/urn/Urn;->setVersion(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static create(Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/DeviceType;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .line 19
    new-instance v0, Lmiui/upnp/typedef/device/urn/DeviceType;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/DeviceType;-><init>()V

    .line 20
    .local v0, "thiz":Lmiui/upnp/typedef/device/urn/DeviceType;
    invoke-virtual {v0, p0}, Lmiui/upnp/typedef/device/urn/DeviceType;->parse(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 24
    :cond_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lmiui/upnp/typedef/device/urn/DeviceType;->getSubType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Z
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .line 32
    invoke-super {p0, p1}, Lmiui/upnp/typedef/device/urn/Urn;->parse(Ljava/lang/String;)Z

    move-result v0

    .line 33
    .local v0, "ret":Z
    if-nez v0, :cond_0

    .line 34
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lmiui/upnp/typedef/device/urn/DeviceType;->getType()Lmiui/upnp/typedef/device/urn/Urn$Type;

    move-result-object v1

    sget-object v2, Lmiui/upnp/typedef/device/urn/Urn$Type;->DEVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

    if-eq v1, v2, :cond_1

    .line 38
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/upnp/typedef/device/urn/DeviceType;->parse(Ljava/lang/String;)Z

    .line 73
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 82
    invoke-virtual {p0}, Lmiui/upnp/typedef/device/urn/DeviceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return-void
.end method
