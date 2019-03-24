.class public final Lmiui/bluetooth/ble/ScanRecord;
.super Ljava/lang/Object;
.source "ScanRecord.java"


# static fields
.field private static final BASE_UUID:Landroid/os/ParcelUuid;

.field private static final DATA_TYPE_FLAGS:I = 0x1

.field private static final DATA_TYPE_LOCAL_NAME_COMPLETE:I = 0x9

.field private static final DATA_TYPE_LOCAL_NAME_SHORT:I = 0x8

.field private static final DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field private static final DATA_TYPE_SERVICE_DATA:I = 0x16

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE:I = 0x7

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL:I = 0x6

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE:I = 0x3

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL:I = 0x2

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE:I = 0x5

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL:I = 0x4

.field private static final DATA_TYPE_TX_POWER_LEVEL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ScanRecord"

.field public static final UUID_BYTES_128_BIT:I = 0x10

.field public static final UUID_BYTES_16_BIT:I = 0x2

.field public static final UUID_BYTES_32_BIT:I = 0x4


# instance fields
.field private final mAdvertiseFlags:I

.field private final mBytes:[B

.field private final mDeviceName:Ljava/lang/String;

.field private final mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final mTxPowerLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "00000000-0000-1000-8000-00805F9B34FB"

    .line 43
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lmiui/bluetooth/ble/ScanRecord;->BASE_UUID:Landroid/os/ParcelUuid;

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    .locals 0
    .param p4, "advertiseFlags"    # I
    .param p5, "txPowerLevel"    # I
    .param p6, "localName"    # Ljava/lang/String;
    .param p7, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray<",
            "[B>;",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;II",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .line 157
    .local p1, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p2, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p3, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lmiui/bluetooth/ble/ScanRecord;->mServiceUuids:Ljava/util/List;

    .line 159
    iput-object p2, p0, Lmiui/bluetooth/ble/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 160
    iput-object p3, p0, Lmiui/bluetooth/ble/ScanRecord;->mServiceData:Ljava/util/Map;

    .line 161
    iput-object p6, p0, Lmiui/bluetooth/ble/ScanRecord;->mDeviceName:Ljava/lang/String;

    .line 162
    iput p4, p0, Lmiui/bluetooth/ble/ScanRecord;->mAdvertiseFlags:I

    .line 163
    iput p5, p0, Lmiui/bluetooth/ble/ScanRecord;->mTxPowerLevel:I

    .line 164
    iput-object p7, p0, Lmiui/bluetooth/ble/ScanRecord;->mBytes:[B

    .line 165
    return-void
.end method

.method private static extractBytes([BII)[B
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 337
    new-array v0, p2, [B

    .line 338
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    return-object v0
.end method

.method public static parseFromBytes([B)Lmiui/bluetooth/ble/ScanRecord;
    .locals 18
    .param p0, "scanRecord"    # [B

    .line 179
    move-object/from16 v9, p0

    if-nez v9, :cond_0

    .line 180
    const/4 v0, 0x0

    return-object v0

    .line 183
    :cond_0
    const/4 v0, 0x0

    .line 184
    .local v0, "currentPos":I
    const/4 v1, -0x1

    .line 185
    .local v1, "advertiseFlag":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v2, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    const/4 v3, 0x0

    .line 187
    .local v3, "localName":Ljava/lang/String;
    const/high16 v4, -0x80000000

    .line 189
    .local v4, "txPowerLevel":I
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move-object v10, v5

    .line 190
    .local v10, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    move v11, v1

    move-object v13, v3

    move v12, v4

    move v1, v0

    .end local v0    # "currentPos":I
    .end local v3    # "localName":Ljava/lang/String;
    .end local v4    # "txPowerLevel":I
    .local v1, "currentPos":I
    .local v5, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .local v11, "advertiseFlag":I
    .local v12, "txPowerLevel":I
    .local v13, "localName":Ljava/lang/String;
    :goto_0
    move-object v14, v5

    .line 193
    .end local v5    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .local v14, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    :try_start_0
    array-length v0, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-ge v1, v0, :cond_4

    .line 195
    add-int/lit8 v3, v1, 0x1

    .local v3, "currentPos":I
    :try_start_1
    aget-byte v0, v9, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "currentPos":I
    const/16 v1, 0xff

    and-int/2addr v0, v1

    .line 196
    .local v0, "length":I
    if-nez v0, :cond_1

    .line 197
    nop

    .line 257
    move v15, v3

    goto/16 :goto_2

    .line 200
    :cond_1
    add-int/lit8 v4, v0, -0x1

    .line 202
    .local v4, "dataLength":I
    add-int/lit8 v5, v3, 0x1

    .local v5, "currentPos":I
    :try_start_2
    aget-byte v3, v9, v3

    .end local v3    # "currentPos":I
    and-int/2addr v3, v1

    .line 203
    .local v3, "fieldType":I
    const/16 v6, 0x16

    if-eq v3, v6, :cond_3

    if-eq v3, v1, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 228
    :pswitch_0
    aget-byte v1, v9, v5

    move v12, v1

    .line 229
    goto :goto_1

    .line 224
    :pswitch_1
    new-instance v1, Ljava/lang/String;

    .line 225
    invoke-static {v9, v5, v4}, Lmiui/bluetooth/ble/ScanRecord;->extractBytes([BII)[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    move-object v13, v1

    .line 226
    goto :goto_1

    .line 219
    :pswitch_2
    const/16 v1, 0x10

    invoke-static {v9, v5, v4, v1, v2}, Lmiui/bluetooth/ble/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    .line 221
    goto :goto_1

    .line 214
    :pswitch_3
    const/4 v1, 0x4

    invoke-static {v9, v5, v4, v1, v2}, Lmiui/bluetooth/ble/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    .line 216
    goto :goto_1

    .line 209
    :pswitch_4
    const/4 v1, 0x2

    invoke-static {v9, v5, v4, v1, v2}, Lmiui/bluetooth/ble/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    .line 211
    goto :goto_1

    .line 205
    :pswitch_5
    aget-byte v6, v9, v5

    and-int/lit16 v11, v6, 0xff

    .line 206
    goto :goto_1

    .line 244
    :cond_2
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v9, v6

    and-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0x8

    aget-byte v7, v9, v5

    and-int/2addr v1, v7

    add-int/2addr v6, v1

    .line 246
    .local v6, "manufacturerId":I
    add-int/lit8 v1, v5, 0x2

    add-int/lit8 v7, v4, -0x2

    invoke-static {v9, v1, v7}, Lmiui/bluetooth/ble/ScanRecord;->extractBytes([BII)[B

    move-result-object v1

    .line 248
    .local v1, "manufacturerDataBytes":[B
    invoke-virtual {v10, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 249
    goto :goto_1

    .line 233
    .end local v1    # "manufacturerDataBytes":[B
    .end local v6    # "manufacturerId":I
    :cond_3
    const/4 v1, 0x2

    .line 234
    .local v1, "serviceUuidLength":I
    invoke-static {v9, v5, v1}, Lmiui/bluetooth/ble/ScanRecord;->extractBytes([BII)[B

    move-result-object v6

    .line 236
    .local v6, "serviceDataUuidBytes":[B
    invoke-static {v6}, Lmiui/bluetooth/ble/ScanRecord;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v7

    .line 237
    .local v7, "serviceDataUuid":Landroid/os/ParcelUuid;
    add-int v8, v5, v1

    sub-int v15, v4, v1

    invoke-static {v9, v8, v15}, Lmiui/bluetooth/ble/ScanRecord;->extractBytes([BII)[B

    move-result-object v8

    .line 239
    .local v8, "serviceDataArray":[B
    invoke-interface {v14, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 240
    nop

    .line 254
    .end local v1    # "serviceUuidLength":I
    .end local v6    # "serviceDataUuidBytes":[B
    .end local v7    # "serviceDataUuid":Landroid/os/ParcelUuid;
    .end local v8    # "serviceDataArray":[B
    :goto_1
    add-int v1, v5, v4

    .line 255
    .end local v0    # "length":I
    .end local v3    # "fieldType":I
    .end local v4    # "dataLength":I
    .end local v5    # "currentPos":I
    .local v1, "currentPos":I
    nop

    .line 190
    move-object v5, v14

    goto :goto_0

    .line 262
    .end local v1    # "currentPos":I
    .restart local v5    # "currentPos":I
    :catch_0
    move-exception v0

    move-object/from16 v16, v2

    move v15, v5

    goto :goto_5

    .end local v5    # "currentPos":I
    .local v3, "currentPos":I
    :catch_1
    move-exception v0

    move-object/from16 v16, v2

    move v15, v3

    goto :goto_5

    .line 257
    .end local v3    # "currentPos":I
    .restart local v1    # "currentPos":I
    :cond_4
    move v15, v1

    .end local v1    # "currentPos":I
    .local v15, "currentPos":I
    :goto_2
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v0, :cond_5

    .line 258
    const/4 v0, 0x0

    .line 260
    .end local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local v0, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    move-object/from16 v16, v0

    goto :goto_3

    .end local v0    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :cond_5
    move-object/from16 v16, v2

    .end local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local v16, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_3
    :try_start_4
    new-instance v0, Lmiui/bluetooth/ble/ScanRecord;

    move-object v1, v0

    move-object/from16 v2, v16

    move-object v3, v10

    move-object v4, v14

    move v5, v11

    move v6, v12

    move-object v7, v13

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lmiui/bluetooth/ble/ScanRecord;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object v0

    .line 262
    :catch_2
    move-exception v0

    goto :goto_5

    .end local v16    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :catch_3
    move-exception v0

    goto :goto_4

    .end local v15    # "currentPos":I
    .restart local v1    # "currentPos":I
    :catch_4
    move-exception v0

    move v15, v1

    .end local v1    # "currentPos":I
    .end local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v15    # "currentPos":I
    .restart local v16    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_4
    move-object/from16 v16, v2

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    const-string v1, "ScanRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to parse scan record: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v17, Lmiui/bluetooth/ble/ScanRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, -0x80000000

    const/4 v7, 0x0

    move-object/from16 v1, v17

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lmiui/bluetooth/ble/ScanRecord;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V

    return-object v17

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseServiceUuid([BIIILjava/util/List;)I
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "currentPos"    # I
    .param p2, "dataLength"    # I
    .param p3, "uuidLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    .line 325
    .local p4, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_0
    if-lez p2, :cond_0

    .line 326
    invoke-static {p0, p1, p3}, Lmiui/bluetooth/ble/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 328
    .local v0, "uuidBytes":[B
    invoke-static {v0}, Lmiui/bluetooth/ble/ScanRecord;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    sub-int/2addr p2, p3

    .line 330
    add-int/2addr p1, p3

    .line 331
    .end local v0    # "uuidBytes":[B
    goto :goto_0

    .line 332
    :cond_0
    return p1
.end method

.method private static parseUuidFrom([B)Landroid/os/ParcelUuid;
    .locals 9
    .param p0, "uuidBytes"    # [B

    .line 288
    if-eqz p0, :cond_4

    .line 291
    const/16 v0, 0x10

    const/4 v1, 0x2

    array-length v2, p0

    .line 292
    .local v2, "length":I
    if-eq v2, v1, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uuidBytes length invalid - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_1
    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v2, v0, :cond_2

    .line 299
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 300
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    .line 301
    .local v4, "msb":J
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    .line 302
    .local v6, "lsb":J
    new-instance v1, Landroid/os/ParcelUuid;

    new-instance v3, Ljava/util/UUID;

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v1, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v1

    .line 308
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v4    # "msb":J
    .end local v6    # "lsb":J
    :cond_2
    const/4 v5, 0x1

    if-ne v2, v1, :cond_3

    .line 309
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 310
    .local v0, "shortUuid":J
    aget-byte v3, p0, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_1

    .line 312
    .end local v0    # "shortUuid":J
    :cond_3
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v6, v3

    .line 313
    .local v6, "shortUuid":J
    aget-byte v3, p0, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v6, v3

    .line 314
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x10

    int-to-long v0, v0

    add-long/2addr v6, v0

    .line 315
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    int-to-long v0, v0

    add-long/2addr v0, v6

    .line 317
    .end local v6    # "shortUuid":J
    .restart local v0    # "shortUuid":J
    :goto_1
    sget-object v3, Lmiui/bluetooth/ble/ScanRecord;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    const/16 v5, 0x20

    shl-long v5, v0, v5

    add-long/2addr v3, v5

    .line 318
    .local v3, "msb":J
    sget-object v5, Lmiui/bluetooth/ble/ScanRecord;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    .line 319
    .local v5, "lsb":J
    new-instance v7, Landroid/os/ParcelUuid;

    new-instance v8, Ljava/util/UUID;

    invoke-direct {v8, v3, v4, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v7

    .line 289
    .end local v0    # "shortUuid":J
    .end local v2    # "length":I
    .end local v3    # "msb":J
    .end local v5    # "lsb":J
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uuidBytes cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static toString(Landroid/util/SparseArray;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 346
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    if-nez p0, :cond_0

    .line 347
    const-string v0, "null"

    return-object v0

    .line 349
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 350
    const-string v0, "{}"

    return-object v0

    .line 352
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 355
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static toString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 365
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TT;[B>;"
    if-nez p0, :cond_0

    .line 366
    const-string v0, "null"

    return-object v0

    .line 368
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    const-string v0, "{}"

    return-object v0

    .line 371
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 374
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TT;[B>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 375
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 376
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 377
    .local v3, "key":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 379
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;[B>;"
    .end local v3    # "key":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 382
    :cond_3
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getAdvertiseFlags()I
    .locals 1

    .line 83
    iget v0, p0, Lmiui/bluetooth/ble/ScanRecord;->mAdvertiseFlags:I

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .line 150
    iget-object v0, p0, Lmiui/bluetooth/ble/ScanRecord;->mBytes:[B

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lmiui/bluetooth/ble/ScanRecord;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerSpecificData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lmiui/bluetooth/ble/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getManufacturerSpecificData(I)[B
    .locals 1
    .param p1, "manufacturerId"    # I

    .line 107
    iget-object v0, p0, Lmiui/bluetooth/ble/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getServiceData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lmiui/bluetooth/ble/ScanRecord;->mServiceData:Ljava/util/Map;

    return-object v0
.end method

.method public getServiceData(Landroid/os/ParcelUuid;)[B
    .locals 1
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;

    .line 122
    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/bluetooth/ble/ScanRecord;->mServiceData:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lmiui/bluetooth/ble/ScanRecord;->mServiceData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 123
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lmiui/bluetooth/ble/ScanRecord;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public getTxPowerLevel()I
    .locals 1

    .line 136
    iget v0, p0, Lmiui/bluetooth/ble/ScanRecord;->mTxPowerLevel:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanRecord [mAdvertiseFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/bluetooth/ble/ScanRecord;->mAdvertiseFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/bluetooth/ble/ScanRecord;->mServiceUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mManufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/bluetooth/ble/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 273
    invoke-static {v1}, Lmiui/bluetooth/ble/ScanRecord;->toString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/bluetooth/ble/ScanRecord;->mServiceData:Ljava/util/Map;

    .line 274
    invoke-static {v1}, Lmiui/bluetooth/ble/ScanRecord;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/bluetooth/ble/ScanRecord;->mTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/bluetooth/ble/ScanRecord;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    return-object v0
.end method
