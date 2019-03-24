.class public Lmiui/bluetooth/ble/MiBleProfile;
.super Ljava/lang/Object;
.source "MiBleProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;,
        Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;
    }
.end annotation


# static fields
.field public static final ACTION_MIBLE_SERVICE:Ljava/lang/String; = "miui.bluetooth.mible.Service"

.field public static final ACTION_SELECT_DEVICE:Ljava/lang/String; = "miui.bluetooth.action.PICK_DEVICE"

.field protected static final DBG:Z = true

.field public static final EXTRA_MIBLE_PROPERTY:Ljava/lang/String; = "miui.bluetooth.extra.MIBLE_PROPERTY"

.field private static final MSG_PROPERTY:I = 0x2

.field private static final MSG_STATUS:I = 0x1

.field public static final PROPERTY_ALARM_CLOCK:I = 0x6a

.field public static final PROPERTY_ALERT_NOTIFICATION:I = 0x8

.field public static final PROPERTY_BATTERY:I = 0x6

.field public static final PROPERTY_DEVICE_CONTROL:I = 0x2

.field public static final PROPERTY_DEVICE_INFO:I = 0x65

.field public static final PROPERTY_FIRMWARE:I = 0x3

.field public static final PROPERTY_IMMEDIATE_ALERT:I = 0x5

.field public static final PROPERTY_LINK_LOSS:I = 0x7

.field public static final PROPERTY_MI_BAND_EVENT:I = 0x6c

.field public static final PROPERTY_MI_KEY:I = 0x6b

.field public static final PROPERTY_PAY:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROPERTY_SPORT_ACTIVITIES:I = 0x68

.field public static final PROPERTY_SPORT_STEPS:I = 0x67

.field public static final PROPERTY_THEME_COLOR:I = 0x69

.field public static final PROPERTY_UNDEFINED:I = 0x0

.field public static final PROPERTY_UNLOCK:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROPERTY_USER_INFO:I = 0x66

.field public static final SERVICE_VERSION_UNKNOWN:I = -0x1

.field public static final STATUS_CONNECTED:I = 0x2

.field public static final STATUS_CONNECTING:I = 0x1

.field public static final STATUS_DISCONNECTED:I = 0x0

.field public static final STATUS_DISCONNECTING:I = 0x3

.field public static final STATUS_ERROR:I = -0x1

.field public static final STATUS_READY:I = 0x4

.field protected static final TAG:Ljava/lang/String; = "MiBleProfile"


# instance fields
.field protected mCallback:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

.field protected final mClientId:Landroid/os/ParcelUuid;

.field private mConnectWhenBind:Z

.field protected mContext:Landroid/content/Context;

.field protected mDevice:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mProfileState:I

.field private mPropertyCallback:Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

.field private mPropertyCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

.field private mServiceCallback:Lmiui/bluetooth/ble/IBluetoothMiBleCallback;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Ljava/lang/String;

    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/bluetooth/ble/MiBleProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V

    .line 295
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Ljava/lang/String;
    .param p3, "callback"    # Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    new-instance v0, Landroid/os/ParcelUuid;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    .line 217
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mToken:Landroid/os/IBinder;

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mConnectWhenBind:Z

    .line 221
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallbacks:Landroid/util/SparseArray;

    .line 225
    iput v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mProfileState:I

    .line 227
    new-instance v0, Lmiui/bluetooth/ble/MiBleProfile$1;

    invoke-direct {v0, p0}, Lmiui/bluetooth/ble/MiBleProfile$1;-><init>(Lmiui/bluetooth/ble/MiBleProfile;)V

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 257
    new-instance v0, Lmiui/bluetooth/ble/MiBleProfile$2;

    invoke-direct {v0, p0}, Lmiui/bluetooth/ble/MiBleProfile$2;-><init>(Lmiui/bluetooth/ble/MiBleProfile;)V

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mServiceCallback:Lmiui/bluetooth/ble/IBluetoothMiBleCallback;

    .line 274
    new-instance v0, Lmiui/bluetooth/ble/MiBleProfile$3;

    invoke-direct {v0, p0}, Lmiui/bluetooth/ble/MiBleProfile$3;-><init>(Lmiui/bluetooth/ble/MiBleProfile;)V

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallback:Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    .line 298
    iput-object p2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    .line 299
    iput-object p1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mContext:Landroid/content/Context;

    .line 300
    iput-object p3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mCallback:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    .line 302
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 303
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :cond_0
    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MiBleProfile"

    const-string v2, "prepare looper failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lmiui/bluetooth/ble/MiBleProfile$4;

    invoke-direct {v1, p0}, Lmiui/bluetooth/ble/MiBleProfile$4;-><init>(Lmiui/bluetooth/ble/MiBleProfile;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    .line 330
    return-void
.end method

.method static synthetic access$002(Lmiui/bluetooth/ble/MiBleProfile;I)I
    .locals 0
    .param p0, "x0"    # Lmiui/bluetooth/ble/MiBleProfile;
    .param p1, "x1"    # I

    .line 27
    iput p1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mProfileState:I

    return p1
.end method

.method static synthetic access$100(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/bluetooth/ble/MiBleProfile;

    .line 27
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lmiui/bluetooth/ble/MiBleProfile;

    .line 27
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/bluetooth/ble/MiBleProfile;)Lmiui/bluetooth/ble/IBluetoothMiBleCallback;
    .locals 1
    .param p0, "x0"    # Lmiui/bluetooth/ble/MiBleProfile;

    .line 27
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mServiceCallback:Lmiui/bluetooth/ble/IBluetoothMiBleCallback;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/bluetooth/ble/MiBleProfile;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/bluetooth/ble/MiBleProfile;

    .line 27
    iget-boolean v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mConnectWhenBind:Z

    return v0
.end method

.method static synthetic access$402(Lmiui/bluetooth/ble/MiBleProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/bluetooth/ble/MiBleProfile;
    .param p1, "x1"    # Z

    .line 27
    iput-boolean p1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mConnectWhenBind:Z

    return p1
.end method

.method static synthetic access$500(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lmiui/bluetooth/ble/MiBleProfile;

    .line 27
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallbacks:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public connect()V
    .locals 9

    .line 352
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 353
    iput-boolean v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mConnectWhenBind:Z

    .line 354
    new-instance v0, Landroid/content/Intent;

    const-string v4, "miui.bluetooth.mible.Service"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.xiaomi.bluetooth"

    .line 356
    .local v4, "pkg":Ljava/lang/String;
    const-string v5, "com.android.bluetooth.ble.BluetoothMiBleService"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    iget-object v5, p0, Lmiui/bluetooth/ble/MiBleProfile;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lmiui/bluetooth/ble/MiBleProfile;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v0, v6, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    .line 359
    .local v5, "ret":Z
    if-nez v5, :cond_0

    .line 361
    const-string v4, "com.android.bluetooth"

    .line 362
    new-instance v6, Landroid/content/Intent;

    const-string v7, "miui.bluetooth.mible.Service"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    .line 363
    const-string v6, "com.android.bluetooth.ble.BluetoothMiBleService"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    iget-object v6, p0, Lmiui/bluetooth/ble/MiBleProfile;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lmiui/bluetooth/ble/MiBleProfile;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v0, v7, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    .line 368
    :cond_0
    if-nez v5, :cond_1

    .line 369
    const-string v6, "MiBleProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connect: bind service error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v6, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 372
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "ret":Z
    :cond_1
    goto :goto_0

    .line 374
    :cond_2
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v5, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v0, v4, v5}, Lmiui/bluetooth/ble/IBluetoothMiBle;->connect(Ljava/lang/String;Landroid/os/ParcelUuid;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MiBleProfile"

    const-string v5, "connect: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 380
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public disconnect()V
    .locals 7

    .line 383
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-nez v0, :cond_0

    .line 384
    return-void

    .line 388
    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleProfile;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v6, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v3, v4, v5, v6}, Lmiui/bluetooth/ble/IBluetoothMiBle;->unregisterClient(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/ParcelUuid;)V

    .line 389
    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleProfile;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v3

    .line 394
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "MiBleProfile"

    const-string v5, "disconnect: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 390
    :catch_1
    move-exception v3

    .line 391
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "MiBleProfile"

    const-string v5, "disconnect: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 396
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 397
    :goto_1
    return-void
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)[B
    .locals 3
    .param p1, "property"    # I

    .line 413
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-eqz v0, :cond_0

    .line 415
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1, v2, p1}, Lmiui/bluetooth/ble/IBluetoothMiBle;->getProperty(Ljava/lang/String;Landroid/os/ParcelUuid;I)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiBleProfile"

    const-string v2, "getProperty: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRssi()I
    .locals 3

    .line 483
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiBleProfile;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1, v2}, Lmiui/bluetooth/ble/IBluetoothMiBle;->getRssi(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiBleProfile"

    const-string v2, "getRssi: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public getServiceVersion()I
    .locals 3

    .line 333
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-eqz v0, :cond_0

    .line 335
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    invoke-interface {v0}, Lmiui/bluetooth/ble/IBluetoothMiBle;->getServiceVersion()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiBleProfile"

    const-string v2, "getServiceVersion"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isReady()Z
    .locals 2

    .line 400
    iget v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mProfileState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportProperty(I)Z
    .locals 4
    .param p1, "property"    # I

    .line 405
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lmiui/bluetooth/ble/IBluetoothMiBle;->supportProperty(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 406
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MiBleProfile"

    const-string v3, "isSupportProperty: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public registerPropertyNotifyCallback(ILmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;)Z
    .locals 5
    .param p1, "property"    # I
    .param p2, "callback"    # Lmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;

    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "result":Z
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 448
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-eqz v1, :cond_0

    .line 450
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallback:Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    invoke-interface {v1, v2, v3, p1, v4}, Lmiui/bluetooth/ble/IBluetoothMiBle;->registerPropertyCallback(Ljava/lang/String;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 453
    goto :goto_0

    .line 451
    :catch_0
    move-exception v1

    .line 452
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MiBleProfile"

    const-string v3, "registerPropertyNotifyCallback: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 457
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 458
    const/4 v1, 0x0

    return v1

    .line 461
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public setProfileStateChangeCallback(Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V
    .locals 0
    .param p1, "callback"    # Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    .line 344
    iput-object p1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mCallback:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    .line 345
    return-void
.end method

.method public setProperty(I[B)Z
    .locals 3
    .param p1, "property"    # I
    .param p2, "data"    # [B

    .line 425
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-eqz v0, :cond_0

    .line 427
    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1, v2, p1, p2}, Lmiui/bluetooth/ble/IBluetoothMiBle;->setProperty(Ljava/lang/String;Landroid/os/ParcelUuid;I[B)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiBleProfile"

    const-string v2, "setProperty: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterPropertyNotifyCallback(I)Z
    .locals 5
    .param p1, "property"    # I

    .line 466
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 468
    const/4 v0, 0x1

    .line 469
    .local v0, "result":Z
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 471
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallback:Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    invoke-interface {v1, v2, v3, p1, v4}, Lmiui/bluetooth/ble/IBluetoothMiBle;->unregisterPropertyCallback(Ljava/lang/String;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 476
    :cond_0
    goto :goto_0

    .line 473
    :catch_0
    move-exception v1

    .line 474
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 475
    const-string v2, "MiBleProfile"

    const-string v3, "unregisterPropertyNotifyCallback: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return v0
.end method
