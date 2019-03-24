.class public Lmiui/upnp/typedef/deviceclass/DeviceClass;
.super Ljava/lang/Object;
.source "DeviceClass.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/deviceclass/DeviceClass;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lmiui/upnp/typedef/deviceclass/DeviceClass$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/deviceclass/DeviceClass$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-direct {p0, p1}, Lmiui/upnp/typedef/deviceclass/DeviceClass;->readFromParcel(Landroid/os/Parcel;)V

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/upnp/typedef/deviceclass/DeviceClass$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lmiui/upnp/typedef/deviceclass/DeviceClass$1;

    .line 10
    invoke-direct {p0, p1}, Lmiui/upnp/typedef/deviceclass/DeviceClass;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lmiui/upnp/typedef/device/urn/DeviceType;Ljava/lang/Class;)V
    .locals 0
    .param p1, "type"    # Lmiui/upnp/typedef/device/urn/DeviceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/upnp/typedef/device/urn/DeviceType;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 15
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

    .line 17
    iput-object p2, p0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->clazz:Ljava/lang/Class;

    .line 18
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/upnp/typedef/device/urn/DeviceType;->create(Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/DeviceType;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->clazz:Ljava/lang/Class;

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 30
    instance-of v0, p1, Lmiui/upnp/typedef/deviceclass/DeviceClass;

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    return v0

    .line 34
    :cond_0
    move-object v0, p1

    check-cast v0, Lmiui/upnp/typedef/deviceclass/DeviceClass;

    .line 35
    .local v0, "other":Lmiui/upnp/typedef/deviceclass/DeviceClass;
    iget-object v1, p0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

    iget-object v2, v0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

    invoke-virtual {v1, v2}, Lmiui/upnp/typedef/device/urn/DeviceType;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getDeviceType()Lmiui/upnp/typedef/device/urn/DeviceType;
    .locals 1

    .line 21
    iget-object v0, p0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 40
    iget-object v0, p0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

    invoke-virtual {v0}, Lmiui/upnp/typedef/device/urn/DeviceType;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 50
    iget-object v0, p0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

    invoke-virtual {v0}, Lmiui/upnp/typedef/device/urn/DeviceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->clazz:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 52
    return-void
.end method
