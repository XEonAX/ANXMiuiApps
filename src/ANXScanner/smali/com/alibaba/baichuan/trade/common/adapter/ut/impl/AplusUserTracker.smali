.class public Lcom/alibaba/baichuan/trade/common/adapter/ut/impl/AplusUserTracker;
.super Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;


# static fields
.field public static translator:Lcom/alibaba/baichuan/trade/common/adapter/ut/impl/SpmTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/impl/SpmTranslator;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/impl/SpmTranslator;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/impl/AplusUserTracker;->translator:Lcom/alibaba/baichuan/trade/common/adapter/ut/impl/SpmTranslator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public init()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public sendCustomHit(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/a/a;->a()Lcom/alibaba/baichuan/trade/common/adapter/ut/a/a;

    move-result-object v1

    sget-object v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/impl/AplusUserTracker;->translator:Lcom/alibaba/baichuan/trade/common/adapter/ut/impl/SpmTranslator;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/a/a;->a(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/a/a;

    move-result-object v0

    const-string v1, "mini"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/a/a;->b(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/a/a;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/alibaba/baichuan/trade/common/adapter/ut/a/a;->a(J)Lcom/alibaba/baichuan/trade/common/adapter/ut/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/a/a;->b()Lcom/alibaba/baichuan/trade/common/adapter/ut/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/a/a;->c(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/a/a;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/alibaba/baichuan/trade/common/adapter/ut/a/a;->a(Ljava/util/Map;)Lcom/alibaba/baichuan/trade/common/adapter/ut/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/a/a;->c()V

    return-void

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/impl/AplusUserTracker;->translator:Lcom/alibaba/baichuan/trade/common/adapter/ut/impl/SpmTranslator;

    invoke-virtual {v0, p1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/impl/SpmTranslator;->getSpm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public sendCustomHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v4, 0x3c

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/baichuan/trade/common/adapter/ut/impl/AplusUserTracker;->sendCustomHit(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method
