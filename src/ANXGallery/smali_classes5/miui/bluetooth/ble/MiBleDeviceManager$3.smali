.class Lmiui/bluetooth/ble/MiBleDeviceManager$3;
.super Lmiui/bluetooth/ble/IScanDeviceCallback$Stub;
.source "MiBleDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/bluetooth/ble/MiBleDeviceManager;->startScanDevice(ILandroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/bluetooth/ble/MiBleDeviceManager;

.field final synthetic val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field final synthetic val$property:I


# direct methods
.method constructor <init>(Lmiui/bluetooth/ble/MiBleDeviceManager;ILandroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/bluetooth/ble/MiBleDeviceManager;

    .line 467
    iput-object p1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager$3;->this$0:Lmiui/bluetooth/ble/MiBleDeviceManager;

    iput p2, p0, Lmiui/bluetooth/ble/MiBleDeviceManager$3;->val$property:I

    iput-object p3, p0, Lmiui/bluetooth/ble/MiBleDeviceManager$3;->val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-direct {p0}, Lmiui/bluetooth/ble/IScanDeviceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanDevice(ILandroid/bluetooth/BluetoothDevice;I[B)V
    .locals 1
    .param p1, "inProperty"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "rssi"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    iget v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager$3;->val$property:I

    if-ne p1, v0, :cond_0

    .line 474
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager$3;->val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-interface {v0, p2, p3, p4}, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    .line 476
    :cond_0
    return-void
.end method
