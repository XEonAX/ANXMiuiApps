.class Lmiui/bluetooth/ble/MiBleProfile$3;
.super Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback$Stub;
.source "MiBleProfile.java"


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

    .line 274
    iput-object p1, p0, Lmiui/bluetooth/ble/MiBleProfile$3;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-direct {p0}, Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyProperty(Landroid/os/ParcelUuid;I[B)V
    .locals 3
    .param p1, "clientId"    # Landroid/os/ParcelUuid;
    .param p2, "property"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    const-string v0, "MiBleProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPropertyCallback() property="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile$3;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    iget-object v0, v0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile$3;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-static {v0}, Lmiui/bluetooth/ble/MiBleProfile;->access$100(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 287
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 288
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 289
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile$3;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-static {v1}, Lmiui/bluetooth/ble/MiBleProfile;->access$100(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 290
    return-void
.end method
