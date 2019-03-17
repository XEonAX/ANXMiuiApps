.class Lcom/alibaba/baichuan/trade/biz/alipay/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;

.field final synthetic c:Landroid/webkit/WebView;

.field final synthetic d:Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/alipay/b;->d:Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/biz/alipay/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/baichuan/trade/biz/alipay/b;->b:Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;

    iput-object p4, p0, Lcom/alibaba/baichuan/trade/biz/alipay/b;->c:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/alipay/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a(Ljava/lang/String;)I

    move-result v0

    const-string v1, "AlibcAlipay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alipay\u652f\u4ed8\u5931\u8d25\uff0c\u4fe1\u606f\u4e3a\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/alipay/b;->d:Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;

    const-string v2, "160102"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u652f\u4ed8\u5931\u8d25"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/alipay/b;->b:Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/alipay/b;->b:Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;

    const/16 v2, 0x271a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alipay\u652f\u4ed8\u5931\u8d25\uff0c\u4fe1\u606f\u4e3a\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;->a(ILjava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->getInstance()Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;

    move-result-object v0

    const/16 v1, 0x1771

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/alipay/b;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
