.class public final enum Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;
.super Ljava/lang/Enum;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;

.field public static final enum TYPECART:Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;

.field public static final enum TYPEPAY:Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;

    const-string v1, "TYPECART"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;->TYPECART:Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;

    const-string v1, "TYPEPAY"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;->TYPEPAY:Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;->TYPECART:Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;->TYPEPAY:Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;->$VALUES:[Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;
    .locals 1

    const-class v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;->$VALUES:[Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;

    invoke-virtual {v0}, [Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;

    return-object v0
.end method
