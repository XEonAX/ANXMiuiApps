.class public final enum Lcom/miui/gallery/cloud/syncstate/SyncStatus;
.super Ljava/lang/Enum;
.source "SyncStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/cloud/syncstate/SyncStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/cloud/syncstate/SyncStatus;

.field public static final enum BATTERY_LOW:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

.field public static final enum CLOUD_SPACE_FULL:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

.field public static final enum CTA_NOT_ALLOW:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

.field public static final enum DISCONNECTED:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

.field public static final enum MASTER_SYNC_OFF:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

.field public static final enum NO_ACCOUNT:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

.field public static final enum NO_WIFI:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

.field public static final enum SYNCED:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

.field public static final enum SYNCED_WITH_OVERSIZED_FILE:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

.field public static final enum SYNCING:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

.field public static final enum SYNCING_METADATA:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

.field public static final enum SYNC_ERROR:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

.field public static final enum SYNC_OFF:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

.field public static final enum SYNC_PAUSE:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

.field public static final enum SYNC_PENDING:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

.field public static final enum SYSTEM_SPACE_LOW:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

.field public static final enum UNAVAILABLE:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

.field public static final enum UNKNOWN_ERROR:Lcom/miui/gallery/cloud/syncstate/SyncStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    const-string v1, "SYNC_PENDING"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_PENDING:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 6
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    const-string v1, "SYNCING"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNCING:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 7
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    const-string v1, "SYNCING_METADATA"

    invoke-direct {v0, v1, v5}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNCING_METADATA:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 8
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    const-string v1, "SYNCED"

    invoke-direct {v0, v1, v6}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNCED:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 9
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    const-string v1, "SYNC_PAUSE"

    invoke-direct {v0, v1, v7}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_PAUSE:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 10
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    const-string v1, "SYNC_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_ERROR:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 11
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    const-string v1, "SYNCED_WITH_OVERSIZED_FILE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNCED_WITH_OVERSIZED_FILE:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 14
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    const-string v1, "NO_ACCOUNT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->NO_ACCOUNT:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 15
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    const-string v1, "MASTER_SYNC_OFF"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->MASTER_SYNC_OFF:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 16
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    const-string v1, "SYNC_OFF"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_OFF:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 17
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    const-string v1, "CTA_NOT_ALLOW"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->CTA_NOT_ALLOW:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 20
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    const-string v1, "DISCONNECTED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->DISCONNECTED:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 21
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    const-string v1, "NO_WIFI"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->NO_WIFI:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 22
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    const-string v1, "BATTERY_LOW"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->BATTERY_LOW:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 23
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    const-string v1, "SYSTEM_SPACE_LOW"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYSTEM_SPACE_LOW:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 24
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    const-string v1, "CLOUD_SPACE_FULL"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->CLOUD_SPACE_FULL:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 25
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    const-string v1, "UNKNOWN_ERROR"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->UNKNOWN_ERROR:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 28
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    const-string v1, "UNAVAILABLE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->UNAVAILABLE:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 3
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_PENDING:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNCING:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNCING_METADATA:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNCED:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_PAUSE:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_ERROR:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNCED_WITH_OVERSIZED_FILE:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->NO_ACCOUNT:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->MASTER_SYNC_OFF:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_OFF:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->CTA_NOT_ALLOW:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->DISCONNECTED:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->NO_WIFI:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->BATTERY_LOW:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYSTEM_SPACE_LOW:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->CLOUD_SPACE_FULL:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->UNKNOWN_ERROR:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->UNAVAILABLE:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->$VALUES:[Lcom/miui/gallery/cloud/syncstate/SyncStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->$VALUES:[Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    invoke-virtual {v0}, [Lcom/miui/gallery/cloud/syncstate/SyncStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    return-object v0
.end method
