.class public Lmiui/upnp/manager/ctrlpoint/UnknownDevice;
.super Lmiui/upnp/manager/ctrlpoint/AbstractDevice;
.source "UnknownDevice.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/manager/ctrlpoint/UnknownDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_TYPE:Lmiui/upnp/typedef/device/urn/DeviceType;

.field private static final classLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lmiui/upnp/typedef/device/urn/DeviceType;

    const-string v1, "?"

    const-string v2, "?"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/device/urn/DeviceType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;->DEVICE_TYPE:Lmiui/upnp/typedef/device/urn/DeviceType;

    .line 11
    const-class v0, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;

    sput-object v0, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;->classLock:Ljava/lang/Object;

    .line 23
    new-instance v0, Lmiui/upnp/manager/ctrlpoint/UnknownDevice$1;

    invoke-direct {v0}, Lmiui/upnp/manager/ctrlpoint/UnknownDevice$1;-><init>()V

    sput-object v0, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 36
    invoke-direct {p0}, Lmiui/upnp/manager/ctrlpoint/AbstractDevice;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;->readFromParcel(Landroid/os/Parcel;)V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/upnp/manager/ctrlpoint/UnknownDevice$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lmiui/upnp/manager/ctrlpoint/UnknownDevice$1;

    .line 8
    invoke-direct {p0, p1}, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lmiui/upnp/typedef/device/Device;)V
    .locals 0
    .param p1, "device"    # Lmiui/upnp/typedef/device/Device;

    .line 19
    invoke-direct {p0}, Lmiui/upnp/manager/ctrlpoint/AbstractDevice;-><init>()V

    .line 20
    iput-object p1, p0, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;->device:Lmiui/upnp/typedef/device/Device;

    .line 21
    return-void
.end method

.method public static create(Lmiui/upnp/typedef/device/Device;)Lmiui/upnp/manager/ctrlpoint/UnknownDevice;
    .locals 2
    .param p0, "device"    # Lmiui/upnp/typedef/device/Device;

    .line 14
    sget-object v0, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;->classLock:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_0
    new-instance v1, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;

    invoke-direct {v1, p0}, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;-><init>(Lmiui/upnp/typedef/device/Device;)V

    monitor-exit v0

    return-object v1

    .line 16
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 41
    const-class v0, Lmiui/upnp/typedef/device/Device;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/device/Device;

    iput-object v0, p0, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;->device:Lmiui/upnp/typedef/device/Device;

    .line 42
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 51
    iget-object v0, p0, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;->device:Lmiui/upnp/typedef/device/Device;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 52
    return-void
.end method
