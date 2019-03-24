.class Lmiui/bluetooth/ble/MiBleDeviceManager$2;
.super Ljava/lang/Object;
.source "MiBleDeviceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/bluetooth/ble/MiBleDeviceManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/bluetooth/ble/MiBleDeviceManager;


# direct methods
.method constructor <init>(Lmiui/bluetooth/ble/MiBleDeviceManager;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/bluetooth/ble/MiBleDeviceManager;

    .line 205
    iput-object p1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager$2;->this$0:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 208
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager$2;->this$0:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-static {v0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->access$100(Lmiui/bluetooth/ble/MiBleDeviceManager;)Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;

    move-result-object v0

    invoke-interface {v0}, Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;->onDestroy()V

    .line 209
    return-void
.end method
