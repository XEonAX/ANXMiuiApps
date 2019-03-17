.class public final enum Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

.field public static final enum MOBILE_NETWORK_TYPE_2G:Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

.field public static final enum MOBILE_NETWORK_TYPE_3G:Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

.field public static final enum MOBILE_NETWORK_TYPE_4G:Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

.field public static final enum MOBILE_NETWORK_TYPE_UNKNOWN:Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    const-string v1, "MOBILE_NETWORK_TYPE_2G"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;->MOBILE_NETWORK_TYPE_2G:Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    new-instance v0, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    const-string v1, "MOBILE_NETWORK_TYPE_3G"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;->MOBILE_NETWORK_TYPE_3G:Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    new-instance v0, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    const-string v1, "MOBILE_NETWORK_TYPE_4G"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;->MOBILE_NETWORK_TYPE_4G:Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    new-instance v0, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    const-string v1, "MOBILE_NETWORK_TYPE_UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;->MOBILE_NETWORK_TYPE_UNKNOWN:Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    sget-object v1, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;->MOBILE_NETWORK_TYPE_2G:Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;->MOBILE_NETWORK_TYPE_3G:Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;->MOBILE_NETWORK_TYPE_4G:Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;->MOBILE_NETWORK_TYPE_UNKNOWN:Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;->$VALUES:[Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;
    .locals 1

    const-class v0, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;->$VALUES:[Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    invoke-virtual {v0}, [Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    return-object v0
.end method
