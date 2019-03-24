.class Lmiui/upnp/typedef/device/invocation/ActionInfo$1;
.super Ljava/lang/Object;
.source "ActionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/typedef/device/invocation/ActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/upnp/typedef/device/invocation/ActionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/invocation/ActionInfo$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/upnp/typedef/device/invocation/ActionInfo;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/upnp/typedef/device/invocation/ActionInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 190
    new-instance v0, Lmiui/upnp/typedef/device/invocation/ActionInfo;

    invoke-direct {v0, p1}, Lmiui/upnp/typedef/device/invocation/ActionInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/invocation/ActionInfo$1;->newArray(I)[Lmiui/upnp/typedef/device/invocation/ActionInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmiui/upnp/typedef/device/invocation/ActionInfo;
    .locals 1
    .param p1, "size"    # I

    .line 195
    new-array v0, p1, [Lmiui/upnp/typedef/device/invocation/ActionInfo;

    return-object v0
.end method
