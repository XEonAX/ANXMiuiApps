.class public final enum Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;
.super Ljava/lang/Enum;
.source "PolicyConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/PolicyConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Privacy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

.field public static final enum NO:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

.field public static final enum USER:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    const-string v1, "NO"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;->NO:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    .line 14
    new-instance v0, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    const-string v1, "USER"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;->USER:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    sget-object v1, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;->NO:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;->USER:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;->$VALUES:[Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;->$VALUES:[Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    invoke-virtual {v0}, [Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    return-object v0
.end method
