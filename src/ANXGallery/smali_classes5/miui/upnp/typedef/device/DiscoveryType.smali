.class public final enum Lmiui/upnp/typedef/device/DiscoveryType;
.super Ljava/lang/Enum;
.source "DiscoveryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/upnp/typedef/device/DiscoveryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/upnp/typedef/device/DiscoveryType;

.field public static final enum AIRTUNES:Lmiui/upnp/typedef/device/DiscoveryType;

.field public static final enum AP:Lmiui/upnp/typedef/device/DiscoveryType;

.field public static final enum BLE:Lmiui/upnp/typedef/device/DiscoveryType;

.field public static final enum BLUETOOTH:Lmiui/upnp/typedef/device/DiscoveryType;

.field public static final enum LAN:Lmiui/upnp/typedef/device/DiscoveryType;

.field public static final enum LOCAL:Lmiui/upnp/typedef/device/DiscoveryType;

.field public static final enum UNDEFINED:Lmiui/upnp/typedef/device/DiscoveryType;


# instance fields
.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 5
    new-instance v0, Lmiui/upnp/typedef/device/DiscoveryType;

    const-string v1, "UNDEFINED"

    const-string v2, "undefined"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lmiui/upnp/typedef/device/DiscoveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->UNDEFINED:Lmiui/upnp/typedef/device/DiscoveryType;

    .line 6
    new-instance v0, Lmiui/upnp/typedef/device/DiscoveryType;

    const-string v1, "LOCAL"

    const-string v2, "local"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lmiui/upnp/typedef/device/DiscoveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->LOCAL:Lmiui/upnp/typedef/device/DiscoveryType;

    .line 7
    new-instance v0, Lmiui/upnp/typedef/device/DiscoveryType;

    const-string v1, "LAN"

    const-string v2, "lan"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lmiui/upnp/typedef/device/DiscoveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->LAN:Lmiui/upnp/typedef/device/DiscoveryType;

    .line 8
    new-instance v0, Lmiui/upnp/typedef/device/DiscoveryType;

    const-string v1, "BLUETOOTH"

    const-string v2, "bluetooth"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lmiui/upnp/typedef/device/DiscoveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->BLUETOOTH:Lmiui/upnp/typedef/device/DiscoveryType;

    .line 9
    new-instance v0, Lmiui/upnp/typedef/device/DiscoveryType;

    const-string v1, "BLE"

    const-string v2, "ble"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lmiui/upnp/typedef/device/DiscoveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->BLE:Lmiui/upnp/typedef/device/DiscoveryType;

    .line 10
    new-instance v0, Lmiui/upnp/typedef/device/DiscoveryType;

    const-string v1, "AP"

    const-string v2, "ap"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lmiui/upnp/typedef/device/DiscoveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->AP:Lmiui/upnp/typedef/device/DiscoveryType;

    .line 11
    new-instance v0, Lmiui/upnp/typedef/device/DiscoveryType;

    const-string v1, "AIRTUNES"

    const-string v2, "airtunes"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lmiui/upnp/typedef/device/DiscoveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->AIRTUNES:Lmiui/upnp/typedef/device/DiscoveryType;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lmiui/upnp/typedef/device/DiscoveryType;

    sget-object v1, Lmiui/upnp/typedef/device/DiscoveryType;->UNDEFINED:Lmiui/upnp/typedef/device/DiscoveryType;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/upnp/typedef/device/DiscoveryType;->LOCAL:Lmiui/upnp/typedef/device/DiscoveryType;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/upnp/typedef/device/DiscoveryType;->LAN:Lmiui/upnp/typedef/device/DiscoveryType;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/upnp/typedef/device/DiscoveryType;->BLUETOOTH:Lmiui/upnp/typedef/device/DiscoveryType;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/upnp/typedef/device/DiscoveryType;->BLE:Lmiui/upnp/typedef/device/DiscoveryType;

    aput-object v1, v0, v7

    sget-object v1, Lmiui/upnp/typedef/device/DiscoveryType;->AP:Lmiui/upnp/typedef/device/DiscoveryType;

    aput-object v1, v0, v8

    sget-object v1, Lmiui/upnp/typedef/device/DiscoveryType;->AIRTUNES:Lmiui/upnp/typedef/device/DiscoveryType;

    aput-object v1, v0, v9

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->$VALUES:[Lmiui/upnp/typedef/device/DiscoveryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lmiui/upnp/typedef/device/DiscoveryType;->string:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static retrieveType(Ljava/lang/String;)Lmiui/upnp/typedef/device/DiscoveryType;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 25
    invoke-static {}, Lmiui/upnp/typedef/device/DiscoveryType;->values()[Lmiui/upnp/typedef/device/DiscoveryType;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 26
    .local v3, "T":Lmiui/upnp/typedef/device/DiscoveryType;
    invoke-virtual {v3}, Lmiui/upnp/typedef/device/DiscoveryType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    return-object v3

    .line 25
    .end local v3    # "T":Lmiui/upnp/typedef/device/DiscoveryType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->UNDEFINED:Lmiui/upnp/typedef/device/DiscoveryType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/upnp/typedef/device/DiscoveryType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lmiui/upnp/typedef/device/DiscoveryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/device/DiscoveryType;

    return-object v0
.end method

.method public static values()[Lmiui/upnp/typedef/device/DiscoveryType;
    .locals 1

    .line 3
    sget-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->$VALUES:[Lmiui/upnp/typedef/device/DiscoveryType;

    invoke-virtual {v0}, [Lmiui/upnp/typedef/device/DiscoveryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/upnp/typedef/device/DiscoveryType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lmiui/upnp/typedef/device/DiscoveryType;->string:Ljava/lang/String;

    return-object v0
.end method
