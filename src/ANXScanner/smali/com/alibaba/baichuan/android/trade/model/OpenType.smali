.class public final enum Lcom/alibaba/baichuan/android/trade/model/OpenType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/baichuan/android/trade/model/OpenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/baichuan/android/trade/model/OpenType;

.field public static final enum Auto:Lcom/alibaba/baichuan/android/trade/model/OpenType;

.field public static final enum H5:Lcom/alibaba/baichuan/android/trade/model/OpenType;

.field public static final enum Native:Lcom/alibaba/baichuan/android/trade/model/OpenType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alibaba/baichuan/android/trade/model/OpenType;

    const-string v1, "Auto"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/baichuan/android/trade/model/OpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/baichuan/android/trade/model/OpenType;->Auto:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    new-instance v0, Lcom/alibaba/baichuan/android/trade/model/OpenType;

    const-string v1, "Native"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/baichuan/android/trade/model/OpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/baichuan/android/trade/model/OpenType;->Native:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    new-instance v0, Lcom/alibaba/baichuan/android/trade/model/OpenType;

    const-string v1, "H5"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/baichuan/android/trade/model/OpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/baichuan/android/trade/model/OpenType;->H5:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/baichuan/android/trade/model/OpenType;

    sget-object v1, Lcom/alibaba/baichuan/android/trade/model/OpenType;->Auto:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/baichuan/android/trade/model/OpenType;->Native:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/baichuan/android/trade/model/OpenType;->H5:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/baichuan/android/trade/model/OpenType;->$VALUES:[Lcom/alibaba/baichuan/android/trade/model/OpenType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/baichuan/android/trade/model/OpenType;
    .locals 1

    const-class v0, Lcom/alibaba/baichuan/android/trade/model/OpenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/android/trade/model/OpenType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/baichuan/android/trade/model/OpenType;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/android/trade/model/OpenType;->$VALUES:[Lcom/alibaba/baichuan/android/trade/model/OpenType;

    invoke-virtual {v0}, [Lcom/alibaba/baichuan/android/trade/model/OpenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/baichuan/android/trade/model/OpenType;

    return-object v0
.end method
