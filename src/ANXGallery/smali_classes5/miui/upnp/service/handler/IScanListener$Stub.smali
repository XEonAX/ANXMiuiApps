.class public abstract Lmiui/upnp/service/handler/IScanListener$Stub;
.super Landroid/os/Binder;
.source "IScanListener.java"

# interfaces
.implements Lmiui/upnp/service/handler/IScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/service/handler/IScanListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/upnp/service/handler/IScanListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.upnp.service.handler.IScanListener"

.field static final TRANSACTION_onDeviceFound:I = 0x1

.field static final TRANSACTION_onDeviceLost:I = 0x2

.field static final TRANSACTION_onDeviceUpdate:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "miui.upnp.service.handler.IScanListener"

    invoke-virtual {p0, p0, v0}, Lmiui/upnp/service/handler/IScanListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/IScanListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "miui.upnp.service.handler.IScanListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/upnp/service/handler/IScanListener;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lmiui/upnp/service/handler/IScanListener;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lmiui/upnp/service/handler/IScanListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/upnp/service/handler/IScanListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const-string v0, "miui.upnp.service.handler.IScanListener"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 79
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    sget-object v1, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;

    .local v1, "_arg0":Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;
    goto :goto_0

    .line 85
    .end local v1    # "_arg0":Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;
    :cond_0
    nop

    .line 87
    .restart local v1    # "_arg0":Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;
    :goto_0
    invoke-virtual {p0, v1}, Lmiui/upnp/service/handler/IScanListener$Stub;->onDeviceUpdate(Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    return v2

    .line 65
    .end local v1    # "_arg0":Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    sget-object v1, Lmiui/upnp/typedef/device/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/Device;

    .local v1, "_arg0":Lmiui/upnp/typedef/device/Device;
    goto :goto_1

    .line 71
    .end local v1    # "_arg0":Lmiui/upnp/typedef/device/Device;
    :cond_1
    nop

    .line 73
    .restart local v1    # "_arg0":Lmiui/upnp/typedef/device/Device;
    :goto_1
    invoke-virtual {p0, v1}, Lmiui/upnp/service/handler/IScanListener$Stub;->onDeviceLost(Lmiui/upnp/typedef/device/Device;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    return v2

    .line 51
    .end local v1    # "_arg0":Lmiui/upnp/typedef/device/Device;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    sget-object v1, Lmiui/upnp/typedef/device/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/Device;

    .restart local v1    # "_arg0":Lmiui/upnp/typedef/device/Device;
    goto :goto_2

    .line 57
    .end local v1    # "_arg0":Lmiui/upnp/typedef/device/Device;
    :cond_2
    nop

    .line 59
    .restart local v1    # "_arg0":Lmiui/upnp/typedef/device/Device;
    :goto_2
    invoke-virtual {p0, v1}, Lmiui/upnp/service/handler/IScanListener$Stub;->onDeviceFound(Lmiui/upnp/typedef/device/Device;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    return v2

    .line 46
    .end local v1    # "_arg0":Lmiui/upnp/typedef/device/Device;
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
