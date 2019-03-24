.class Lmiui/upnp/typedef/device/Subscription$1;
.super Ljava/lang/Object;
.source "Subscription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/typedef/device/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/upnp/typedef/device/Subscription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/Subscription$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/upnp/typedef/device/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/upnp/typedef/device/Subscription;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 49
    new-instance v0, Lmiui/upnp/typedef/device/Subscription;

    invoke-direct {v0, p1}, Lmiui/upnp/typedef/device/Subscription;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/Subscription$1;->newArray(I)[Lmiui/upnp/typedef/device/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmiui/upnp/typedef/device/Subscription;
    .locals 1
    .param p1, "size"    # I

    .line 54
    new-array v0, p1, [Lmiui/upnp/typedef/device/Subscription;

    return-object v0
.end method
