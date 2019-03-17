.class Lcom/alibaba/baichuan/trade/biz/alipay/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;

.field final synthetic b:Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;

.field final synthetic c:Landroid/webkit/WebView;

.field final synthetic d:Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/alipay/c;->d:Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/biz/alipay/c;->a:Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;

    iput-object p3, p0, Lcom/alibaba/baichuan/trade/biz/alipay/c;->b:Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;

    iput-object p4, p0, Lcom/alibaba/baichuan/trade/biz/alipay/c;->c:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/alipay/c;->a:Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/alipay/c;->a:Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/alipay/c;->b:Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;

    invoke-interface {v0, v1}, Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;->a(Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/alipay/c;->c:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContextManager;->getContext(Landroid/webkit/WebView;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    move-result-object v1

    const/4 v0, 0x1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    if-eqz v2, :cond_1

    iget-object v0, v1, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->isClose()Z

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/alipay/c;->c:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/alipay/c;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->getInstance()Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;

    move-result-object v0

    const/16 v1, 0x1772

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/alipay/c;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method
