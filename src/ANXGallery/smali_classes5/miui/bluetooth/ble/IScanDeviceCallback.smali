.class public interface abstract Lmiui/bluetooth/ble/IScanDeviceCallback;
.super Ljava/lang/Object;
.source "IScanDeviceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/bluetooth/ble/IScanDeviceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onScanDevice(ILandroid/bluetooth/BluetoothDevice;I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
