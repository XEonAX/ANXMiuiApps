.class public final enum Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

.field public static final enum AlibcNativeFailModeJumpBROWER:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

.field public static final enum AlibcNativeFailModeJumpDOWNLOAD:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

.field public static final enum AlibcNativeFailModeJumpH5:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

.field public static final enum AlibcNativeFailModeNONE:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    const-string v1, "AlibcNativeFailModeNONE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeNONE:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    const-string v1, "AlibcNativeFailModeJumpBROWER"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeJumpBROWER:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    const-string v1, "AlibcNativeFailModeJumpDOWNLOAD"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeJumpDOWNLOAD:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    const-string v1, "AlibcNativeFailModeJumpH5"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeJumpH5:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeNONE:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeJumpBROWER:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeJumpDOWNLOAD:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeJumpH5:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->$VALUES:[Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;
    .locals 1

    const-class v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->$VALUES:[Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    invoke-virtual {v0}, [Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    return-object v0
.end method
