.class public final enum Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
.super Ljava/lang/Enum;
.source "SyncContentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

.field public static final enum ACTIVATED_FAIL:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

.field public static final enum AUTH_TOKEN_ERROR:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

.field public static final enum NETWORK_DISALLOWED:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

.field public static final enum PERMISSION_LIMIT:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

.field public static final enum PRIVACY_ERROR:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

.field public static final enum SECURE_SPACE_LIMIT:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

.field public static final enum SUCCESS:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

.field public static final enum SYNC_HARD_ERROR:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

.field public static final enum SYNC_SOFT_ERROR:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

.field public static final enum TIME_UNAVAILABLE:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

.field public static final enum UNKNOWN:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;


# instance fields
.field final v8:I

.field final v9:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 31
    new-instance v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->SUCCESS:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    new-instance v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v7, v5, v5}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->UNKNOWN:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    .line 32
    new-instance v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    const-string v1, "NETWORK_DISALLOWED"

    const/16 v2, 0x3e8

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->NETWORK_DISALLOWED:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    new-instance v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    const-string v1, "AUTH_TOKEN_ERROR"

    const/16 v2, 0x3e9

    const/16 v3, 0x64

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->AUTH_TOKEN_ERROR:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    new-instance v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    const-string v1, "ACTIVATED_FAIL"

    const/4 v2, 0x4

    const/16 v3, 0x3ea

    const/16 v4, 0x3e9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->ACTIVATED_FAIL:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    new-instance v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    const-string v1, "TIME_UNAVAILABLE"

    const/4 v2, 0x5

    const/16 v3, 0x3eb

    const/16 v4, 0x65

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->TIME_UNAVAILABLE:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    .line 33
    new-instance v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    const-string v1, "PERMISSION_LIMIT"

    const/4 v2, 0x6

    const/16 v3, 0x3ea

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->PERMISSION_LIMIT:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    new-instance v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    const-string v1, "SECURE_SPACE_LIMIT"

    const/4 v2, 0x7

    const/16 v3, 0x3eb

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->SECURE_SPACE_LIMIT:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    new-instance v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    const-string v1, "SYNC_SOFT_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v5, v7}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->SYNC_SOFT_ERROR:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    new-instance v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    const-string v1, "SYNC_HARD_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v5, v8}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->SYNC_HARD_ERROR:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    .line 34
    new-instance v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    const-string v1, "PRIVACY_ERROR"

    const/16 v2, 0xa

    const v3, 0xcb23

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->PRIVACY_ERROR:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    .line 30
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    sget-object v1, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->SUCCESS:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->UNKNOWN:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->NETWORK_DISALLOWED:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->AUTH_TOKEN_ERROR:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->ACTIVATED_FAIL:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->TIME_UNAVAILABLE:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->PERMISSION_LIMIT:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->SECURE_SPACE_LIMIT:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->SYNC_SOFT_ERROR:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->SYNC_HARD_ERROR:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->PRIVACY_ERROR:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->$VALUES:[Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "v8"    # I
    .param p4, "v9"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->v8:I

    .line 41
    iput p4, p0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->v9:I

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->$VALUES:[Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    invoke-virtual {v0}, [Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    return-object v0
.end method
