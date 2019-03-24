.class Lmiui/upnp/manager/UpnpControlPoint$2;
.super Lmiui/upnp/service/handler/IScanListener$Stub;
.source "UpnpControlPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/upnp/manager/UpnpControlPoint;->startScan(Ljava/util/List;Lmiui/upnp/manager/handler/UpnpCompletionHandler;Lmiui/upnp/manager/handler/UpnpScanListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/upnp/manager/UpnpControlPoint;

.field final synthetic val$listener:Lmiui/upnp/manager/handler/UpnpScanListener;


# direct methods
.method constructor <init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/manager/handler/UpnpScanListener;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/upnp/manager/UpnpControlPoint;

    .line 120
    iput-object p1, p0, Lmiui/upnp/manager/UpnpControlPoint$2;->this$0:Lmiui/upnp/manager/UpnpControlPoint;

    iput-object p2, p0, Lmiui/upnp/manager/UpnpControlPoint$2;->val$listener:Lmiui/upnp/manager/handler/UpnpScanListener;

    invoke-direct {p0}, Lmiui/upnp/service/handler/IScanListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceFound(Lmiui/upnp/typedef/device/Device;)V
    .locals 3
    .param p1, "device"    # Lmiui/upnp/typedef/device/Device;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-static {}, Lmiui/upnp/manager/UpnpControlPoint;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDeviceFound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {p1}, Lmiui/upnp/manager/ctrlpoint/DeviceFactory;->createDevice(Lmiui/upnp/typedef/device/Device;)Lmiui/upnp/manager/ctrlpoint/AbstractDevice;

    move-result-object v0

    .line 127
    .local v0, "d":Lmiui/upnp/manager/ctrlpoint/AbstractDevice;
    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Lmiui/upnp/manager/UpnpControlPoint;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceFactory createDevice failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 133
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmiui/upnp/manager/UpnpControlPoint$2;->val$listener:Lmiui/upnp/manager/handler/UpnpScanListener;

    invoke-interface {v1, v0}, Lmiui/upnp/manager/handler/UpnpScanListener;->onDeviceFound(Lmiui/upnp/manager/ctrlpoint/AbstractDevice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onDeviceLost(Lmiui/upnp/typedef/device/Device;)V
    .locals 3
    .param p1, "device"    # Lmiui/upnp/typedef/device/Device;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    invoke-static {}, Lmiui/upnp/manager/UpnpControlPoint;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDeviceLost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {p1}, Lmiui/upnp/manager/ctrlpoint/DeviceFactory;->createDevice(Lmiui/upnp/typedef/device/Device;)Lmiui/upnp/manager/ctrlpoint/AbstractDevice;

    move-result-object v0

    .line 144
    .local v0, "d":Lmiui/upnp/manager/ctrlpoint/AbstractDevice;
    if-nez v0, :cond_0

    .line 145
    invoke-static {}, Lmiui/upnp/manager/UpnpControlPoint;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceFactory createDevice failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 150
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmiui/upnp/manager/UpnpControlPoint$2;->val$listener:Lmiui/upnp/manager/handler/UpnpScanListener;

    invoke-interface {v1, v0}, Lmiui/upnp/manager/handler/UpnpScanListener;->onDeviceLost(Lmiui/upnp/manager/ctrlpoint/AbstractDevice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onDeviceUpdate(Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;)V
    .locals 2
    .param p1, "update"    # Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-static {}, Lmiui/upnp/manager/UpnpControlPoint;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDeviceUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$2;->val$listener:Lmiui/upnp/manager/handler/UpnpScanListener;

    invoke-interface {v0, p1}, Lmiui/upnp/manager/handler/UpnpScanListener;->onDeviceUpdate(Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
