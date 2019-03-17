.class Lcom/alibaba/baichuan/android/trade/page/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/baichuan/android/trade/page/c;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/android/trade/page/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/page/d;->b:Lcom/alibaba/baichuan/android/trade/page/c;

    iput-object p2, p0, Lcom/alibaba/baichuan/android/trade/page/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/d;->b:Lcom/alibaba/baichuan/android/trade/page/c;

    iget-object v0, v0, Lcom/alibaba/baichuan/android/trade/page/c;->i:Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/page/d;->b:Lcom/alibaba/baichuan/android/trade/page/c;

    iget-object v1, v1, Lcom/alibaba/baichuan/android/trade/page/c;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/baichuan/android/trade/page/d;->b:Lcom/alibaba/baichuan/android/trade/page/c;

    iget-object v2, v2, Lcom/alibaba/baichuan/android/trade/page/c;->c:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/alibaba/baichuan/android/trade/page/d;->b:Lcom/alibaba/baichuan/android/trade/page/c;

    iget-object v3, v3, Lcom/alibaba/baichuan/android/trade/page/c;->d:Landroid/webkit/WebViewClient;

    iget-object v4, p0, Lcom/alibaba/baichuan/android/trade/page/d;->b:Lcom/alibaba/baichuan/android/trade/page/c;

    iget-object v4, v4, Lcom/alibaba/baichuan/android/trade/page/c;->e:Landroid/webkit/WebChromeClient;

    iget-object v5, p0, Lcom/alibaba/baichuan/android/trade/page/d;->b:Lcom/alibaba/baichuan/android/trade/page/c;

    iget-object v5, v5, Lcom/alibaba/baichuan/android/trade/page/c;->i:Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;

    iget-object v6, p0, Lcom/alibaba/baichuan/android/trade/page/d;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/baichuan/android/trade/page/d;->b:Lcom/alibaba/baichuan/android/trade/page/c;

    iget-object v7, v7, Lcom/alibaba/baichuan/android/trade/page/c;->f:Ljava/util/Map;

    iget-object v8, p0, Lcom/alibaba/baichuan/android/trade/page/d;->b:Lcom/alibaba/baichuan/android/trade/page/c;

    iget-object v8, v8, Lcom/alibaba/baichuan/android/trade/page/c;->a:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    invoke-virtual {v5, v6, v7, v8}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->getAddParamsUrl(Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/baichuan/android/trade/page/d;->b:Lcom/alibaba/baichuan/android/trade/page/c;

    iget-object v6, v6, Lcom/alibaba/baichuan/android/trade/page/c;->g:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    iget-object v7, p0, Lcom/alibaba/baichuan/android/trade/page/d;->b:Lcom/alibaba/baichuan/android/trade/page/c;

    iget-object v7, v7, Lcom/alibaba/baichuan/android/trade/page/c;->a:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    iget-object v8, p0, Lcom/alibaba/baichuan/android/trade/page/d;->b:Lcom/alibaba/baichuan/android/trade/page/c;

    iget-object v8, v8, Lcom/alibaba/baichuan/android/trade/page/c;->h:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    invoke-virtual {v8}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->isProxyWebview()Z

    move-result v8

    invoke-static/range {v0 .. v8}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->a(Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;Z)V

    return-void
.end method
