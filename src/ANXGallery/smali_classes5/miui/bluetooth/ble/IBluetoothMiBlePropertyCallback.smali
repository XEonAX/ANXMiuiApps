.class public interface abstract Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;
.super Ljava/lang/Object;
.source "IBluetoothMiBlePropertyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract notifyProperty(Landroid/os/ParcelUuid;I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
