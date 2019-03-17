.class public final enum Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;
.super Ljava/lang/Enum;
.source "MtopResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/mtop/domain/MtopResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

.field public static final enum EXPIRED_CACHE:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

.field public static final enum FRESH_CACHE:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

.field public static final enum NETWORK_REQUEST:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 355
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    const-string v1, "FRESH_CACHE"

    invoke-direct {v0, v1, v2}, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->FRESH_CACHE:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    .line 356
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    const-string v1, "EXPIRED_CACHE"

    invoke-direct {v0, v1, v3}, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->EXPIRED_CACHE:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    .line 357
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    const-string v1, "NETWORK_REQUEST"

    invoke-direct {v0, v1, v4}, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->NETWORK_REQUEST:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    .line 354
    const/4 v0, 0x3

    new-array v0, v0, [Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    sget-object v1, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->FRESH_CACHE:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    aput-object v1, v0, v2

    sget-object v1, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->EXPIRED_CACHE:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    aput-object v1, v0, v3

    sget-object v1, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->NETWORK_REQUEST:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    aput-object v1, v0, v4

    sput-object v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->$VALUES:[Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

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
    .line 354
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;
    .locals 1

    .prologue
    .line 354
    const-class v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    return-object v0
.end method

.method public static values()[Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;
    .locals 1

    .prologue
    .line 354
    sget-object v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->$VALUES:[Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    invoke-virtual {v0}, [Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    return-object v0
.end method
