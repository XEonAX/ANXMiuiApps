.class public final enum Lmtopsdk/mtop/domain/JsonTypeEnum;
.super Ljava/lang/Enum;
.source "JsonTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmtopsdk/mtop/domain/JsonTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmtopsdk/mtop/domain/JsonTypeEnum;

.field public static final enum JSON:Lmtopsdk/mtop/domain/JsonTypeEnum;

.field public static final enum ORIGINALJSON:Lmtopsdk/mtop/domain/JsonTypeEnum;


# instance fields
.field private jsonType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lmtopsdk/mtop/domain/JsonTypeEnum;

    const-string v1, "JSON"

    const-string v2, "json"

    invoke-direct {v0, v1, v3, v2}, Lmtopsdk/mtop/domain/JsonTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/JsonTypeEnum;->JSON:Lmtopsdk/mtop/domain/JsonTypeEnum;

    new-instance v0, Lmtopsdk/mtop/domain/JsonTypeEnum;

    const-string v1, "ORIGINALJSON"

    const-string v2, "originaljson"

    invoke-direct {v0, v1, v4, v2}, Lmtopsdk/mtop/domain/JsonTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/JsonTypeEnum;->ORIGINALJSON:Lmtopsdk/mtop/domain/JsonTypeEnum;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lmtopsdk/mtop/domain/JsonTypeEnum;

    sget-object v1, Lmtopsdk/mtop/domain/JsonTypeEnum;->JSON:Lmtopsdk/mtop/domain/JsonTypeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lmtopsdk/mtop/domain/JsonTypeEnum;->ORIGINALJSON:Lmtopsdk/mtop/domain/JsonTypeEnum;

    aput-object v1, v0, v4

    sput-object v0, Lmtopsdk/mtop/domain/JsonTypeEnum;->$VALUES:[Lmtopsdk/mtop/domain/JsonTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lmtopsdk/mtop/domain/JsonTypeEnum;->jsonType:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmtopsdk/mtop/domain/JsonTypeEnum;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lmtopsdk/mtop/domain/JsonTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/domain/JsonTypeEnum;

    return-object v0
.end method

.method public static values()[Lmtopsdk/mtop/domain/JsonTypeEnum;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lmtopsdk/mtop/domain/JsonTypeEnum;->$VALUES:[Lmtopsdk/mtop/domain/JsonTypeEnum;

    invoke-virtual {v0}, [Lmtopsdk/mtop/domain/JsonTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmtopsdk/mtop/domain/JsonTypeEnum;

    return-object v0
.end method


# virtual methods
.method public final getJsonType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lmtopsdk/mtop/domain/JsonTypeEnum;->jsonType:Ljava/lang/String;

    return-object v0
.end method
