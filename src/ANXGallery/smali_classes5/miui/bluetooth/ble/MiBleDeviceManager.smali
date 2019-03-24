.class public Lmiui/bluetooth/ble/MiBleDeviceManager;
.super Ljava/lang/Object;
.source "MiBleDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;
    }
.end annotation


# static fields
.field public static final ACTION_BLE_EVENT:Ljava/lang/String; = "miui.bluetooth.BLE_EVENT"

.field public static final BLE_EVENT_AWAKE:I = 0x5

.field public static final BLE_EVENT_CLICK:I = 0x1

.field public static final BLE_EVENT_CUSTOM:I = 0x100

.field public static final BLE_EVENT_DOUBLE_CLICK:I = 0x2

.field public static final BLE_EVENT_LINK_LOSS:I = 0x6

.field public static final BLE_EVENT_LONG_CLICK:I = 0x3

.field public static final BLE_EVENT_PHONE_HANGUP:I = 0x7

.field public static final BLE_EVENT_PHONE_IGNORE:I = 0x8

.field public static final BLE_EVENT_SLEEP:I = 0x4

.field public static final BLE_EVENT_UNKNOWN:I = 0x0

.field public static final BLE_IMMEDIATE_ALERT_PERMISSION:Ljava/lang/String; = "miui.permission.BLE_IMMEDIATE_ALERT"

.field private static final DBG:Z = true

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "miui.bluetooth.extras.DEVICE"

.field public static final EXTRA_EVENT:Ljava/lang/String; = "miui.bluetooth.extras.EVENT"

.field public static final EXTRA_EVENT_DATA:Ljava/lang/String; = "miui.bluetooth.extras.EVENT_DATA"

.field public static final SERVICE_VERSION_UNKNOWN:I = -0x1

.field public static final SETTING_BIND_DEVICE:Ljava/lang/String; = "device_type"

.field public static final SETTING_IMMEDIATE_ALERT_ALARM_ENABLED:Ljava/lang/String; = "alert_alarm_enabled"

.field public static final SETTING_IMMEDIATE_ALERT_INCALL_DELAYED:Ljava/lang/String; = "alert_incall_delayed"

.field public static final SETTING_IMMEDIATE_ALERT_INCALL_ENABLED:Ljava/lang/String; = "alert_incall_enabled"

.field public static final SETTING_IMMEDIATE_ALERT_INCALL_IN_CONTACTS_ENABLED:Ljava/lang/String; = "alert_incall_enabled_in_contacts"

.field public static final SETTING_IMMEDIATE_ALERT_INCALL_NO_CONTACTS_ENABLED:Ljava/lang/String; = "alert_incall_enabled_no_contacts"

.field public static final SETTING_IMMEDIATE_ALERT_SMS_ENABLED:Ljava/lang/String; = "alert_sms_enabled"

.field public static final SETTING_IMMEDIATE_ALERT_SMS_IN_CONTACTS_ENABLED:Ljava/lang/String; = "alert_sms_enabled_in_contacts"

.field public static final SETTING_IMMEDIATE_ALERT_SMS_NO_CONTACTS_ENABLED:Ljava/lang/String; = "alert_sms_enabled_no_contacts"

.field private static final TAG:Ljava/lang/String; = "MiBleDeviceManager"

.field public static final TYPE_MI_BAND:I = 0x1

.field public static final TYPE_MI_KEY:I = 0x45

.field public static final TYPE_MI_VR_CONTROLLER:I = 0x2

.field public static final TYPE_UNKNOWN:I


# instance fields
.field private mClientId:Landroid/os/ParcelUuid;

.field private mContext:Landroid/content/Context;

.field private mListener:Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;

.field private mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lmiui/bluetooth/ble/MiBleDeviceManager$1;

    invoke-direct {v0, p0}, Lmiui/bluetooth/ble/MiBleDeviceManager$1;-><init>(Lmiui/bluetooth/ble/MiBleDeviceManager;)V

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 157
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Landroid/os/ParcelUuid;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mClientId:Landroid/os/ParcelUuid;

    .line 162
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mToken:Landroid/os/IBinder;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mContext:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mListener:Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;

    .line 166
    return-void

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lmiui/bluetooth/ble/MiBleDeviceManager;Lmiui/bluetooth/ble/IMiBleDeviceManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/bluetooth/ble/MiBleDeviceManager;
    .param p1, "x1"    # Lmiui/bluetooth/ble/IMiBleDeviceManager;

    .line 27
    invoke-direct {p0, p1}, Lmiui/bluetooth/ble/MiBleDeviceManager;->setServie(Lmiui/bluetooth/ble/IMiBleDeviceManager;)V

    return-void
.end method

.method static synthetic access$100(Lmiui/bluetooth/ble/MiBleDeviceManager;)Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;
    .locals 1
    .param p0, "x0"    # Lmiui/bluetooth/ble/MiBleDeviceManager;

    .line 27
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mListener:Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;

    return-object v0
.end method

.method private checkReady()Z
    .locals 2

    .line 226
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    if-nez v0, :cond_0

    .line 227
    const-string v0, "MiBleDeviceManager"

    const-string v1, "Manager is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v0, 0x0

    return v0

    .line 231
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static createManager(Landroid/content/Context;Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;)Lmiui/bluetooth/ble/MiBleDeviceManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;

    .line 183
    new-instance v0, Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-direct {v0, p0, p1}, Lmiui/bluetooth/ble/MiBleDeviceManager;-><init>(Landroid/content/Context;Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;)V

    .line 184
    .local v0, "manager":Lmiui/bluetooth/ble/MiBleDeviceManager;
    invoke-direct {v0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->init()V

    .line 185
    return-object v0
.end method

.method public static getSettingKeyForEvent(I)Ljava/lang/String;
    .locals 4
    .param p0, "event"    # I

    .line 593
    const-string v0, "miui_ble_event_%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 7

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.bluetooth.mible.DeviceManagerService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.bluetooth"

    const-string v3, "com.android.bluetooth.ble.app.MiBleDeviceManagerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 193
    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 195
    .local v2, "ret":Z
    if-nez v2, :cond_0

    .line 196
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.android.bluetooth"

    const-string v6, "com.android.bluetooth.ble.app.MiBleDeviceManagerService"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 198
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 199
    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v0, v5, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 202
    :cond_0
    if-nez v2, :cond_1

    .line 203
    const-string v3, "MiBleDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bind manager service error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mListener:Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;

    if-eqz v3, :cond_1

    .line 205
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lmiui/bluetooth/ble/MiBleDeviceManager$2;

    invoke-direct {v4, p0}, Lmiui/bluetooth/ble/MiBleDeviceManager$2;-><init>(Lmiui/bluetooth/ble/MiBleDeviceManager;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    :cond_1
    return-void
.end method

.method private setServie(Lmiui/bluetooth/ble/IMiBleDeviceManager;)V
    .locals 0
    .param p1, "servie"    # Lmiui/bluetooth/ble/IMiBleDeviceManager;

    .line 169
    iput-object p1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    .line 170
    return-void
.end method


# virtual methods
.method public bindDevice(Ljava/lang/String;)Z
    .locals 3
    .param p1, "device"    # Ljava/lang/String;

    .line 387
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 389
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    const-string v2, "device_type"

    invoke-interface {v0, p1, v2, v1}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->setSettingInteger(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 394
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return v1
.end method

.method public bindDevice(Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "token"    # [B

    .line 405
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1, p2}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->setToken(Ljava/lang/String;[B)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 412
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 3

    .line 217
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiBleDeviceManager"

    const-string v2, "Close manager service error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getBoundDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getBoundDevices()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 257
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceType(Ljava/lang/String;)I
    .locals 1
    .param p1, "device"    # Ljava/lang/String;

    .line 441
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 448
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRegisterAppForBleEvent(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I

    .line 541
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1, p2}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getRegisterAppForBleEvent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 548
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScanResult(Ljava/lang/String;)Lmiui/bluetooth/ble/ScanResult;
    .locals 1
    .param p1, "device"    # Ljava/lang/String;

    .line 452
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getScanResult(Ljava/lang/String;)Lmiui/bluetooth/ble/ScanResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 459
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceVersion()I
    .locals 1

    .line 235
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getServiceVersion()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 242
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getSettingsBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;

    .line 333
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 335
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1, p2}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getSettingInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 340
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return v1
.end method

.method public getSettingsInteger(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;

    .line 351
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1, p2}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getSettingInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 358
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSettingsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;

    .line 369
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1, p2}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 376
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAppForBleEvent(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I

    .line 504
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-static {p2}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getSettingKeyForEvent(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mContext:Landroid/content/Context;

    .line 507
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 506
    invoke-interface {v0, p1, v1, v2}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->setSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 512
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerBleEventListener(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 2
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "callback"    # Lmiui/bluetooth/ble/IBleEventCallback;

    .line 559
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 560
    return v0

    .line 563
    :cond_0
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 565
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->registerBleEventListener(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 566
    :catch_0
    move-exception v1

    .line 567
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 570
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    return v0
.end method

.method public setSettings(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 292
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->setSettingInteger(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 299
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 311
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->setSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 318
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setSettings(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 273
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->setSettingInteger(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 280
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startScanDevice(ILandroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 4
    .param p1, "property"    # I
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 464
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mClientId:Landroid/os/ParcelUuid;

    new-instance v3, Lmiui/bluetooth/ble/MiBleDeviceManager$3;

    invoke-direct {v3, p0, p1, p2}, Lmiui/bluetooth/ble/MiBleDeviceManager$3;-><init>(Lmiui/bluetooth/ble/MiBleDeviceManager;ILandroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    invoke-interface {v0, v1, v2, p1, v3}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->startScanDevice(Landroid/os/IBinder;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IScanDeviceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    goto :goto_0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 482
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public stopScanDevice()V
    .locals 2

    .line 486
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->stopScanDevice(Landroid/os/ParcelUuid;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 493
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public unbindDevice(Ljava/lang/String;)Z
    .locals 1
    .param p1, "device"    # Ljava/lang/String;

    .line 422
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->deleteSettings(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 429
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterAppForBleEvent(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I

    .line 523
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-static {p2}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getSettingKeyForEvent(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->setSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 530
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterBleEventListener(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 1
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "callback"    # Lmiui/bluetooth/ble/IBleEventCallback;

    .line 581
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->unregisterBleEventListener(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 589
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
