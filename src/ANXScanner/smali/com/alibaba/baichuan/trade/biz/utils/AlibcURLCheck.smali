.class public abstract enum Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

.field public static final enum contains:Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

.field public static final enum equal:Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

.field public static final enum regular:Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;


# instance fields
.field public type:I

.field public urlList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck$1;

    const-string v1, "regular"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->regular:Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck$2;

    const-string v1, "contains"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->contains:Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck$3;

    const-string v1, "equal"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->equal:Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->regular:Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->contains:Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->equal:Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->$VALUES:[Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->type:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static getUrlCheckType(I)Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->regular:Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->regular:Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->contains:Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->equal:Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;
    .locals 1

    const-class v0, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->$VALUES:[Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    invoke-virtual {v0}, [Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    return-object v0
.end method


# virtual methods
.method public abstract check([Ljava/lang/String;Ljava/lang/String;)Z
.end method
