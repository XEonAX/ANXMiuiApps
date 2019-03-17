.class public final enum Lcom/xiaomi/scanner/util/NetworkUtil$NetState;
.super Ljava/lang/Enum;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/util/NetworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/scanner/util/NetworkUtil$NetState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

.field public static final enum MN2G:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

.field public static final enum MN3G:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

.field public static final enum MN4G:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

.field public static final enum NONE:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

.field public static final enum WIFI:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->WIFI:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    .line 18
    new-instance v0, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    const-string v1, "MN2G"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->MN2G:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    .line 19
    new-instance v0, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    const-string v1, "MN3G"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->MN3G:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    .line 20
    new-instance v0, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    const-string v1, "MN4G"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->MN4G:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    .line 21
    new-instance v0, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->NONE:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    sget-object v1, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->WIFI:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->MN2G:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->MN3G:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->MN4G:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->NONE:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->$VALUES:[Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/scanner/util/NetworkUtil$NetState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/scanner/util/NetworkUtil$NetState;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->$VALUES:[Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    invoke-virtual {v0}, [Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    return-object v0
.end method
