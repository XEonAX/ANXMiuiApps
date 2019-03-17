.class Lcom/alibaba/baichuan/android/trade/page/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/webkit/WebView;

.field final synthetic d:Landroid/webkit/WebViewClient;

.field final synthetic e:Landroid/webkit/WebChromeClient;

.field final synthetic f:Ljava/util/Map;

.field final synthetic g:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

.field final synthetic h:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

.field final synthetic i:Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Ljava/util/Map;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/page/a;->i:Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;

    iput-object p2, p0, Lcom/alibaba/baichuan/android/trade/page/a;->a:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    iput-object p3, p0, Lcom/alibaba/baichuan/android/trade/page/a;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/alibaba/baichuan/android/trade/page/a;->c:Landroid/webkit/WebView;

    iput-object p5, p0, Lcom/alibaba/baichuan/android/trade/page/a;->d:Landroid/webkit/WebViewClient;

    iput-object p6, p0, Lcom/alibaba/baichuan/android/trade/page/a;->e:Landroid/webkit/WebChromeClient;

    iput-object p7, p0, Lcom/alibaba/baichuan/android/trade/page/a;->f:Ljava/util/Map;

    iput-object p8, p0, Lcom/alibaba/baichuan/android/trade/page/a;->g:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    iput-object p9, p0, Lcom/alibaba/baichuan/android/trade/page/a;->h:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTaokeUrl(ILjava/lang/String;)V
    .locals 3

    const-string v0, "AlibcBasePage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6dd8\u5ba2\u6253\u70b9\u6d41\u7a0b\u56de\u8c03,type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n openUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/a;->a:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    const-string v1, "sync"

    iput-object v1, v0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/a;->a:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->i()V

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->getInstance()Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    move-result-object v0

    new-instance v1, Lcom/alibaba/baichuan/android/trade/page/b;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/baichuan/android/trade/page/b;-><init>(Lcom/alibaba/baichuan/android/trade/page/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->postUITask(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/a;->a:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    const-string v1, "async"

    iput-object v1, v0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/a;->a:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->n()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/a;->g:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    iget-object v0, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->callback:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext$AlibcTradeCallback;

    const/4 v1, -0x1

    const-string v2, "openH5 url is null"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext$AlibcTradeCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_1
.end method
