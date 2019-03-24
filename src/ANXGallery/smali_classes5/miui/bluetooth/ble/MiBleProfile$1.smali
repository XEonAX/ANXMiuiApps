.class Lmiui/bluetooth/ble/MiBleProfile$1;
.super Ljava/lang/Object;
.source "MiBleProfile.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/bluetooth/ble/MiBleProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/bluetooth/ble/MiBleProfile;


# direct methods
.method constructor <init>(Lmiui/bluetooth/ble/MiBleProfile;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/bluetooth/ble/MiBleProfile;

    .line 227
    iput-object p1, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 239
    const-string v0, "MiBleProfile"

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-static {p2}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IBluetoothMiBle;

    move-result-object v1

    iput-object v1, v0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    .line 242
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-static {v0}, Lmiui/bluetooth/ble/MiBleProfile;->access$100(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-static {v1}, Lmiui/bluetooth/ble/MiBleProfile;->access$100(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v4, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    iget-object v0, v0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-static {v1}, Lmiui/bluetooth/ble/MiBleProfile;->access$200(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    iget-object v4, v4, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v5, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    iget-object v5, v5, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    iget-object v6, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-static {v6}, Lmiui/bluetooth/ble/MiBleProfile;->access$300(Lmiui/bluetooth/ble/MiBleProfile;)Lmiui/bluetooth/ble/IBluetoothMiBleCallback;

    move-result-object v6

    invoke-interface {v0, v1, v4, v5, v6}, Lmiui/bluetooth/ble/IBluetoothMiBle;->registerClient(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBleCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiBleProfile"

    const-string v4, "onServiceConnected"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-static {v1}, Lmiui/bluetooth/ble/MiBleProfile;->access$100(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-static {v4}, Lmiui/bluetooth/ble/MiBleProfile;->access$100(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v2, v5, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-static {v0}, Lmiui/bluetooth/ble/MiBleProfile;->access$400(Lmiui/bluetooth/ble/MiBleProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-static {v0, v3}, Lmiui/bluetooth/ble/MiBleProfile;->access$402(Lmiui/bluetooth/ble/MiBleProfile;Z)Z

    .line 252
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleProfile;->connect()V

    .line 254
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 231
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    const/4 v1, 0x0

    iput-object v1, v0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    .line 232
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/bluetooth/ble/MiBleProfile;->access$002(Lmiui/bluetooth/ble/MiBleProfile;I)I

    .line 233
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-static {v0}, Lmiui/bluetooth/ble/MiBleProfile;->access$100(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile$1;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-static {v2}, Lmiui/bluetooth/ble/MiBleProfile;->access$100(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    return-void
.end method
