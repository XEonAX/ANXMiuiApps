.class Lcom/alibaba/baichuan/trade/biz/applink/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/applink/a;->b:Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/biz/applink/a;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/applink/a;->a:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContextManager;->getContext(Landroid/webkit/WebView;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    move-result-object v0

    new-instance v1, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeResult;

    invoke-direct {v1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeResult;-><init>()V

    sget-object v2, Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;->TYPECART:Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;

    iput-object v2, v1, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeResult;->resultType:Lcom/alibaba/baichuan/trade/biz/context/AlibcResultType;

    iget-object v2, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->callback:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext$AlibcTradeCallback;

    invoke-interface {v2, v1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext$AlibcTradeCallback;->onTradeSuccess(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeResult;)V

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
