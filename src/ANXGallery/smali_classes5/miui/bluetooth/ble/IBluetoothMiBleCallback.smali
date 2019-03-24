.class public interface abstract Lmiui/bluetooth/ble/IBluetoothMiBleCallback;
.super Ljava/lang/Object;
.source "IBluetoothMiBleCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/bluetooth/ble/IBluetoothMiBleCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onConnectionState(Landroid/os/ParcelUuid;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
