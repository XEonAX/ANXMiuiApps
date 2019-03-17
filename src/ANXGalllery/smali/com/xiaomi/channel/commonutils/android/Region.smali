.class public final enum Lcom/xiaomi/channel/commonutils/android/Region;
.super Ljava/lang/Enum;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/channel/commonutils/android/Region;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/channel/commonutils/android/Region;

.field public static final enum China:Lcom/xiaomi/channel/commonutils/android/Region;

.field public static final enum Europe:Lcom/xiaomi/channel/commonutils/android/Region;

.field public static final enum Global:Lcom/xiaomi/channel/commonutils/android/Region;

.field public static final enum India:Lcom/xiaomi/channel/commonutils/android/Region;

.field public static final enum Russia:Lcom/xiaomi/channel/commonutils/android/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/xiaomi/channel/commonutils/android/Region;

    const-string v1, "China"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/android/Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/Region;->China:Lcom/xiaomi/channel/commonutils/android/Region;

    new-instance v0, Lcom/xiaomi/channel/commonutils/android/Region;

    const-string v1, "Global"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/channel/commonutils/android/Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/Region;->Global:Lcom/xiaomi/channel/commonutils/android/Region;

    new-instance v0, Lcom/xiaomi/channel/commonutils/android/Region;

    const-string v1, "Europe"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/channel/commonutils/android/Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    new-instance v0, Lcom/xiaomi/channel/commonutils/android/Region;

    const-string v1, "Russia"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/channel/commonutils/android/Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/Region;->Russia:Lcom/xiaomi/channel/commonutils/android/Region;

    new-instance v0, Lcom/xiaomi/channel/commonutils/android/Region;

    const-string v1, "India"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/channel/commonutils/android/Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/Region;->India:Lcom/xiaomi/channel/commonutils/android/Region;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/channel/commonutils/android/Region;

    sget-object v1, Lcom/xiaomi/channel/commonutils/android/Region;->China:Lcom/xiaomi/channel/commonutils/android/Region;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/channel/commonutils/android/Region;->Global:Lcom/xiaomi/channel/commonutils/android/Region;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/channel/commonutils/android/Region;->Russia:Lcom/xiaomi/channel/commonutils/android/Region;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/channel/commonutils/android/Region;->India:Lcom/xiaomi/channel/commonutils/android/Region;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/Region;->$VALUES:[Lcom/xiaomi/channel/commonutils/android/Region;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/android/Region;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/channel/commonutils/android/Region;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/channel/commonutils/android/Region;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/Region;->$VALUES:[Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-virtual {v0}, [Lcom/xiaomi/channel/commonutils/android/Region;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/channel/commonutils/android/Region;

    return-object v0
.end method
