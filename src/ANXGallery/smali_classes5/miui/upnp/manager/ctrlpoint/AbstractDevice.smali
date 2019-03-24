.class public abstract Lmiui/upnp/manager/ctrlpoint/AbstractDevice;
.super Ljava/lang/Object;
.source "AbstractDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public device:Lmiui/upnp/typedef/device/Device;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 13
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 14
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 16
    :cond_1
    move-object v2, p1

    check-cast v2, Lmiui/upnp/manager/ctrlpoint/AbstractDevice;

    .line 18
    .local v2, "that":Lmiui/upnp/manager/ctrlpoint/AbstractDevice;
    iget-object v3, p0, Lmiui/upnp/manager/ctrlpoint/AbstractDevice;->device:Lmiui/upnp/typedef/device/Device;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmiui/upnp/manager/ctrlpoint/AbstractDevice;->device:Lmiui/upnp/typedef/device/Device;

    iget-object v4, v2, Lmiui/upnp/manager/ctrlpoint/AbstractDevice;->device:Lmiui/upnp/typedef/device/Device;

    invoke-virtual {v3, v4}, Lmiui/upnp/typedef/device/Device;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lmiui/upnp/manager/ctrlpoint/AbstractDevice;->device:Lmiui/upnp/typedef/device/Device;

    if-nez v3, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    :goto_1
    return v0

    .line 14
    .end local v2    # "that":Lmiui/upnp/manager/ctrlpoint/AbstractDevice;
    :cond_5
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 24
    iget-object v0, p0, Lmiui/upnp/manager/ctrlpoint/AbstractDevice;->device:Lmiui/upnp/typedef/device/Device;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/upnp/manager/ctrlpoint/AbstractDevice;->device:Lmiui/upnp/typedef/device/Device;

    invoke-virtual {v0}, Lmiui/upnp/typedef/device/Device;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
