.class public final enum Lcom/miui/gallery/error/core/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/error/core/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum CONNECT_TIMEOUT:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum DATA_PARSE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum DECODE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum FILE_OPERATE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum NETWORK_RESTRICT:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum NOT_SYNCED:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum NO_ACCOUNT:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum NO_CHARGING:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum NO_CTA_PERMISSION:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum NO_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum NO_NETWORK:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum NO_WIFI_CONNECTED:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum OVER_QUOTA:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum PARAMS_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum POWER_LOW:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum PRIMARY_STORAGE_WRITE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum RETRIABLE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum SECONDARY_STORAGE_WRITE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum SERVER_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum SOCKET_TIMEOUT:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum STORAGE_FULL:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum STORAGE_LOW:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum STORAGE_NO_WRITE_PERMISSION:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum SYNC_OFF:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum THUMBNAIL_BUILD_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum UNKNOWN:Lcom/miui/gallery/error/core/ErrorCode;

.field public static final enum WRITE_EXIF_ERROR:Lcom/miui/gallery/error/core/ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "NO_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->NO_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    .line 11
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "NO_CTA_PERMISSION"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->NO_CTA_PERMISSION:Lcom/miui/gallery/error/core/ErrorCode;

    .line 15
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "NO_NETWORK"

    invoke-direct {v0, v1, v5}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->NO_NETWORK:Lcom/miui/gallery/error/core/ErrorCode;

    .line 19
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "NO_WIFI_CONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->NO_WIFI_CONNECTED:Lcom/miui/gallery/error/core/ErrorCode;

    .line 23
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "NO_CHARGING"

    invoke-direct {v0, v1, v7}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->NO_CHARGING:Lcom/miui/gallery/error/core/ErrorCode;

    .line 27
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "POWER_LOW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->POWER_LOW:Lcom/miui/gallery/error/core/ErrorCode;

    .line 31
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "SYNC_OFF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->SYNC_OFF:Lcom/miui/gallery/error/core/ErrorCode;

    .line 35
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "STORAGE_LOW"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->STORAGE_LOW:Lcom/miui/gallery/error/core/ErrorCode;

    .line 39
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "STORAGE_FULL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->STORAGE_FULL:Lcom/miui/gallery/error/core/ErrorCode;

    .line 43
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "STORAGE_NO_WRITE_PERMISSION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->STORAGE_NO_WRITE_PERMISSION:Lcom/miui/gallery/error/core/ErrorCode;

    .line 47
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "PRIMARY_STORAGE_WRITE_ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->PRIMARY_STORAGE_WRITE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    .line 51
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "SECONDARY_STORAGE_WRITE_ERROR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->SECONDARY_STORAGE_WRITE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    .line 55
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "DECODE_ERROR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->DECODE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    .line 59
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "FILE_OPERATE_ERROR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->FILE_OPERATE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    .line 63
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "WRITE_EXIF_ERROR"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->WRITE_EXIF_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    .line 67
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "NETWORK_RESTRICT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->NETWORK_RESTRICT:Lcom/miui/gallery/error/core/ErrorCode;

    .line 71
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "NO_ACCOUNT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->NO_ACCOUNT:Lcom/miui/gallery/error/core/ErrorCode;

    .line 75
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "CONNECT_TIMEOUT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->CONNECT_TIMEOUT:Lcom/miui/gallery/error/core/ErrorCode;

    .line 79
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "SOCKET_TIMEOUT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->SOCKET_TIMEOUT:Lcom/miui/gallery/error/core/ErrorCode;

    .line 83
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "OVER_QUOTA"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->OVER_QUOTA:Lcom/miui/gallery/error/core/ErrorCode;

    .line 87
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "NOT_SYNCED"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->NOT_SYNCED:Lcom/miui/gallery/error/core/ErrorCode;

    .line 91
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "PARAMS_ERROR"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->PARAMS_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    .line 95
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "SERVER_ERROR"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->SERVER_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    .line 99
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "DATA_PARSE_ERROR"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->DATA_PARSE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    .line 103
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "RETRIABLE_ERROR"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->RETRIABLE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    .line 107
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "THUMBNAIL_BUILD_ERROR"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->THUMBNAIL_BUILD_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    .line 111
    new-instance v0, Lcom/miui/gallery/error/core/ErrorCode;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->UNKNOWN:Lcom/miui/gallery/error/core/ErrorCode;

    .line 3
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/miui/gallery/error/core/ErrorCode;

    sget-object v1, Lcom/miui/gallery/error/core/ErrorCode;->NO_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/error/core/ErrorCode;->NO_CTA_PERMISSION:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/error/core/ErrorCode;->NO_NETWORK:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/gallery/error/core/ErrorCode;->NO_WIFI_CONNECTED:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/gallery/error/core/ErrorCode;->NO_CHARGING:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->POWER_LOW:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->SYNC_OFF:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->STORAGE_LOW:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->STORAGE_FULL:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->STORAGE_NO_WRITE_PERMISSION:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->PRIMARY_STORAGE_WRITE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->SECONDARY_STORAGE_WRITE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->DECODE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->FILE_OPERATE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->WRITE_EXIF_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->NETWORK_RESTRICT:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->NO_ACCOUNT:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->CONNECT_TIMEOUT:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->SOCKET_TIMEOUT:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->OVER_QUOTA:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->NOT_SYNCED:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->PARAMS_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->SERVER_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->DATA_PARSE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->RETRIABLE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->THUMBNAIL_BUILD_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->UNKNOWN:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/error/core/ErrorCode;->$VALUES:[Lcom/miui/gallery/error/core/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/error/core/ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/miui/gallery/error/core/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/error/core/ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/error/core/ErrorCode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/miui/gallery/error/core/ErrorCode;->$VALUES:[Lcom/miui/gallery/error/core/ErrorCode;

    invoke-virtual {v0}, [Lcom/miui/gallery/error/core/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/error/core/ErrorCode;

    return-object v0
.end method
