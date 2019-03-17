.class Lcom/alibaba/baichuan/trade/biz/alipay/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/net/Uri;

.field final synthetic e:Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;Landroid/webkit/WebView;Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->e:Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->a:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->b:Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;

    iput-object p4, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->d:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->e:Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->b:Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->a:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->e:Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;

    const-string v1, "160102"

    const-string v2, "result is null"

    invoke-static {v0, v1, v2}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "{"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->e:Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;

    const-string v2, "resultStatus="

    const-string v3, ";memo"

    invoke-static {v1, v0, v2, v3}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "9000"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->e:Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->d:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->e:Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;

    invoke-static {v1, v0}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;Ljava/util/ArrayList;)Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;->payFailedOrders:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;->paySuccessOrders:Ljava/util/List;

    if-nez v2, :cond_4

    :cond_3
    const-string v0, "AlibcAlipay"

    const-string v1, "QueryOrderResultTask.asyncExecute()--pay success but empty order\uff1a message:\u4e3a\u7a7a\u7684\u8ba2\u5355"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->b:Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->b:Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;

    const/16 v1, 0x2719

    const-string v2, "alipay\u652f\u4ed8\u5931\u8d25\uff0c\u4fe1\u606f\u4e3a:empty orders"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "AlibcAlipay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QueryOrderResultTask.asyncExecute()--pay success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->e:Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->e:Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->b:Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;

    iget-object v3, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->a:Landroid/webkit/WebView;

    invoke-static {v0, v2, v3, v1}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;Landroid/webkit/WebView;Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->e:Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->b:Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;

    iget-object v3, p0, Lcom/alibaba/baichuan/trade/biz/alipay/a;->a:Landroid/webkit/WebView;

    invoke-static {v1, v2, v0, v3}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;Ljava/lang/String;Landroid/webkit/WebView;)V

    goto :goto_0
.end method
