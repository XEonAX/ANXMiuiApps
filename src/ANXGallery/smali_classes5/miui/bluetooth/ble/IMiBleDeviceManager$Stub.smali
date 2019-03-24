.class public abstract Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;
.super Landroid/os/Binder;
.source "IMiBleDeviceManager.java"

# interfaces
.implements Lmiui/bluetooth/ble/IMiBleDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/bluetooth/ble/IMiBleDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.bluetooth.ble.IMiBleDeviceManager"

.field static final TRANSACTION_deleteSettings:I = 0x6

.field static final TRANSACTION_getBoundDevices:I = 0xd

.field static final TRANSACTION_getDeviceSettings:I = 0x5

.field static final TRANSACTION_getDeviceType:I = 0x7

.field static final TRANSACTION_getRegisterAppForBleEvent:I = 0x10

.field static final TRANSACTION_getScanResult:I = 0x11

.field static final TRANSACTION_getServiceVersion:I = 0xc

.field static final TRANSACTION_getSettingInteger:I = 0x4

.field static final TRANSACTION_getSettingString:I = 0x2

.field static final TRANSACTION_registerAppForBleEvent:I = 0xe

.field static final TRANSACTION_registerBleEventListener:I = 0xa

.field static final TRANSACTION_setSettingInteger:I = 0x3

.field static final TRANSACTION_setSettingString:I = 0x1

.field static final TRANSACTION_setToken:I = 0x12

.field static final TRANSACTION_startScanDevice:I = 0x8

.field static final TRANSACTION_stopScanDevice:I = 0x9

.field static final TRANSACTION_unregisterAppForBleEvent:I = 0xf

.field static final TRANSACTION_unregisterBleEventListener:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-virtual {p0, p0, v0}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IMiBleDeviceManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "miui.bluetooth.ble.IMiBleDeviceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/bluetooth/ble/IMiBleDeviceManager;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Lmiui/bluetooth/ble/IMiBleDeviceManager;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const-string v0, "miui.bluetooth.ble.IMiBleDeviceManager"

    .line 43
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 265
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 270
    .local v3, "_arg1":[B
    invoke-virtual {p0, v1, v3}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->setToken(Ljava/lang/String;[B)Z

    move-result v4

    .line 271
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    return v2

    .line 249
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 252
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->getScanResult(Ljava/lang/String;)Lmiui/bluetooth/ble/ScanResult;

    move-result-object v3

    .line 253
    .local v3, "_result":Lmiui/bluetooth/ble/ScanResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v3, :cond_0

    .line 255
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    invoke-virtual {v3, p3, v2}, Lmiui/bluetooth/ble/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 259
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    :goto_0
    return v2

    .line 237
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lmiui/bluetooth/ble/ScanResult;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 241
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 242
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->getRegisterAppForBleEvent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    return v2

    .line 225
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 229
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 230
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->unregisterAppForBleEvent(Ljava/lang/String;I)Z

    move-result v4

    .line 231
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    return v2

    .line 213
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 218
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->registerAppForBleEvent(Ljava/lang/String;I)Z

    move-result v4

    .line 219
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    return v2

    .line 205
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->getBoundDevices()Ljava/util/List;

    move-result-object v1

    .line 207
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 209
    return v2

    .line 197
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->getServiceVersion()I

    move-result v1

    .line 199
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    return v2

    .line 183
    .end local v1    # "_result":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 189
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/bluetooth/ble/IBleEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IBleEventCallback;

    move-result-object v4

    .line 190
    .local v4, "_arg2":Lmiui/bluetooth/ble/IBleEventCallback;
    invoke-virtual {p0, v1, v3, v4}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->unregisterBleEventListener(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v5

    .line 191
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    return v2

    .line 169
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lmiui/bluetooth/ble/IBleEventCallback;
    .end local v5    # "_result":Z
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 175
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/bluetooth/ble/IBleEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IBleEventCallback;

    move-result-object v4

    .line 176
    .restart local v4    # "_arg2":Lmiui/bluetooth/ble/IBleEventCallback;
    invoke-virtual {p0, v1, v3, v4}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->registerBleEventListener(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v5

    .line 177
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    return v2

    .line 155
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lmiui/bluetooth/ble/IBleEventCallback;
    .end local v5    # "_result":Z
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .local v1, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_1

    .line 161
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    :cond_1
    nop

    .line 163
    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    :goto_1
    invoke-virtual {p0, v1}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->stopScanDevice(Landroid/os/ParcelUuid;)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    return v2

    .line 134
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 138
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 139
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .local v1, "_arg1":Landroid/os/ParcelUuid;
    goto :goto_2

    .line 142
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :cond_2
    nop

    .line 145
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 147
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/bluetooth/ble/IScanDeviceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IScanDeviceCallback;

    move-result-object v5

    .line 148
    .local v5, "_arg3":Lmiui/bluetooth/ble/IScanDeviceCallback;
    invoke-virtual {p0, v3, v1, v4, v5}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->startScanDevice(Landroid/os/IBinder;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IScanDeviceCallback;)Z

    move-result v6

    .line 149
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    return v2

    .line 124
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Lmiui/bluetooth/ble/IScanDeviceCallback;
    .end local v6    # "_result":Z
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->getDeviceType(Ljava/lang/String;)I

    move-result v3

    .line 128
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    return v2

    .line 114
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->deleteSettings(Ljava/lang/String;)Z

    move-result v3

    .line 118
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return v2

    .line 104
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->getDeviceSettings(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 108
    .local v3, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 110
    return v2

    .line 92
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/Map;
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->getSettingInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 98
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return v2

    .line 78
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 84
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 85
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->setSettingInteger(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 86
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return v2

    .line 66
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 71
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->getSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return v2

    .line 52
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 58
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v4}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;->setSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 60
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return v2

    .line 47
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
