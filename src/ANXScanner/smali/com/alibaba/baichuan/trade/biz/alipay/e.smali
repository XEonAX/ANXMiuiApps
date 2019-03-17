.class Lcom/alibaba/baichuan/trade/biz/alipay/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

.field final synthetic b:Lcom/alibaba/baichuan/trade/biz/alipay/d;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/biz/alipay/d;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/alipay/e;->b:Lcom/alibaba/baichuan/trade/biz/alipay/d;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/biz/alipay/e;->a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/alipay/e;->a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/alipay/e;->a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    iget-object v0, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->callback:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext$AlibcTradeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/alipay/e;->a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    iget-object v0, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->callback:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext$AlibcTradeCallback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext$AlibcTradeCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/alipay/e;->a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/alipay/e;->a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    iget-object v0, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->callback:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext$AlibcTradeCallback;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeResult;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeResult;-><init>()V

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;->TYPEPAY:Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;

    iput-object v1, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeResult;->resultType:Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;

    iput-object p1, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeResult;->payResult:Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/alipay/e;->a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    iget-object v1, v1, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->callback:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext$AlibcTradeCallback;

    invoke-interface {v1, v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext$AlibcTradeCallback;->onTradeSuccess(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeResult;)V

    :cond_0
    return-void
.end method
