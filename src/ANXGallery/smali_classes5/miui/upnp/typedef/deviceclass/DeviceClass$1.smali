.class Lmiui/upnp/typedef/deviceclass/DeviceClass$1;
.super Ljava/lang/Object;
.source "DeviceClass.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/typedef/deviceclass/DeviceClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/upnp/typedef/deviceclass/DeviceClass;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/deviceclass/DeviceClass$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/upnp/typedef/deviceclass/DeviceClass;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/upnp/typedef/deviceclass/DeviceClass;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 65
    new-instance v0, Lmiui/upnp/typedef/deviceclass/DeviceClass;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/upnp/typedef/deviceclass/DeviceClass;-><init>(Landroid/os/Parcel;Lmiui/upnp/typedef/deviceclass/DeviceClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/deviceclass/DeviceClass$1;->newArray(I)[Lmiui/upnp/typedef/deviceclass/DeviceClass;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmiui/upnp/typedef/deviceclass/DeviceClass;
    .locals 1
    .param p1, "size"    # I

    .line 68
    new-array v0, p1, [Lmiui/upnp/typedef/deviceclass/DeviceClass;

    return-object v0
.end method
