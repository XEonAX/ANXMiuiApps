.class public abstract Lmiui/bluetooth/ble/IBluetoothMiBleCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothMiBleCallback.java"

# interfaces
.implements Lmiui/bluetooth/ble/IBluetoothMiBleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/bluetooth/ble/IBluetoothMiBleCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/bluetooth/ble/IBluetoothMiBleCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.bluetooth.ble.IBluetoothMiBleCallback"

.field static final TRANSACTION_onConnectionState:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "miui.bluetooth.ble.IBluetoothMiBleCallback"

    invoke-virtual {p0, p0, v0}, Lmiui/bluetooth/ble/IBluetoothMiBleCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IBluetoothMiBleCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "miui.bluetooth.ble.IBluetoothMiBleCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/bluetooth/ble/IBluetoothMiBleCallback;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Lmiui/bluetooth/ble/IBluetoothMiBleCallback;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Lmiui/bluetooth/ble/IBluetoothMiBleCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/bluetooth/ble/IBluetoothMiBleCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 38
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

    .line 42
    const-string v0, "miui.bluetooth.ble.IBluetoothMiBleCallback"

    .line 43
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 47
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v1

    .line 52
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .local v2, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_0

    .line 58
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    :cond_2
    const/4 v2, 0x0

    .line 61
    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 62
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lmiui/bluetooth/ble/IBluetoothMiBleCallback$Stub;->onConnectionState(Landroid/os/ParcelUuid;I)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    return v1
.end method
