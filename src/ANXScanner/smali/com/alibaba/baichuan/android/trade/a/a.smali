.class public Lcom/alibaba/baichuan/android/trade/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/app/Activity;Ljava/lang/String;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/WebViewClient;",
            "Landroid/webkit/WebChromeClient;",
            "Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p5, p0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->setActivity(Landroid/app/Activity;)V

    invoke-virtual {p5, p2}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->setWebview(Landroid/webkit/WebView;)V

    invoke-static {p5}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContextManager;->setContext(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;)V

    invoke-static {p0, p2, p3, p4, p8}, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewProxy;->initAlibcWebViewProxy(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Z)V

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->l()V

    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {p2, p1, p6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;)V
    .locals 3

    invoke-static {p2}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->a(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;)V

    invoke-static {p3}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->a(Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    if-eqz v1, :cond_0

    const-string v1, "bc_webview_activity_title"

    iget-object v2, p2, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    invoke-virtual {v2}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
