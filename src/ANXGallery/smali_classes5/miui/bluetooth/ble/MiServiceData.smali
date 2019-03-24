.class public Lmiui/bluetooth/ble/MiServiceData;
.super Ljava/lang/Object;
.source "MiServiceData.java"


# static fields
.field public static final CAPABILITY_CENTRAL:B = 0x2t

.field public static final CAPABILITY_CONNECTABLE:B = 0x1t

.field public static final CAPABILITY_ENCRYPT:B = 0x4t

.field public static final CAPABILITY_IO:B = 0x18t

.field private static final DATA_MIN_LENGTH:I = 0x5

.field private static final FLAG_BINDING:I = 0x200

.field private static final FLAG_CAPABILITY:I = 0x20

.field private static final FLAG_CENTRAL:I = 0x4

.field private static final FLAG_CONNECTED:I = 0x2

.field private static final FLAG_CUSTOM_DATA:I = 0x80

.field private static final FLAG_ENCRYPTED:I = 0x8

.field private static final FLAG_EVENT:I = 0x40

.field private static final FLAG_MAC_ADDRESS:I = 0x10

.field private static final FLAG_NEW_FACTORY:I = 0x1

.field private static final FLAG_SUBTITLE:I = 0x100

.field public static final MI_SERVICE_UUID:Landroid/os/ParcelUuid;

.field private static final UUID_BASE:Ljava/lang/String; = "0000%4s-0000-1000-8000-00805f9b34fb"


# instance fields
.field private mData:[B

.field private mFrameControl:I

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    const-string v0, "0000%4s-0000-1000-8000-00805f9b34fb"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "fe95"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lmiui/bluetooth/ble/MiServiceData;->MI_SERVICE_UUID:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "data"    # [B

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 46
    iput-object p1, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    .line 47
    iget-object v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    .line 49
    iget-object v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    iput v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mVersion:I

    .line 50
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mi Service data length must >= 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromScanRecord(Lmiui/bluetooth/ble/ScanRecord;)Lmiui/bluetooth/ble/MiServiceData;
    .locals 4
    .param p0, "record"    # Lmiui/bluetooth/ble/ScanRecord;

    .line 31
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lmiui/bluetooth/ble/ScanRecord;->getServiceData()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    sget-object v1, Lmiui/bluetooth/ble/MiServiceData;->MI_SERVICE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v1}, Lmiui/bluetooth/ble/ScanRecord;->getServiceData(Landroid/os/ParcelUuid;)[B

    move-result-object v1

    .line 36
    .local v1, "data":[B
    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lmiui/bluetooth/ble/MiServiceData;

    invoke-direct {v0, v1}, Lmiui/bluetooth/ble/MiServiceData;-><init>([B)V

    return-object v0

    .line 37
    :cond_2
    :goto_0
    return-object v0

    .line 32
    .end local v1    # "data":[B
    :cond_3
    :goto_1
    return-object v0
.end method

.method private getEventDataIndex()I
    .locals 2

    .line 149
    const/4 v0, 0x5

    .line 150
    .local v0, "offset":I
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasMacAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    add-int/lit8 v0, v0, 0x6

    .line 154
    :cond_0
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasCapability()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    add-int/lit8 v0, v0, 0x1

    .line 157
    :cond_1
    return v0
.end method


# virtual methods
.method public getCapability()B
    .locals 3

    .line 127
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasCapability()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    const/4 v0, 0x5

    .line 129
    .local v0, "offset":I
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasMacAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    add-int/lit8 v0, v0, 0x6

    .line 133
    :cond_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    array-length v1, v1

    add-int/lit8 v2, v0, 0x6

    if-lt v1, v2, :cond_1

    .line 134
    iget-object v1, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    aget-byte v1, v1, v0

    return v1

    .line 137
    .end local v0    # "offset":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomData()[B
    .locals 6

    .line 200
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasCustomData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    const/4 v0, 0x5

    .line 202
    .local v0, "offset":I
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasMacAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    add-int/lit8 v0, v0, 0x6

    .line 206
    :cond_0
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasCapability()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    add-int/lit8 v0, v0, 0x1

    .line 210
    :cond_1
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasEvent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    add-int/lit8 v0, v0, 0x3

    .line 214
    :cond_2
    iget-object v1, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    array-length v1, v1

    if-le v1, v0, :cond_3

    .line 215
    iget-object v1, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    aget-byte v1, v1, v0

    .line 216
    .local v1, "len":I
    new-array v2, v1, [B

    .line 217
    .local v2, "data":[B
    iget-object v3, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    return-object v2

    .line 222
    .end local v0    # "offset":I
    .end local v1    # "len":I
    .end local v2    # "data":[B
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 57
    iget-object v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    return-object v0
.end method

.method public getEvent()B
    .locals 3

    .line 177
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiServiceData;->getEventDataIndex()I

    move-result v0

    .line 179
    .local v0, "offset":I
    iget-object v1, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    array-length v1, v1

    add-int/lit8 v2, v0, 0x3

    if-lt v1, v2, :cond_0

    .line 180
    iget-object v1, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    add-int/lit8 v2, v0, 0x2

    aget-byte v1, v1, v2

    return v1

    .line 184
    .end local v0    # "offset":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEventID()I
    .locals 4

    .line 165
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiServiceData;->getEventDataIndex()I

    move-result v0

    .line 167
    .local v0, "offset":I
    iget-object v1, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    return v1

    .line 169
    .end local v0    # "offset":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFrameCounter()I
    .locals 2

    .line 254
    iget-object v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getMacAddress()[B
    .locals 5

    .line 106
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasMacAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    array-length v0, v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 107
    const/4 v0, 0x6

    new-array v1, v0, [B

    .line 108
    .local v1, "mac":[B
    iget-object v2, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    return-object v1

    .line 111
    .end local v1    # "mac":[B
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProductID()I
    .locals 3

    .line 246
    iget-object v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public hasCapability()Z
    .locals 1

    .line 119
    iget v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCustomData()Z
    .locals 1

    .line 192
    iget v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEvent()Z
    .locals 1

    .line 145
    iget v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMacAddress()Z
    .locals 1

    .line 98
    iget v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSubTitle()Z
    .locals 1

    .line 230
    iget v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBindingFrame()Z
    .locals 1

    .line 238
    iget v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCentral()Z
    .locals 1

    .line 81
    iget v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 73
    iget v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .line 89
    iget v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNewFactory()Z
    .locals 2

    .line 65
    iget v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
