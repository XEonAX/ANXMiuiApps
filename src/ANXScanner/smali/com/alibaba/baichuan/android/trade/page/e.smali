.class Lcom/alibaba/baichuan/android/trade/page/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

.field final synthetic b:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/page/e;->e:Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;

    iput-object p2, p0, Lcom/alibaba/baichuan/android/trade/page/e;->a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    iput-object p3, p0, Lcom/alibaba/baichuan/android/trade/page/e;->b:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    iput-object p4, p0, Lcom/alibaba/baichuan/android/trade/page/e;->c:Landroid/app/Activity;

    iput-object p5, p0, Lcom/alibaba/baichuan/android/trade/page/e;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTaokeUrl(ILjava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeJumpH5:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    iget-object v2, p0, Lcom/alibaba/baichuan/android/trade/page/e;->a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/baichuan/android/trade/page/e;->a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    iget-object v2, v2, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/baichuan/android/trade/page/e;->a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    iget-object v2, v2, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    invoke-virtual {v2}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->getNativeOpenFailedMode()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/e;->a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    iget-object v0, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->getNativeOpenFailedMode()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    move-result-object v0

    :cond_0
    const-string v2, "AlibcBasePage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "native\u6253\u5f00\u6d41\u7a0b\u4f20\u9012\u4e0b\u6765\u7684failMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    sget-object v2, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeJumpH5:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    invoke-virtual {v0, v2}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    const-string v0, "AlibcBasePage"

    const-string v2, "failModeType = H5,\u9700\u8981\u8f6c\u6362\u6210NONE"

    invoke-static {v0, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeNONE:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    :goto_0
    const-string v4, "alisdk://"

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/e;->b:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/e;->b:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->getBackUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/e;->b:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->getBackUrl()Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string v0, "AlibcBasePage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "native\u6253\u5f00backUrl = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/e;->a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    if-nez v0, :cond_3

    move-object v6, v1

    :goto_1
    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/e;->a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    if-nez v0, :cond_4

    move-object v7, v1

    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->getInstance()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/page/e;->c:Landroid/app/Activity;

    iget-object v5, p0, Lcom/alibaba/baichuan/android/trade/page/e;->d:Ljava/lang/String;

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->jumpTBURI(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;

    :goto_3
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/e;->a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    iget-object v6, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->taokeParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/e;->a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    iget-object v7, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->urlParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->getInstance()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/page/e;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/baichuan/android/trade/page/e;->e:Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;

    invoke-virtual {v2}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->genOpenUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/alibaba/baichuan/android/trade/page/e;->d:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->jumpTBURI(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;

    goto :goto_3

    :cond_6
    move-object v3, v0

    goto :goto_0
.end method
