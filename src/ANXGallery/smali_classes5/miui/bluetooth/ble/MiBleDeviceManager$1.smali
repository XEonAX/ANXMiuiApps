.class Lmiui/bluetooth/ble/MiBleDeviceManager$1;
.super Ljava/lang/Object;
.source "MiBleDeviceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/bluetooth/ble/MiBleDeviceManager;
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

    .line 137
    iput-object p1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager$1;->this$0:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .line 140
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager$1;->this$0:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-static {p2}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IMiBleDeviceManager;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/bluetooth/ble/MiBleDeviceManager;->access$000(Lmiui/bluetooth/ble/MiBleDeviceManager;Lmiui/bluetooth/ble/IMiBleDeviceManager;)V

    .line 141
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager$1;->this$0:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-static {v0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->access$100(Lmiui/bluetooth/ble/MiBleDeviceManager;)Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager$1;->this$0:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-static {v0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->access$100(Lmiui/bluetooth/ble/MiBleDeviceManager;)Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager$1;->this$0:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-interface {v0, v1}, Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;->onInit(Lmiui/bluetooth/ble/MiBleDeviceManager;)V

    .line 144
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 148
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager$1;->this$0:Lmiui/bluetooth/ble/MiBleDeviceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/bluetooth/ble/MiBleDeviceManager;->access$000(Lmiui/bluetooth/ble/MiBleDeviceManager;Lmiui/bluetooth/ble/IMiBleDeviceManager;)V

    .line 149
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager$1;->this$0:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-static {v0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->access$100(Lmiui/bluetooth/ble/MiBleDeviceManager;)Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager$1;->this$0:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-static {v0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->access$100(Lmiui/bluetooth/ble/MiBleDeviceManager;)Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;

    move-result-object v0

    invoke-interface {v0}, Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;->onDestroy()V

    .line 152
    :cond_0
    return-void
.end method
