.class Lmiui/upnp/service/handler/IActionListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IActionListener.java"

# interfaces
.implements Lmiui/upnp/service/handler/IActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/service/handler/IActionListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lmiui/upnp/service/handler/IActionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 89
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 92
    iget-object v0, p0, Lmiui/upnp/service/handler/IActionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "miui.upnp.service.handler.IActionListener"

    return-object v0
.end method

.method public onAction(Lmiui/upnp/typedef/device/invocation/ActionInfo;)Lmiui/upnp/typedef/error/UpnpError;
    .locals 5
    .param p1, "action"    # Lmiui/upnp/typedef/device/invocation/ActionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 101
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 104
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "miui.upnp.service.handler.IActionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 105
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {p1, v0, v3}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    :goto_0
    iget-object v4, p0, Lmiui/upnp/service/handler/IActionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 113
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 114
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    sget-object v2, Lmiui/upnp/typedef/error/UpnpError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/error/UpnpError;

    .local v2, "_result":Lmiui/upnp/typedef/error/UpnpError;
    goto :goto_1

    .line 118
    .end local v2    # "_result":Lmiui/upnp/typedef/error/UpnpError;
    :cond_1
    const/4 v2, 0x0

    .line 120
    .restart local v2    # "_result":Lmiui/upnp/typedef/error/UpnpError;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    invoke-virtual {p1, v1}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 127
    nop

    .line 126
    nop

    .line 128
    return-object v2

    .line 125
    .end local v2    # "_result":Lmiui/upnp/typedef/error/UpnpError;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
