.class Lmiui/upnp/typedef/device/Icon$1;
.super Ljava/lang/Object;
.source "Icon.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/typedef/device/Icon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/upnp/typedef/device/Icon;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/Icon$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/upnp/typedef/device/Icon;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/upnp/typedef/device/Icon;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 84
    new-instance v0, Lmiui/upnp/typedef/device/Icon;

    invoke-direct {v0, p1}, Lmiui/upnp/typedef/device/Icon;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/Icon$1;->newArray(I)[Lmiui/upnp/typedef/device/Icon;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmiui/upnp/typedef/device/Icon;
    .locals 1
    .param p1, "size"    # I

    .line 88
    new-array v0, p1, [Lmiui/upnp/typedef/device/Icon;

    return-object v0
.end method
