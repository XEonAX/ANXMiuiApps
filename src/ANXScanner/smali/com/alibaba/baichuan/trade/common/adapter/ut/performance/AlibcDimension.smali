.class public Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null"

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null"

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;->a:Ljava/lang/String;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;->b:Ljava/lang/String;

    return-void

    :cond_0
    const-string p2, "null"

    goto :goto_0
.end method


# virtual methods
.method public getConstantValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setConstantValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;->b:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;->a:Ljava/lang/String;

    return-void
.end method
