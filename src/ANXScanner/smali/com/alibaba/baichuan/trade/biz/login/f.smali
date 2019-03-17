.class Lcom/alibaba/baichuan/trade/biz/login/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/alibaba/baichuan/trade/biz/login/d;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/biz/login/d;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/login/f;->b:Lcom/alibaba/baichuan/trade/biz/login/d;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/biz/login/f;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/f;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "AlibcLoginInterceptor"

    const-string v1, "\u767b\u5f55\u5931\u8d25,\u8fdb\u5165\u5230\u9875\u9762\u540e\u9000\u903b\u8f91"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/f;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/login/f;->a:Landroid/webkit/WebView;

    const-string v2, "id"

    const-string v3, "com_taobao_nb_sdk_webview_click"

    invoke-static {v0, v2, v3}, Lcom/alibaba/baichuan/trade/common/utils/ResourceUtils;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/baichuan/trade/common/utils/StringUtils;->obj2Boolean(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/login/f;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/f;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onSuccess(I)V
    .locals 4

    const-string v0, "AlibcLoginInterceptor"

    const-string v1, "\u767b\u5f55\u6210\u529f,\u91cd\u65b0\u52a0\u8f7d\u9875\u9762"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/f;->a:Landroid/webkit/WebView;

    sget-object v1, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    const-string v2, "id"

    const-string v3, "webviewload_monitor_cancel_point"

    invoke-static {v1, v2, v3}, Lcom/alibaba/baichuan/trade/common/utils/ResourceUtils;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/f;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/f;->b:Lcom/alibaba/baichuan/trade/biz/login/d;

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/login/f;->a:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/biz/login/d;->a(Lcom/alibaba/baichuan/trade/biz/login/d;Landroid/webkit/WebView;)V

    return-void
.end method
