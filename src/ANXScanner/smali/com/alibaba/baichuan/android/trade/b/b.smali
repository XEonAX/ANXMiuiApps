.class public Lcom/alibaba/baichuan/android/trade/b/b;
.super Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x1772

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(ILjava/lang/Object;)V
    .locals 5

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    instance-of v0, p2, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/webkit/WebView;

    new-instance v0, Lcom/alibaba/baichuan/android/trade/page/AlibcMyOrdersPage;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v4}, Lcom/alibaba/baichuan/android/trade/page/AlibcMyOrdersPage;-><init>(IZ)V

    sget-object v1, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    const-string v2, "id"

    const-string v3, "webviewload_monitor_cancel_point"

    invoke-static {v1, v2, v3}, Lcom/alibaba/baichuan/trade/common/utils/ResourceUtils;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/page/AlibcMyOrdersPage;->genOpenUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
