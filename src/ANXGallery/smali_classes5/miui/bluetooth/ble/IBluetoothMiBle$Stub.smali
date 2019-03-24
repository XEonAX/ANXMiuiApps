.class public abstract Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;
.super Landroid/os/Binder;
.source "IBluetoothMiBle.java"

# interfaces
.implements Lmiui/bluetooth/ble/IBluetoothMiBle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/bluetooth/ble/IBluetoothMiBle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/bluetooth/ble/IBluetoothMiBle$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.bluetooth.ble.IBluetoothMiBle"

.field static final TRANSACTION_authenticate:I = 0xf

.field static final TRANSACTION_authorize:I = 0xd

.field static final TRANSACTION_connect:I = 0x4

.field static final TRANSACTION_disconnect:I = 0x5

.field static final TRANSACTION_encrypt:I = 0x11

.field static final TRANSACTION_getConnectedDevices:I = 0x6

.field static final TRANSACTION_getProperty:I = 0xc

.field static final TRANSACTION_getRssi:I = 0x7

.field static final TRANSACTION_getServiceVersion:I = 0x12

.field static final TRANSACTION_isConnected:I = 0x3

.field static final TRANSACTION_registerClient:I = 0x1

.field static final TRANSACTION_registerPropertyCallback:I = 0x9

.field static final TRANSACTION_setEncryptionKey:I = 0x10

.field static final TRANSACTION_setProperty:I = 0xb

.field static final TRANSACTION_setRssiThreshold:I = 0xe

.field static final TRANSACTION_supportProperty:I = 0x8

.field static final TRANSACTION_unregisterClient:I = 0x2

.field static final TRANSACTION_unregisterPropertyCallback:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-virtual {p0, p0, v0}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IBluetoothMiBle;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "miui.bluetooth.ble.IBluetoothMiBle"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Lmiui/bluetooth/ble/IBluetoothMiBle;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "miui.bluetooth.ble.IBluetoothMiBle"

    .line 43
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_e

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 352
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 344
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->getServiceVersion()I

    move-result v1

    .line 346
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    return v2

    .line 325
    .end local v1    # "_result":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 330
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .local v1, "_arg1":Landroid/os/ParcelUuid;
    goto :goto_0

    .line 333
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :cond_0
    nop

    .line 336
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 337
    .local v4, "_arg2":[B
    invoke-virtual {p0, v3, v1, v4}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->encrypt(Ljava/lang/String;Landroid/os/ParcelUuid;[B)[B

    move-result-object v5

    .line 338
    .local v5, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 340
    return v2

    .line 306
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg2":[B
    .end local v5    # "_result":[B
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 310
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 311
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_1

    .line 314
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :cond_1
    nop

    .line 317
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 318
    .restart local v4    # "_arg2":[B
    invoke-virtual {p0, v3, v1, v4}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->setEncryptionKey(Ljava/lang/String;Landroid/os/ParcelUuid;[B)Z

    move-result v5

    .line 319
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    return v2

    .line 289
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg2":[B
    .end local v5    # "_result":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 293
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 294
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_2

    .line 297
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :cond_2
    nop

    .line 299
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_2
    invoke-virtual {p0, v3, v1}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->authenticate(Ljava/lang/String;Landroid/os/ParcelUuid;)Z

    move-result v4

    .line 300
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    return v2

    .line 270
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 274
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 275
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_3

    .line 278
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :cond_3
    nop

    .line 281
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 282
    .local v4, "_arg2":I
    invoke-virtual {p0, v3, v1, v4}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->setRssiThreshold(Ljava/lang/String;Landroid/os/ParcelUuid;I)Z

    move-result v5

    .line 283
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    return v2

    .line 251
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 255
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 256
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_4

    .line 259
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :cond_4
    nop

    .line 262
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v1, v4}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->authorize(Ljava/lang/String;Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v5

    .line 264
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    return v2

    .line 232
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 236
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 237
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_5

    .line 240
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :cond_5
    nop

    .line 243
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 244
    .local v4, "_arg2":I
    invoke-virtual {p0, v3, v1, v4}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->getProperty(Ljava/lang/String;Landroid/os/ParcelUuid;I)[B

    move-result-object v5

    .line 245
    .local v5, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 247
    return v2

    .line 211
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":[B
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 215
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 216
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_6

    .line 219
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :cond_6
    nop

    .line 222
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 224
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 225
    .local v5, "_arg3":[B
    invoke-virtual {p0, v3, v1, v4, v5}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->setProperty(Ljava/lang/String;Landroid/os/ParcelUuid;I[B)Z

    move-result v6

    .line 226
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    return v2

    .line 190
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":[B
    .end local v6    # "_result":Z
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 194
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 195
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_7

    .line 198
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :cond_7
    nop

    .line 201
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 203
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    move-result-object v5

    .line 204
    .local v5, "_arg3":Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;
    invoke-virtual {p0, v3, v1, v4, v5}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->unregisterPropertyCallback(Ljava/lang/String;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;)Z

    move-result v6

    .line 205
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    return v2

    .line 169
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;
    .end local v6    # "_result":Z
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 173
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 174
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_8

    .line 177
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :cond_8
    nop

    .line 180
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 182
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    move-result-object v5

    .line 183
    .restart local v5    # "_arg3":Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;
    invoke-virtual {p0, v3, v1, v4, v5}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->registerPropertyCallback(Ljava/lang/String;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;)Z

    move-result v6

    .line 184
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    return v2

    .line 157
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;
    .end local v6    # "_result":Z
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 162
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->supportProperty(Ljava/lang/String;I)Z

    move-result v4

    .line 163
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    return v2

    .line 140
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 145
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .local v1, "_arg1":Landroid/os/ParcelUuid;
    goto :goto_9

    .line 148
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :cond_9
    nop

    .line 150
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_9
    invoke-virtual {p0, v3, v1}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->getRssi(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v4

    .line 151
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    return v2

    .line 132
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 134
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 136
    return v2

    .line 116
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 121
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .local v1, "_arg1":Landroid/os/ParcelUuid;
    goto :goto_a

    .line 124
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :cond_a
    nop

    .line 126
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_a
    invoke-virtual {p0, v3, v1}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->disconnect(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    return v2

    .line 100
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v3    # "_arg0":Ljava/lang/String;
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 104
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 105
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_b

    .line 108
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :cond_b
    nop

    .line 110
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_b
    invoke-virtual {p0, v3, v1}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->connect(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    return v2

    .line 90
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v3    # "_arg0":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->isConnected(Ljava/lang/String;)Z

    move-result v3

    .line 94
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return v2

    .line 72
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 76
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    .line 79
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .local v1, "_arg2":Landroid/os/ParcelUuid;
    goto :goto_c

    .line 82
    .end local v1    # "_arg2":Landroid/os/ParcelUuid;
    :cond_c
    nop

    .line 84
    .restart local v1    # "_arg2":Landroid/os/ParcelUuid;
    :goto_c
    invoke-virtual {p0, v3, v4, v1}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->unregisterClient(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/ParcelUuid;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    return v2

    .line 52
    .end local v1    # "_arg2":Landroid/os/ParcelUuid;
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 56
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 58
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    .line 59
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .restart local v1    # "_arg2":Landroid/os/ParcelUuid;
    goto :goto_d

    .line 62
    .end local v1    # "_arg2":Landroid/os/ParcelUuid;
    :cond_d
    nop

    .line 65
    .restart local v1    # "_arg2":Landroid/os/ParcelUuid;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/bluetooth/ble/IBluetoothMiBleCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IBluetoothMiBleCallback;

    move-result-object v5

    .line 66
    .local v5, "_arg3":Lmiui/bluetooth/ble/IBluetoothMiBleCallback;
    invoke-virtual {p0, v3, v4, v1, v5}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;->registerClient(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBleCallback;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v2

    .line 47
    .end local v1    # "_arg2":Landroid/os/ParcelUuid;
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg3":Lmiui/bluetooth/ble/IBluetoothMiBleCallback;
    :cond_e
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
