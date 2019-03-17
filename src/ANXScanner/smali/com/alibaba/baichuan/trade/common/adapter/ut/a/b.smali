.class Lcom/alibaba/baichuan/trade/common/adapter/ut/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/baichuan/trade/common/adapter/ut/a/a;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/common/adapter/ut/a/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/a/b;->b:Lcom/alibaba/baichuan/trade/common/adapter/ut/a/a;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/a/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/a/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/http/HttpHelper;->getHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Aplus"

    invoke-static {v1, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
