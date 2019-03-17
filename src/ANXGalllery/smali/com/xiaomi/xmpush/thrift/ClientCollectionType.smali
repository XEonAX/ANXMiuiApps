.class public final enum Lcom/xiaomi/xmpush/thrift/ClientCollectionType;
.super Ljava/lang/Enum;
.source "ClientCollectionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/xmpush/thrift/ClientCollectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum Account:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum ActivityActiveTimeStamp:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum AppActiveList:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum AppInstallList:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum AppPermission:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum Battery:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum Bluetooth:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum BroadcastAction:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum BroadcastActionAdded:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum BroadcastActionChanged:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum BroadcastActionDataCleared:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum BroadcastActionRemoved:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum BroadcastActionReplaced:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum BroadcastActionRestarted:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum Cellular:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum DeviceBaseInfo:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum DeviceInfo:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum DeviceInfoV2:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum Location:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum Storage:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum TopApp:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum WIFI:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public static final enum WifiDevicesMac:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 14
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "DeviceInfo"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->DeviceInfo:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 15
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "AppInstallList"

    invoke-direct {v0, v1, v4, v5}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->AppInstallList:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 16
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "AppActiveList"

    invoke-direct {v0, v1, v5, v6}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->AppActiveList:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 17
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "Bluetooth"

    invoke-direct {v0, v1, v6, v7}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->Bluetooth:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 18
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "Location"

    invoke-direct {v0, v1, v7, v8}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->Location:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 19
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "Account"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->Account:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 20
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "WIFI"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->WIFI:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 21
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "Cellular"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->Cellular:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 22
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "TopApp"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->TopApp:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 23
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "BroadcastAction"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastAction:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 24
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "BroadcastActionAdded"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionAdded:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 25
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "BroadcastActionRemoved"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionRemoved:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 26
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "BroadcastActionReplaced"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionReplaced:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 27
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "BroadcastActionDataCleared"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionDataCleared:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 28
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "BroadcastActionRestarted"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionRestarted:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 29
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "BroadcastActionChanged"

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionChanged:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 30
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "AppPermission"

    const/16 v2, 0x10

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->AppPermission:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 31
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "WifiDevicesMac"

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->WifiDevicesMac:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 32
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "ActivityActiveTimeStamp"

    const/16 v2, 0x12

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->ActivityActiveTimeStamp:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 33
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "DeviceBaseInfo"

    const/16 v2, 0x13

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->DeviceBaseInfo:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 34
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "DeviceInfoV2"

    const/16 v2, 0x14

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->DeviceInfoV2:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 35
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "Battery"

    const/16 v2, 0x15

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->Battery:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 36
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const-string v1, "Storage"

    const/16 v2, 0x16

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->Storage:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 13
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->DeviceInfo:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->AppInstallList:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->AppActiveList:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->Bluetooth:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->Location:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->Account:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->WIFI:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->Cellular:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->TopApp:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastAction:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionAdded:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionRemoved:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionReplaced:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionDataCleared:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionRestarted:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionChanged:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->AppPermission:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->WifiDevicesMac:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->ActivityActiveTimeStamp:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->DeviceBaseInfo:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->DeviceInfoV2:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->Battery:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->Storage:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->$VALUES:[Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->value:I

    .line 42
    return-void
.end method

.method public static findByValue(I)Lcom/xiaomi/xmpush/thrift/ClientCollectionType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 56
    packed-switch p0, :pswitch_data_0

    .line 104
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->DeviceInfo:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 60
    :pswitch_1
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->AppInstallList:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 62
    :pswitch_2
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->AppActiveList:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 64
    :pswitch_3
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->Bluetooth:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 66
    :pswitch_4
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->Location:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 68
    :pswitch_5
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->Account:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 70
    :pswitch_6
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->WIFI:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 72
    :pswitch_7
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->Cellular:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 74
    :pswitch_8
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->TopApp:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 76
    :pswitch_9
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastAction:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 78
    :pswitch_a
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionAdded:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 80
    :pswitch_b
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionRemoved:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 82
    :pswitch_c
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionReplaced:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 84
    :pswitch_d
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionDataCleared:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 86
    :pswitch_e
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionRestarted:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 88
    :pswitch_f
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionChanged:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 90
    :pswitch_10
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->AppPermission:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 92
    :pswitch_11
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->WifiDevicesMac:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 94
    :pswitch_12
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->ActivityActiveTimeStamp:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 96
    :pswitch_13
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->DeviceBaseInfo:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 98
    :pswitch_14
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->DeviceInfoV2:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 100
    :pswitch_15
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->Battery:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 102
    :pswitch_16
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->Storage:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientCollectionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/ClientCollectionType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->$VALUES:[Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->value:I

    return v0
.end method
